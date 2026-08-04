package com.sprd.classichome;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.provider.CallLog;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.kosherjava.zmanim.hebrewcalendar.JewishCalendar;
import com.sprd.classichome.model.HomeMonitorCallbacks;
import com.sprd.classichome.util.UtilitiesExt;
import com.sprd.common.util.KeyCodeEventUtil;
import com.sprd.common.util.Utilities;
import com.sprd.simple.launcher.R;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public class Home extends BaseHomeActivity {
    private static Uri CONTENT_URI = Uri.parse("content://com.duoqin.weather/city");
    private TextView mCallerIdView;
    private ComponentName mDpadLeftCn;
    private ComponentName mDpadRightCn;
    private ComponentName mDpadStarCn;
    private ComponentName mDpadUpCn;
    private TextView mHebrewDateView;
    private HomeStatusView mHomeStatus;
    private ComponentName mLeftCn;
    private ComponentName mRightCn;
    private ScreenStatusReceiver mScreenStatusReceiver;
    private ImageView mWeatherImg;
    private WeatherAsyncTask mWeatherTask;
    private TextView mWeatherView;
    private HomeMonitorCallbacks mCallback = new HomeMonitorCallbacks() { // from class: com.sprd.classichome.Home.1
        @Override // com.sprd.classichome.model.HomeMonitorCallbacks
        public void onDateChanged() {
            if (Home.this.mHomeStatus != null) {
                Home.this.mHomeStatus.updateLunarDateView();
            }
        }
    };
    private BroadcastReceiver mNavKeySettingsReceiver = new BroadcastReceiver() { // from class: com.sprd.classichome.Home.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Home.this.mDpadLeftCn = UtilitiesExt.getDpadComponentName(context, 21);
            Home.this.mDpadRightCn = UtilitiesExt.getDpadComponentName(context, 22);
            Home.this.mDpadUpCn = UtilitiesExt.getDpadComponentName(context, 19);
            Home.this.mLeftCn = UtilitiesExt.getLFComponentName(context);
            Home.this.mRightCn = UtilitiesExt.getRTComponentName(context);
            if (Home.this.mFeatureBarHelper != null) {
                Home.this.mFeatureBarHelper.setLeftText(Utilities.loadAppLabel(context, Home.this.mLeftCn).toString());
                Home.this.mFeatureBarHelper.setLeftIcon(Utilities.loadAppSKIcon(context, Home.this.mLeftCn));
                Home.this.mFeatureBarHelper.setRightText(Utilities.loadAppLabel(context, Home.this.mRightCn).toString());
                Home.this.mFeatureBarHelper.setRightIcon(Utilities.loadAppSKIcon(context, Home.this.mRightCn));
            }
        }
    };
    private ContentObserver mContentObserver = new ContentObserver(new Handler()) { // from class: com.sprd.classichome.Home.3
        @Override // android.database.ContentObserver
        public void onChange(boolean selfChange) {
            super.onChange(selfChange);
            Log.i("Home", "onChange: weather changed");
            Home.this.updateWeather();
        }
    };

    private void updateStatusInfo() {
        try {
            View view = (View) this.mWeatherView.getParent();
            TextView textView = this.mWeatherView;
            TextView textView2 = this.mCallerIdView;
            Cursor cursorQuery = getContentResolver().query(CallLog.Calls.CONTENT_URI, new String[]{"name", "number", "date"}, "type = ? AND is_read = ?", new String[]{String.valueOf(3), String.valueOf(0)}, "date DESC");
            if (cursorQuery != null) {
                int count = cursorQuery.getCount();
                if (count > 0) {
                    view.setVisibility(0);
                    textView.setText(count + " שיחות שלא נענו");
                    cursorQuery.moveToFirst();
                    String string = cursorQuery.getString(cursorQuery.getColumnIndex("name"));
                    String string2 = cursorQuery.getString(cursorQuery.getColumnIndex("number"));
                    if (string != null && !string.isEmpty()) {
                        string2 = string;
                    }
                    textView2.setText(string2);
                } else {
                    view.setVisibility(8);
                }
                cursorQuery.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateWeather() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateWeather(String[] result) {
    }

    public static boolean isAppInstalled(Context context, String pkgName) throws PackageManager.NameNotFoundException {
        try {
            context.getPackageManager().getPackageInfo(pkgName, 0);
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    private class ScreenStatusReceiver extends BroadcastReceiver {
        String ACTION_SCREEN_ON;

        private ScreenStatusReceiver() {
            this.ACTION_SCREEN_ON = "duoqin.intent.action.SCREEN_ON";
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Intent intentToSend = new Intent();
            if ("android.intent.action.USER_PRESENT".equals(intent.getAction())) {
                intentToSend.setAction(this.ACTION_SCREEN_ON);
                Home.this.sendBroadcast(intentToSend);
            }
        }
    }

    @Override // com.sprd.classichome.BaseHomeActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        if (!isAppInstalled(this, "com.android.carrierconfigs")) {
            savedInstanceState = null;
            System.exit(0);
        }
        super.onCreate(savedInstanceState);
        setContentView(R.layout.home);
        ((HomeApplication) getApplication()).setHomeCallback(this.mCallback);
        setupViews();
        enableWallpaperShowing(getResources().getBoolean(R.bool.idle_home_with_wallpaper));
        registerReceiver(this.mNavKeySettingsReceiver, new IntentFilter("com.duoqin.navkeysettings.update"));
        registerScreenStatusReceiver();
    }

    private void registerScreenStatusReceiver() {
        this.mScreenStatusReceiver = new ScreenStatusReceiver();
        IntentFilter screenStatusFilter = new IntentFilter();
        screenStatusFilter.addAction("android.intent.action.USER_PRESENT");
        registerReceiver(this.mScreenStatusReceiver, screenStatusFilter);
    }

    private void setupViews() {
        this.mHomeStatus = (HomeStatusView) findViewById(R.id.default_clock_view);
        this.mLeftCn = UtilitiesExt.getLFComponentName(this);
        this.mRightCn = UtilitiesExt.getRTComponentName(this);
        this.mDpadLeftCn = UtilitiesExt.getDpadComponentName(this, 21);
        this.mDpadRightCn = UtilitiesExt.getDpadComponentName(this, 22);
        this.mDpadUpCn = UtilitiesExt.getDpadComponentName(this, 19);
        this.mDpadStarCn = UtilitiesExt.getDpadComponentName(this, 17);
        setSoftKey();
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.home_weather);
        this.mWeatherView = (TextView) linearLayout.getChildAt(0);
        this.mCallerIdView = (TextView) linearLayout.getChildAt(1);
        getContentResolver().registerContentObserver(CONTENT_URI, true, this.mContentObserver);
        this.mHebrewDateView = (TextView) findViewById(R.id.gridhome_lunar_date_view);
    }

    private static class WeatherAsyncTask extends AsyncTask<String, String, String[]> {
        private WeakReference<Home> softReference;

        WeatherAsyncTask(Home home) {
            this.softReference = new WeakReference<>(home);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public String[] doInBackground(String[] objects) {
            String[] result = new String[2];
            try {
                Cursor cursor = HomeApplication.getInstance().getContentResolver().query(Home.CONTENT_URI, null, "is_locate = ? ", new String[]{"1"}, null);
                if (cursor != null && cursor.moveToFirst()) {
                    result[0] = cursor.getString(cursor.getColumnIndex("w6_temp")).split(",")[0];
                    result[1] = cursor.getString(cursor.getColumnIndex("img"));
                }
                if (cursor != null) {
                    cursor.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            return result;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(String[] result) {
            super.onPostExecute((WeatherAsyncTask) result);
            Home home = this.softReference.get();
            if (home != null) {
                home.updateWeather(result);
            }
        }

        @Override // android.os.AsyncTask
        protected void onCancelled() {
            super.onCancelled();
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        updateStatusInfo();
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
    }

    protected void setSoftKey() {
        setupFeatureBar(this);
        this.mFeatureBarHelper.setForceIcon(true);
        this.mFeatureBarHelper.setLeftText(Utilities.loadAppLabel(this, this.mLeftCn).toString());
        this.mFeatureBarHelper.setLeftIcon(Utilities.loadAppSKIcon(this, this.mLeftCn));
        this.mFeatureBarHelper.setCenterText(R.string.idle_main_menu);
        this.mFeatureBarHelper.setCenterIcon(R.drawable.featurebar_main_menu);
        this.mFeatureBarHelper.setRightText(Utilities.loadAppLabel(this, this.mRightCn).toString());
        this.mFeatureBarHelper.setRightIcon(Utilities.loadAppSKIcon(this, this.mRightCn));
    }

    /* renamed from: com.sprd.classichome.Home$4, reason: invalid class name */
    class AnonymousClass4 implements DialogInterface.OnClickListener {
        AnonymousClass4() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialog, int which) {
            Utilities.startActivity(Home.this, Utilities.CALL_LOG);
            dialog.dismiss();
        }
    }

    /* renamed from: com.sprd.classichome.Home$5, reason: invalid class name */
    class AnonymousClass5 implements DialogInterface.OnClickListener {
        AnonymousClass5() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialog, int which) {
            dialog.dismiss();
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        getContentResolver().unregisterContentObserver(this.mContentObserver);
        ((HomeApplication) getApplication()).removeHomeCallback(this.mCallback);
        unregisterReceiver(this.mNavKeySettingsReceiver);
        unregisterReceiver(this.mScreenStatusReceiver);
    }

    @Override // com.sprd.classichome.BaseHomeActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int keyCode, KeyEvent event) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (!KeyCodeEventUtil.isLauncherNeedUseKeycode(keyCode)) {
            return super.onKeyUp(keyCode, event);
        }
        boolean result = false;
        if (event.isTracking() && !event.isCanceled()) {
            switch (keyCode) {
                case 4:
                    Utilities.startActivity(this, this.mRightCn);
                    result = true;
                    break;
                case JewishCalendar.SIMCHAS_TORAH /* 19 */:
                    Utilities.startActivity(this, this.mDpadUpCn);
                    result = true;
                    break;
                case 20:
                    try {
                        Class.forName("android.app.StatusBarManager").getMethod("expandNotificationsPanel", new Class[0]).invoke(getSystemService("statusbar"), new Object[0]);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    result = true;
                    break;
                case JewishCalendar.CHANUKAH /* 21 */:
                    Utilities.startActivity(this, this.mDpadLeftCn);
                    result = true;
                    break;
                case JewishCalendar.TENTH_OF_TEVES /* 22 */:
                    Utilities.startActivity(this, this.mDpadRightCn);
                    result = true;
                    break;
                case JewishCalendar.TU_BESHVAT /* 23 */:
                    UtilitiesExt.goMainMenu(this);
                    result = true;
                    break;
                case 82:
                    Utilities.startActivity(this, this.mLeftCn);
                    result = true;
                    break;
            }
        }
        if (!result) {
            return super.onKeyUp(keyCode, event);
        }
        return result;
    }

    @Override // com.sprd.classichome.BaseHomeActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        boolean result = false;
        if (!event.isCanceled()) {
            switch (keyCode) {
                case JewishCalendar.HOSHANA_RABBA /* 17 */:
                    if (event.getFlags() == 136) {
                        Utilities.startActivity(this, this.mDpadStarCn);
                        result = true;
                        break;
                    }
                    break;
            }
        }
        if (!result) {
            return super.onKeyDown(keyCode, event);
        }
        return result;
    }
}
