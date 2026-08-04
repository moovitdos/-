package com.sprd.common.util;

import android.content.Context;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class StatusBarUtils {
    private static Class<?> mClassType = null;
    private static Method mGetMethod = null;

    private static Class<?> getStatusBarManagerClass() throws ClassNotFoundException {
        if (mClassType == null) {
            mClassType = Class.forName("android.app.StatusBarManager");
        }
        return mClassType;
    }

    private static Method getMethod() throws Exception {
        if (mGetMethod == null) {
            Class clazz = getStatusBarManagerClass();
            mGetMethod = clazz.getMethod("expandNotificationsPanel", new Class[0]);
        }
        return mGetMethod;
    }

    public static void expandNotificationsPanel(Context context) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        try {
            getMethod().invoke(context.getSystemService("statusbar"), new Object[0]);
        } catch (Exception e) {
            LogUtils.w("StatusBarUtils", "Unable expandNotificationsPanel", e);
        }
    }
}
