package com.sprd.classichome;

import android.app.Activity;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.Window;
import com.sprd.PlatformHelper;
import com.sprd.android.support.featurebar.FeatureBarHelper;
import com.sprd.common.util.FeatureBarUtil;
import com.sprd.common.util.KeyCodeEventUtil;
import com.sprd.common.util.LogUtils;
import com.sprd.simple.launcher.R;

/* loaded from: classes.dex */
public abstract class BaseHomeActivity extends Activity {
    protected Drawable mDefaultWindowBg;
    protected FeatureBarHelper mFeatureBarHelper;
    private boolean mLongPressKey;
    private float mSoftBarAlpha;
    protected Drawable mWindowBg;
    private float mWindowBgAlpha;

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.mDefaultWindowBg = getWindow().getDecorView().getBackground();
        this.mWindowBg = new ColorDrawable(-16777216);
        this.mWindowBgAlpha = getResources().getInteger(R.integer.window_background_alpha) / 100.0f;
        this.mSoftBarAlpha = getResources().getInteger(R.integer.softbar_background_alpha) / 100.0f;
    }

    protected FeatureBarHelper setupFeatureBar(Activity activity) {
        if (PlatformHelper.isTargetBuild() && this.mFeatureBarHelper == null) {
            this.mFeatureBarHelper = new FeatureBarHelper(activity);
        }
        return this.mFeatureBarHelper;
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int keyCode, KeyEvent event) {
        if (!KeyCodeEventUtil.isLauncherNeedUseKeycode(keyCode)) {
            return super.onKeyUp(keyCode, event);
        }
        boolean result = false;
        if (event.isTracking() && !event.isCanceled() && !this.mLongPressKey) {
            result = KeyCodeEventUtil.pressKeyEventForMainActivity(this, keyCode, event);
        }
        if (!result) {
            result = super.onKeyUp(keyCode, event);
        }
        if (LogUtils.DEBUG) {
            LogUtils.d("BaseHomeActivity", "onKeyUp: result = " + result);
            return result;
        }
        return result;
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (LogUtils.DEBUG) {
            LogUtils.d("BaseHomeActivity", "onKeyDown: keyCode = " + keyCode);
        }
        if (!KeyCodeEventUtil.isLauncherNeedUseKeycode(keyCode)) {
            return super.onKeyDown(keyCode, event);
        }
        int repeatCount = event.getRepeatCount();
        if (repeatCount == 0) {
            event.startTracking();
            this.mLongPressKey = false;
            return true;
        }
        if (repeatCount <= 0) {
            return true;
        }
        this.mLongPressKey = true;
        return true;
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyLongPress(int keyCode, KeyEvent event) {
        if (!KeyCodeEventUtil.isLauncherNeedUseKeycode(keyCode)) {
            return super.onKeyLongPress(keyCode, event);
        }
        boolean result = KeyCodeEventUtil.longPressKeyEventForMainActivity(this, keyCode) ? true : super.onKeyLongPress(keyCode, event);
        if (LogUtils.DEBUG) {
            LogUtils.d("BaseHomeActivity", "onKeyLongPress: result = " + result);
            return result;
        }
        return result;
    }

    protected void enableWallpaperShowing(boolean enable) {
        if (LogUtils.DEBUG) {
            LogUtils.d("BaseHomeActivity", "enableWallpaperShowing: " + enable);
        }
        updateWallpaperVisibility(enable);
    }

    private void updateWallpaperVisibility(boolean visible) {
        Window win = getWindow();
        int wpflags = visible ? 1048576 : 0;
        int curflags = win.getAttributes().flags & 1048576;
        if (wpflags != curflags) {
            win.setFlags(wpflags, 1048576);
        }
        this.mWindowBg.setAlpha(Math.round(255.0f * this.mWindowBgAlpha));
        win.setBackgroundDrawable(visible ? this.mWindowBg : this.mDefaultWindowBg);
        if (visible) {
            FeatureBarUtil.setBackgroundNull(this.mFeatureBarHelper);
        }
    }
}
