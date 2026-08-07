package com.sprd.classichome.settings;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.util.Log;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.CheckedTextView;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.Switch;
import android.widget.TextView;
import android.widget.Toast;

import com.sprd.android.support.featurebar.FeatureBarHelper;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/**
 * The launcher's settings screen, styled to be indistinguishable from the ROM's
 * own Settings app.
 *
 * Where the look comes from (verified against the decompiled Settings.apk and
 * framework-res of this ROM):
 *   - The ROM Settings app declares themes whose parent is
 *     @android:style/Theme.Holo.Light.NewUI and overrides nothing else. All
 *     colors (#575859 window, #707273 focus/category, turquoise #00C0D4 title
 *     bar) live in framework-res as PUBLIC resources, so this app gets the
 *     identical look from the same theme.
 *   - List rows in ROM settings screens are the framework layout
 *     "duoqin_layout_preference" (minHeight 68dp, 24sp white title, 16sp gray
 *     summary, widget_frame at the end). We inflate that exact layout by name,
 *     so metrics can never drift from the system's.
 *   - The black-ish bottom softkey bar is NOT part of the theme: every ROM app
 *     carries a FeatureBarHelper that re-parents the window content above a
 *     32px bar. This app already ships the same helper (the main menu uses
 *     it) — the settings screen now uses it too.
 */
public class LauncherSettingsActivity extends Activity {
    private static final String TAG = "LauncherSettingsActivity";

    private ListView mListView;
    private SettingsAdapter mAdapter;
    private List<SettingItem> mItems = new ArrayList<SettingItem>();
    private FeatureBarHelper mFeatureBar;

    public static class SettingItem {
        public static final int TYPE_HEADER = 0;  // category separator strip
        public static final int TYPE_ITEM = 1;    // navigation / value row
        public static final int TYPE_TOGGLE = 2;  // CheckBox row (ROM style for plain on/off)
        public static final int TYPE_MASTER = 3;  // Switch row (ROM style for a screen's master toggle)

        public int type;
        public String key;
        public String title;
        public String summary;
        public boolean checked;
        public boolean enabled = true;

        public SettingItem(int type, String key, String title, String summary) {
            this.type = type;
            this.key = key;
            this.title = title;
            this.summary = summary;
        }

        public static SettingItem header(String title) {
            return new SettingItem(TYPE_HEADER, null, title, null);
        }

        public static SettingItem item(String key, String title, String summary) {
            return new SettingItem(TYPE_ITEM, key, title, summary);
        }

        /**
         * Plain on/off row. The ROM reserves the turquoise switch for a screen's
         * single master toggle and renders every other boolean as a checkbox
         * (see רטט in its sound settings) — so this is a CheckBox row.
         */
        public static SettingItem toggle(String key, String title, String summary, boolean on) {
            SettingItem s = new SettingItem(TYPE_TOGGLE, key, title, summary);
            s.checked = on;
            return s;
        }

        /** Master toggle at the top of a screen — the one place the ROM uses a Switch. */
        public static SettingItem master(String key, String title, boolean on) {
            SettingItem s = new SettingItem(TYPE_MASTER, key, title, null);
            s.checked = on;
            return s;
        }

        /** Non-actionable explanatory row; D-pad skips it. */
        public static SettingItem info(String title, String summary) {
            SettingItem s = new SettingItem(TYPE_ITEM, null, title, summary);
            s.enabled = false;
            return s;
        }
    }

    /**
     * Duoqin added the "NewUI" style family to framework-res. It is not in the
     * android.jar we compile against, so it cannot be named in the manifest and
     * has to be resolved by name at runtime — BEFORE super.onCreate(), after
     * which the content view is already inflated and setTheme() is a no-op.
     *
     * AndroidManifest already points this activity at @style/BaseTheme (parent
     * @android:style/Theme.Holo.Light.NewUI); this call keeps the ROM look even
     * if the manifest theme is ever changed, and degrades silently to plain
     * Holo on a ROM without the family.
     */
    private void applyRomTheme() {
        try {
            int id = getResources().getIdentifier(
                    "Theme.Holo.Light.NewUI", "style", "android");
            if (id != 0) {
                setTheme(id);
            }
        } catch (Throwable ignore) {
            // Plain Holo is an acceptable fallback.
        }
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        applyRomTheme();
        super.onCreate(savedInstanceState);
        setScreenTitle("הגדרות מסך הבית");

        mListView = new ListView(this);
        mListView.setClipToPadding(false);
        // A code-built ListView draws NO dividers under this theme: the ROM's
        // listDivider is a color drawable with no intrinsic height, so the
        // default divider height computes to zero. Preference screens (like the
        // ROM's and the mouse app's) get their 1px lines only because
        // PreferenceFragmentListNewUI sets divider + dividerHeight explicitly —
        // replicate exactly that. Order matters: setDivider resets the height.
        try {
            int divId = getResources().getIdentifier(
                    "duoqin_list_divider_inset", "drawable", "android");
            if (divId != 0) {
                mListView.setDivider(getResources().getDrawable(divId));
            }
            int divHeightId = getResources().getIdentifier(
                    "duoqin_dimen_list_divider_height", "dimen", "android");
            mListView.setDividerHeight(divHeightId != 0
                    ? getResources().getDimensionPixelSize(divHeightId) : 1);
        } catch (Throwable t) {
            Log.w(TAG, "Divider setup failed", t);
        }
        setContentView(mListView);

        // Must run after setContentView: the helper re-parents the children of
        // android.R.id.content above the 32px bar, exactly like every ROM app.
        setupFeatureBar();

        buildSettingsList();

        mAdapter = new SettingsAdapter(this, mItems);
        mListView.setAdapter(mAdapter);

        mListView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                SettingItem item = mItems.get(position);
                if (item.key != null) {
                    mClickedPos = position;
                    handleSettingClick(item.key);
                }
            }
        });
    }

    private void setupFeatureBar() {
        try {
            mFeatureBar = new FeatureBarHelper(this);
            // Like the ROM Settings app: no Options key. Center = select,
            // right = back, both with the ROM's own 32x32 icons.
            mFeatureBar.hideLeft();
            // The stock launcher zeroes @dimen/feature_bar_height because Home
            // draws its own soft bar, which collapses the helper's bar in the
            // whole app. This screen wants the ROM Settings look, so restore
            // the bar height here only — 32 physical px, the exact value
            // Settings.apk uses on this device.
            ViewGroup bar = mFeatureBar.getFeatureBar();
            if (bar != null && bar.getLayoutParams() != null
                    && bar.getLayoutParams().height <= 0) {
                bar.getLayoutParams().height = 32;
                bar.setLayoutParams(bar.getLayoutParams());
            }
        } catch (Throwable t) {
            // Without the bar the screen is still fully usable from the keypad.
            Log.w(TAG, "Feature bar unavailable", t);
        }
    }

    /**
     * Which sub-screen is showing. null = the top-level list.
     *
     * One activity, screens as list states. A separate Activity per category
     * would each need a manifest entry, and every one of them would inherit the
     * task-stack problem that already required launchMode="singleTask" here.
     */
    private String mSection = null;

    // Root -> section -> (dialog | one deeper screen). Three levels at most,
    // matching the ROM's own maximum depth. 240x320 shows ~5.5 rows, so the
    // root stays short and every screen is one focused topic.
    private static final String SEC_TIME = "time";
    private static final String SEC_LOOK = "look";
    private static final String SEC_WIDGETS = "widgets";
    private static final String SEC_APPS = "apps";
    private static final String SEC_APPS_MANAGE = "apps_manage"; // child of SEC_APPS
    private static final String SEC_KEYS = "keys";
    private static final String SEC_RESET = "reset";

    // List positions to restore when climbing back up, so a trip into a
    // sub-screen doesn't dump the user back at the top of the list.
    private int mClickedPos = 0;
    private int mRootPos = 0;
    private int mAppsPos = 0;

    private void buildSettingsList() {
        mItems.clear();
        if (mSection == null) {
            buildRootList();
        } else if (SEC_TIME.equals(mSection)) {
            buildTimeList();
        } else if (SEC_LOOK.equals(mSection)) {
            buildLookList();
        } else if (SEC_WIDGETS.equals(mSection)) {
            buildWidgetsList();
        } else if (SEC_APPS.equals(mSection)) {
            buildAppsList();
        } else if (SEC_APPS_MANAGE.equals(mSection)) {
            buildAppsManageList();
        } else if (SEC_KEYS.equals(mSection)) {
            buildKeysList();
        } else if (SEC_RESET.equals(mSection)) {
            buildResetList();
        }
    }

    /**
     * Top level, organized the way the ROM organizes its own root screen:
     * master switch first (its Settings puts SwitchPreferences only at screen
     * tops), then thin category separators grouping plain navigation rows.
     * Navigation rows carry no summaries — the ROM's root screen has none, and
     * single-line rows fit seven rows on this screen instead of four.
     */
    private void buildRootList() {
        setScreenTitle("הגדרות מסך הבית");
        // On means this launcher is the home screen AND the stock one is
        // disabled — computed from PackageManager, never from a stored flag,
        // so the switch can't claim something the system disagrees with.
        boolean active = LauncherSettings.isModHomeEnabled(this)
                && !LauncherSettings.isStockHomeEnabled(this);
        mItems.add(SettingItem.master("home_active", "מסך הבית המשודרג", active));
        mItems.add(SettingItem.header("תצוגה"));
        mItems.add(SettingItem.item("sec:" + SEC_TIME, "שעון ותאריך", null));
        mItems.add(SettingItem.item("sec:" + SEC_LOOK, "מראה מסך הבית", null));
        mItems.add(SettingItem.item("sec:" + SEC_WIDGETS, "ווידג'טים", null));
        mItems.add(SettingItem.header("התנהגות"));
        mItems.add(SettingItem.item("sec:" + SEC_APPS, "תפריט היישומים", null));
        mItems.add(SettingItem.item("sec:" + SEC_KEYS, "מקשים וקיצורים", null));
        mItems.add(SettingItem.header("מערכת"));
        mItems.add(SettingItem.item("sec:" + SEC_RESET, "איפוס", null));
    }

    private void buildTimeList() {
        setScreenTitle("שעון ותאריך");
        mItems.add(SettingItem.header("שעון"));
        mItems.add(SettingItem.toggle("clock_enabled", "הצגת שעון", null,
                LauncherSettings.isClockEnabled(this)));
        mItems.add(SettingItem.item("clock_size", "גודל", getClockSizeSummary()));
        mItems.add(SettingItem.item("clock_color", "צבע",
                colorName(LauncherSettings.getClockColor(this))));
        mItems.add(SettingItem.item("clock_font_style", "גופן", getClockFontStyleSummary()));
        mItems.add(SettingItem.item("clock_time_format", "פורמט שעה", getClockTimeFormatSummary()));
        mItems.add(SettingItem.header("תאריך לועזי"));
        mItems.add(SettingItem.toggle("date_enabled", "הצגת תאריך לועזי", null,
                LauncherSettings.isDateEnabled(this)));
        mItems.add(SettingItem.item("date_size", "גודל",
                LauncherSettings.getDateSize(this) + "sp"));
        mItems.add(SettingItem.item("date_color", "צבע",
                colorName(LauncherSettings.getDateColor(this))));
        mItems.add(SettingItem.header("תאריך עברי"));
        mItems.add(SettingItem.toggle("hebrew_date_enabled", "הצגת תאריך עברי", null,
                LauncherSettings.isHebrewDateEnabled(this)));
        mItems.add(SettingItem.item("hebrew_date_size", "גודל",
                LauncherSettings.getHebrewDateSize(this) + "sp"));
        mItems.add(SettingItem.item("hebrew_date_color", "צבע",
                colorName(LauncherSettings.getHebrewDateColor(this))));
    }

    private void buildLookList() {
        setScreenTitle("מראה מסך הבית");
        mItems.add(SettingItem.header("רקע הכרטיסים"));
        mItems.add(SettingItem.item("card_bg_type", "רקע ושקיפות", getCardBgSummary()));
        mItems.add(SettingItem.item("card_corner_radius", "פינות מעוגלות",
                cornerRadiusLabel(LauncherSettings.getCardCornerRadius(this))));
        mItems.add(SettingItem.header("המסך הראשי"));
        mItems.add(SettingItem.item("home_columns", "עמודות ברשת",
                LauncherSettings.getHomeColumns(this) + " בשורה"));
        mItems.add(SettingItem.toggle("missed_calls_enabled", "שורת שיחות והתראות",
                "מוסתרת אוטומטית כשאין שיחות שלא נענו",
                LauncherSettings.isMissedCallsEnabled(this)));
    }

    private void buildWidgetsList() {
        setScreenTitle("ווידג'טים");
        List<com.sprd.classichome.widget.WidgetHostManager.WidgetItem> all =
                com.sprd.classichome.widget.WidgetHostManager.getInstance(this).getWidgetList();
        mItems.add(SettingItem.header("ווידג'טים מוצבים"));
        if (all.isEmpty()) {
            mItems.add(SettingItem.info("אין ווידג'טים",
                    "להוספה: לחיצה ארוכה על אפליקציה בתפריט היישומים"));
        } else {
            for (com.sprd.classichome.widget.WidgetHostManager.WidgetItem w : all) {
                String where = (w.page == 0) ? "מסך ראשי" : ("עמוד " + w.page);
                mItems.add(SettingItem.item("widget:" + w.id, w.label, where));
            }
        }
        mItems.add(SettingItem.header("פריסה"));
        mItems.add(SettingItem.item("widgets_reset_layout", "איפוס מיקומים וגדלים",
                "כל הווידג'טים חוזרים לפריסת ברירת המחדל"));
    }

    private void buildAppsList() {
        setScreenTitle("תפריט היישומים");
        mItems.add(SettingItem.header("תצוגה"));
        mItems.add(SettingItem.item("menu_columns", "עמודות ברשת",
                LauncherSettings.getMenuColumns(this) + " בשורה"));
        mItems.add(SettingItem.header("סידור והסתרה"));
        mItems.add(SettingItem.item("sec:" + SEC_APPS_MANAGE, "ניהול אפליקציות",
                "העברה בין קבוצות והסתרה"));
    }

    /**
     * One row per launchable app with its current group as the summary.
     *
     * This replaces the old three-nested-dialogs flow, which offered no
     * indication of an app's current group, no D-pad-friendly navigation, and
     * loaded every app icon synchronously on the UI thread only to show a
     * text-only list. Icons are deliberately not loaded at all now.
     */
    private void buildAppsManageList() {
        setScreenTitle("ניהול אפליקציות");
        List<AppEntry> apps = getInstalledApps();
        mItems.add(SettingItem.header("כל האפליקציות"));
        for (AppEntry app : apps) {
            String group = LauncherSettings.getCustomAppGroup(this, app.pkg, app.cls);
            mItems.add(SettingItem.item("appmg:" + app.pkg + "/" + app.cls,
                    app.label, groupDisplayName(group)));
        }
    }

    private void buildKeysList() {
        setScreenTitle("מקשים וקיצורים");
        mItems.add(SettingItem.header("מקשי ספרות"));
        mItems.add(SettingItem.item("num_short_press_mode", "לחיצה קצרה", getNumShortModeSummary()));
        mItems.add(SettingItem.item("num_long_press_mode", "לחיצה ארוכה", getNumLongModeSummary()));
        mItems.add(SettingItem.item("shortcuts_numbers_short", "קיצורים ללחיצה קצרה", "הגדרה לכל מקש"));
        mItems.add(SettingItem.item("shortcuts_numbers_long", "קיצורים ללחיצה ארוכה", "הגדרה לכל מקש"));
        mItems.add(SettingItem.header("מקשי ניווט"));
        mItems.add(navKeyRow("up", "חץ למעלה"));
        mItems.add(navKeyRow("down", "חץ למטה"));
        mItems.add(navKeyRow("left", "חץ שמאלה"));
        mItems.add(navKeyRow("right", "חץ ימינה"));
        mItems.add(navKeyRow("center", "מקש אישור"));
        mItems.add(SettingItem.header("מקשים רכים"));
        mItems.add(navKeyRow("softleft", "מקש תפריט (שמאלי)"));
        mItems.add(navKeyRow("softright", "מקש חזרה (ימני)"));
    }

    private void buildResetList() {
        setScreenTitle("איפוס");
        mItems.add(SettingItem.header("איפוס חלקי"));
        mItems.add(SettingItem.item("reset_display", "איפוס תצוגה",
                "שעון, תאריכים, רקע ורשתות"));
        mItems.add(SettingItem.item("reset_keys", "איפוס מקשים וקיצורים",
                "כל הקיצורים חוזרים לברירת המחדל"));
        mItems.add(SettingItem.item("reset_apps", "איפוס שיוך אפליקציות",
                "סידור והסתרה חוזרים לברירת המחדל"));
        mItems.add(SettingItem.item("widgets_reset_layout", "איפוס פריסת ווידג'טים",
                "מיקומים וגדלים במסך הראשי"));
        mItems.add(SettingItem.header("איפוס מלא"));
        mItems.add(SettingItem.item("reset_all", "איפוס כל ההגדרות",
                "כל הסעיפים שלמעלה יחד"));
    }

    /** Back climbs one level before it leaves the screen. */
    @Override
    public void onBackPressed() {
        if (SEC_APPS_MANAGE.equals(mSection)) {
            mSection = SEC_APPS;
            refreshList();
            mListView.setSelection(mAppsPos);
            return;
        }
        if (mSection != null) {
            mSection = null;
            refreshList();
            mListView.setSelection(mRootPos);
            return;
        }
        super.onBackPressed();
    }

    // ------------------------------------------------------------------
    // Click dispatch
    // ------------------------------------------------------------------

    private void handleSettingClick(String key) {
        if (key.startsWith("sec:")) {
            String target = key.substring(4);
            if (mSection == null) {
                mRootPos = mClickedPos;
            } else if (SEC_APPS.equals(mSection) && SEC_APPS_MANAGE.equals(target)) {
                mAppsPos = mClickedPos;
            }
            mSection = target;
            refreshList();
            mListView.setSelection(0);
            return;
        }
        if (key.startsWith("widget:")) {
            try {
                showWidgetActionsDialog(Integer.parseInt(key.substring(7)));
            } catch (NumberFormatException e) {
                Log.w(TAG, "Bad widget key: " + key, e);
            }
            return;
        }
        if (key.startsWith("appmg:")) {
            showAppGroupDialog(key.substring(6));
            return;
        }
        if (key.startsWith("navkey:")) {
            showNavKeyDialog(key.substring(7));
            return;
        }

        if ("home_active".equals(key)) {
            handleMasterToggle();
        } else if ("clock_enabled".equals(key)) {
            LauncherSettings.setClockEnabled(this, !LauncherSettings.isClockEnabled(this));
            refreshList();
        } else if ("clock_size".equals(key)) {
            showClockSizeDialog();
        } else if ("clock_color".equals(key)) {
            showColorPickerDialog("צבע השעון", LauncherSettings.getClockColor(this),
                    new ColorSelectedCallback() {
                        @Override
                        public void onColorSelected(int color) {
                            LauncherSettings.setClockColor(LauncherSettingsActivity.this, color);
                            refreshList();
                        }
                    });
        } else if ("clock_font_style".equals(key)) {
            showClockFontStyleDialog();
        } else if ("clock_time_format".equals(key)) {
            showTimeFormatDialog();
        } else if ("date_enabled".equals(key)) {
            LauncherSettings.setDateEnabled(this, !LauncherSettings.isDateEnabled(this));
            refreshList();
        } else if ("date_size".equals(key)) {
            showTextSizeDialog("גודל תאריך לועזי", LauncherSettings.getDateSize(this),
                    new SizeSelectedCallback() {
                        @Override
                        public void onSizeSelected(int size) {
                            LauncherSettings.setDateSize(LauncherSettingsActivity.this, size);
                            refreshList();
                        }
                    });
        } else if ("date_color".equals(key)) {
            showColorPickerDialog("צבע תאריך לועזי", LauncherSettings.getDateColor(this),
                    new ColorSelectedCallback() {
                        @Override
                        public void onColorSelected(int color) {
                            LauncherSettings.setDateColor(LauncherSettingsActivity.this, color);
                            refreshList();
                        }
                    });
        } else if ("hebrew_date_enabled".equals(key)) {
            LauncherSettings.setHebrewDateEnabled(this, !LauncherSettings.isHebrewDateEnabled(this));
            refreshList();
        } else if ("hebrew_date_size".equals(key)) {
            showTextSizeDialog("גודל תאריך עברי", LauncherSettings.getHebrewDateSize(this),
                    new SizeSelectedCallback() {
                        @Override
                        public void onSizeSelected(int size) {
                            LauncherSettings.setHebrewDateSize(LauncherSettingsActivity.this, size);
                            refreshList();
                        }
                    });
        } else if ("hebrew_date_color".equals(key)) {
            showColorPickerDialog("צבע תאריך עברי", LauncherSettings.getHebrewDateColor(this),
                    new ColorSelectedCallback() {
                        @Override
                        public void onColorSelected(int color) {
                            LauncherSettings.setHebrewDateColor(LauncherSettingsActivity.this, color);
                            refreshList();
                        }
                    });
        } else if ("card_bg_type".equals(key)) {
            showCardBgDialog();
        } else if ("card_corner_radius".equals(key)) {
            showCornerRadiusDialog();
        } else if ("missed_calls_enabled".equals(key)) {
            LauncherSettings.setMissedCallsEnabled(this, !LauncherSettings.isMissedCallsEnabled(this));
            refreshList();
        } else if ("home_columns".equals(key)) {
            showColumnsDialog("עמודות ברשת מסך הבית", LauncherSettings.getHomeColumns(this), false);
        } else if ("menu_columns".equals(key)) {
            showColumnsDialog("עמודות בתפריט היישומים", LauncherSettings.getMenuColumns(this), true);
        } else if ("widgets_reset_layout".equals(key)) {
            confirm("איפוס פריסת ווידג'טים",
                    "כל הווידג'טים יחזרו למסך הראשי בפריסת ברירת המחדל.",
                    "אפס",
                    new Runnable() {
                        @Override
                        public void run() {
                            com.sprd.classichome.widget.WidgetHostManager
                                    .getInstance(LauncherSettingsActivity.this).resetPage0Layout();
                            Toast.makeText(LauncherSettingsActivity.this,
                                    "הפריסה אופסה", Toast.LENGTH_SHORT).show();
                            refreshList();
                        }
                    });
        } else if ("num_short_press_mode".equals(key)) {
            showNumShortModeDialog();
        } else if ("num_long_press_mode".equals(key)) {
            showNumLongModeDialog();
        } else if ("shortcuts_numbers_short".equals(key)) {
            showNumbersShortcutDialog(false);
        } else if ("shortcuts_numbers_long".equals(key)) {
            showNumbersShortcutDialog(true);
        } else if ("reset_display".equals(key)) {
            confirm("איפוס תצוגה",
                    "שעון, תאריכים, רקע הכרטיסים והרשתות יחזרו לברירת המחדל.\n"
                            + "קיצורי מקשים ושיוך אפליקציות לא ישתנו.",
                    "אפס",
                    new Runnable() {
                        @Override
                        public void run() {
                            LauncherSettings.resetDisplaySettings(LauncherSettingsActivity.this);
                            Toast.makeText(LauncherSettingsActivity.this,
                                    "הגדרות התצוגה אופסו", Toast.LENGTH_SHORT).show();
                            refreshList();
                        }
                    });
        } else if ("reset_keys".equals(key)) {
            confirm("איפוס מקשים וקיצורים",
                    "כל קיצורי המקשים ושני מצבי מקשי הספרות יחזרו לברירת המחדל.",
                    "אפס",
                    new Runnable() {
                        @Override
                        public void run() {
                            LauncherSettings.resetKeyShortcuts(LauncherSettingsActivity.this);
                            Toast.makeText(LauncherSettingsActivity.this,
                                    "הקיצורים אופסו", Toast.LENGTH_SHORT).show();
                            refreshList();
                        }
                    });
        } else if ("reset_apps".equals(key)) {
            confirm("איפוס שיוך אפליקציות",
                    "כל האפליקציות יחזרו לקבוצות ברירת המחדל, כולל אפליקציות מוסתרות.",
                    "אפס",
                    new Runnable() {
                        @Override
                        public void run() {
                            LauncherSettings.resetAppGroups(LauncherSettingsActivity.this);
                            forceReloadLauncherModel();
                            Toast.makeText(LauncherSettingsActivity.this,
                                    "השיוך אופס", Toast.LENGTH_SHORT).show();
                            refreshList();
                        }
                    });
        } else if ("reset_all".equals(key)) {
            confirm("איפוס כל ההגדרות",
                    "כל ההגדרות יימחקו: תצוגה, מקשים, שיוך אפליקציות ופריסת ווידג'טים.",
                    "איפוס מלא",
                    new Runnable() {
                        @Override
                        public void run() {
                            LauncherSettings.resetAll(LauncherSettingsActivity.this);
                            try {
                                com.sprd.classichome.widget.WidgetHostManager
                                        .getInstance(LauncherSettingsActivity.this).resetPage0Layout();
                            } catch (Throwable t) {
                                Log.w(TAG, "widget layout reset failed", t);
                            }
                            forceReloadLauncherModel();
                            Toast.makeText(LauncherSettingsActivity.this,
                                    "כל ההגדרות אופסו", Toast.LENGTH_SHORT).show();
                            refreshList();
                        }
                    });
        }
    }

    /**
     * The master switch flips system component state via root, which can block
     * on the su prompt — so the actual work runs off the UI thread. The old
     * code called su with waitFor() on the UI thread and froze the screen.
     */
    private void handleMasterToggle() {
        boolean nowActive = LauncherSettings.isModHomeEnabled(this)
                && !LauncherSettings.isStockHomeEnabled(this);
        if (nowActive) {
            // Warn before acting: after this, the launcher the user is standing
            // in stops being a home screen. The way back is this very settings
            // screen, which stays reachable from the app list.
            new AlertDialog.Builder(this)
                    .setTitle("חזרה למסך הבית המקורי")
                    .setMessage("המסך המשודרג יושבת ותחזור למסך הבית המקורי.\n\n"
                            + "אפשר להפעיל אותו חזרה בכל רגע מתוך המסך הזה, "
                            + "שנשאר נגיש מרשימת היישומים.")
                    .setPositiveButton("החזר למקורי", new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface d, int w) {
                            new Thread(new Runnable() {
                                @Override
                                public void run() {
                                    LauncherSettings.restoreStockHome(LauncherSettingsActivity.this);
                                    runOnUiThread(new Runnable() {
                                        @Override
                                        public void run() {
                                            finish();
                                        }
                                    });
                                }
                            }).start();
                        }
                    })
                    .setNegativeButton("ביטול", null)
                    .show();
        } else {
            new Thread(new Runnable() {
                @Override
                public void run() {
                    final boolean ok = LauncherSettings.activateModHome(LauncherSettingsActivity.this);
                    runOnUiThread(new Runnable() {
                        @Override
                        public void run() {
                            if (ok) {
                                Toast.makeText(LauncherSettingsActivity.this,
                                        "המסך המשודרג פעיל, המקורי הושבת", Toast.LENGTH_SHORT).show();
                            } else {
                                // No root, or su was denied. The chooser still
                                // works, it just leaves the stock launcher
                                // selectable.
                                Toast.makeText(LauncherSettingsActivity.this,
                                        "נדרשת הרשאת רוט - נפתח בורר ידני", Toast.LENGTH_LONG).show();
                                LauncherSettings.openHomeChooser(LauncherSettingsActivity.this);
                            }
                            refreshList();
                        }
                    });
                }
            }).start();
        }
    }

    private void refreshList() {
        buildSettingsList();
        mAdapter.notifyDataSetChanged();
    }

    /**
     * Activity.setTitle() alone does not reliably repaint the title once the
     * activity has a manifest label, so the action bar is set explicitly too.
     * The turquoise centered strip itself is the window's duoqin_action_bar
     * overlay — it comes with the theme, no code needed.
     */
    private void setScreenTitle(String t) {
        setTitle(t);
        try {
            if (getActionBar() != null) {
                getActionBar().setTitle(t);
            }
        } catch (Throwable ignore) {
        }
    }

    // ------------------------------------------------------------------
    // Key shortcut rows and dialogs
    // ------------------------------------------------------------------

    /** Everything the UI needs to know about one configurable physical key. */
    private static class NavKey {
        final String title;
        final String shortPref;
        final String longPref;
        final String shortDefault;
        final String longDefault;

        NavKey(String title, String shortPref, String longPref,
               String shortDefault, String longDefault) {
            this.title = title;
            this.shortPref = shortPref;
            this.longPref = longPref;
            this.shortDefault = shortDefault;
            this.longDefault = longDefault;
        }
    }

    private NavKey navKey(String id) {
        if ("up".equals(id)) {
            return new NavKey("חץ למעלה", "key_dpad_up_short", "key_dpad_up_long",
                    "מנהל קבצים", "ללא");
        }
        if ("down".equals(id)) {
            return new NavKey("חץ למטה", "key_dpad_down_short", "key_dpad_down_long",
                    "וילון התראות", "ללא");
        }
        if ("left".equals(id)) {
            return new NavKey("חץ שמאלה", "key_dpad_left_short", "key_dpad_left_long",
                    "לוח שנה", "ללא");
        }
        if ("right".equals(id)) {
            return new NavKey("חץ ימינה", "key_dpad_right_short", "key_dpad_right_long",
                    "לוח שנה עברי", "ללא");
        }
        if ("center".equals(id)) {
            return new NavKey("מקש אישור", "key_dpad_center_short", "key_dpad_center_long",
                    "פתיחה", "פנס");
        }
        if ("softleft".equals(id)) {
            return new NavKey("מקש תפריט (שמאלי)", "key_softkey_left_short", "key_softkey_left_long",
                    "מחשבון", "ללא");
        }
        return new NavKey("מקש חזרה (ימני)", "key_softkey_right_short", "key_softkey_right_long",
                "אנשי קשר", "ללא");
    }

    private SettingItem navKeyRow(String id, String title) {
        NavKey k = navKey(id);
        String summary = "קצרה: " + shortcutName(k.shortPref, k.shortDefault)
                + " · ארוכה: " + shortcutName(k.longPref, k.longDefault);
        return SettingItem.item("navkey:" + id, title, summary);
    }

    /**
     * Both press types of one key in a single small dialog. This is what makes
     * the keys screen symmetric: before, arrows could only get a short press,
     * the center key only a long one, and soft keys only a short one — while
     * the engine (handleShortPressKey/handleLongPressKey) read all of them.
     */
    private void showNavKeyDialog(String id) {
        final NavKey k = navKey(id);
        String[] options = {
                "לחיצה קצרה: " + shortcutName(k.shortPref, k.shortDefault),
                "לחיצה ארוכה: " + shortcutName(k.longPref, k.longDefault),
        };
        new AlertDialog.Builder(this)
                .setTitle(k.title)
                .setItems(options, new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface d, int which) {
                        if (which == 0) {
                            showKeyActionDialog(k.title + " — לחיצה קצרה", k.shortPref);
                        } else {
                            showKeyActionDialog(k.title + " — לחיצה ארוכה", k.longPref);
                        }
                    }
                })
                .setNegativeButton("ביטול", null)
                .show();
    }

    private void showNumbersShortcutDialog(final boolean longPress) {
        final String[] digits = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "0", "star", "pound"};
        final String[] names = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "0", "*", "#"};
        final String suffix = longPress ? "long" : "short";
        final String[] prefKeys = new String[digits.length];
        final String[] labels = new String[digits.length];
        for (int i = 0; i < digits.length; i++) {
            prefKeys[i] = "key_num_" + suffix + "_" + digits[i];
            labels[i] = "מקש " + names[i] + " — " + shortcutName(prefKeys[i], "ברירת מחדל");
        }
        final String pressLabel = longPress ? "לחיצה ארוכה" : "לחיצה קצרה";
        new AlertDialog.Builder(this)
                .setTitle(pressLabel + ": בחר מקש")
                .setItems(labels, new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        showKeyActionDialog("מקש " + names[which] + " — " + pressLabel,
                                prefKeys[which]);
                    }
                })
                .setNegativeButton("חזור", null)
                .show();
    }

    // Order matters: index in this list == checked position in the action
    // dialog. Keep the two arrays aligned.
    private static final String[] KEY_ACTION_VALUES = {
            LauncherSettings.ACTION_DEFAULT,
            "app:",
            LauncherSettings.ACTION_FLASHLIGHT,
            LauncherSettings.ACTION_NOTIFICATIONS,
            LauncherSettings.ACTION_SILENT_MODE,
            LauncherSettings.ACTION_SETTINGS,
            LauncherSettings.ACTION_MAIN_MENU,
            LauncherSettings.ACTION_CALL_LOG,
            LauncherSettings.ACTION_FLIPPER_NEXT,
            LauncherSettings.ACTION_WIDGET_EDIT,
            LauncherSettings.ACTION_NONE,
    };
    private static final String[] KEY_ACTION_LABELS = {
            "ברירת מחדל של המערכת",
            "בחירת אפליקציה...",
            "הדלקת / כיבוי פנס",
            "פתיחת וילון התראות",
            "מצב שקט / רגיל",
            "הגדרות מסך הבית",
            "תפריט ראשי",
            "יומן שיחות",
            "מעבר לעמוד הווידג'טים הבא",
            "עריכת מיקום וגודל ווידג'ט",
            "ללא פעולה",
    };

    private void showKeyActionDialog(final String title, final String prefKey) {
        String current = LauncherSettings.getKeyAction(this, prefKey, LauncherSettings.ACTION_DEFAULT);
        int checked = 0;
        for (int i = 0; i < KEY_ACTION_VALUES.length; i++) {
            if ("app:".equals(KEY_ACTION_VALUES[i])) {
                if (current.startsWith("app:")) {
                    checked = i;
                    break;
                }
            } else if (KEY_ACTION_VALUES[i].equals(current)) {
                checked = i;
                break;
            }
        }
        new AlertDialog.Builder(this)
                .setTitle(title)
                .setSingleChoiceItems(KEY_ACTION_LABELS, checked, new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        String value = KEY_ACTION_VALUES[which];
                        if ("app:".equals(value)) {
                            dialog.dismiss();
                            pickApp(new AppSelectedCallback() {
                                @Override
                                public void onAppSelected(String pkg, String cls, String label) {
                                    LauncherSettings.setKeyAction(LauncherSettingsActivity.this,
                                            prefKey, "app:" + pkg + "/" + cls);
                                    refreshList();
                                }
                            });
                            return;
                        }
                        LauncherSettings.setKeyAction(LauncherSettingsActivity.this, prefKey, value);
                        dialog.dismiss();
                        refreshList();
                    }
                })
                .setNegativeButton("ביטול", null)
                .show();
    }

    /** Short display name of a key's current action, for row summaries. */
    private String shortcutName(String prefKey, String defaultDesc) {
        String val = LauncherSettings.getKeyAction(this, prefKey, LauncherSettings.ACTION_DEFAULT);
        if (LauncherSettings.ACTION_DEFAULT.equals(val)) return defaultDesc;
        if (LauncherSettings.ACTION_FLASHLIGHT.equals(val)) return "פנס";
        if (LauncherSettings.ACTION_NOTIFICATIONS.equals(val)) return "וילון התראות";
        if (LauncherSettings.ACTION_SILENT_MODE.equals(val)) return "מצב שקט";
        if (LauncherSettings.ACTION_SETTINGS.equals(val)) return "הגדרות";
        if (LauncherSettings.ACTION_MAIN_MENU.equals(val)) return "תפריט ראשי";
        if (LauncherSettings.ACTION_CALL_LOG.equals(val)) return "יומן שיחות";
        if (LauncherSettings.ACTION_FLIPPER_NEXT.equals(val)) return "עמוד הבא";
        if (LauncherSettings.ACTION_WIDGET_EDIT.equals(val)) return "עריכת ווידג'ט";
        if (LauncherSettings.ACTION_NONE.equals(val)) return "ללא";
        if (val.startsWith("app:")) return appLabelOf(val.substring(4));
        return val;
    }

    /** "pkg/cls" -> app label; falls back to the package name. */
    private String appLabelOf(String comp) {
        try {
            String[] parts = comp.split("/");
            android.content.ComponentName cn =
                    new android.content.ComponentName(parts[0], parts.length > 1 ? parts[1] : "");
            CharSequence l = getPackageManager().getActivityInfo(cn, 0).loadLabel(getPackageManager());
            if (l != null) return l.toString();
        } catch (Throwable ignore) {
        }
        int slash = comp.indexOf('/');
        return slash > 0 ? comp.substring(0, slash) : comp;
    }

    // ------------------------------------------------------------------
    // App management
    // ------------------------------------------------------------------

    private static class AppEntry {
        String pkg;
        String cls;
        String label;
    }

    private interface AppSelectedCallback {
        void onAppSelected(String pkg, String cls, String label);
    }

    private List<AppEntry> mCachedApps;

    /**
     * Launchable apps, labels only. Icons are intentionally never loaded: the
     * list is text-only (like the ROM's own settings lists), and loadIcon() for
     * every app was the single biggest UI stall in the old screen.
     */
    private List<AppEntry> getInstalledApps() {
        if (mCachedApps != null) {
            return mCachedApps;
        }
        PackageManager pm = getPackageManager();
        Intent mainIntent = new Intent(Intent.ACTION_MAIN, null);
        mainIntent.addCategory(Intent.CATEGORY_LAUNCHER);
        List<ResolveInfo> resolveInfos = pm.queryIntentActivities(mainIntent, 0);

        List<AppEntry> apps = new ArrayList<AppEntry>();
        for (ResolveInfo ri : resolveInfos) {
            AppEntry entry = new AppEntry();
            entry.pkg = ri.activityInfo.packageName;
            entry.cls = ri.activityInfo.name;
            entry.label = ri.loadLabel(pm).toString();
            apps.add(entry);
        }
        Collections.sort(apps, new Comparator<AppEntry>() {
            @Override
            public int compare(AppEntry o1, AppEntry o2) {
                return o1.label.compareToIgnoreCase(o2.label);
            }
        });
        mCachedApps = apps;
        return apps;
    }

    private void pickApp(final AppSelectedCallback callback) {
        final List<AppEntry> apps = getInstalledApps();
        String[] titles = new String[apps.size()];
        for (int i = 0; i < apps.size(); i++) {
            titles[i] = apps.get(i).label;
        }
        new AlertDialog.Builder(this)
                .setTitle("בחר אפליקציה")
                .setItems(titles, new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        AppEntry app = apps.get(which);
                        callback.onAppSelected(app.pkg, app.cls, app.label);
                    }
                })
                .setNegativeButton("ביטול", null)
                .show();
    }

    private static final String[] GROUP_VALUES = {"mainmenu", "extra", "game", "hide", "default"};
    private static final String[] GROUP_LABELS = {"תפריט ראשי", "כלים ועזרים", "משחקים", "מוסתר", "ברירת מחדל"};

    private String groupDisplayName(String group) {
        for (int i = 0; i < GROUP_VALUES.length; i++) {
            if (GROUP_VALUES[i].equals(group)) return GROUP_LABELS[i];
        }
        return "ברירת מחדל";
    }

    /** compKey is "pkg/cls" from the row key. */
    private void showAppGroupDialog(String compKey) {
        int slash = compKey.indexOf('/');
        if (slash <= 0) return;
        final String pkg = compKey.substring(0, slash);
        final String cls = compKey.substring(slash + 1);

        String current = LauncherSettings.getCustomAppGroup(this, pkg, cls);
        int checked = GROUP_VALUES.length - 1; // "default"
        for (int i = 0; i < GROUP_VALUES.length; i++) {
            if (GROUP_VALUES[i].equals(current)) {
                checked = i;
                break;
            }
        }
        new AlertDialog.Builder(this)
                .setTitle("קבוצה עבור האפליקציה")
                .setSingleChoiceItems(GROUP_LABELS, checked, new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface d, int which) {
                        LauncherSettings.setCustomAppGroup(LauncherSettingsActivity.this,
                                pkg, cls, GROUP_VALUES[which]);
                        forceReloadLauncherModel();
                        d.dismiss();
                        refreshList();
                    }
                })
                .setNegativeButton("ביטול", null)
                .show();
    }

    private void forceReloadLauncherModel() {
        try {
            Class<?> lm = Class.forName("com.sprd.classichome.model.LauncherModel");
            lm.getMethod("forceReloadApps", Context.class).invoke(null, this);
        } catch (Throwable t) {
            Log.e(TAG, "forceReloadLauncherModel failed", t);
        }
    }

    // ------------------------------------------------------------------
    // Widgets
    // ------------------------------------------------------------------

    /** What you can do to a widget that is already placed. */
    private void showWidgetActionsDialog(final int widgetId) {
        final String[] actions = {"מיקום וגודל", "הסרה"};
        new AlertDialog.Builder(this)
                .setItems(actions, new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface d, int which) {
                        if (which == 0) {
                            // Editing happens on the home screen itself — that
                            // is where the widget is and where the arrows have
                            // to be seen moving it.
                            LauncherSettings.setPendingWidgetEdit(
                                    LauncherSettingsActivity.this, widgetId);
                            Intent home = new Intent(Intent.ACTION_MAIN);
                            home.addCategory(Intent.CATEGORY_HOME);
                            home.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                            startActivity(home);
                            finish();
                        } else {
                            com.sprd.classichome.widget.WidgetHostManager
                                    .getInstance(LauncherSettingsActivity.this)
                                    .removeWidgetById(LauncherSettingsActivity.this, widgetId);
                            refreshList();
                        }
                    }
                })
                .setNegativeButton("ביטול", null)
                .show();
    }

    // ------------------------------------------------------------------
    // Value pickers
    // ------------------------------------------------------------------

    private void confirm(String title, String message, String positive, final Runnable action) {
        new AlertDialog.Builder(this)
                .setTitle(title)
                .setMessage(message)
                .setPositiveButton(positive, new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface d, int w) {
                        action.run();
                    }
                })
                .setNegativeButton("ביטול", null)
                .show();
    }

    /** 2..5 columns. Wider than that and a 240px screen gives unreadable labels. */
    private void showColumnsDialog(String title, int current, final boolean menu) {
        final int min = LauncherSettings.MIN_MENU_COLUMNS;
        final int max = LauncherSettings.MAX_MENU_COLUMNS;
        final String[] labels = new String[max - min + 1];
        for (int i = 0; i < labels.length; i++) {
            labels[i] = (min + i) + " בשורה";
        }
        new AlertDialog.Builder(this)
                .setTitle(title)
                .setSingleChoiceItems(labels, current - min, new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface d, int which) {
                        int n = min + which;
                        if (menu) {
                            LauncherSettings.setMenuColumns(LauncherSettingsActivity.this, n);
                        } else {
                            LauncherSettings.setHomeColumns(LauncherSettingsActivity.this, n);
                        }
                        d.dismiss();
                        refreshList();
                    }
                })
                .setNegativeButton("ביטול", null)
                .show();
    }

    private void showClockSizeDialog() {
        final String[] options = {"קטן (34)", "רגיל (46)", "גדול (58)", "ענק (68)"};
        final int[] values = {34, 46, 58, 68};
        showIntChoiceDialog("גודל השעון", options, values,
                LauncherSettings.getClockSize(this),
                new SizeSelectedCallback() {
                    @Override
                    public void onSizeSelected(int size) {
                        LauncherSettings.setClockSize(LauncherSettingsActivity.this, size);
                        refreshList();
                    }
                });
    }

    private interface SizeSelectedCallback {
        void onSizeSelected(int size);
    }

    private void showTextSizeDialog(String title, int current, final SizeSelectedCallback callback) {
        final String[] options = {"קטן (11)", "רגיל (14)", "בינוני (16)", "גדול (18)"};
        final int[] values = {11, 14, 16, 18};
        showIntChoiceDialog(title, options, values, current, callback);
    }

    /**
     * Single-choice dialog over int values. The checked row reflects the real
     * stored value; when the stored value matches no option (a default that was
     * never in the list, an old build's value) nothing is checked rather than
     * lying about the closest one.
     */
    private void showIntChoiceDialog(String title, String[] options, final int[] values,
                                     int current, final SizeSelectedCallback callback) {
        int selectedIndex = -1;
        for (int i = 0; i < values.length; i++) {
            if (values[i] == current) {
                selectedIndex = i;
                break;
            }
        }
        new AlertDialog.Builder(this)
                .setTitle(title)
                .setSingleChoiceItems(options, selectedIndex, new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        callback.onSizeSelected(values[which]);
                        dialog.dismiss();
                    }
                })
                .setNegativeButton("ביטול", null)
                .show();
    }

    private void showClockFontStyleDialog() {
        final String[] options = {"רגיל", "מודגש", "דק", "רוחב אחיד", "סריף"};
        int current = LauncherSettings.getClockFontStyle(this);
        new AlertDialog.Builder(this)
                .setTitle("גופן השעון")
                .setSingleChoiceItems(options, current, new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        LauncherSettings.setClockFontStyle(LauncherSettingsActivity.this, which);
                        dialog.dismiss();
                        refreshList();
                    }
                })
                .setNegativeButton("ביטול", null)
                .show();
    }

    private void showTimeFormatDialog() {
        final String[] options = {
                "ברירת מחדל של המערכת",
                "24 שעות",
                "24 שעות עם שניות",
                "12 שעות עם AM/PM",
                "12 שעות",
        };
        int current = LauncherSettings.getClockTimeFormat(this);
        new AlertDialog.Builder(this)
                .setTitle("פורמט השעה")
                .setSingleChoiceItems(options, current, new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        LauncherSettings.setClockTimeFormat(LauncherSettingsActivity.this, which);
                        dialog.dismiss();
                        refreshList();
                    }
                })
                .setNegativeButton("ביטול", null)
                .show();
    }

    private void showCardBgDialog() {
        final String[] options = {
                "שקוף לגמרי",
                "זכוכית עדינה (15%)",
                "זכוכית מודגשת (35%)",
                "כהה שקוף",
                "כהה מלא",
        };
        int current = LauncherSettings.getCardBgType(this);
        new AlertDialog.Builder(this)
                .setTitle("רקע הכרטיסים")
                .setSingleChoiceItems(options, current, new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        LauncherSettings.setCardBgType(LauncherSettingsActivity.this, which);
                        dialog.dismiss();
                        refreshList();
                    }
                })
                .setNegativeButton("ביטול", null)
                .show();
    }

    private void showCornerRadiusDialog() {
        // 10 is the stored default, so it must be a real option — the old list
        // (0/8/14/22) could never display the value most users actually had.
        final String[] options = {"ללא (0)", "עדין (8)", "רגיל (10)", "בינוני (14)", "מלא (22)"};
        final int[] values = {0, 8, 10, 14, 22};
        showIntChoiceDialog("פינות מעוגלות", options, values,
                LauncherSettings.getCardCornerRadius(this),
                new SizeSelectedCallback() {
                    @Override
                    public void onSizeSelected(int size) {
                        LauncherSettings.setCardCornerRadius(LauncherSettingsActivity.this, size);
                        refreshList();
                    }
                });
    }

    private void showNumShortModeDialog() {
        final String[] options = {
                "פתיחת חייגן (ברירת מחדל)",
                "קיצור ישיר לאפליקציות",
        };
        int current = LauncherSettings.getNumShortPressMode(this);
        new AlertDialog.Builder(this)
                .setTitle("לחיצה קצרה על ספרות")
                .setSingleChoiceItems(options, current, new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        LauncherSettings.setNumShortPressMode(LauncherSettingsActivity.this, which);
                        dialog.dismiss();
                        refreshList();
                    }
                })
                .setNegativeButton("ביטול", null)
                .show();
    }

    private void showNumLongModeDialog() {
        final String[] options = {
                "חיוג מהיר",
                "אפליקציות מותאמות",
                "התאמה לפי מקש",
        };
        int current = LauncherSettings.getNumLongPressMode(this);
        new AlertDialog.Builder(this)
                .setTitle("לחיצה ארוכה על ספרות")
                .setSingleChoiceItems(options, current, new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        LauncherSettings.setNumLongPressMode(LauncherSettingsActivity.this, which);
                        dialog.dismiss();
                        refreshList();
                    }
                })
                .setNegativeButton("ביטול", null)
                .show();
    }

    // ------------------------------------------------------------------
    // Color picker
    // ------------------------------------------------------------------

    // One palette for every colored element, replacing two divergent copies of
    // the same list. Names are what row summaries show.
    private static final String[] COLOR_NAMES = {
            "לבן", "זהב", "טורקיז", "ירוק", "כתום", "אדום", "סגול", "צהוב", "תכלת"};
    private static final int[] COLOR_VALUES = {
            0xFFFFFFFF, 0xFFFFD700, 0xFF00E5FF, 0xFF00E676, 0xFFFF9100,
            0xFFFF5252, 0xFFE040FB, 0xFFFFFF00, 0xFF64B5F6};

    private String colorName(int c) {
        for (int i = 0; i < COLOR_VALUES.length; i++) {
            if (COLOR_VALUES[i] == c) return COLOR_NAMES[i];
        }
        return "מותאם אישית";
    }

    private interface ColorSelectedCallback {
        void onColorSelected(int color);
    }

    /**
     * Single-choice list where every row carries a real swatch of the color.
     * The old picker was names only — choosing "זהב" was an act of faith.
     */
    private void showColorPickerDialog(String title, int current, final ColorSelectedCallback callback) {
        int selected = -1;
        for (int i = 0; i < COLOR_VALUES.length; i++) {
            if (COLOR_VALUES[i] == current) {
                selected = i;
                break;
            }
        }
        ListAdapter adapter = new BaseAdapter() {
            @Override
            public int getCount() {
                return COLOR_NAMES.length;
            }

            @Override
            public Object getItem(int position) {
                return COLOR_NAMES[position];
            }

            @Override
            public long getItemId(int position) {
                return position;
            }

            @Override
            public View getView(int position, View convertView, ViewGroup parent) {
                CheckedTextView tv = (CheckedTextView) (convertView != null ? convertView
                        : LayoutInflater.from(parent.getContext()).inflate(
                                android.R.layout.select_dialog_singlechoice, parent, false));
                tv.setText(COLOR_NAMES[position]);
                int side = (int) TypedValue.applyDimension(TypedValue.COMPLEX_UNIT_DIP, 20,
                        parent.getResources().getDisplayMetrics());
                GradientDrawable swatch = new GradientDrawable();
                swatch.setShape(GradientDrawable.RECTANGLE);
                swatch.setColor(COLOR_VALUES[position]);
                swatch.setSize(side, side);
                swatch.setCornerRadius(side / 4f);
                swatch.setStroke(1, 0xFF707273);
                // In RTL the text hugs the right edge, so the swatch goes on
                // the right of it; the radio mark stays at the far left.
                swatch.setBounds(0, 0, side, side);
                tv.setCompoundDrawables(null, null, swatch, null);
                tv.setCompoundDrawablePadding(side / 3);
                return tv;
            }
        };
        new AlertDialog.Builder(this)
                .setTitle(title)
                .setSingleChoiceItems(adapter, selected, new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        callback.onColorSelected(COLOR_VALUES[which]);
                        dialog.dismiss();
                    }
                })
                .setNegativeButton("ביטול", null)
                .show();
    }

    // ------------------------------------------------------------------
    // Row summaries
    // ------------------------------------------------------------------

    private String getClockSizeSummary() {
        int size = LauncherSettings.getClockSize(this);
        if (size <= 34) return "קטן (" + size + ")";
        if (size <= 46) return "רגיל (" + size + ")";
        if (size <= 58) return "גדול (" + size + ")";
        return "ענק (" + size + ")";
    }

    private String getClockFontStyleSummary() {
        switch (LauncherSettings.getClockFontStyle(this)) {
            case LauncherSettings.FONT_STYLE_BOLD: return "מודגש";
            case LauncherSettings.FONT_STYLE_LIGHT: return "דק";
            case LauncherSettings.FONT_STYLE_MONOSPACE: return "רוחב אחיד";
            case LauncherSettings.FONT_STYLE_SERIF: return "סריף";
            default: return "רגיל";
        }
    }

    private String getClockTimeFormatSummary() {
        switch (LauncherSettings.getClockTimeFormat(this)) {
            case LauncherSettings.TIME_FORMAT_24H: return "24 שעות";
            case LauncherSettings.TIME_FORMAT_24H_SECONDS: return "24 שעות עם שניות";
            case LauncherSettings.TIME_FORMAT_12H_AMPM: return "12 שעות עם AM/PM";
            case LauncherSettings.TIME_FORMAT_12H_NO_AMPM: return "12 שעות";
            default: return "ברירת מחדל של המערכת";
        }
    }

    private String getCardBgSummary() {
        switch (LauncherSettings.getCardBgType(this)) {
            case LauncherSettings.CARD_BG_TRANSPARENT: return "שקוף לגמרי";
            case LauncherSettings.CARD_BG_MEDIUM_GLASS: return "זכוכית מודגשת (35%)";
            case LauncherSettings.CARD_BG_DARK_FROST: return "כהה שקוף";
            case LauncherSettings.CARD_BG_SOLID_DARK: return "כהה מלא";
            default: return "זכוכית עדינה (15%)";
        }
    }

    private String cornerRadiusLabel(int r) {
        if (r <= 0) return "ללא";
        return r + "dp";
    }

    private String getNumLongModeSummary() {
        switch (LauncherSettings.getNumLongPressMode(this)) {
            case LauncherSettings.NUM_LONG_CUSTOM_APPS: return "אפליקציות מותאמות";
            case LauncherSettings.NUM_LONG_PER_KEY: return "התאמה לפי מקש";
            default: return "חיוג מהיר";
        }
    }

    private String getNumShortModeSummary() {
        switch (LauncherSettings.getNumShortPressMode(this)) {
            case LauncherSettings.NUM_SHORT_CUSTOM_APPS: return "קיצור ישיר לאפליקציות";
            default: return "חייגן (ברירת מחדל)";
        }
    }

    // ------------------------------------------------------------------
    // Adapter
    // ------------------------------------------------------------------

    private static class SettingsAdapter extends BaseAdapter {
        private final Context mContext;
        private final List<SettingItem> mData;

        /**
         * The framework layout ROM settings rows are made of, resolved by name
         * once. 0 means a ROM without it — rows then fall back to a
         * code-built approximation.
         */
        private final int mRomRowLayout;

        public SettingsAdapter(Context context, List<SettingItem> data) {
            mContext = context;
            mData = data;
            mRomRowLayout = context.getResources().getIdentifier(
                    "duoqin_layout_preference", "layout", "android");
        }

        @Override
        public int getCount() {
            return mData.size();
        }

        @Override
        public Object getItem(int position) {
            return mData.get(position);
        }

        @Override
        public long getItemId(int position) {
            return position;
        }

        @Override
        public int getViewTypeCount() {
            return 4;
        }

        @Override
        public int getItemViewType(int position) {
            return mData.get(position).type;
        }

        /**
         * Without this, headers stay focusable: BaseAdapter.areAllItemsEnabled()
         * returns true by default and ListView trusts it as a fast path, never
         * consulting isEnabled() per row. On a D-pad device arrowing down would
         * then stop on every category separator.
         */
        @Override
        public boolean areAllItemsEnabled() {
            return false;
        }

        @Override
        public boolean isEnabled(int position) {
            SettingItem item = mData.get(position);
            return item.type != SettingItem.TYPE_HEADER && item.enabled;
        }

        private static class RowHolder {
            TextView title;
            TextView summary;
            CompoundButton toggle;
        }

        @Override
        public View getView(int position, View convertView, ViewGroup parent) {
            SettingItem item = mData.get(position);

            if (item.type == SettingItem.TYPE_HEADER) {
                TextView tv;
                if (convertView == null) {
                    // The theme's listSeparatorTextViewStyle resolves to the
                    // ROM's own category strip (36dp, #707273 background,
                    // 16sp gray text) — identical to the system Settings app.
                    tv = new TextView(mContext, null,
                            android.R.attr.listSeparatorTextViewStyle);
                } else {
                    tv = (TextView) convertView;
                }
                tv.setText(item.title);
                return tv;
            }

            View row = convertView;
            RowHolder holder;
            if (row == null) {
                holder = new RowHolder();
                row = makeRow(parent, item.type, holder);
                row.setTag(holder);
            } else {
                holder = (RowHolder) row.getTag();
            }

            holder.title.setText(item.title);
            if (holder.summary != null) {
                if (item.summary == null || item.summary.length() == 0) {
                    holder.summary.setVisibility(View.GONE);
                } else {
                    holder.summary.setText(item.summary);
                    holder.summary.setVisibility(View.VISIBLE);
                }
            }
            if (holder.toggle != null) {
                holder.toggle.setChecked(item.checked);
            }
            return row;
        }

        private View makeRow(ViewGroup parent, int type, RowHolder holder) {
            View row = null;
            if (mRomRowLayout != 0) {
                row = LayoutInflater.from(mContext).inflate(mRomRowLayout, parent, false);
                TextView title = (TextView) row.findViewById(android.R.id.title);
                TextView summary = (TextView) row.findViewById(android.R.id.summary);
                View icon = row.findViewById(android.R.id.icon);
                ViewGroup widgetFrame = (ViewGroup) row.findViewById(android.R.id.widget_frame);
                if (title != null && widgetFrame != null) {
                    // Settings rows in the ROM are text-only: its adapter hides
                    // the icon too, and an empty ImageView would still hold its
                    // 32dp width. The icon sits inside a wrapper LinearLayout —
                    // hide the wrapper.
                    if (icon != null && icon.getParent() instanceof View) {
                        ((View) icon.getParent()).setVisibility(View.GONE);
                    }
                    holder.title = title;
                    holder.summary = summary;
                    attachToggle(widgetFrame, type, holder);
                    return row;
                }
                // Layout exists but is not shaped like we expect — fall through.
                row = null;
            }
            return makeFallbackRow(type, holder);
        }

        private void attachToggle(ViewGroup widgetFrame, int type, RowHolder holder) {
            CompoundButton toggle = null;
            if (type == SettingItem.TYPE_TOGGLE) {
                // ROM convention: plain on/off rows are checkboxes; the theme
                // draws them turquoise.
                toggle = new CheckBox(mContext);
            } else if (type == SettingItem.TYPE_MASTER) {
                // ...and the screen's master toggle is the turquoise switch.
                toggle = new Switch(mContext);
            }
            if (toggle != null) {
                // The row owns the D-pad; a focusable toggle would add a second
                // focus stop per row and swallow left/right.
                toggle.setFocusable(false);
                toggle.setFocusableInTouchMode(false);
                toggle.setClickable(false);
                widgetFrame.addView(toggle, new ViewGroup.LayoutParams(
                        ViewGroup.LayoutParams.WRAP_CONTENT,
                        ViewGroup.LayoutParams.WRAP_CONTENT));
                holder.toggle = toggle;
            }
        }

        /** Rough equivalent of the framework row, for ROMs without NewUI. */
        private View makeFallbackRow(int type, RowHolder holder) {
            float density = mContext.getResources().getDisplayMetrics().density;
            int padH = (int) (12 * density);
            int padV = (int) (4 * density);

            LinearLayout line = new LinearLayout(mContext);
            line.setOrientation(LinearLayout.HORIZONTAL);
            line.setGravity(android.view.Gravity.CENTER_VERTICAL);
            line.setPadding(padH, padV, padH, padV);
            line.setMinimumHeight((int) (68 * density));

            LinearLayout texts = new LinearLayout(mContext);
            texts.setOrientation(LinearLayout.VERTICAL);
            TextView t1 = new TextView(mContext, null, android.R.attr.textAppearanceMedium);
            t1.setSingleLine(true);
            TextView t2 = new TextView(mContext, null, android.R.attr.textAppearanceSmall);
            texts.addView(t1);
            texts.addView(t2);
            line.addView(texts, new LinearLayout.LayoutParams(
                    0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.0f));

            LinearLayout widgetFrame = new LinearLayout(mContext);
            widgetFrame.setGravity(android.view.Gravity.CENTER);
            line.addView(widgetFrame, new LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.WRAP_CONTENT,
                    ViewGroup.LayoutParams.WRAP_CONTENT));

            holder.title = t1;
            holder.summary = t2;
            attachToggle(widgetFrame, type, holder);
            return line;
        }
    }
}
