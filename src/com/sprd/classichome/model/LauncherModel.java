package com.sprd.classichome.model;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ComponentInfo;
import android.content.pm.PackageItemInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Process;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Xml;
import com.sprd.classichome.AppItemInfo;
import com.sprd.classichome.util.AppsSort;
import com.sprd.classichome.util.ComponentKey;
import com.sprd.common.util.LogUtils;
import com.sprd.simple.launcher.R;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class LauncherModel extends BroadcastReceiver {
    public static boolean isLoaded;
    private static final Handler sWorker;
    private LoaderTask mLoaderTask;
    private int mPreDate;
    static final boolean DEBUG_LOADER = LogUtils.DEBUG_LOADER;
    private static final boolean DEBUG_RECEIVER = LogUtils.DEBUG;
    public static final HashMap<ComponentKey, AppItemInfo> mBgCustomizeAppsList = new HashMap<>();
    public static final AllAppsList mBgAllAppsList = new AllAppsList();
    private static final ArrayList<AppItemInfo> mMainMenuApps = new ArrayList<>();
    private static final ArrayList<AppItemInfo> mExtraApps = new ArrayList<>();
    private static final ArrayList<AppItemInfo> mGameApps = new ArrayList<>();
    private static final Handler mMainHandler = new Handler();
    private static final HandlerThread sWorkerThread = new HandlerThread("launcher-loader");
    private final Object mLock = new Object();
    private ArrayList<WeakReference<HomeMonitorCallbacks>> mCallbacks = new ArrayList<>();
    private boolean mNeedForceLoad = true;

    static {
        sWorkerThread.start();
        sWorker = new Handler(sWorkerThread.getLooper());
    }

    public LauncherModel(Context context) {
        this.mLoaderTask = new LoaderTask(context);
        runOnWorkerThread(this.mLoaderTask);
    }

    public void addCallback(HomeMonitorCallbacks cb) {
        synchronized (this.mLock) {
            if (cb != null) {
                this.mCallbacks.add(new WeakReference<>(cb));
            }
        }
    }

    public void removeCallback(HomeMonitorCallbacks cb) {
        ArrayList<WeakReference<HomeMonitorCallbacks>> removeCallbacks = new ArrayList<>();
        Iterator<WeakReference<HomeMonitorCallbacks>> i$ = this.mCallbacks.iterator();
        while (i$.hasNext()) {
            WeakReference<HomeMonitorCallbacks> callback = i$.next();
            if (callback.get() == cb) {
                removeCallbacks.add(callback);
            }
        }
        this.mCallbacks.removeAll(removeCallbacks);
    }

    private void onDateChanged() {
        Iterator<WeakReference<HomeMonitorCallbacks>> i$ = this.mCallbacks.iterator();
        while (i$.hasNext()) {
            WeakReference<HomeMonitorCallbacks> callback = i$.next();
            HomeMonitorCallbacks cb = callback.get();
            if (cb != null) {
                cb.onDateChanged();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyAppsUpdated() {
        Iterator<WeakReference<HomeMonitorCallbacks>> i$ = this.mCallbacks.iterator();
        while (i$.hasNext()) {
            WeakReference<HomeMonitorCallbacks> callback = i$.next();
            HomeMonitorCallbacks cb = callback.get();
            if (cb != null) {
                cb.notifyAppsUpdated();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void runOnMainThread(Runnable r) {
        if (sWorkerThread.getThreadId() == Process.myTid()) {
            if (mMainHandler != null) {
                mMainHandler.post(r);
                return;
            }
            return;
        }
        r.run();
    }

    private static void runOnWorkerThread(Runnable r) {
        if (sWorkerThread.getThreadId() == Process.myTid()) {
            r.run();
        } else {
            sWorker.post(r);
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (DEBUG_RECEIVER) {
            LogUtils.d("Gridhome.Model", "onReceive intent=" + intent);
        }
        String action = intent.getAction();
        if ("android.intent.action.TIME_TICK".equals(action) || "android.intent.action.TIME_SET".equals(action) || "android.intent.action.TIMEZONE_CHANGED".equals(action)) {
            int curDate = Calendar.getInstance().get(5);
            if (curDate != this.mPreDate) {
                this.mPreDate = curDate;
                onDateChanged();
                return;
            }
            return;
        }
        if ("android.intent.action.LOCALE_CHANGED".equals(action) || "android.intent.action.CONFIGURATION_CHANGED".equals(action)) {
            this.mNeedForceLoad = true;
            runOnWorkerThread(this.mLoaderTask);
            return;
        }
        if ("android.intent.action.PACKAGE_ADDED".equals(action) || "android.intent.action.PACKAGE_REMOVED".equals(action) || "android.intent.action.PACKAGE_CHANGED".equals(action)) {
            String pkgName = intent.getData() != null ? intent.getData().getSchemeSpecificPart() : null;
            if (pkgName != null) {
                if ("android.intent.action.PACKAGE_ADDED".equals(action)) {
                    mBgAllAppsList.addPackage(context, pkgName, null);
                }
                if ("android.intent.action.PACKAGE_REMOVED".equals(action)) {
                    mBgAllAppsList.removePackage(context, pkgName, null);
                }
                if ("android.intent.action.PACKAGE_CHANGED".equals(action)) {
                    mBgAllAppsList.updatePackage(context, pkgName, null);
                }
                if (!this.mLoaderTask.isLoading()) {
                    runOnWorkerThread(this.mLoaderTask);
                }
            }
        }
    }

    private class LoaderTask implements Runnable {
        private Context mContext;
        private boolean mIsLoading = true;

        LoaderTask(Context context) {
            this.mContext = context;
        }

        boolean isLoading() {
            return this.mIsLoading;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.mIsLoading = true;
            if (LauncherModel.this.mNeedForceLoad) {
                loadCustomizeApp();
                loadAllApps();
            }
            verifyAllAppList();
            splitAllApps();
            LauncherModel.this.mNeedForceLoad = false;
            this.mIsLoading = false;
            LauncherModel.this.runOnMainThread(new Runnable() { // from class: com.sprd.classichome.model.LauncherModel.LoaderTask.1
                @Override // java.lang.Runnable
                public void run() {
                    LauncherModel.this.notifyAppsUpdated();
                }
            });
        }

        private void loadAllApps() {
            if (LauncherModel.DEBUG_LOADER) {
                LogUtils.d("Gridhome.Model", "loadAllApps");
            }
            synchronized (LauncherModel.mBgAllAppsList.added) {
                PackageManager pm = this.mContext.getPackageManager();
                Intent mainIntent = new Intent("android.intent.action.MAIN", (Uri) null);
                mainIntent.addCategory("android.intent.category.LAUNCHER");
                List<ResolveInfo> apps = pm.queryIntentActivities(mainIntent, 0);
                LauncherModel.mBgAllAppsList.clear();
                for (ResolveInfo app : apps) {
                    AppItemInfo appInfo = new AppItemInfo(app.loadLabel(pm), app.loadIcon(pm), ((PackageItemInfo) ((ComponentInfo) app.activityInfo).applicationInfo).packageName, ((PackageItemInfo) app.activityInfo).name);
                    LauncherModel.mBgAllAppsList.added.add(appInfo);
                }
            }
            LauncherModel.isLoaded = true;
        }

        private void loadCustomizeApp() {
            if (LauncherModel.DEBUG_LOADER) {
                LogUtils.d("Gridhome.Model", "loadCustomizeApp:");
            }
            synchronized (LauncherModel.mBgCustomizeAppsList) {
                LauncherModel.mBgCustomizeAppsList.clear();
                try {
                    XmlResourceParser parser = this.mContext.getResources().getXml(R.xml.customize_apps);
                    AttributeSet attrs = Xml.asAttributeSet(parser);
                    for (int eventType = parser.getEventType(); eventType != 1; eventType = parser.next()) {
                        if (eventType == 2) {
                            String tagName = parser.getName();
                            if ("App".equals(tagName)) {
                                TypedArray a = this.mContext.obtainStyledAttributes(attrs, R.styleable.AppInfo);
                                String pkgName = a.getString(1);
                                String clsName = a.getString(0);
                                int position = a.getInteger(2, Integer.MAX_VALUE);
                                Drawable icon = a.getDrawable(3);
                                CharSequence label = a.getString(4);
                                String group = a.getString(5);
                                if (pkgName != null) {
                                    AppItemInfo appInfo = new AppItemInfo(label, icon, pkgName, clsName, group, position);
                                    LauncherModel.mBgCustomizeAppsList.put(appInfo.getComponentKey(), appInfo);
                                }
                                a.recycle();
                            }
                        }
                    }
                } catch (Exception e) {
                    LogUtils.w("Gridhome.Model", "parse xml failed", e);
                }
            }
        }

        private void verifyAllAppList() {
            verifyRemovePackageActivities();
            verifyAddAppInfo();
        }

        private void verifyAddAppInfo() {
            synchronized (LauncherModel.mBgAllAppsList.data) {
                if (!LauncherModel.mBgAllAppsList.added.isEmpty()) {
                    synchronized (LauncherModel.mBgAllAppsList.added) {
                        Iterator<AppItemInfo> i$ = LauncherModel.mBgAllAppsList.added.iterator();
                        while (i$.hasNext()) {
                            AppItemInfo apInfo = i$.next();
                            AppItemInfo cusAppInfo = getCusAppInfo(apInfo);
                            if (cusAppInfo != null) {
                                mergeItemInfo(cusAppInfo, apInfo);
                            }
                            LauncherModel.mBgAllAppsList.put(apInfo);
                        }
                        LauncherModel.mBgAllAppsList.added.clear();
                    }
                }
            }
        }

        private AppItemInfo getCusAppInfo(AppItemInfo info) {
            AppItemInfo cusAppInfo = LauncherModel.mBgCustomizeAppsList.get(info.getComponentKey());
            if (cusAppInfo == null) {
                ComponentKey cpk = new ComponentKey(new ComponentName(info.pkgName, ""), info.user);
                return LauncherModel.mBgCustomizeAppsList.get(cpk);
            }
            return cusAppInfo;
        }

        private void verifyRemovePackageActivities() {
            HashMap<ComponentKey, AppItemInfo> allApps = new HashMap<>(LauncherModel.mBgAllAppsList.data);
            synchronized (LauncherModel.mBgAllAppsList.data) {
                if (!LauncherModel.mBgAllAppsList.removed.isEmpty()) {
                    synchronized (LauncherModel.mBgAllAppsList.removed) {
                        Iterator<ComponentKey> it = LauncherModel.mBgAllAppsList.removed.iterator();
                        while (it.hasNext()) {
                            ComponentKey cpk = it.next();
                            for (Map.Entry<ComponentKey, AppItemInfo> entry : allApps.entrySet()) {
                                AppItemInfo appInfo = entry.getValue();
                                String pkgName = cpk.componentName != null ? cpk.componentName.getPackageName() : null;
                                if (appInfo.pkgName.equals(pkgName) && appInfo.user.equals(cpk.user)) {
                                    LauncherModel.mBgAllAppsList.remove(appInfo);
                                }
                            }
                        }
                        LauncherModel.mBgAllAppsList.removed.clear();
                    }
                }
            }
        }

        private void splitAllApps() {
            ArrayList<AppItemInfo> mainMenuApps = new ArrayList<>();
            ArrayList<AppItemInfo> extraApps = new ArrayList<>();
            ArrayList<AppItemInfo> gameApps = new ArrayList<>();
            HashMap<ComponentKey, AppItemInfo> allApps = LauncherModel.mBgAllAppsList.data;
            synchronized (LauncherModel.mBgAllAppsList.data) {
                for (Map.Entry<ComponentKey, AppItemInfo> entry : allApps.entrySet()) {
                    AppItemInfo appInfo = entry.getValue();
                    String customGroup = com.sprd.classichome.settings.LauncherSettings.getCustomAppGroup(this.mContext, appInfo.pkgName, appInfo.clsName);
                    String effectiveGroup = (customGroup != null) ? customGroup : appInfo.group;
                    if (!"hide".equals(effectiveGroup)) {
                        if ("extra".equals(effectiveGroup)) {
                            extraApps.add(appInfo);
                        } else if ("game".equals(effectiveGroup)) {
                            gameApps.add(appInfo);
                        } else if ("mainmenu".equals(effectiveGroup)) {
                            mainMenuApps.add(appInfo);
                        }
                    }
                }
                addMainMenuApps(mainMenuApps);
                addExtraApps(extraApps);
                addGameApps(gameApps);
            }
        }

        private void addMainMenuApps(ArrayList<AppItemInfo> apps) {
            synchronized (LauncherModel.mMainMenuApps) {
                LauncherModel.mMainMenuApps.clear();
                if (apps != null && apps.size() > 0) {
                    AppsSort.sort(apps, AppsSort.SortType.NAME);
                    AppsSort.verifyPosition(apps);
                    LauncherModel.mMainMenuApps.addAll(apps);
                }
            }
        }

        private void addGameApps(ArrayList<AppItemInfo> apps) {
            synchronized (LauncherModel.mGameApps) {
                LauncherModel.mGameApps.clear();
                if (apps != null && apps.size() > 0) {
                    AppsSort.sort(apps, AppsSort.SortType.NAME);
                    AppsSort.verifyPosition(apps);
                    LauncherModel.mGameApps.addAll(apps);
                }
            }
        }

        private void addExtraApps(ArrayList<AppItemInfo> apps) {
            synchronized (LauncherModel.mExtraApps) {
                LauncherModel.mExtraApps.clear();
                if (apps != null && apps.size() > 0) {
                    AppsSort.sort(apps, AppsSort.SortType.NAME);
                    AppsSort.verifyPosition(apps);
                    LauncherModel.mExtraApps.addAll(apps);
                }
            }
        }

        private void mergeItemInfo(AppItemInfo src, AppItemInfo des) {
            if (src != null) {
                if (!TextUtils.isEmpty(src.title)) {
                    des.title = src.title;
                }
                if (src.icon != null) {
                    des.icon = src.icon;
                    des.iconCustomized = true;
                }
                if (src.position != Integer.MAX_VALUE) {
                    des.position = src.position;
                }
                if (src.isGroupValid(src.group)) {
                    des.group = src.group;
                }
            }
        }
    }

    public static void forceReloadApps(Context context) {
        try {
            com.sprd.classichome.HomeApplication app = com.sprd.classichome.HomeApplication.getInstance();
            // HomeApplication is deliberately NOT in the compile list, and its shipped
            // smali exposes no getLauncherModel() — only the private mModel field.
            // Calling a getter here compiles fine and throws NoSuchMethodError on the
            // device. Read the field the same way the hand-written smali did.
            LauncherModel model = null;
            if (app != null) {
                java.lang.reflect.Field f =
                        com.sprd.classichome.HomeApplication.class.getDeclaredField("mModel");
                f.setAccessible(true);
                model = (LauncherModel) f.get(app);
            }
            if (model != null) {
                model.mNeedForceLoad = true;
                if (!model.mLoaderTask.isLoading()) {
                    model.mLoaderTask.mIsLoading = true;
                    runOnWorkerThread(model.mLoaderTask);
                }
            }
        } catch (Throwable t) {
            LogUtils.w("Gridhome.Model", "forceReloadApps failed", t);
        }
    }

    public static ArrayList<AppItemInfo> getGamesAppsList() {
        return new ArrayList<>(mGameApps);
    }

    public static ArrayList<AppItemInfo> getExtraAppsList() {
        return new ArrayList<>(mExtraApps);
    }

    public static ArrayList<AppItemInfo> getMainMenuAppsList() {
        return new ArrayList<>(mMainMenuApps);
    }
}
