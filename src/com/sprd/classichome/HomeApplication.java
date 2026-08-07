package com.sprd.classichome;

import android.app.Application;
import android.content.IntentFilter;
import android.util.SparseIntArray;
import com.sprd.classichome.model.HomeMonitorCallbacks;
import com.sprd.classichome.model.LauncherModel;
import com.sprd.common.util.LogUtils;
import com.sprd.simple.launcher.R;

/* loaded from: classes.dex */
public class HomeApplication extends Application {
    private static HomeApplication INSTANCE;
    public static SparseIntArray WEATHER_ICON = new SparseIntArray();
    private LauncherModel mModel;

    static {
        WEATHER_ICON.put(0, R.drawable.ic_launcher_note);
        WEATHER_ICON.put(1, R.drawable.ic_launcher_family);
        WEATHER_ICON.put(2, R.drawable.cloudy_day);
        WEATHER_ICON.put(3, R.drawable.ic_launcher_fm);
        WEATHER_ICON.put(4, R.drawable.ic_launcher_qinlian);
        WEATHER_ICON.put(5, R.drawable.ic_launcher_qinlian);
        WEATHER_ICON.put(6, R.drawable.ic_launcher_gallery);
        WEATHER_ICON.put(7, R.drawable.ic_launcher_calendar);
        WEATHER_ICON.put(8, R.drawable.ic_launcher_duoqin_chat);
        WEATHER_ICON.put(9, R.drawable.heavy_rain);
        WEATHER_ICON.put(10, R.drawable.ic_launcher_filemanager);
        WEATHER_ICON.put(11, R.drawable.heavy_rainstorm);
        WEATHER_ICON.put(12, R.drawable.heavy_rainstorm);
        WEATHER_ICON.put(13, R.drawable.ic_launcher_message);
        WEATHER_ICON.put(14, R.drawable.ic_launcher_calllog);
        WEATHER_ICON.put(15, R.drawable.ic_launcher_extras);
        WEATHER_ICON.put(16, R.drawable.heavy_snow);
        WEATHER_ICON.put(17, R.drawable.blizzard);
        WEATHER_ICON.put(18, R.drawable.fog);
        WEATHER_ICON.put(19, R.drawable.freezing_rain);
        WEATHER_ICON.put(20, R.drawable.ic_launcher_flashlight);
        WEATHER_ICON.put(21, R.drawable.ic_launcher_ai);
        WEATHER_ICON.put(22, R.drawable.ic_launcher_clock);
        WEATHER_ICON.put(23, R.drawable.heavy_blizzard_rain);
        WEATHER_ICON.put(24, R.drawable.heavy_heavy_rain);
        WEATHER_ICON.put(25, R.drawable.heavy_heavy_rain);
        WEATHER_ICON.put(26, R.drawable.ic_launcher_browser);
        WEATHER_ICON.put(27, R.drawable.ic_launcher_contacts);
        WEATHER_ICON.put(28, R.drawable.heavy_blizzard_snow);
        WEATHER_ICON.put(29, R.drawable.dust);
        WEATHER_ICON.put(30, R.drawable.light_rain);
        WEATHER_ICON.put(31, R.drawable.ic_launcher_music);
        WEATHER_ICON.put(53, R.drawable.ic_launcher_game);
        WEATHER_ICON.put(99, R.drawable.ic_launcher_note);
    }

    public static HomeApplication getInstance() {
        if (INSTANCE == null) {
            throw new RuntimeException("HomeApplication is not running!");
        }
        return INSTANCE;
    }

    public HomeApplication() {
        INSTANCE = this;
    }

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        if (LogUtils.DEBUG) {
            LogUtils.d("HomeApplication", "HomeApplication initiated");
        }
        this.mModel = new LauncherModel(this);
        IntentFilter filter = new IntentFilter();
        filter.addAction("android.intent.action.TIME_TICK");
        filter.addAction("android.intent.action.TIME_SET");
        filter.addAction("android.intent.action.TIMEZONE_CHANGED");
        filter.addAction("android.intent.action.LOCALE_CHANGED");
        filter.addAction("android.intent.action.CONFIGURATION_CHANGED");
        registerReceiver(this.mModel, filter);
        IntentFilter filter2 = new IntentFilter("android.intent.action.PACKAGE_ADDED");
        filter2.addAction("android.intent.action.PACKAGE_REMOVED");
        filter2.addAction("android.intent.action.PACKAGE_CHANGED");
        filter2.addDataScheme("package");
        registerReceiver(this.mModel, filter2);
    }

    @Override // android.app.Application
    public void onTerminate() {
        super.onTerminate();
        unregisterReceiver(this.mModel);
        INSTANCE = null;
    }

    public LauncherModel setHomeCallback(HomeMonitorCallbacks homeMonitorCallbacks) {
        this.mModel.addCallback(homeMonitorCallbacks);
        return this.mModel;
    }

    public LauncherModel getLauncherModel() {
        return this.mModel;
    }

    public void removeHomeCallback(HomeMonitorCallbacks homeMonitorCallbacks) {
        this.mModel.removeCallback(homeMonitorCallbacks);
    }
}
