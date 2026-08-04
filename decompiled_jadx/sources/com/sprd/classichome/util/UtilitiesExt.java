package com.sprd.classichome.util;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.ComponentInfo;
import android.content.pm.PackageItemInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.net.Uri;
import android.os.UserHandle;
import android.provider.Settings;
import android.text.TextUtils;
import com.kosherjava.zmanim.hebrewcalendar.JewishCalendar;
import com.sprd.classichome.AppItemInfo;
import com.sprd.classichome.Home;
import com.sprd.classichome.mainmenu.MainMenuActivity;
import com.sprd.common.util.Utilities;
import com.sprd.simple.launcher.R;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class UtilitiesExt {
    public static void goHome(Context context) {
        Utilities.startActivity(context, getHomeComponentName(context));
    }

    public static void goMainMenu(Context context) {
        Utilities.startActivity(context, getMainMenuComponentName(context));
    }

    public static ComponentName getHomeComponentName(Context context) {
        return new ComponentName(context, (Class<?>) Home.class);
    }

    public static ComponentName getMainMenuComponentName(Context context) {
        return new ComponentName(context, (Class<?>) MainMenuActivity.class);
    }

    public static ComponentName getLFComponentName(Context context) throws Resources.NotFoundException {
        String appComponent = Settings.Global.getString(context.getContentResolver(), "navkey_settings_app_sk_left");
        if (TextUtils.isEmpty(appComponent)) {
            appComponent = context.getResources().getString(R.string.left_button_launch_app);
        }
        return ComponentName.unflattenFromString(appComponent);
    }

    public static ComponentName getRTComponentName(Context context) throws Resources.NotFoundException {
        String appComponent = Settings.Global.getString(context.getContentResolver(), "navkey_settings_app_sk_right");
        if (TextUtils.isEmpty(appComponent)) {
            appComponent = context.getResources().getString(R.string.right_button_launch_app);
        }
        return ComponentName.unflattenFromString(appComponent);
    }

    public static ArrayList<AppItemInfo> findActivitiesForPackage(Context context, String packageName, UserHandle user) {
        ArrayList<AppItemInfo> appItemInfos = new ArrayList<>();
        PackageManager packageManager = context.getPackageManager();
        Intent mainIntent = new Intent("android.intent.action.MAIN", (Uri) null);
        mainIntent.addCategory("android.intent.category.LAUNCHER");
        mainIntent.setPackage(packageName);
        List<ResolveInfo> apps = packageManager.queryIntentActivities(mainIntent, 0);
        if (apps != null && apps.size() > 0) {
            for (ResolveInfo info : apps) {
                AppItemInfo appItemInfo = new AppItemInfo(info.loadLabel(packageManager), info.loadIcon(packageManager), ((PackageItemInfo) ((ComponentInfo) info.activityInfo).applicationInfo).packageName, ((PackageItemInfo) info.activityInfo).name);
                appItemInfos.add(appItemInfo);
            }
        }
        return appItemInfos;
    }

    public static ComponentName getDpadComponentName(Context context, int keycodeDpadDown) throws Resources.NotFoundException {
        switch (keycodeDpadDown) {
            case JewishCalendar.HOSHANA_RABBA /* 17 */:
                ComponentName componentName = ComponentName.unflattenFromString(context.getResources().getString(R.string.keypad_star_app));
                return componentName;
            case JewishCalendar.SHEMINI_ATZERES /* 18 */:
            case 20:
            default:
                return null;
            case JewishCalendar.SIMCHAS_TORAH /* 19 */:
                String appComponent = Settings.Global.getString(context.getContentResolver(), "navkey_settings_app_up");
                if (TextUtils.isEmpty(appComponent)) {
                    appComponent = context.getResources().getString(R.string.up_dpad_app);
                }
                ComponentName componentName2 = ComponentName.unflattenFromString(appComponent);
                return componentName2;
            case JewishCalendar.CHANUKAH /* 21 */:
                String appComponent2 = Settings.Global.getString(context.getContentResolver(), "navkey_settings_app_left");
                if (TextUtils.isEmpty(appComponent2)) {
                    appComponent2 = context.getResources().getString(R.string.left_dpad_app);
                }
                ComponentName componentName3 = ComponentName.unflattenFromString(appComponent2);
                return componentName3;
            case JewishCalendar.TENTH_OF_TEVES /* 22 */:
                String appComponent3 = Settings.Global.getString(context.getContentResolver(), "navkey_settings_app_right");
                if (TextUtils.isEmpty(appComponent3)) {
                    appComponent3 = context.getResources().getString(R.string.right_dpad_app);
                }
                ComponentName componentName4 = ComponentName.unflattenFromString(appComponent3);
                return componentName4;
        }
    }

    public static boolean isSystemApp(Context context, String packageName) throws PackageManager.NameNotFoundException {
        PackageManager pm = context.getPackageManager();
        try {
            ApplicationInfo appInfo = pm.getApplicationInfo(packageName, 0);
            if ((appInfo.flags & 1) == 0) {
                if (!appInfo.sourceDir.startsWith("/system/vital-app")) {
                    return false;
                }
            }
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
