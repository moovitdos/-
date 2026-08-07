package com.sprd.classichome.settings;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.util.Log;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.Switch;
import android.widget.TextView;
import android.widget.Toast;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class LauncherSettingsActivity extends Activity {
    private static final String TAG = "LauncherSettingsActivity";

    private ListView mListView;
    private SettingsAdapter mAdapter;
    private List<SettingItem> mItems = new ArrayList<SettingItem>();

    public static class SettingItem {
        public static final int TYPE_HEADER = 0;
        public static final int TYPE_ITEM = 1;
        public static final int TYPE_SWITCH = 2;

        public int type;
        public String key;
        public String title;
        public String summary;
        public boolean checked;

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

        /** A row that is on or off. Rendered with the ROM's turquoise switch. */
        public static SettingItem toggle(String key, String title, String summary, boolean on) {
            SettingItem s = new SettingItem(TYPE_SWITCH, key, title, summary);
            s.checked = on;
            return s;
        }
    }

    /**
     * Duoqin added a "NewUI" style family to framework-res — turquoise action bar,
     * grey list rows, turquoise switches. The ROM's own Settings app just inherits
     * from it, so any app can look native by doing the same.
     *
     * The style is not in the android.jar we compile against, so it cannot be named
     * in the manifest and has to be resolved by name at runtime. It must be applied
     * BEFORE super.onCreate() — after that the content view is already inflated and
     * setTheme() has no effect.
     *
     * AndroidManifest already points this activity at @style/BaseTheme, whose parent
     * is @android:style/Theme.Holo.Light.NewUI. This call is the belt to that braces:
     * it keeps the ROM look even if the manifest theme is ever changed, and degrades
     * silently to plain Holo on a ROM without the family.
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
        // No colours, no padding, no divider overrides here. Theme.Holo.Light.NewUI is
        // a LIGHT theme: it supplies a light window background, dark text and the ROM's
        // own row dividers. The previous code painted a black background with white
        // text, which inverted the theme and was exactly why this screen looked like
        // stock Android instead of the device.
        mListView.setClipToPadding(false);

        setContentView(mListView);

        buildSettingsList();

        mAdapter = new SettingsAdapter(this, mItems);
        mListView.setAdapter(mAdapter);

        mListView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                SettingItem item = mItems.get(position);
                if (item.type == SettingItem.TYPE_ITEM
                        || item.type == SettingItem.TYPE_SWITCH) {
                    handleSettingClick(item.key);
                }
            }
        });
    }

    /**
     * Which sub-screen is showing. null = the top-level category list.
     *
     * One activity, several screens. A separate Activity per category would each need
     * a manifest entry, and every one of them would inherit the task-stack problem
     * that already required launchMode="singleTask" on this one.
     */
    private String mSection = null;

    // Two levels, never three. Every extra level is extra keypresses on a keypad,
    // and 240x320 shows about five and a half rows — so the root stays short and
    // each sub-screen is a single focused topic.
    private static final String SEC_TIME = "time";       // clock + both dates
    private static final String SEC_LOOK = "look";       // card, corners, calls row
    private static final String SEC_WIDGETS = "widgets"; // placed widgets
    private static final String SEC_APPS = "apps";       // the app menu
    private static final String SEC_KEYS = "keys";       // every physical key
    private static final String SEC_RESET = "reset";

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
        } else if (SEC_KEYS.equals(mSection)) {
            buildKeysList();
        } else if (SEC_RESET.equals(mSection)) {
            buildResetList();
        }
    }

    /** Top level. One switch and six destinations. */
    private void buildRootList() {
        setScreenTitle("הגדרות מסך הבית");
        // On means this launcher is the home screen AND the stock one is disabled.
        // Reporting the real state rather than a stored flag, so the switch can't
        // claim something the system disagrees with.
        boolean active = LauncherSettings.isModHomeEnabled(this)
                && !LauncherSettings.isStockHomeEnabled(this);
        mItems.add(SettingItem.toggle("home_active", "מסך הבית המשודרג", null, active));
        mItems.add(SettingItem.item("sec:" + SEC_TIME, "שעון ותאריך", "גודל, צבע, גופן ותאריך עברי"));
        mItems.add(SettingItem.item("sec:" + SEC_LOOK, "מראה מסך הבית", "רקע, פינות ושורת שיחות"));
        mItems.add(SettingItem.item("sec:" + SEC_WIDGETS, "ווידג'טים", getWidgetsSummary()));
        mItems.add(SettingItem.item("sec:" + SEC_APPS, "תפריט היישומים", "סידור, העברה והסתרה"));
        mItems.add(SettingItem.item("sec:" + SEC_KEYS, "מקשים", "ספרות, חיצים ומקשים רכים"));
        mItems.add(SettingItem.item("sec:" + SEC_RESET, "איפוס", "שחזור הגדרות לברירת מחדל"));
    }


    private void buildTimeList() {
        setScreenTitle("שעון ותאריך");
        mItems.add(SettingItem.header("שעון"));
        mItems.add(SettingItem.toggle("clock_enabled", "הצגה", null, LauncherSettings.isClockEnabled(this)));
        mItems.add(SettingItem.item("clock_size", "גודל", getClockSizeSummary()));
        mItems.add(SettingItem.item("clock_color", "צבע", getClockColorSummary()));
        mItems.add(SettingItem.item("clock_font_style", "גופן", getClockFontStyleSummary()));
        mItems.add(SettingItem.header("תאריך לועזי"));
        mItems.add(SettingItem.toggle("date_enabled", "הצגה", null, LauncherSettings.isDateEnabled(this)));
        mItems.add(SettingItem.item("date_size", "גודל", LauncherSettings.getDateSize(this) + "sp"));
        mItems.add(SettingItem.header("תאריך עברי"));
        mItems.add(SettingItem.toggle("hebrew_date_enabled", "הצגה", null, LauncherSettings.isHebrewDateEnabled(this)));
        mItems.add(SettingItem.item("hebrew_date_size", "גודל", LauncherSettings.getHebrewDateSize(this) + "sp"));
        mItems.add(SettingItem.item("hebrew_date_color", "צבע", "התאמת צבע"));
    }

    private void buildLookList() {
        setScreenTitle("מראה מסך הבית");
        mItems.add(SettingItem.item("card_bg_type", "רקע ושקיפות", getCardBgSummary()));
        mItems.add(SettingItem.item("card_corner_radius", "פינות מעוגלות", LauncherSettings.getCardCornerRadius(this) + "dp"));
        mItems.add(SettingItem.toggle("missed_calls_enabled", "שורת שיחות והתראות", null,
                LauncherSettings.isMissedCallsEnabled(this)));
        mItems.add(SettingItem.item("home_columns", "עמודות ברשת מסך הבית",
                LauncherSettings.getHomeColumns(this) + " בשורה"));
    }

    /**
     * Every placed widget, with the page it lives on. Selecting one offers to move or
     * remove it — the two things you can actually do to a widget once it is there.
     */
    private void buildWidgetsList() {
        setScreenTitle("ווידג'טים");
        List<com.sprd.classichome.widget.WidgetHostManager.WidgetItem> all =
                com.sprd.classichome.widget.WidgetHostManager.getInstance(this).getWidgetList();
        if (all.isEmpty()) {
            mItems.add(SettingItem.item("widgets_none", "אין ווידג'טים",
                    "להוספה: לחיצה ארוכה על אפליקציה בתפריט היישומים"));
            return;
        }
        for (com.sprd.classichome.widget.WidgetHostManager.WidgetItem w : all) {
            String where = (w.page == 0) ? "מסך ראשי" : ("עמוד " + w.page);
            mItems.add(SettingItem.item("widget:" + w.id, w.label, where));
        }
        mItems.add(SettingItem.header("פריסה"));
        mItems.add(SettingItem.item("widgets_reset_layout", "איפוס מיקומים וגדלים",
                "החזרת כל הווידג'טים למסך הראשי לפריסת ברירת המחדל"));
    }

    private String getWidgetsSummary() {
        try {
            int n = com.sprd.classichome.widget.WidgetHostManager.getInstance(this)
                    .getWidgetList().size();
            return n == 0 ? "אין ווידג'טים" : (n + " מוצבים");
        } catch (Throwable t) {
            return "";
        }
    }

    private void buildAppsList() {
        setScreenTitle("תפריט היישומים");
        mItems.add(SettingItem.item("menu_columns", "עמודות ברשת",
                LauncherSettings.getMenuColumns(this) + " בשורה"));
        mItems.add(SettingItem.item("apps_management", "סידור והסתרה", "תפריט ראשי / כלים / משחקים / מוסתר"));
        mItems.add(SettingItem.item("reset_apps", "איפוס מיקומי אפליקציות", "החזרה לברירת המחדל של היצרן"));
    }

    private void buildKeysList() {
        setScreenTitle("מקשים");
        mItems.add(SettingItem.header("מקשי ספרות"));
        mItems.add(SettingItem.item("num_short_press_mode", "מצב לחיצה קצרה", getNumShortModeSummary()));
        mItems.add(SettingItem.item("num_long_press_mode", "מצב לחיצה ארוכה", getNumLongModeSummary()));
        mItems.add(SettingItem.item("shortcuts_numbers_short", "פעולה ללחיצה קצרה", "לכל ספרה בנפרד"));
        mItems.add(SettingItem.item("shortcuts_numbers_long", "פעולה ללחיצה ארוכה", "לכל ספרה בנפרד"));
        mItems.add(SettingItem.header("חיצים"));
        mItems.add(SettingItem.item("shortcut_dpad_up", "למעלה", getShortcutSummary("key_dpad_up_short", "מנהל קבצים")));
        mItems.add(SettingItem.item("shortcut_dpad_down", "למטה", getShortcutSummary("key_dpad_down_short", "וילון התראות")));
        mItems.add(SettingItem.item("shortcut_dpad_left", "שמאלה", getShortcutSummary("key_dpad_left_short", "לוח שנה")));
        mItems.add(SettingItem.item("shortcut_dpad_right", "ימינה", getShortcutSummary("key_dpad_right_short", "לוח שנה עברי")));
        mItems.add(SettingItem.item("shortcut_dpad_center_long", "מקש מרכזי - לחיצה ארוכה", getShortcutSummary("key_dpad_center_long", "פנס / ברירת מחדל")));
        mItems.add(SettingItem.header("מקשים רכים"));
        mItems.add(SettingItem.item("shortcut_softkey_left", "מקש שמאלי", getShortcutSummary("key_softkey_left_short", "מחשבון")));
        mItems.add(SettingItem.item("shortcut_softkey_right", "מקש ימני", getShortcutSummary("key_softkey_right_short", "אנשי קשר")));
    }

    private void buildResetList() {
        setScreenTitle("איפוס");
        mItems.add(SettingItem.item("reset_all", "שחזור כל ההגדרות", "שעון, צבעים, מקשים והגדרות"));
    }

    /** Back key climbs one level before it leaves the screen. */
    @Override
    public void onBackPressed() {
        if (mSection != null) {
            mSection = null;
            refreshList();
            mListView.setSelection(0);
            return;
        }
        super.onBackPressed();
    }

    private void handleSettingClick(String key) {
        if (key != null && key.startsWith("sec:")) {
            mSection = key.substring(4);
            refreshList();
            mListView.setSelection(0);
            return;
        }
        if ("menu_columns".equals(key)) {
            showColumnsDialog("עמודות בתפריט היישומים",
                    LauncherSettings.getMenuColumns(this), true);
            return;
        }
        if ("home_columns".equals(key)) {
            showColumnsDialog("עמודות ברשת מסך הבית",
                    LauncherSettings.getHomeColumns(this), false);
            return;
        }
        if (key != null && key.startsWith("widget:")) {
            try {
                showWidgetActionsDialog(Integer.parseInt(key.substring(7)));
            } catch (NumberFormatException e) {
                Log.w(TAG, "Bad widget key: " + key, e);
            }
            return;
        }
        if ("widgets_reset_layout".equals(key)) {
            com.sprd.classichome.widget.WidgetHostManager.getInstance(this)
                    .resetPage0Layout();
            Toast.makeText(this, "הפריסה אופסה", Toast.LENGTH_SHORT).show();
            refreshList();
            return;
        }
        if ("widgets_none".equals(key)) {
            return;
        }
        if ("home_choose".equals(key)) {
            if (!LauncherSettings.openHomeChooser(this)) {
                Toast.makeText(this, "לא נמצא מסך לבחירת מסך הבית", Toast.LENGTH_SHORT).show();
            }
            return;
        } else if ("home_active".equals(key)) {
            boolean nowActive = LauncherSettings.isModHomeEnabled(this)
                    && !LauncherSettings.isStockHomeEnabled(this);
            if (nowActive) {
                handleSettingClick("home_restore");
            } else {
                if (LauncherSettings.activateModHome(this)) {
                    Toast.makeText(this, "המסך המשודרג פעיל, המקורי הושבת",
                            Toast.LENGTH_SHORT).show();
                } else {
                    // No root, or su was denied. The chooser still works, it just
                    // leaves the stock launcher selectable.
                    Toast.makeText(this, "נדרשת הרשאת רוט - נפתח בורר ידני",
                            Toast.LENGTH_LONG).show();
                    LauncherSettings.openHomeChooser(this);
                }
            }
            refreshList();
            return;
        } else if ("home_restore".equals(key)) {
            // Warn before acting: after this the launcher the user is standing in
            // stops being a home screen. The way back is this very settings screen,
            // which stays reachable because it is its own launcher activity.
            new AlertDialog.Builder(this)
                    .setTitle("חזרה למסך הבית המקורי")
                    .setMessage("המסך המשודרג יושבת ותחזור למסך הבית המקורי.\n\n"
                            + "אפשר להפעיל אותו חזרה בכל רגע מתוך המסך הזה, "
                            + "שנשאר נגיש מרשימת היישומים.")
                    .setPositiveButton("החזר למקורי", new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface d, int w) {
                            LauncherSettings.restoreStockHome(LauncherSettingsActivity.this);
                            finish();
                        }
                    })
                    .setNegativeButton("ביטול", null)
                    .show();
            return;
        }
        if ("clock_enabled".equals(key)) {
            boolean current = LauncherSettings.isClockEnabled(this);
            LauncherSettings.setClockEnabled(this, !current);
            refreshList();
        } else if ("clock_size".equals(key)) {
            showClockSizeDialog();
        } else if ("clock_color".equals(key)) {
            showColorPickerDialog("בחר צבע לשעון", new ColorSelectedCallback() {
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
            boolean current = LauncherSettings.isDateEnabled(this);
            LauncherSettings.setDateEnabled(this, !current);
            refreshList();
        } else if ("date_size".equals(key)) {
            showTextSizeDialog("גודל תאריך לועזי", LauncherSettings.getDateSize(this), new SizeSelectedCallback() {
                @Override
                public void onSizeSelected(int size) {
                    LauncherSettings.setDateSize(LauncherSettingsActivity.this, size);
                    refreshList();
                }
            });
        } else if ("hebrew_date_enabled".equals(key)) {
            boolean current = LauncherSettings.isHebrewDateEnabled(this);
            LauncherSettings.setHebrewDateEnabled(this, !current);
            refreshList();
        } else if ("hebrew_date_size".equals(key)) {
            showTextSizeDialog("גודל תאריך עברי", LauncherSettings.getHebrewDateSize(this), new SizeSelectedCallback() {
                @Override
                public void onSizeSelected(int size) {
                    LauncherSettings.setHebrewDateSize(LauncherSettingsActivity.this, size);
                    refreshList();
                }
            });
        } else if ("hebrew_date_color".equals(key)) {
            showColorPickerDialog("בחר צבע לתאריך עברי", new ColorSelectedCallback() {
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
            boolean current = LauncherSettings.isMissedCallsEnabled(this);
            LauncherSettings.setMissedCallsEnabled(this, !current);
            refreshList();
        } else if ("num_long_press_mode".equals(key)) {
            showNumLongModeDialog();
        } else if ("num_short_press_mode".equals(key)) {
            showNumShortModeDialog();
        } else if ("shortcuts_numbers_long".equals(key)) {
            showNumbersShortcutDialog(true);
        } else if ("shortcuts_numbers_short".equals(key)) {
            showNumbersShortcutDialog(false);
        } else if ("shortcut_dpad_up".equals(key)) {
            showKeyActionDialog("D-Pad למעלה", "key_dpad_up_short");
        } else if ("shortcut_dpad_down".equals(key)) {
            showKeyActionDialog("D-Pad למטה", "key_dpad_down_short");
        } else if ("shortcut_dpad_left".equals(key)) {
            showKeyActionDialog("D-Pad שמאלה", "key_dpad_left_short");
        } else if ("shortcut_dpad_right".equals(key)) {
            showKeyActionDialog("D-Pad ימינה", "key_dpad_right_short");
        } else if ("shortcut_dpad_center_long".equals(key)) {
            showKeyActionDialog("מקש מרכזי (לחיצה ארוכה)", "key_dpad_center_long");
        } else if ("shortcut_softkey_left".equals(key)) {
            showKeyActionDialog("מקש תפריט שמאל", "key_softkey_left_short");
        } else if ("shortcut_softkey_right".equals(key)) {
            showKeyActionDialog("מקש תפריט ימין", "key_softkey_right_short");
        } else if ("apps_management".equals(key)) {
            showAppManagementDialog();
        } else if ("reset_apps".equals(key)) {
            new AlertDialog.Builder(this)
                    .setTitle("איפוס מיקומי אפליקציות")
                    .setMessage("האם לשחזר את חלוקת כל האפליקציות לברירת המחדל?")
                    .setPositiveButton("אישור", new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialog, int which) {
                            LauncherSettings.resetAppGroups(LauncherSettingsActivity.this);
                            forceReloadLauncherModel();
                            Toast.makeText(LauncherSettingsActivity.this, "המיקומים שוחזרו בהצלחה", Toast.LENGTH_SHORT).show();
                            refreshList();
                        }
                    })
                    .setNegativeButton("ביטול", null)
                    .show();
        } else if ("reset_all".equals(key)) {
            new AlertDialog.Builder(this)
                    .setTitle("שחזור כל ההגדרות")
                    .setMessage("האם לאפס את כל הגדרות מסך הבית לברירת המחדל?")
                    .setPositiveButton("איפוס מלא", new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialog, int which) {
                            LauncherSettings.resetAll(LauncherSettingsActivity.this);
                            forceReloadLauncherModel();
                            Toast.makeText(LauncherSettingsActivity.this, "כל ההגדרות אופסו לברירת מחדל", Toast.LENGTH_SHORT).show();
                            refreshList();
                        }
                    })
                    .setNegativeButton("ביטול", null)
                    .show();
        }
    }

    private void refreshList() {
        buildSettingsList();
        mAdapter.notifyDataSetChanged();
    }

    /**
     * Activity.setTitle() alone does not reliably repaint the ActionBar once the
     * activity has a manifest label, so the bar is set explicitly too.
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

    // --- Dialogs ---

    /** 2..5 columns. Wider than that and a 240px screen gives unreadable labels. */
    private void showColumnsDialog(String title, int current, final boolean menu) {
        final int min = LauncherSettings.MIN_MENU_COLUMNS;
        final int max = LauncherSettings.MAX_MENU_COLUMNS;
        final String[] labels = new String[max - min + 1];
        for (int i = 0; i < labels.length; i++) {
            int n = min + i;
            labels[i] = n + " עמודות" + (n == current ? "  ✓" : "");
        }
        new AlertDialog.Builder(this)
                .setTitle(title)
                .setItems(labels, new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface d, int which) {
                        int n = min + which;
                        if (menu) {
                            LauncherSettings.setMenuColumns(LauncherSettingsActivity.this, n);
                        } else {
                            LauncherSettings.setHomeColumns(LauncherSettingsActivity.this, n);
                        }
                        refreshList();
                    }
                })
                .setNegativeButton("ביטול", null)
                .show();
    }

    /** What you can do to a widget that is already placed. */
    private void showWidgetActionsDialog(final int widgetId) {
        final String[] actions = {"מיקום וגודל", "הסרה"};
        new AlertDialog.Builder(this)
                .setItems(actions, new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface d, int which) {
                        if (which == 0) {
                            // Editing happens on the home screen itself — that is where
                            // the widget is and where the arrows have to be seen moving
                            // it. Close the settings and hand control back to Home.
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

    private void showClockSizeDialog() {
        final String[] options = {"קטן (34sp)", "רגיל (46sp)", "גדול (58sp)", "ענק (68sp)"};
        final int[] values = {34, 46, 58, 68};
        int current = LauncherSettings.getClockSize(this);
        int selectedIndex = 1;
        for (int i = 0; i < values.length; i++) {
            if (values[i] == current) {
                selectedIndex = i;
                break;
            }
        }
        new AlertDialog.Builder(this)
                .setTitle("בחר גודל שעון")
                .setSingleChoiceItems(options, selectedIndex, new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        LauncherSettings.setClockSize(LauncherSettingsActivity.this, values[which]);
                        dialog.dismiss();
                        refreshList();
                    }
                })
                .setNegativeButton("ביטול", null)
                .show();
    }

    private interface ColorSelectedCallback {
        void onColorSelected(int color);
    }

    private void showColorPickerDialog(String title, final ColorSelectedCallback callback) {
        final String[] names = {"לבן קלאסי", "זהב יוקרתי", "תכלת ניאון", "ירוק זוהר", "כתום אש", "אדום קורל", "סגול", "צהוב", "תכלת רגוע"};
        final int[] colors = {
                0xFFFFFFFF,
                0xFFFFD700,
                0xFF00E5FF,
                0xFF00E676,
                0xFFFF9100,
                0xFFFF5252,
                0xFFE040FB,
                0xFFFFFF00,
                0xFF64B5F6
        };
        new AlertDialog.Builder(this)
                .setTitle(title)
                .setItems(names, new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        callback.onColorSelected(colors[which]);
                    }
                })
                .setNegativeButton("ביטול", null)
                .show();
    }

    private void showClockFontStyleDialog() {
        final String[] options = {"רגיל (Normal)", "מודגש (Bold)", "דק (Light)", "מונוספייס (Monospace)", "Serif"};
        int current = LauncherSettings.getClockFontStyle(this);
        new AlertDialog.Builder(this)
                .setTitle("סגנון גופן שעון")
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
                "24 שעות (HH:mm)",
                "24 שעות עם שניות (HH:mm:ss)",
                "12 שעות עם AM/PM (h:mm a)",
                "12 שעות ללא AM/PM (h:mm)"
        };
        int current = LauncherSettings.getClockTimeFormat(this);
        new AlertDialog.Builder(this)
                .setTitle("פורמט תצוגת שעות")
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

    private interface SizeSelectedCallback {
        void onSizeSelected(int size);
    }

    private void showTextSizeDialog(String title, int current, final SizeSelectedCallback callback) {
        final String[] options = {"קטן (11sp)", "רגיל (14sp)", "בינוני (16sp)", "גדול (18sp)"};
        final int[] values = {11, 14, 16, 18};
        int selectedIndex = 1;
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

    private void showCardBgDialog() {
        final String[] options = {
                "שקוף לגמרי (ללא רקע)",
                "זכוכית עדינה (15% שקיפות)",
                "זכוכית מודגשת (35% שקיפות)",
                "כהה שקוף (Dark Frost)",
                "רקע כהה מלא (Solid Dark)"
        };
        int current = LauncherSettings.getCardBgType(this);
        new AlertDialog.Builder(this)
                .setTitle("רקע ושקיפות כרטיס")
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
        final String[] options = {"ללא פינות מעוגלות (0dp)", "מעוגל עדין (8dp)", "מעוגל מודרני (14dp)", "מעוגל מלא (22dp)"};
        final int[] values = {0, 8, 14, 22};
        int current = LauncherSettings.getCardCornerRadius(this);
        int selectedIndex = 1;
        for (int i = 0; i < values.length; i++) {
            if (values[i] == current) {
                selectedIndex = i;
                break;
            }
        }
        new AlertDialog.Builder(this)
                .setTitle("פינות מעוגלות של הכרטיס")
                .setSingleChoiceItems(options, selectedIndex, new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        LauncherSettings.setCardCornerRadius(LauncherSettingsActivity.this, values[which]);
                        dialog.dismiss();
                        refreshList();
                    }
                })
                .setNegativeButton("ביטול", null)
                .show();
    }

    private void showNumLongModeDialog() {
        final String[] options = {
                "חיוג מהיר (Speed Dial)",
                "הפעלת אפליקציות מותאמות",
                "התאמה פרטנית לפי מקש"
        };
        int current = LauncherSettings.getNumLongPressMode(this);
        new AlertDialog.Builder(this)
                .setTitle("לחיצה ארוכה על מקשי ספרות")
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

    private void showNumShortModeDialog() {
        final String[] options = {
                "פתיחת חייגן רגיל (ברירת מחדל)",
                "קיצור ישיר לפתיחת אפליקציות"
        };
        int current = LauncherSettings.getNumShortPressMode(this);
        new AlertDialog.Builder(this)
                .setTitle("לחיצה קצרה על מקשי ספרות")
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

    /**
     * Per-digit action picker.
     *
     * @param longPress true for the key_num_long_* family, false for key_num_short_*.
     *
     * The short-press family had no UI at all: LauncherSettings.handleShortPressKey
     * reads those keys on every digit press, but nothing ever wrote them, so they were
     * permanently empty.
     */
    private void showNumbersShortcutDialog(final boolean longPress) {
        final String[] numKeys = {"מקש 1", "מקש 2", "מקש 3", "מקש 4", "מקש 5", "מקש 6", "מקש 7", "מקש 8", "מקש 9", "מקש 0", "מקש *", "מקש #"};
        final String suffix = longPress ? "long" : "short";
        final String[] digits = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "0", "star", "pound"};
        final String[] prefKeys = new String[digits.length];
        for (int i = 0; i < digits.length; i++) {
            prefKeys[i] = "key_num_" + suffix + "_" + digits[i];
        }
        final String label = longPress ? "לחיצה ארוכה - " : "לחיצה קצרה - ";
        new AlertDialog.Builder(this)
                .setTitle(longPress ? "לחיצה ארוכה: בחר מקש" : "לחיצה קצרה: בחר מקש")
                .setItems(numKeys, new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        showKeyActionDialog(label + numKeys[which], prefKeys[which]);
                    }
                })
                .setNegativeButton("חזור", null)
                .show();
    }

    private void showKeyActionDialog(final String title, final String prefKey) {
        final String[] actions = {
                "ברירת מחדל של המערכת",
                "בחירת אפליקציה...",
                "הדלקת / כיבוי פנס",
                "פתיחת וילון התראות",
                "מצב שקט / רגיל",
                "פתיחת הגדרות מסך הבית",
                "פתיחת תפריט ראשי",
                "יומן שיחות",
                "מעבר לעמוד הווידג'טים הבא",
                "עריכת מיקום וגודל ווידג'ט",
                "ללא פעולה"
        };
        new AlertDialog.Builder(this)
                .setTitle(title)
                .setItems(actions, new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        switch (which) {
                            case 0:
                                LauncherSettings.setKeyAction(LauncherSettingsActivity.this, prefKey, LauncherSettings.ACTION_DEFAULT);
                                refreshList();
                                break;
                            case 1:
                                pickApp(new AppSelectedCallback() {
                                    @Override
                                    public void onAppSelected(String pkg, String cls, String label) {
                                        LauncherSettings.setKeyAction(LauncherSettingsActivity.this, prefKey, "app:" + pkg + "/" + cls);
                                        refreshList();
                                    }
                                });
                                break;
                            case 2:
                                LauncherSettings.setKeyAction(LauncherSettingsActivity.this, prefKey, LauncherSettings.ACTION_FLASHLIGHT);
                                refreshList();
                                break;
                            case 3:
                                LauncherSettings.setKeyAction(LauncherSettingsActivity.this, prefKey, LauncherSettings.ACTION_NOTIFICATIONS);
                                refreshList();
                                break;
                            case 4:
                                LauncherSettings.setKeyAction(LauncherSettingsActivity.this, prefKey, LauncherSettings.ACTION_SILENT_MODE);
                                refreshList();
                                break;
                            case 5:
                                LauncherSettings.setKeyAction(LauncherSettingsActivity.this, prefKey, LauncherSettings.ACTION_SETTINGS);
                                refreshList();
                                break;
                            case 6:
                                LauncherSettings.setKeyAction(LauncherSettingsActivity.this, prefKey, LauncherSettings.ACTION_MAIN_MENU);
                                refreshList();
                                break;
                            case 7:
                                LauncherSettings.setKeyAction(LauncherSettingsActivity.this, prefKey, LauncherSettings.ACTION_CALL_LOG);
                                refreshList();
                                break;
                            case 8:
                                LauncherSettings.setKeyAction(LauncherSettingsActivity.this, prefKey, LauncherSettings.ACTION_FLIPPER_NEXT);
                                refreshList();
                                break;
                            case 9:
                                LauncherSettings.setKeyAction(LauncherSettingsActivity.this, prefKey, LauncherSettings.ACTION_WIDGET_EDIT);
                                refreshList();
                                break;
                            case 10:
                                LauncherSettings.setKeyAction(LauncherSettingsActivity.this, prefKey, LauncherSettings.ACTION_NONE);
                                refreshList();
                                break;
                        }
                    }
                })
                .setNegativeButton("ביטול", null)
                .show();
    }

    private static class AppEntry {
        String pkg;
        String cls;
        String label;
        Drawable icon;
    }

    private interface AppSelectedCallback {
        void onAppSelected(String pkg, String cls, String label);
    }

    private List<AppEntry> getInstalledApps() {
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
            entry.icon = ri.loadIcon(pm);
            apps.add(entry);
        }
        Collections.sort(apps, new Comparator<AppEntry>() {
            @Override
            public int compare(AppEntry o1, AppEntry o2) {
                return o1.label.compareToIgnoreCase(o2.label);
            }
        });
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

    private void showAppManagementDialog() {
        final List<AppEntry> apps = getInstalledApps();
        String[] titles = new String[apps.size()];
        for (int i = 0; i < apps.size(); i++) {
            String currentGroup = LauncherSettings.getCustomAppGroup(this, apps.get(i).pkg, apps.get(i).cls);
            String groupTag = "";
            if ("mainmenu".equals(currentGroup)) groupTag = " [תפריט]";
            else if ("extra".equals(currentGroup)) groupTag = " [כלים]";
            else if ("game".equals(currentGroup)) groupTag = " [יישומים]";
            else if ("hide".equals(currentGroup)) groupTag = " [מוסתר]";
            titles[i] = apps.get(i).label + groupTag;
        }

        new AlertDialog.Builder(this)
                .setTitle("ניהול וסידור אפליקציות")
                .setItems(titles, new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        final AppEntry app = apps.get(which);
                        final String[] destinations = {
                                "תפריט ראשי (Main Menu)",
                                "כלים ועזרים (Extras)",
                                "יישומים / משחקים (Games)",
                                "הסתר אפליקציה (Hide)",
                                "ברירת מחדל של המערכת"
                        };
                        new AlertDialog.Builder(LauncherSettingsActivity.this)
                                .setTitle("העבר את: " + app.label)
                                .setItems(destinations, new DialogInterface.OnClickListener() {
                                    @Override
                                    public void onClick(DialogInterface d, int destIdx) {
                                        String targetGroup;
                                        switch (destIdx) {
                                            case 0: targetGroup = "mainmenu"; break;
                                            case 1: targetGroup = "extra"; break;
                                            case 2: targetGroup = "game"; break;
                                            case 3: targetGroup = "hide"; break;
                                            default: targetGroup = "default"; break;
                                        }
                                        LauncherSettings.setCustomAppGroup(LauncherSettingsActivity.this, app.pkg, app.cls, targetGroup);
                                        forceReloadLauncherModel();
                                        Toast.makeText(LauncherSettingsActivity.this, "המיקום עודכן בהצלחה", Toast.LENGTH_SHORT).show();
                                    }
                                })
                                .setNegativeButton("ביטול", null)
                                .show();
                    }
                })
                .setNegativeButton("סגור", null)
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

    // --- Summaries ---
    private String getClockSizeSummary() {
        int size = LauncherSettings.getClockSize(this);
        if (size <= 34) return "קטן (" + size + "sp)";
        if (size <= 46) return "רגיל (" + size + "sp)";
        if (size <= 58) return "גדול (" + size + "sp)";
        return "ענק (" + size + "sp)";
    }

    private String getClockColorSummary() {
        int c = LauncherSettings.getClockColor(this);
        if (c == 0xFFFFFFFF) return "לבן קלאסי";
        if (c == 0xFFFFD700) return "זהב יוקרתי";
        if (c == 0xFF00E5FF) return "תכלת ניאון";
        if (c == 0xFF00E676) return "ירוק זוהר";
        if (c == 0xFFFF9100) return "כתום אש";
        if (c == 0xFFFF5252) return "אדום קורל";
        if (c == 0xFFE040FB) return "סגול";
        if (c == 0xFFFFFF00) return "צהוב";
        if (c == 0xFF64B5F6) return "תכלת רגוע";
        return "צבע מותאם";
    }

    private String getClockFontStyleSummary() {
        switch (LauncherSettings.getClockFontStyle(this)) {
            case LauncherSettings.FONT_STYLE_BOLD: return "מודגש (Bold)";
            case LauncherSettings.FONT_STYLE_LIGHT: return "דק (Light)";
            case LauncherSettings.FONT_STYLE_MONOSPACE: return "מונוספייס (Monospace)";
            case LauncherSettings.FONT_STYLE_SERIF: return "Serif";
            default: return "רגיל (Normal)";
        }
    }

    private String getClockTimeFormatSummary() {
        switch (LauncherSettings.getClockTimeFormat(this)) {
            case LauncherSettings.TIME_FORMAT_24H: return "24 שעות (HH:mm)";
            case LauncherSettings.TIME_FORMAT_24H_SECONDS: return "24 שעות עם שניות (HH:mm:ss)";
            case LauncherSettings.TIME_FORMAT_12H_AMPM: return "12 שעות עם AM/PM (h:mm a)";
            case LauncherSettings.TIME_FORMAT_12H_NO_AMPM: return "12 שעות ללא AM/PM (h:mm)";
            default: return "ברירת מחדל של המערכת";
        }
    }

    private String getCardBgSummary() {
        switch (LauncherSettings.getCardBgType(this)) {
            case LauncherSettings.CARD_BG_TRANSPARENT: return "שקוף לגמרי";
            case LauncherSettings.CARD_BG_MEDIUM_GLASS: return "זכוכית מודגשת (35%)";
            case LauncherSettings.CARD_BG_DARK_FROST: return "כהה שקוף (Dark Frost)";
            case LauncherSettings.CARD_BG_SOLID_DARK: return "רקע כהה מלא";
            default: return "זכוכית עדינה (15%)";
        }
    }

    private String getNumLongModeSummary() {
        switch (LauncherSettings.getNumLongPressMode(this)) {
            case LauncherSettings.NUM_LONG_CUSTOM_APPS: return "הפעלת אפליקציות מותאמות";
            case LauncherSettings.NUM_LONG_PER_KEY: return "התאמה פרטנית לפי מקש";
            default: return "חיוג מהיר (Speed Dial)";
        }
    }

    private String getNumShortModeSummary() {
        switch (LauncherSettings.getNumShortPressMode(this)) {
            case LauncherSettings.NUM_SHORT_CUSTOM_APPS: return "קיצור ישיר לפתיחת אפליקציות";
            default: return "חייגן רגיל";
        }
    }

    private String getShortcutSummary(String keyId, String defaultSummary) {
        String val = LauncherSettings.getKeyAction(this, keyId, LauncherSettings.ACTION_DEFAULT);
        if (LauncherSettings.ACTION_DEFAULT.equals(val)) return "ברירת מחדל: " + defaultSummary;
        if (LauncherSettings.ACTION_FLASHLIGHT.equals(val)) return "פנס";
        if (LauncherSettings.ACTION_NOTIFICATIONS.equals(val)) return "וילון התראות";
        if (LauncherSettings.ACTION_SILENT_MODE.equals(val)) return "מצב שקט / רגיל";
        if (LauncherSettings.ACTION_SETTINGS.equals(val)) return "הגדרות מסך הבית";
        if (LauncherSettings.ACTION_MAIN_MENU.equals(val)) return "תפריט ראשי";
        if (LauncherSettings.ACTION_CALL_LOG.equals(val)) return "יומן שיחות";
        if (LauncherSettings.ACTION_NONE.equals(val)) return "ללא פעולה";
        if (val.startsWith("app:")) {
            return "אפליקציה: " + val.substring(4);
        }
        return val;
    }

    // --- Custom Adapter for Qin 1s Keypad UI ---
    private static class SettingsAdapter extends BaseAdapter {
        private Context mContext;
        private List<SettingItem> mData;

        public SettingsAdapter(Context context, List<SettingItem> data) {
            mContext = context;
            mData = data;
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
            return 3;
        }

        @Override
        public int getItemViewType(int position) {
            return mData.get(position).type;
        }

        /**
         * Without this, headers stay focusable.
         *
         * BaseAdapter.areAllItemsEnabled() returns true by default, and ListView
         * trusts it as a fast path — it never consults isEnabled() per row. The result
         * on a D-pad device is that arrowing down stops on every category separator,
         * which cannot be actioned. Returning false forces the per-row check below.
         */
        @Override
        public boolean areAllItemsEnabled() {
            return false;
        }

        @Override
        public boolean isEnabled(int position) {
            int t = mData.get(position).type;
            return t == SettingItem.TYPE_ITEM || t == SettingItem.TYPE_SWITCH;
        }

        @Override
        public View getView(int position, View convertView, ViewGroup parent) {
            SettingItem item = mData.get(position);

            if (item.type == SettingItem.TYPE_HEADER) {
                TextView tv;
                if (convertView == null) {
                    // Built from the theme's listSeparatorTextViewStyle rather than
                    // hand-coloured. Under NewUI that resolves to the ROM's own
                    // category separator, so headers match the system Settings app.
                    tv = new TextView(mContext, null,
                            android.R.attr.listSeparatorTextViewStyle);
                    tv.setGravity(Gravity.RIGHT);
                } else {
                    tv = (TextView) convertView;
                }
                tv.setText(item.title);
                return tv;
            } else if (item.type == SettingItem.TYPE_SWITCH) {
                View row = convertView;
                SwitchHolder holder;
                if (row == null) {
                    // Built in code rather than inflated: there is no AOSP layout that
                    // pairs two text lines with a switch, and adding one would mean a
                    // new layout id in public.xml plus a matching constant in the
                    // hand-written R.java.
                    LinearLayout line = new LinearLayout(mContext);
                    line.setOrientation(LinearLayout.HORIZONTAL);
                    line.setGravity(Gravity.CENTER_VERTICAL);
                    line.setPadding(8, 6, 8, 6);

                    // The switch sits on the left under RTL, so it is added first.
                    // No style is passed: the activity runs Theme.Holo.Light.NewUI and
                    // its switchStyle already resolves to the ROM's turquoise switch.
                    Switch sw = new Switch(mContext);
                    // Not focusable — the row owns the D-pad. A focusable switch would
                    // add a second stop per row and swallow left/right.
                    sw.setFocusable(false);
                    sw.setFocusableInTouchMode(false);
                    sw.setClickable(false);
                    line.addView(sw, new LinearLayout.LayoutParams(
                            ViewGroup.LayoutParams.WRAP_CONTENT,
                            ViewGroup.LayoutParams.WRAP_CONTENT));

                    LinearLayout texts = new LinearLayout(mContext);
                    texts.setOrientation(LinearLayout.VERTICAL);
                    TextView t1 = new TextView(mContext);
                    t1.setGravity(Gravity.RIGHT);
                    TextView t2 = new TextView(mContext);
                    t2.setGravity(Gravity.RIGHT);
                    t2.setTextSize(11);
                    texts.addView(t1);
                    texts.addView(t2);
                    LinearLayout.LayoutParams tp = new LinearLayout.LayoutParams(
                            0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.0f);
                    line.addView(texts, tp);

                    holder = new SwitchHolder();
                    holder.title = t1;
                    holder.summary = t2;
                    holder.toggle = sw;
                    line.setTag(holder);
                    row = line;
                } else {
                    holder = (SwitchHolder) row.getTag();
                }

                holder.title.setText(item.title);
                holder.summary.setText(item.summary);
                holder.summary.setVisibility(
                        item.summary == null || item.summary.length() == 0
                                ? View.GONE : View.VISIBLE);
                holder.toggle.setChecked(item.checked);
                return row;
            } else {
                View row = convertView;
                ViewHolder holder;
                if (row == null) {
                    row = LayoutInflater.from(mContext).inflate(android.R.layout.simple_list_item_2, parent, false);
                    holder = new ViewHolder();
                    holder.title = (TextView) row.findViewById(android.R.id.text1);
                    holder.summary = (TextView) row.findViewById(android.R.id.text2);
                    // Colours and sizes come from simple_list_item_2's own text
                    // appearances, which the theme supplies. Only the RTL alignment
                    // is ours — the device runs in Hebrew.
                    holder.title.setGravity(Gravity.RIGHT);
                    holder.summary.setGravity(Gravity.RIGHT);
                    row.setTag(holder);
                } else {
                    holder = (ViewHolder) row.getTag();
                }

                holder.title.setText(item.title);
                holder.summary.setText(item.summary);
                return row;
            }
        }

        private static class SwitchHolder {
            TextView title;
            TextView summary;
            Switch toggle;
        }

        private static class ViewHolder {
            TextView title;
            TextView summary;
        }
    }
}
