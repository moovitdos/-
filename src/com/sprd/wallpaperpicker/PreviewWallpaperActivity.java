package com.sprd.wallpaperpicker;

import android.app.Activity;
import android.app.EventRecordManager;
import android.app.WallpaperManager;
import android.content.res.Resources;
import android.os.Bundle;
import android.util.Log;
import android.view.KeyEvent;
import android.widget.Toast;
import com.sprd.PlatformHelper;
import com.sprd.android.support.featurebar.FeatureBarHelper;
import com.sprd.common.util.FeatureBarUtil;
import com.sprd.common.util.LogUtils;
import com.sprd.simple.launcher.R;
import java.io.IOException;

/* loaded from: classes.dex */
public class PreviewWallpaperActivity extends Activity {
    private static final boolean DEBUG = LogUtils.DEBUG_ALL;
    private EventRecordManager mERManager;
    private FeatureBarHelper mFeatureBarHelper;
    private int mPosition = 0;
    private int mWallpaperCount;

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        if (DEBUG) {
            LogUtils.i("PreviewWallpaperActivity", "onCreate");
        }
        super.onCreate(savedInstanceState);
        setContentView(R.layout.previewwallpaper_layout);
        if (getIntent().getExtras() != null) {
            this.mPosition = getIntent().getExtras().getInt("Position");
        }
        this.mWallpaperCount = WallpaperUtil.getWallpaperResCount(this);
        updateBackgroundImage();
        setSoftKey();
        this.mERManager = EventRecordManager.getInstance(this);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int keyCode, KeyEvent event) {
        if (DEBUG) {
            LogUtils.i("PreviewWallpaperActivity", "keyCode = " + keyCode);
        }
        if (event.isTracking() && !event.isCanceled()) {
            if (DEBUG) {
                LogUtils.i("PreviewWallpaperActivity", "onKeyUp  short press");
            }
            switch (keyCode) {
                case 4:
                    handleBackKey();
                    boolean returnValue = super.onKeyUp(keyCode, event);
                    return returnValue;
                case 21:
                    handleLeftKey();
                    return true;
                case 22:
                    handleRightKey();
                    return true;
                case 23:
                    handleCenterKey();
                    return true;
                default:
                    boolean returnValue2 = super.onKeyUp(keyCode, event);
                    return returnValue2;
            }
        }
        if (DEBUG) {
            LogUtils.i("PreviewWallpaperActivity", "onKeyUp  long press");
            return false;
        }
        return false;
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (event.getRepeatCount() != 0) {
            return false;
        }
        if (DEBUG) {
            LogUtils.i("PreviewWallpaperActivity", "getRepeatCount");
        }
        event.startTracking();
        return true;
    }

    private void setSoftKey() {
        if (PlatformHelper.isTargetBuild() && this.mFeatureBarHelper == null) {
            this.mFeatureBarHelper = new FeatureBarHelper(this);
        }
        float softBarAlpha = getResources().getInteger(R.integer.wallpaper_softbar_background_alpha) / 100.0f;
        FeatureBarUtil.setBackgroundAlpha(this.mFeatureBarHelper, Math.round(255.0f * softBarAlpha));
        FeatureBarUtil.hideSoftKey(this.mFeatureBarHelper, FeatureBarUtil.SoftKey.LFK);
        FeatureBarUtil.setTextColor(this, this.mFeatureBarHelper, FeatureBarUtil.SoftKey.MDK, R.color.softbar_font_color);
        FeatureBarUtil.setTextColor(this, this.mFeatureBarHelper, FeatureBarUtil.SoftKey.RTK, R.color.softbar_font_color);
    }

    private void handleRightKey() {
        this.mPosition = (this.mPosition + 1) % this.mWallpaperCount;
        updateBackgroundImage();
    }

    private void handleLeftKey() {
        this.mPosition = this.mPosition > 0 ? this.mPosition - 1 : this.mWallpaperCount - 1;
        updateBackgroundImage();
    }

    private void handleBackKey() {
        setResult(this.mPosition);
    }

    private void handleCenterKey() {
        if (setWallpaper()) {
            String message = getString(R.string.set_wallpaper_success);
            Toast.makeText(this, message, 0).show();
        }
        setResult(-1);
        finish();
    }

    private void updateBackgroundImage() {
        if (DEBUG) {
            LogUtils.i("PreviewWallpaperActivity", "updateBackgroundImage mPosition = " + this.mPosition);
        }
        getWindow().getDecorView().setBackgroundResource(WallpaperUtil.getWallpaperRes(this, this.mPosition));
    }

    private boolean setWallpaper() throws Resources.NotFoundException, IOException {
        WallpaperManager wallpaperManager = (WallpaperManager) getSystemService("wallpaper");
        try {
            wallpaperManager.setResource(WallpaperUtil.getWallpaperRes(this, this.mPosition));
            try {
                String[] wallpapers = getResources().getStringArray(R.array.wallpapers);
                String wallpaper = wallpapers[this.mPosition];
                String wallpaperName = wallpaper.substring(wallpaper.lastIndexOf("/") + 1, wallpaper.length());
                Log.d("duoqin", " wallpaper " + wallpapers[this.mPosition] + "; wallpaperName = " + wallpaperName);
                this.mERManager.onEvent("SET_WALLPAPER", wallpaperName);
            } catch (Exception e) {
                e.printStackTrace();
            }
            return true;
        } catch (Exception e2) {
            LogUtils.w("PreviewWallpaperActivity", "setWallpaper fail", e2);
            return false;
        }
    }
}
