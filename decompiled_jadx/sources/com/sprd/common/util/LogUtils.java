package com.sprd.common.util;

import android.os.Build;
import android.util.Log;

/* loaded from: classes.dex */
public final class LogUtils {
    public static boolean DEBUG;
    public static boolean DEBUG_ALL;
    public static boolean DEBUG_LOADER;

    static {
        DEBUG_ALL = false;
        DEBUG = false;
        DEBUG_LOADER = false;
        DEBUG_ALL = SystemPropertiesUtils.getBoolean("persist.sys.launcher.all", false);
        if (DEBUG_ALL) {
            DEBUG = true;
            DEBUG_LOADER = true;
        } else {
            DEBUG = SystemPropertiesUtils.getBoolean("persist.sys.launcher.debug", Build.TYPE.equals("user") ? false : true);
            DEBUG_LOADER = SystemPropertiesUtils.getBoolean("persist.sys.launcher.loader", DEBUG);
        }
    }

    private LogUtils() {
    }

    public static void e(String tag, String msg, Throwable t) {
        Log.e("SimpleHome", tag + ", " + msg, t);
    }

    public static void w(String tag, String msg, Throwable t) {
        Log.w("SimpleHome", tag + ", " + msg, t);
    }

    public static void i(String tag, String msg) {
        Log.i("SimpleHome", tag + ", " + msg);
    }

    public static void d(String tag, String msg) {
        Log.d("SimpleHome", tag + ", " + msg);
    }
}
