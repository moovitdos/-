package com.sprd.classichome.settings;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.media.AudioManager;
import android.util.Log;
import android.widget.Toast;
import java.util.List;
import java.util.Map;

public class LauncherSettings {
    private static final String TAG = "LauncherSettings";
    private static final String PREF_NAME = "launcher_custom_settings";

    // Clock Keys
    public static final String KEY_CLOCK_ENABLED = "clock_enabled";
    public static final String KEY_CLOCK_SIZE = "clock_size";
    public static final int DEFAULT_CLOCK_SIZE = 46;

    public static final String KEY_CLOCK_COLOR = "clock_color";
    public static final int DEFAULT_CLOCK_COLOR = Color.WHITE;

    public static final String KEY_CLOCK_FONT_STYLE = "clock_font_style";
    public static final int FONT_STYLE_NORMAL = 0;
    public static final int FONT_STYLE_BOLD = 1;
    public static final int FONT_STYLE_LIGHT = 2;
    public static final int FONT_STYLE_MONOSPACE = 3;
    public static final int FONT_STYLE_SERIF = 4;

    public static final String KEY_CLOCK_TIME_FORMAT = "clock_time_format";
    public static final int TIME_FORMAT_SYSTEM = 0;
    public static final int TIME_FORMAT_24H = 1;
    public static final int TIME_FORMAT_24H_SECONDS = 2;
    public static final int TIME_FORMAT_12H_AMPM = 3;
    public static final int TIME_FORMAT_12H_NO_AMPM = 4;

    // Date Keys
    public static final String KEY_DATE_ENABLED = "date_enabled";
    public static final String KEY_DATE_SIZE = "date_size";
    public static final int DEFAULT_DATE_SIZE = 14;
    public static final String KEY_DATE_COLOR = "date_color";

    // Hebrew Date Keys
    public static final String KEY_HEBREW_DATE_ENABLED = "hebrew_date_enabled";
    public static final String KEY_HEBREW_DATE_SIZE = "hebrew_date_size";
    public static final int DEFAULT_HEBREW_DATE_SIZE = 14;
    public static final String KEY_HEBREW_DATE_COLOR = "hebrew_date_color";

    // Card Appearance Keys
    public static final String KEY_CARD_BG_TYPE = "card_bg_type";
    public static final int CARD_BG_TRANSPARENT = 0;
    public static final int CARD_BG_SUBTLE_GLASS = 1;
    public static final int CARD_BG_MEDIUM_GLASS = 2;
    public static final int CARD_BG_DARK_FROST = 3;
    public static final int CARD_BG_SOLID_DARK = 4;

    public static final String KEY_CARD_CORNER_RADIUS = "card_corner_radius";
    public static final int DEFAULT_CORNER_RADIUS = 10;

    public static final String KEY_MISSED_CALLS_ENABLED = "missed_calls_enabled";

    /**
     * Columns in the app menu grid. The layout declares 3 via
     * @integer/main_menu_column_num; this overrides it at runtime.
     *
     * Two things move when this changes, and neither is obvious:
     *   - LoopGridView derives its wrap-around from getNumColumns(). isLastLine()
     *     computes count % numColumns, so which items wrap to the top changes with it.
     *   - MainMenuAdapter sizes each cell as getMeasuredHeight() / getNumColumns()
     *     (dividing by columns, not rows — a pre-existing bug), so cells get shorter as
     *     columns grow.
     * Both are why the choice is limited to 2..5 rather than left open.
     */
    public static final String KEY_MENU_COLUMNS = "menu_columns";
    public static final int DEFAULT_MENU_COLUMNS = 3;
    public static final int MIN_MENU_COLUMNS = 2;
    public static final int MAX_MENU_COLUMNS = 5;

    public static int getMenuColumns(Context context) {
        int n = getPrefs(context).getInt(KEY_MENU_COLUMNS, DEFAULT_MENU_COLUMNS);
        if (n < MIN_MENU_COLUMNS) n = MIN_MENU_COLUMNS;
        if (n > MAX_MENU_COLUMNS) n = MAX_MENU_COLUMNS;
        return n;
    }

    public static void setMenuColumns(Context context, int n) {
        getPrefs(context).edit().putInt(KEY_MENU_COLUMNS, n).apply();
    }

    /** Columns for the home screen's own app grid. Kept separate from the menu. */
    public static final String KEY_HOME_COLUMNS = "home_columns";
    public static final int DEFAULT_HOME_COLUMNS = 3;

    public static int getHomeColumns(Context context) {
        int n = getPrefs(context).getInt(KEY_HOME_COLUMNS, DEFAULT_HOME_COLUMNS);
        if (n < MIN_MENU_COLUMNS) n = MIN_MENU_COLUMNS;
        if (n > MAX_MENU_COLUMNS) n = MAX_MENU_COLUMNS;
        return n;
    }

    public static void setHomeColumns(Context context, int n) {
        getPrefs(context).edit().putInt(KEY_HOME_COLUMNS, n).apply();
    }

    /**
     * A widget the settings screen asked Home to open for editing.
     *
     * Consumed once and cleared. setupHomeWidgets runs on every onResume AND once
     * from onCreate, so a flag that is merely read would re-enter edit mode on every
     * return to the home screen.
     */
    private static final String KEY_PENDING_WIDGET_EDIT = "pending_widget_edit";

    public static void setPendingWidgetEdit(Context context, int appWidgetId) {
        getPrefs(context).edit().putInt(KEY_PENDING_WIDGET_EDIT, appWidgetId).apply();
    }

    public static int takePendingWidgetEdit(Context context) {
        int id = getPrefs(context).getInt(KEY_PENDING_WIDGET_EDIT, -1);
        if (id != -1) {
            getPrefs(context).edit().remove(KEY_PENDING_WIDGET_EDIT).apply();
        }
        return id;
    }

    // App Group Keys Prefix
    public static final String PREF_APP_GROUP_PREFIX = "app_group_";

    // Key Shortcut Mode Keys
    public static final String KEY_NUM_LONG_PRESS_MODE = "num_long_press_mode";
    public static final int NUM_LONG_SPEED_DIAL = 0;
    public static final int NUM_LONG_CUSTOM_APPS = 1;
    public static final int NUM_LONG_PER_KEY = 2;

    public static final String KEY_NUM_SHORT_PRESS_MODE = "num_short_press_mode";
    public static final int NUM_SHORT_DIALER = 0;
    public static final int NUM_SHORT_CUSTOM_APPS = 1;

    // Action Constants
    public static final String ACTION_DEFAULT = "default";
    public static final String ACTION_NONE = "action:none";
    public static final String ACTION_FLASHLIGHT = "action:flashlight";
    public static final String ACTION_NOTIFICATIONS = "action:notifications";
    public static final String ACTION_SILENT_MODE = "action:silent";
    public static final String ACTION_SETTINGS = "action:settings";
    public static final String ACTION_MAIN_MENU = "action:main_menu";
    public static final String ACTION_CALL_LOG = "action:call_log";
    public static final String ACTION_FLIPPER_NEXT = "action:flipper_next";
    public static final String ACTION_WIDGET_EDIT = "action:widget_edit";

    private static SharedPreferences getPrefs(Context context) {
        return context.getSharedPreferences(PREF_NAME, Context.MODE_PRIVATE);
    }

    // --- Clock Methods ---
    public static boolean isClockEnabled(Context context) {
        return getPrefs(context).getBoolean(KEY_CLOCK_ENABLED, true);
    }

    public static void setClockEnabled(Context context, boolean enabled) {
        getPrefs(context).edit().putBoolean(KEY_CLOCK_ENABLED, enabled).apply();
    }

    public static int getClockSize(Context context) {
        return getPrefs(context).getInt(KEY_CLOCK_SIZE, DEFAULT_CLOCK_SIZE);
    }

    public static void setClockSize(Context context, int size) {
        getPrefs(context).edit().putInt(KEY_CLOCK_SIZE, size).apply();
    }

    public static int getClockColor(Context context) {
        return getPrefs(context).getInt(KEY_CLOCK_COLOR, DEFAULT_CLOCK_COLOR);
    }

    public static void setClockColor(Context context, int color) {
        getPrefs(context).edit().putInt(KEY_CLOCK_COLOR, color).apply();
    }

    public static int getClockFontStyle(Context context) {
        return getPrefs(context).getInt(KEY_CLOCK_FONT_STYLE, FONT_STYLE_NORMAL);
    }

    public static void setClockFontStyle(Context context, int style) {
        getPrefs(context).edit().putInt(KEY_CLOCK_FONT_STYLE, style).apply();
    }

    public static int getClockTimeFormat(Context context) {
        return getPrefs(context).getInt(KEY_CLOCK_TIME_FORMAT, TIME_FORMAT_SYSTEM);
    }

    public static void setClockTimeFormat(Context context, int format) {
        getPrefs(context).edit().putInt(KEY_CLOCK_TIME_FORMAT, format).apply();
    }

    // --- Date Methods ---
    public static boolean isDateEnabled(Context context) {
        return getPrefs(context).getBoolean(KEY_DATE_ENABLED, true);
    }

    public static void setDateEnabled(Context context, boolean enabled) {
        getPrefs(context).edit().putBoolean(KEY_DATE_ENABLED, enabled).apply();
    }

    public static int getDateSize(Context context) {
        return getPrefs(context).getInt(KEY_DATE_SIZE, DEFAULT_DATE_SIZE);
    }

    public static void setDateSize(Context context, int size) {
        getPrefs(context).edit().putInt(KEY_DATE_SIZE, size).apply();
    }

    public static int getDateColor(Context context) {
        return getPrefs(context).getInt(KEY_DATE_COLOR, Color.WHITE);
    }

    public static void setDateColor(Context context, int color) {
        getPrefs(context).edit().putInt(KEY_DATE_COLOR, color).apply();
    }

    // --- Hebrew Date Methods ---
    public static boolean isHebrewDateEnabled(Context context) {
        return getPrefs(context).getBoolean(KEY_HEBREW_DATE_ENABLED, true);
    }

    public static void setHebrewDateEnabled(Context context, boolean enabled) {
        getPrefs(context).edit().putBoolean(KEY_HEBREW_DATE_ENABLED, enabled).apply();
    }

    public static int getHebrewDateSize(Context context) {
        return getPrefs(context).getInt(KEY_HEBREW_DATE_SIZE, DEFAULT_HEBREW_DATE_SIZE);
    }

    public static void setHebrewDateSize(Context context, int size) {
        getPrefs(context).edit().putInt(KEY_HEBREW_DATE_SIZE, size).apply();
    }

    public static int getHebrewDateColor(Context context) {
        return getPrefs(context).getInt(KEY_HEBREW_DATE_COLOR, Color.WHITE);
    }

    public static void setHebrewDateColor(Context context, int color) {
        getPrefs(context).edit().putInt(KEY_HEBREW_DATE_COLOR, color).apply();
    }

    // --- Card Background Methods ---
    public static int getCardBgType(Context context) {
        return getPrefs(context).getInt(KEY_CARD_BG_TYPE, CARD_BG_SUBTLE_GLASS);
    }

    public static void setCardBgType(Context context, int type) {
        getPrefs(context).edit().putInt(KEY_CARD_BG_TYPE, type).apply();
    }

    public static int getCardCornerRadius(Context context) {
        return getPrefs(context).getInt(KEY_CARD_CORNER_RADIUS, DEFAULT_CORNER_RADIUS);
    }

    public static void setCardCornerRadius(Context context, int radius) {
        getPrefs(context).edit().putInt(KEY_CARD_CORNER_RADIUS, radius).apply();
    }

    public static boolean isMissedCallsEnabled(Context context) {
        return getPrefs(context).getBoolean(KEY_MISSED_CALLS_ENABLED, true);
    }

    public static void setMissedCallsEnabled(Context context, boolean enabled) {
        getPrefs(context).edit().putBoolean(KEY_MISSED_CALLS_ENABLED, enabled).apply();
    }

    public static GradientDrawable createCardBackground(Context context) {
        int bgType = getCardBgType(context);
        int color;
        switch (bgType) {
            case CARD_BG_TRANSPARENT:
                color = Color.TRANSPARENT;
                break;
            case CARD_BG_MEDIUM_GLASS:
                color = 0x55FFFFFF;
                break;
            case CARD_BG_DARK_FROST:
                color = 0x66000000;
                break;
            case CARD_BG_SOLID_DARK:
                color = 0xDD181818;
                break;
            case CARD_BG_SUBTLE_GLASS:
            default:
                color = 0x33FFFFFF;
                break;
        }
        GradientDrawable shape = new GradientDrawable();
        shape.setShape(GradientDrawable.RECTANGLE);
        shape.setColor(color);
        int radiusDp = getCardCornerRadius(context);
        float density = context.getResources().getDisplayMetrics().density;
        shape.setCornerRadius(radiusDp * density);
        return shape;
    }

    // --- App Placement & Visibility Methods ---
    public static String getCustomAppGroup(Context context, String pkg, String cls) {
        if (pkg == null) return null;
        String key = PREF_APP_GROUP_PREFIX + pkg + "/" + (cls != null ? cls : "");
        return getPrefs(context).getString(key, null);
    }

    public static void setCustomAppGroup(Context context, String pkg, String cls, String group) {
        if (pkg == null) return;
        String key = PREF_APP_GROUP_PREFIX + pkg + "/" + (cls != null ? cls : "");
        if (group == null || "default".equals(group)) {
            getPrefs(context).edit().remove(key).apply();
        } else {
            getPrefs(context).edit().putString(key, group).apply();
        }
    }

    public static String getAppGroup(Context context, String pkg, String cls, String defaultGroup) {
        String custom = getCustomAppGroup(context, pkg, cls);
        if (custom != null && !custom.isEmpty()) {
            return custom;
        }
        return defaultGroup;
    }

    public static void resetAppGroups(Context context) {
        SharedPreferences.Editor editor = getPrefs(context).edit();
        Map<String, ?> all = getPrefs(context).getAll();
        for (String k : all.keySet()) {
            if (k.startsWith(PREF_APP_GROUP_PREFIX)) {
                editor.remove(k);
            }
        }
        editor.apply();
    }

    // --- Key Shortcuts Methods ---
    public static int getNumLongPressMode(Context context) {
        return getPrefs(context).getInt(KEY_NUM_LONG_PRESS_MODE, NUM_LONG_SPEED_DIAL);
    }

    public static void setNumLongPressMode(Context context, int mode) {
        getPrefs(context).edit().putInt(KEY_NUM_LONG_PRESS_MODE, mode).apply();
    }

    public static int getNumShortPressMode(Context context) {
        return getPrefs(context).getInt(KEY_NUM_SHORT_PRESS_MODE, NUM_SHORT_DIALER);
    }

    public static void setNumShortPressMode(Context context, int mode) {
        getPrefs(context).edit().putInt(KEY_NUM_SHORT_PRESS_MODE, mode).apply();
    }

    public static String getKeyAction(Context context, String keyId, String defaultVal) {
        return getPrefs(context).getString(keyId, defaultVal);
    }

    public static void setKeyAction(Context context, String keyId, String actionStr) {
        if (actionStr == null || ACTION_DEFAULT.equals(actionStr)) {
            getPrefs(context).edit().remove(keyId).apply();
        } else {
            getPrefs(context).edit().putString(keyId, actionStr).apply();
        }
    }

    /**
     * Executes the key action string. Returns true if handled.
     */
    public static boolean executeKeyAction(Context context, String actionStr) {
        if (actionStr == null || ACTION_DEFAULT.equals(actionStr)) {
            return false;
        }
        if (ACTION_NONE.equals(actionStr)) {
            return true;
        }
        try {
            if (actionStr.startsWith("app:")) {
                String comp = actionStr.substring(4);
                String[] parts = comp.split("/");
                if (parts.length >= 2) {
                    ComponentName cn = new ComponentName(parts[0], parts[1]);
                    Intent it = new Intent(Intent.ACTION_MAIN);
                    it.setComponent(cn);
                    it.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                    context.startActivity(it);
                    return true;
                } else if (parts.length == 1) {
                    Intent launchIntent = context.getPackageManager().getLaunchIntentForPackage(parts[0]);
                    if (launchIntent != null) {
                        launchIntent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                        context.startActivity(launchIntent);
                        return true;
                    }
                }
            } else if (ACTION_FLASHLIGHT.equals(actionStr)) {
                try {
                    Class<?> fc = Class.forName("com.sprd.common.util.FlashlightController");
                    fc.getMethod("switchFlashlight").invoke(null);
                } catch (Throwable t) {
                    Log.e(TAG, "Failed to toggle flashlight", t);
                }
                return true;
            } else if (ACTION_NOTIFICATIONS.equals(actionStr)) {
                try {
                    Object sbm = context.getSystemService("statusbar");
                    Class.forName("android.app.StatusBarManager").getMethod("expandNotificationsPanel").invoke(sbm);
                } catch (Throwable t) {
                    Log.e(TAG, "Failed to expand status bar", t);
                }
                return true;
            } else if (ACTION_SILENT_MODE.equals(actionStr)) {
                AudioManager audio = (AudioManager) context.getSystemService(Context.AUDIO_SERVICE);
                if (audio.getRingerMode() == AudioManager.RINGER_MODE_SILENT) {
                    audio.setRingerMode(AudioManager.RINGER_MODE_NORMAL);
                    Toast.makeText(context, "מצב רגיל", Toast.LENGTH_SHORT).show();
                } else {
                    audio.setRingerMode(AudioManager.RINGER_MODE_SILENT);
                    Toast.makeText(context, "מצב שקט", Toast.LENGTH_SHORT).show();
                }
                return true;
            } else if (ACTION_SETTINGS.equals(actionStr)) {
                Intent it = new Intent(context, LauncherSettingsActivity.class);
                it.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                context.startActivity(it);
                return true;
            } else if (ACTION_MAIN_MENU.equals(actionStr)) {
                try {
                    Intent it = new Intent(Intent.ACTION_MAIN);
                    it.setClassName(context.getPackageName(), "com.sprd.classichome.mainmenu.MainMenuActivity");
                    it.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                    context.startActivity(it);
                } catch (Throwable t) {
                    Log.e(TAG, "Failed to open main menu", t);
                }
                return true;
            } else if (ACTION_FLIPPER_NEXT.equals(actionStr)) {
                // The Context handed to executeKeyAction is the Home activity itself:
                // Home.onKeyUp passes `this` to KeyCodeEventUtil, which passes it on.
                // So the flipper can be reached directly — no broadcast, no static
                // reference, and no edit to the hand-written smali.
                if (context instanceof android.app.Activity) {
                    int id = context.getResources().getIdentifier(
                            "home_flipper", "id", context.getPackageName());
                    android.view.View v = ((android.app.Activity) context).findViewById(id);
                    if (v instanceof android.widget.ViewFlipper) {
                        ((android.widget.ViewFlipper) v).showNext();
                        return true;
                    }
                }
                return false;
            } else if (ACTION_WIDGET_EDIT.equals(actionStr)) {
                // Entry point for people without a mouse: long-press is the mouse
                // gesture, this is the keyboard equivalent.
                if (context instanceof android.app.Activity) {
                    return com.sprd.classichome.widget.WidgetHostManager
                            .getInstance(context)
                            .beginEditFromKey((android.app.Activity) context);
                }
                return false;
            } else if (ACTION_CALL_LOG.equals(actionStr)) {
                try {
                    Intent it = new Intent(Intent.ACTION_VIEW);
                    it.setType("vnd.android.cursor.dir/calls");
                    it.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                    context.startActivity(it);
                } catch (Throwable t) {
                    Log.e(TAG, "Failed to open call log", t);
                }
                return true;
            }
        } catch (Exception e) {
            Log.e(TAG, "Error executing key action: " + actionStr, e);
        }
        return false;
    }

    public static boolean handleShortPressKey(Context context, int keyCode) {
        String keyId = null;
        if (keyCode >= 7 && keyCode <= 16) { // KEYCODE_0 .. KEYCODE_9
            int numMode = getNumShortPressMode(context);
            if (numMode == NUM_SHORT_DIALER) {
                return false;
            }
            int digit = keyCode - 7;
            keyId = "key_num_short_" + digit;
        } else if (keyCode == 17) { // KEYCODE_STAR
            keyId = "key_num_short_star";
        } else if (keyCode == 18) { // KEYCODE_POUND
            keyId = "key_num_short_pound";
        } else if (keyCode == 19) { // DPAD_UP
            keyId = "key_dpad_up_short";
        } else if (keyCode == 20) { // DPAD_DOWN
            keyId = "key_dpad_down_short";
        } else if (keyCode == 21) { // DPAD_LEFT
            keyId = "key_dpad_left_short";
        } else if (keyCode == 22) { // DPAD_RIGHT
            keyId = "key_dpad_right_short";
        } else if (keyCode == 23) { // DPAD_CENTER
            keyId = "key_dpad_center_short";
        } else if (keyCode == 82) { // KEYCODE_MENU
            keyId = "key_softkey_left_short";
        } else if (keyCode == 4) { // KEYCODE_BACK
            keyId = "key_softkey_right_short";
        }
        if (keyId != null) {
            String action = getKeyAction(context, keyId, ACTION_DEFAULT);
            if (!ACTION_DEFAULT.equals(action)) {
                return executeKeyAction(context, action);
            }
        }
        return false;
    }

    public static boolean handleLongPressKey(Context context, int keyCode) {
        String keyId = null;
        if (keyCode >= 8 && keyCode <= 16) { // KEYCODE_1 .. KEYCODE_9
            int numMode = getNumLongPressMode(context);
            if (numMode == NUM_LONG_SPEED_DIAL) {
                return false;
            }
            int digit = keyCode - 7;
            keyId = "key_num_long_" + digit;
        } else if (keyCode == 7) { // KEYCODE_0
            keyId = "key_num_long_0";
        } else if (keyCode == 17) { // KEYCODE_STAR
            keyId = "key_num_long_star";
        } else if (keyCode == 18) { // KEYCODE_POUND
            keyId = "key_num_long_pound";
        } else if (keyCode == 19) { // DPAD_UP
            keyId = "key_dpad_up_long";
        } else if (keyCode == 20) { // DPAD_DOWN
            keyId = "key_dpad_down_long";
        } else if (keyCode == 21) { // DPAD_LEFT
            keyId = "key_dpad_left_long";
        } else if (keyCode == 22) { // DPAD_RIGHT
            keyId = "key_dpad_right_long";
        } else if (keyCode == 23) { // DPAD_CENTER
            keyId = "key_dpad_center_long";
        } else if (keyCode == 82) { // KEYCODE_MENU
            keyId = "key_softkey_left_long";
        } else if (keyCode == 4) { // KEYCODE_BACK
            keyId = "key_softkey_right_long";
        }
        if (keyId != null) {
            String action = getKeyAction(context, keyId, ACTION_DEFAULT);
            if (!ACTION_DEFAULT.equals(action)) {
                return executeKeyAction(context, action);
            }
        }
        return false;
    }

    public static void resetAll(Context context) {
        getPrefs(context).edit().clear().apply();
    }

    /**
     * Clock, both dates, card look and both grids — everything visual.
     * Deliberately leaves app groups and key shortcuts alone: the reset screen
     * offers those as separate rows, and a "display" reset that also unhid
     * applications would be the old resetAll() surprise all over again.
     */
    public static void resetDisplaySettings(Context context) {
        SharedPreferences.Editor e = getPrefs(context).edit();
        e.remove(KEY_CLOCK_ENABLED);
        e.remove(KEY_CLOCK_SIZE);
        e.remove(KEY_CLOCK_COLOR);
        e.remove(KEY_CLOCK_FONT_STYLE);
        e.remove(KEY_CLOCK_TIME_FORMAT);
        e.remove(KEY_DATE_ENABLED);
        e.remove(KEY_DATE_SIZE);
        e.remove(KEY_DATE_COLOR);
        e.remove(KEY_HEBREW_DATE_ENABLED);
        e.remove(KEY_HEBREW_DATE_SIZE);
        e.remove(KEY_HEBREW_DATE_COLOR);
        e.remove(KEY_CARD_BG_TYPE);
        e.remove(KEY_CARD_CORNER_RADIUS);
        e.remove(KEY_MISSED_CALLS_ENABLED);
        e.remove(KEY_HOME_COLUMNS);
        e.remove(KEY_MENU_COLUMNS);
        e.apply();
    }

    /**
     * Every stored key assignment plus both digit-press modes. All shortcut
     * prefs share the "key_" prefix (key_num_*, key_dpad_*, key_softkey_*),
     * which no other setting uses.
     */
    public static void resetKeyShortcuts(Context context) {
        SharedPreferences.Editor e = getPrefs(context).edit();
        Map<String, ?> all = getPrefs(context).getAll();
        for (String k : all.keySet()) {
            if (k.startsWith("key_")) {
                e.remove(k);
            }
        }
        e.remove(KEY_NUM_LONG_PRESS_MODE);
        e.remove(KEY_NUM_SHORT_PRESS_MODE);
        e.apply();
    }

    // ---------------------------------------------------------------------------
    // Which launcher is active
    //
    // Both this mod and the stock ClassicHome answer CATEGORY_HOME. Switching between
    // them has one genuinely dangerous move and one safe one, and they are the
    // opposite of what they look like:
    //
    //   clearPackagePreferredActivities() alone is DANGEROUS. It leaves two HOME
    //   candidates and no default, so PackageManagerService returns ResolverActivity
    //   and ActivityManagerService launches *that* as the home screen - including at
    //   boot. On a 240x320 device with no touchscreen, if the chooser is not fully
    //   D-pad navigable the phone is left with no usable home screen.
    //
    //   setComponentEnabledSetting(DISABLED) on our own Home is SAFE. Afterwards
    //   exactly one HOME candidate remains, so there is no chooser at all.
    //
    // Neither call needs a permission: PackageManagerService exempts a caller acting
    // on its own UID.
    // ---------------------------------------------------------------------------

    /** The stock launcher this mod was built from. It ships in /system/priv-app. */
    public static final String STOCK_PKG = "com.sprd.simple.launcher";
    private static final String HOME_CLASS = "com.sprd.classichome.Home";

    private static ComponentName modHome(Context context) {
        return new ComponentName(context.getPackageName(), HOME_CLASS);
    }

    /**
     * Run a command as root.
     *
     * Needed only for the stock launcher: setComponentEnabledSetting is free for our
     * own components but requires CHANGE_COMPONENT_ENABLED_STATE (signature|privileged)
     * for anyone else's, and this APK is signed with a debug key.
     *
     * Returns false when su is missing or the user denies it, which is the signal to
     * fall back to the chooser.
     */
    private static boolean runSu(String cmd) {
        Process p = null;
        try {
            p = Runtime.getRuntime().exec("su");
            java.io.DataOutputStream out = new java.io.DataOutputStream(p.getOutputStream());
            out.writeBytes(cmd + "\n");
            out.writeBytes("exit\n");
            out.flush();
            return p.waitFor() == 0;
        } catch (Throwable t) {
            Log.w(TAG, "su failed for: " + cmd, t);
            return false;
        } finally {
            if (p != null) {
                try { p.destroy(); } catch (Throwable ignore) { }
            }
        }
    }

    public static boolean hasRoot() {
        return runSu("id");
    }

    public static boolean isStockHomeEnabled(Context context) {
        try {
            int state = context.getPackageManager().getComponentEnabledSetting(
                    new ComponentName(STOCK_PKG, HOME_CLASS));
            return state != PackageManager.COMPONENT_ENABLED_STATE_DISABLED;
        } catch (Throwable t) {
            return true;
        }
    }

    /**
     * Enable or disable the stock launcher's home activity.
     *
     * Only the Home component, never the whole package — the stock app also owns the
     * wallpaper picker and the extras/games screens, and disabling the package would
     * take those with it.
     */
    public static boolean setStockHomeEnabled(Context context, boolean enabled) {
        String verb = enabled ? "enable" : "disable";
        return runSu("pm " + verb + " " + STOCK_PKG + "/" + HOME_CLASS);
    }

    /**
     * Make this launcher the only home screen.
     *
     * Choosing in the system picker leaves the stock launcher installed and selectable,
     * so the user can land back on it by accident. Disabling the stock home activity
     * removes the ambiguity outright.
     *
     * Refuses to act if it would leave the device with no home screen at all.
     */
    public static boolean activateModHome(Context context) {
        if (!isModHomeEnabled(context)) {
            setModHomeEnabled(context, true);
        }
        if (countHomeCandidates(context) < 1) {
            Log.e(TAG, "Refusing to disable the stock home: no candidate would remain");
            return false;
        }
        return setStockHomeEnabled(context, false);
    }

    /**
     * COMPONENT_ENABLED_STATE_DEFAULT (0) is what a component reports until someone
     * changes it - NOT ENABLED (1). Testing for == ENABLED would report "off" on a
     * clean install.
     */
    public static boolean isModHomeEnabled(Context context) {
        try {
            int state = context.getPackageManager()
                    .getComponentEnabledSetting(modHome(context));
            return state != PackageManager.COMPONENT_ENABLED_STATE_DISABLED;
        } catch (Throwable t) {
            return true;
        }
    }

    /** How many activities currently answer CATEGORY_HOME. Probe before switching. */
    public static int countHomeCandidates(Context context) {
        try {
            Intent home = new Intent(Intent.ACTION_MAIN);
            home.addCategory(Intent.CATEGORY_HOME);
            List<ResolveInfo> list =
                    context.getPackageManager().queryIntentActivities(home, 0);
            return list != null ? list.size() : 0;
        } catch (Throwable t) {
            return 0;
        }
    }

    public static void setModHomeEnabled(Context context, boolean enabled) {
        // DONT_KILL_APP: this runs from our own settings screen, which lives in the
        // same process. Without it the toggle kills the UI performing it.
        context.getPackageManager().setComponentEnabledSetting(
                modHome(context),
                enabled ? PackageManager.COMPONENT_ENABLED_STATE_ENABLED
                        : PackageManager.COMPONENT_ENABLED_STATE_DISABLED,
                PackageManager.DONT_KILL_APP);
    }

    /**
     * Hand the user the system's home-screen picker.
     *
     * Settings.ACTION_HOME_SETTINGS does not exist in API 19 (added in 21), so the
     * ROM's HomeSettings alias is tried first and only used if it actually resolves.
     * Falling back to firing HOME is what triggers the chooser when no default is set.
     */
    public static boolean openHomeChooser(Context context) {
        try {
            Intent it = new Intent(Intent.ACTION_MAIN);
            it.setClassName("com.android.settings",
                    "com.android.settings.Settings$HomeSettingsActivity");
            it.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            if (context.getPackageManager().resolveActivity(it, 0) != null) {
                context.startActivity(it);
                return true;
            }
        } catch (Throwable t) {
            Log.w(TAG, "HomeSettings unavailable", t);
        }
        try {
            Intent home = new Intent(Intent.ACTION_MAIN);
            home.addCategory(Intent.CATEGORY_HOME);
            home.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            context.startActivity(home);
            return true;
        } catch (Throwable t) {
            Log.e(TAG, "Cannot open a home chooser", t);
            return false;
        }
    }

    /**
     * Go back to the stock launcher.
     *
     * Order matters. Disabling our Home first means that by the time the preference is
     * cleared there is only one candidate left, so no chooser can appear and no
     * "no default" state can exist - not even briefly, and not at the next boot.
     */
    public static void restoreStockHome(Context context) {
        // Bring the stock home back BEFORE disabling ours, so there is never a moment -
        // or a reboot - with zero home screens.
        try {
            setStockHomeEnabled(context, true);
        } catch (Throwable t) {
            Log.w(TAG, "Could not re-enable the stock home", t);
        }
        try {
            setModHomeEnabled(context, false);
        } catch (Throwable t) {
            Log.e(TAG, "Could not disable the mod home", t);
        }
        try {
            context.getPackageManager()
                    .clearPackagePreferredActivities(context.getPackageName());
        } catch (Throwable t) {
            Log.w(TAG, "Could not clear preferred activities", t);
        }
        try {
            Intent home = new Intent(Intent.ACTION_MAIN);
            home.addCategory(Intent.CATEGORY_HOME);
            home.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            context.startActivity(home);
        } catch (Throwable t) {
            Log.e(TAG, "Could not return to the home screen", t);
        }
    }
}
