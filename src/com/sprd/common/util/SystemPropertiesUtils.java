package com.sprd.common.util;

import android.text.TextUtils;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class SystemPropertiesUtils {
    private static Class<?> mClassType = null;
    private static Method mGetMethod = null;
    private static Method mGetBooleanMethod = null;

    private static Class<?> getSystemPropertiesClass() throws ClassNotFoundException {
        if (mClassType == null) {
            mClassType = Class.forName("android.os.SystemProperties");
        }
        return mClassType;
    }

    private static Method getMethod() throws Exception {
        if (mGetMethod == null) {
            mGetMethod = getSystemPropertiesClass().getDeclaredMethod("get", String.class);
        }
        return mGetMethod;
    }

    private static Method getBooleanMethod() throws Exception {
        if (mGetBooleanMethod == null) {
            mGetBooleanMethod = getSystemPropertiesClass().getDeclaredMethod("getBoolean", String.class, Boolean.TYPE);
        }
        return mGetBooleanMethod;
    }

    public static String get(String key, String def) {
        try {
            String value = (String) getMethod().invoke(null, key);
            if (!TextUtils.isEmpty(value)) {
                return value;
            }
        } catch (Exception e) {
            LogUtils.d("SystemPropertiesUtils", "Unable to read system properties");
        }
        return def;
    }

    public static boolean getBoolean(String key, boolean def) {
        try {
            boolean value = ((Boolean) getBooleanMethod().invoke(null, key, Boolean.valueOf(def))).booleanValue();
            return value;
        } catch (Exception e) {
            LogUtils.d("SystemPropertiesUtils", "Unable to read system properties");
            return def;
        }
    }
}
