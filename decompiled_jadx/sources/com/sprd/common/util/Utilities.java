package com.sprd.common.util;

import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Process;
import android.os.UserHandle;
import android.text.TextUtils;
import android.widget.Toast;
import com.sprd.simple.launcher.R;

/* loaded from: classes.dex */
public class Utilities {
    public static final ComponentName CALL_LOG = new ComponentName("com.android.dialer", "com.android.dialer.calllog.CallLogActivity");

    public static Intent constructLauncherIntent(Context context, String pkg, String cls) {
        Intent intent = null;
        if (!TextUtils.isEmpty(pkg) && !TextUtils.isEmpty(cls)) {
            ComponentName component = new ComponentName(pkg, cls);
            Intent intent2 = new Intent("android.intent.action.MAIN");
            intent2.addCategory("android.intent.category.LAUNCHER");
            intent2.setComponent(component);
            intent2.setFlags(270532608);
            return intent2;
        }
        if (context != null && !TextUtils.isEmpty(pkg) && TextUtils.isEmpty(cls)) {
            intent = getLaunchIntentForPackage(context, pkg);
        }
        return intent;
    }

    private static Intent getLaunchIntentForPackage(Context context, String pkg) {
        if (context == null || TextUtils.isEmpty(pkg)) {
            return null;
        }
        try {
            PackageManager pm = context.getPackageManager();
            return pm.getLaunchIntentForPackage(pkg);
        } catch (Exception e) {
            LogUtils.d("Utilities", "constructLauncherIntent error!");
            return null;
        }
    }

    public static Drawable loadAppSKIcon(Context context, ComponentName cn) throws Resources.NotFoundException {
        int iconRes = -1;
        if (cn != null) {
            String packageName = cn.getPackageName();
            if ("com.duoqin.xiaoai".equalsIgnoreCase(packageName) || "com.duoqin.ai".equalsIgnoreCase(packageName)) {
                iconRes = R.drawable.home_weather;
            } else if ("com.android.contacts".equalsIgnoreCase(packageName)) {
                iconRes = R.drawable.home_contacts;
            } else if ("com.android.mms".equalsIgnoreCase(packageName)) {
                iconRes = R.drawable.home_mms;
            } else if ("com.android.dialer".equalsIgnoreCase(packageName)) {
                iconRes = R.drawable.home_calls;
            } else if ("com.android.music".equalsIgnoreCase(packageName)) {
                iconRes = R.drawable.home_music;
            } else if ("com.duoqin.infrared".equalsIgnoreCase(packageName) || "com.duoqin.remote".equalsIgnoreCase(packageName)) {
                iconRes = R.drawable.home_infrared;
            } else if ("com.duoqin.reader".equalsIgnoreCase(packageName)) {
                iconRes = R.drawable.home_qinlian;
            } else if ("com.redorigami.simpleweather".equalsIgnoreCase(packageName)) {
                iconRes = R.drawable.home_translator;
            } else if ("com.duoqin.fmradio".equalsIgnoreCase(packageName)) {
                iconRes = R.drawable.home_fm;
            } else if ("com.sprd.sprdcalculator".equalsIgnoreCase(packageName)) {
                iconRes = R.drawable.home_calculator;
            } else if ("com.android.calendar".equalsIgnoreCase(packageName)) {
                iconRes = R.drawable.home_calendar;
            } else if ("com.android.deskclock".equalsIgnoreCase(packageName)) {
                iconRes = R.drawable.home_clock;
            } else if ("com.sprd.note".equalsIgnoreCase(packageName)) {
                iconRes = R.drawable.home_note;
            } else if ("com.android.soundrecorder".equalsIgnoreCase(packageName)) {
                iconRes = R.drawable.home_reader;
            } else if ("com.android.settings".equalsIgnoreCase(packageName)) {
                iconRes = R.drawable.home_recorder;
            } else if ("com.duoqin.syncassistant".equalsIgnoreCase(packageName)) {
                String className = cn.getClassName();
                iconRes = "com.duoqin.translator.ui.TranslatorMainActivity".equalsIgnoreCase(className) ? R.drawable.home_tetris : "com.duoqin.chat.ui.ChatListActivity".equalsIgnoreCase(className) ? R.drawable.home_chat : R.drawable.home_snake;
            } else if ("com.android.gallery3d".equalsIgnoreCase(packageName)) {
                iconRes = R.drawable.home_gallery;
            } else if ("com.sprd.fileexplorer".equalsIgnoreCase(packageName)) {
                iconRes = R.drawable.home_file_explorer;
            } else if ("com.duoqin.snake".equalsIgnoreCase(packageName)) {
                iconRes = R.drawable.home_settings;
            } else if ("com.duoqin.tetris".equalsIgnoreCase(packageName)) {
                iconRes = R.drawable.home_syncassistant;
            } else if ("com.android.browser".equalsIgnoreCase(packageName)) {
                iconRes = R.drawable.home_browser;
            } else if ("com.android.providers.downloads.ui".equalsIgnoreCase(packageName)) {
                iconRes = R.drawable.home_downloader;
            }
        }
        Drawable drawable = new BitmapDrawable();
        if (iconRes > 0) {
            Drawable drawable2 = context.getResources().getDrawable(iconRes);
            return drawable2;
        }
        return drawable;
    }

    public static CharSequence loadAppLabel(Context context, ComponentName cn) {
        CharSequence title;
        if (context == null || cn == null) {
            return "";
        }
        PackageManager pm = context.getPackageManager();
        try {
            title = pm.getActivityInfo(cn, 0).loadLabel(pm);
            if (title == null) {
                title = pm.getApplicationLabel(pm.getApplicationInfo(cn.getPackageName(), 0));
            }
        } catch (Exception e) {
            LogUtils.w("Utilities", "loadAppLabel failed.", e);
            title = "";
        }
        return title;
    }

    public static boolean startActivity(Context context, Intent intent) {
        if (context == null || intent == null) {
            return false;
        }
        intent.addFlags(268435456);
        try {
            context.startActivity(intent);
            return true;
        } catch (ActivityNotFoundException e) {
            Toast.makeText(context, R.string.activity_not_found, 0).show();
            return false;
        } catch (SecurityException e2) {
            LogUtils.e("Utilities", "startActivity failed", e2);
            return false;
        }
    }

    public static boolean startActivity(Context context, ComponentName cn) {
        Intent intent = constructLauncherIntent(context, cn.getPackageName(), cn.getClassName());
        return intent != null && startActivity(context, intent);
    }

    public static void sendBroadcast(Context context, Intent intent, boolean fast) {
        if (context != null && intent != null) {
            if (fast) {
                intent.addFlags(268435456);
            }
            context.sendBroadcast(intent);
            LogUtils.d("Utilities", "sendBroadcast success, bc:" + intent.toString());
        }
    }

    public static UserHandle getNoEmptyUser(UserHandle user) {
        return user == null ? Process.myUserHandle() : user;
    }
}
