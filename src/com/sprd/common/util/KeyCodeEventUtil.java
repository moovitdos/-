package com.sprd.common.util;

import android.content.Context;
import android.content.Intent;
import android.media.AudioManager;
import android.media.ToneGenerator;
import android.net.Uri;
import android.provider.Settings;
import android.text.TextUtils;
import android.view.KeyEvent;

import com.sprd.classichome.settings.LauncherSettings;

import org.json.JSONArray;

public class KeyCodeEventUtil {
    private static final boolean ENABLE_FLASHLIGHT_BY_CENTER_KEY = SystemPropertiesUtils.getBoolean("ro.home.flashlight.centerkey", false);
    private static String[] spData = new String[2];
    private static String[] mStrArray = new String[2];

    public static boolean isLauncherNeedUseKeycode(int keyCode) {
        switch (keyCode) {
            case 4:
            case 5:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 82:
                return true;
            default:
                return false;
        }
    }

    public static boolean pressKeyEventForMainActivity(Context context, int keyCode, KeyEvent event) {
        // 1. Give user-configured shortcuts first refusal.
        //
        // This delegates instead of repeating the keycode -> pref-id table. The
        // shipped smali delegated the same way; the jadx mirror had grown a second
        // copy of the table that had already drifted (it ignored the num_short_press
        // mode gate that LauncherSettings applies). Two tables meant every future key
        // change had to be made twice, correctly, or behaviour silently diverged.
        if (LauncherSettings.handleShortPressKey(context, keyCode)) {
            return true;
        }

        // 2. Default short press behaviors
        switch (keyCode) {
            case 5:
                Utilities.startActivity(context, Utilities.CALL_LOG);
                break;
            case 7:
            case 8:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 16:
                startDialActivityByKeyCode(context, (keyCode == 7 ? "0" : (keyCode - 7) + ""));
                break;
            case 9:
                ((AudioManager) context.getSystemService(Context.AUDIO_SERVICE)).adjustStreamVolume(AudioManager.STREAM_MUSIC, 1, 1);
                break;
            case 15:
                ((AudioManager) context.getSystemService(Context.AUDIO_SERVICE)).adjustStreamVolume(AudioManager.STREAM_MUSIC, -1, 1);
                break;
            case 17:
                startDialActivityByKeyCode(context, "*");
                break;
            case 18:
                // Keep # available to Home for widget-page navigation.
                return false;
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 82:
            case 4:
                return false; // let Home.onKeyUp / BaseHomeActivity handle
        }
        return true;
    }

    private static void startDialActivityByKeyCode(Context context, String keyCode) {
        Intent it = new Intent("android.intent.action.DIAL", Uri.parse("tel:" + keyCode));
        Utilities.startActivity(context, it);
    }

    private static void startCallActivityByPosition(Context context, int position) {
        getFamilyNumber(context, position, spData.length);
        if (mStrArray != null && mStrArray.length > 1 && !TextUtils.isEmpty(mStrArray[1])) {
            Intent intent = new Intent("android.intent.action.CALL");
            Uri data = Uri.parse("tel:" + mStrArray[1]);
            intent.setData(data);
            Utilities.startActivity(context, intent);
        }
    }

    private static void expandNotificationsPanel(Context context) {
        StatusBarUtils.expandNotificationsPanel(context);
    }

    private static void startSos(Context context) {
        Utilities.sendBroadcast(context, new Intent("android.intent.action.SOS"), true);
    }

    private static void startFlashlight() {
        // Reflection rather than a direct call: FlashlightController is not in the
        // compile list, and its jadx output has broken try/catch reconstruction that
        // will not compile. Its smali ships untouched. Same pattern as
        // LauncherSettings.executeKeyAction's ACTION_FLASHLIGHT branch.
        try {
            Class<?> fc = Class.forName("com.sprd.common.util.FlashlightController");
            fc.getMethod("switchFlashlight").invoke(null);
        } catch (Throwable t) {
            LogUtils.e("KeyCodeEventUtil", "Failed to toggle flashlight", t);
        }
    }

    private static void startSilentMode(Context context) {
        AudioManager audioManager = (AudioManager) context.getSystemService(Context.AUDIO_SERVICE);
        if (audioManager.getRingerMode() == AudioManager.RINGER_MODE_SILENT) {
            audioManager.setRingerMode(AudioManager.RINGER_MODE_NORMAL);
        } else {
            audioManager.setRingerMode(AudioManager.RINGER_MODE_SILENT);
        }
    }

    private static void onLongPressCenterKey(Context context) {
        if (ENABLE_FLASHLIGHT_BY_CENTER_KEY) {
            startFlashlight();
        } else {
            startSos(context);
        }
    }

    private static void onLongPress0Key(Context context) {
        if (ENABLE_FLASHLIGHT_BY_CENTER_KEY) {
            startSos(context);
        } else {
            startFlashlight();
        }
    }

    public static boolean longPressKeyEventForMainActivity(Context context, int keyCode) {
        if (LogUtils.DEBUG) {
            LogUtils.d("KeyCodeEventUtil", "longPressKeyEvent keyCode = " + keyCode);
        }

        // 1. Give user-configured shortcuts first refusal. Delegated for the same
        // reason as the short-press path above: one table, one place to change it.
        if (LauncherSettings.handleLongPressKey(context, keyCode)) {
            return true;
        }

        // 2. Default long press behaviors
        switch (keyCode) {
            case 7:
                onLongPress0Key(context);
                break;
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
                int numLongMode = LauncherSettings.getNumLongPressMode(context);
                if (numLongMode == LauncherSettings.NUM_LONG_SPEED_DIAL || numLongMode == LauncherSettings.NUM_LONG_PER_KEY) {
                    if (Settings.Global.getInt(context.getContentResolver(), "speeddial_setting", 1) == 1) {
                        int position = keyCode - 8;
                        String key = "speeddial" + position;
                        String jsonString = Settings.Global.getString(context.getContentResolver(), key);
                        if (!TextUtils.isEmpty(jsonString)) {
                            startCallActivityByPosition(context, position);
                            break;
                        } else {
                            try {
                                Intent familyIntent = new Intent("com.duoqin.dialer.speeddial.MAIN");
                                familyIntent.addCategory("android.intent.category.DEFAULT");
                                familyIntent.putExtra("position", position);
                                familyIntent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                                context.startActivity(familyIntent);
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                            break;
                        }
                    }
                }
                break;
            case 18:
                startSilentMode(context);
                break;
            case 23:
                onLongPressCenterKey(context);
                break;
            case 82:
                expandNotificationsPanel(context);
                break;
        }
        return true;
    }

    private static String[] getFamilyNumber(Context context, int position, int arrayLength) {
        try {
            mStrArray = new String[arrayLength];
            String key = "speeddial" + position;
            String jsonStrig = Settings.Global.getString(context.getContentResolver(), key);
            if (!TextUtils.isEmpty(jsonStrig)) {
                JSONArray jsonArray = new JSONArray(jsonStrig);
                for (int i = 0; i < jsonArray.length(); i++) {
                    mStrArray[i] = jsonArray.getString(i);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return mStrArray;
    }
}
