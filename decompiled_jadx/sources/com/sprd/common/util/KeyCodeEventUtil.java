package com.sprd.common.util;

import android.content.Context;
import android.content.Intent;
import android.media.AudioManager;
import android.media.ToneGenerator;
import android.net.Uri;
import android.provider.Settings;
import android.text.TextUtils;
import android.view.KeyEvent;
import com.kosherjava.zmanim.hebrewcalendar.JewishCalendar;
import java.lang.reflect.InvocationTargetException;
import org.json.JSONArray;

/* loaded from: classes.dex */
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
            case JewishCalendar.EREV_SUCCOS /* 14 */:
            case JewishCalendar.SUCCOS /* 15 */:
            case JewishCalendar.CHOL_HAMOED_SUCCOS /* 16 */:
            case JewishCalendar.HOSHANA_RABBA /* 17 */:
            case JewishCalendar.SHEMINI_ATZERES /* 18 */:
            case JewishCalendar.SIMCHAS_TORAH /* 19 */:
            case 20:
            case JewishCalendar.CHANUKAH /* 21 */:
            case JewishCalendar.TENTH_OF_TEVES /* 22 */:
            case JewishCalendar.TU_BESHVAT /* 23 */:
            case 82:
                return true;
            default:
                return false;
        }
    }

    public static boolean pressKeyEventForMainActivity(Context context, int keyCode, KeyEvent event) {
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
            case JewishCalendar.EREV_SUCCOS /* 14 */:
            case JewishCalendar.CHOL_HAMOED_SUCCOS /* 16 */:
                startDialActivityByKeyCode(context, (keyCode - 7) + "");
                break;
            case 9:
                ((AudioManager) context.getSystemService("audio")).adjustStreamVolume(3, 1, 1);
                break;
            case JewishCalendar.SUCCOS /* 15 */:
                ((AudioManager) context.getSystemService("audio")).adjustStreamVolume(3, -1, 1);
                break;
            case JewishCalendar.HOSHANA_RABBA /* 17 */:
                startDialActivityByKeyCode(context, "*");
                break;
            case JewishCalendar.SHEMINI_ATZERES /* 18 */:
                startDialActivityByKeyCode(context, "#");
                break;
        }
        return true;
    }

    private static void startDialActivityByKeyCode(Context context, String keyCode) {
        Intent it = new Intent("android.intent.action.DIAL", Uri.parse("tel:" + keyCode));
        Utilities.startActivity(context, it);
    }

    private static void startCallActivityByPosition(Context context, int position) {
        getFamilyNumber(context, position, spData.length);
        Intent intent = new Intent("android.intent.action.CALL");
        Uri data = Uri.parse("tel:" + mStrArray[1]);
        intent.setData(data);
        Utilities.startActivity(context, intent);
    }

    private static void expandNotificationsPanel(Context context) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        StatusBarUtils.expandNotificationsPanel(context);
    }

    private static void startSos(Context context) {
        Utilities.sendBroadcast(context, new Intent("android.intent.action.SOS"), true);
    }

    private static void startFlashlight() {
        FlashlightController.switchFlashlight();
    }

    private static void startSilentMode(Context context) {
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        if (audioManager.getRingerMode() == 0) {
            audioManager.setRingerMode(2);
        } else {
            audioManager.setRingerMode(0);
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

    public static boolean longPressKeyEventForMainActivity(Context context, int keyCode) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (LogUtils.DEBUG) {
            LogUtils.d("KeyCodeEventUtil", "longPressKeyEvent keyCode = " + keyCode);
        }
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
            case JewishCalendar.EREV_SUCCOS /* 14 */:
            case JewishCalendar.SUCCOS /* 15 */:
            case JewishCalendar.CHOL_HAMOED_SUCCOS /* 16 */:
                if (Settings.Global.getInt(context.getContentResolver(), "speeddial_setting", 1) == 1) {
                    int position = keyCode - 8;
                    String key = "speeddial" + position;
                    String jsonStrig = Settings.Global.getString(context.getContentResolver(), key);
                    if (!TextUtils.isEmpty(jsonStrig)) {
                        startCallActivityByPosition(context, position);
                        break;
                    } else {
                        Intent familyIntent = new Intent("com.duoqin.dialer.speeddial.MAIN");
                        familyIntent.addCategory("android.intent.category.DEFAULT");
                        familyIntent.putExtra("position", position);
                        familyIntent.setFlags(268435456);
                        context.startActivity(familyIntent);
                        break;
                    }
                }
                break;
            case JewishCalendar.SHEMINI_ATZERES /* 18 */:
                startSilentMode(context);
                break;
            case JewishCalendar.TU_BESHVAT /* 23 */:
                onLongPressCenterKey(context);
                break;
            case 82:
                expandNotificationsPanel(context);
                break;
        }
        return true;
    }

    /* renamed from: com.sprd.common.util.KeyCodeEventUtil$1, reason: invalid class name */
    static class AnonymousClass1 extends Thread {
        AnonymousClass1() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() throws Throwable {
            ToneGenerator mToneGenerator;
            ToneGenerator mToneGenerator2 = null;
            try {
                try {
                    mToneGenerator = new ToneGenerator(2, 100);
                } catch (Exception e) {
                    e = e;
                }
            } catch (Throwable th) {
                th = th;
            }
            try {
                mToneGenerator.startTone(27, 100);
                Thread.sleep(120L);
                mToneGenerator.stopTone();
                Thread.sleep(20L);
                if (mToneGenerator != null) {
                    mToneGenerator.release();
                }
            } catch (Exception e2) {
                e = e2;
                mToneGenerator2 = mToneGenerator;
                e.printStackTrace();
                if (mToneGenerator2 != null) {
                    mToneGenerator2.release();
                }
            } catch (Throwable th2) {
                th = th2;
                mToneGenerator2 = mToneGenerator;
                if (mToneGenerator2 != null) {
                    mToneGenerator2.release();
                }
                throw th;
            }
        }
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
