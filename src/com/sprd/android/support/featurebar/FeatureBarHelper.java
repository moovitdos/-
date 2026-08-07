package com.sprd.android.support.featurebar;

import android.app.ActionBar;
import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.TextView;
import com.android.internal.widget.ActionBarView;

/* loaded from: classes.dex */
public class FeatureBarHelper {
    ViewGroup mBar;
    Drawable mCenterDrawable;
    String mCenterText;
    Context mContext;
    TextView mKeyCenter;
    TextView mKeyLeft;
    TextView mKeyRight;
    Drawable mLeftDrawable;
    String mLeftText;
    BroadcastReceiver mReceiver;
    Drawable mRightDrawable;
    String mRightText;
    Window mWindow;
    boolean mUseIcon = true;
    boolean mForceIcon = false;
    int mPotentialErrorFlag = 0;

    public FeatureBarHelper(Activity activity) {
        if (activity == null) {
            Log.e("FeatureBarHelper", "Pass activity is null");
            return;
        }
        this.mContext = activity.getApplicationContext();
        this.mWindow = activity.getWindow();
        if (this.mWindow == null) {
            Log.e("FeatureBarHelper", "Window of activity is null");
        } else {
            getSystemProperty();
            wrapDecor(activity);
        }
    }

    public void wrapDecor(final Activity activity) {
        View decorView = activity.getWindow().getDecorView();
        if (decorView == null) {
            Log.e("FeatureBarHelper", "DecorView is null");
            return;
        }
        ViewGroup contentView = (ViewGroup) decorView.findViewById(android.R.id.content);
        if (contentView == null) {
            Log.e("FeatureBarHelper", "Decor view is null, have you called wrapDecor after Activity#super.onCreate?");
            return;
        }
        int childCount = contentView.getChildCount();
        if (childCount == 0) {
            this.mPotentialErrorFlag |= 16;
        }
        View[] children = new View[childCount];
        for (int i = 0; i < childCount; i++) {
            children[i] = contentView.getChildAt(i);
        }
        contentView.removeAllViews();
        LayoutInflater inflater = LayoutInflater.from(activity);
        View wrapper = inflater.inflate(R.layout.decor_layout, (ViewGroup) null);
        ViewGroup rawContentView = (ViewGroup) wrapper.findViewById(R.id.content);
        if (childCount > 0) {
            for (View child : children) {
                rawContentView.addView(child);
            }
        }
        activity.setContentView(wrapper);
        this.mBar = (ViewGroup) wrapper.findViewById(R.id.feature_bar);
        this.mBar.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.sprd.android.support.featurebar.FeatureBarHelper.1
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View v) {
                FeatureBarHelper.this.registerBroadcast();
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View v) {
                FeatureBarHelper.this.unregisterBroadcast();
            }
        });
        this.mKeyLeft = (TextView) this.mBar.findViewById(R.id.feature_bar_left);
        this.mKeyCenter = (TextView) this.mBar.findViewById(R.id.feature_bar_center);
        this.mKeyRight = (TextView) this.mBar.findViewById(R.id.feature_bar_right);
        this.mKeyLeft.setClickable(true);
        this.mKeyLeft.setOnClickListener(new View.OnClickListener() { // from class: com.sprd.android.support.featurebar.FeatureBarHelper.2
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                FeatureBarHelper.sendDownAndUpKeyEvents(activity, 82);
            }
        });
        this.mKeyCenter.setClickable(true);
        this.mKeyCenter.setOnClickListener(new View.OnClickListener() { // from class: com.sprd.android.support.featurebar.FeatureBarHelper.3
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                FeatureBarHelper.sendDownAndUpKeyEvents(activity, 23);
            }
        });
        this.mKeyRight.setClickable(true);
        this.mKeyRight.setOnClickListener(new View.OnClickListener() { // from class: com.sprd.android.support.featurebar.FeatureBarHelper.4
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                FeatureBarHelper.sendDownAndUpKeyEvents(activity, 4);
            }
        });
        this.mLeftDrawable = this.mContext.getResources().getDrawable(R.drawable.featurebar_option);
        this.mCenterDrawable = this.mContext.getResources().getDrawable(R.drawable.featurebar_select);
        this.mRightDrawable = this.mContext.getResources().getDrawable(R.drawable.featurebar_back);
        this.mLeftText = this.mContext.getResources().getString(R.string.default_feature_bar_options);
        this.mCenterText = this.mContext.getResources().getString(R.string.default_feature_bar_center);
        this.mRightText = this.mContext.getResources().getString(R.string.default_feature_bar_back);
        refreshLeft();
        refreshCenter();
        refreshRight();
        if (activity.getActionBar() != null) {
            activity.getActionBar().addOnMenuVisibilityListener(new ActionBar.OnMenuVisibilityListener() { // from class: com.sprd.android.support.featurebar.FeatureBarHelper.5
                @Override // android.app.ActionBar.OnMenuVisibilityListener
                public void onMenuVisibilityChanged(boolean isVisible) {
                    if (FeatureBarHelper.this.mUseIcon) {
                        FeatureBarHelper.this.mKeyLeft.setText("");
                        if (isVisible) {
                            FeatureBarHelper.this.mKeyLeft.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, (Drawable) null, (Drawable) null);
                            return;
                        } else {
                            FeatureBarHelper.this.mKeyLeft.setCompoundDrawablesWithIntrinsicBounds(FeatureBarHelper.this.mLeftDrawable, (Drawable) null, (Drawable) null, (Drawable) null);
                            return;
                        }
                    }
                    FeatureBarHelper.this.mKeyLeft.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, (Drawable) null, (Drawable) null);
                    if (isVisible) {
                        FeatureBarHelper.this.mKeyLeft.setText("");
                    } else {
                        FeatureBarHelper.this.mKeyLeft.setText(FeatureBarHelper.this.mLeftText);
                    }
                }
            });
        }
        ActionBarView actionBarView = decorView.findViewById(android.R.id.hand);
        if (actionBarView != null) {
            actionBarView.setOverrideOverflowButton(this.mKeyLeft);
            return;
        }
        Log.d("FeatureBarHelper", "actionBarView is null");
        if (this.mWindow != null) {
            Log.d("FeatureBarHelper", "Attempt to invoke setShouldOverrideResources access PhoneWindow");
            this.mWindow.setShouldOverrideResources(true);
        } else {
            Log.d("FeatureBarHelper", "mWindow is empty, pls check it");
        }
    }

    public void setForceIcon(boolean forceIcon) {
        this.mForceIcon = forceIcon;
    }

    public void hideLeft() {
        this.mLeftText = "";
        this.mLeftDrawable = null;
        this.mKeyLeft.setText("");
        this.mKeyLeft.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, (Drawable) null, (Drawable) null);
    }

    public void hideCenter() {
        this.mCenterText = "";
        this.mCenterDrawable = null;
        this.mKeyCenter.setText("");
        this.mKeyCenter.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, (Drawable) null, (Drawable) null);
    }

    public void hideRight() {
        this.mRightText = "";
        this.mRightDrawable = null;
        this.mKeyRight.setText("");
        this.mKeyRight.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, (Drawable) null, (Drawable) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshLeft() {
        if (this.mUseIcon || this.mForceIcon) {
            this.mKeyLeft.setText("");
            this.mKeyLeft.setCompoundDrawablesWithIntrinsicBounds(this.mLeftDrawable, (Drawable) null, (Drawable) null, (Drawable) null);
        } else {
            this.mKeyLeft.setText(this.mLeftText);
            this.mKeyLeft.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, (Drawable) null, (Drawable) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshCenter() {
        if (this.mUseIcon || this.mForceIcon) {
            this.mKeyCenter.setText("");
            this.mKeyCenter.setCompoundDrawablesWithIntrinsicBounds(this.mCenterDrawable, (Drawable) null, (Drawable) null, (Drawable) null);
        } else {
            this.mKeyCenter.setText(this.mCenterText);
            this.mKeyCenter.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, (Drawable) null, (Drawable) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshRight() {
        if (this.mUseIcon || this.mForceIcon) {
            this.mKeyRight.setText("");
            this.mKeyRight.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, this.mRightDrawable, (Drawable) null);
        } else {
            this.mKeyRight.setText(this.mRightText);
            this.mKeyRight.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, (Drawable) null, (Drawable) null);
        }
    }

    public void setLeftText(String text) {
        this.mLeftText = text;
        if (this.mUseIcon || this.mForceIcon) {
            this.mKeyLeft.setText("");
        } else {
            this.mKeyLeft.setText(this.mLeftText);
            this.mKeyLeft.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, (Drawable) null, (Drawable) null);
        }
    }

    public void setLeftIcon(Drawable iconDrawable) {
        this.mLeftDrawable = iconDrawable;
        if (this.mUseIcon || this.mForceIcon) {
            this.mKeyLeft.setText("");
            this.mKeyLeft.setCompoundDrawablesWithIntrinsicBounds(this.mLeftDrawable, (Drawable) null, (Drawable) null, (Drawable) null);
        } else {
            this.mKeyLeft.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, (Drawable) null, (Drawable) null);
        }
    }

    public void setCenterText(int textRes) {
        this.mCenterText = this.mContext.getString(textRes);
        if (this.mUseIcon || this.mForceIcon) {
            this.mKeyCenter.setText("");
        } else {
            this.mKeyCenter.setText(this.mCenterText);
            this.mKeyCenter.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, (Drawable) null, (Drawable) null);
        }
    }

    public void setCenterIcon(int iconRes) {
        this.mCenterDrawable = this.mContext.getResources().getDrawable(iconRes);
        if (this.mUseIcon || this.mForceIcon) {
            this.mKeyCenter.setText("");
            this.mKeyCenter.setCompoundDrawablesWithIntrinsicBounds(this.mCenterDrawable, (Drawable) null, (Drawable) null, (Drawable) null);
        } else {
            this.mKeyCenter.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, (Drawable) null, (Drawable) null);
        }
    }

    public void setRightText(String text) {
        this.mRightText = text;
        if (this.mUseIcon || this.mForceIcon) {
            this.mKeyRight.setText("");
        } else {
            this.mKeyRight.setText(this.mRightText);
            this.mKeyRight.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, (Drawable) null, (Drawable) null);
        }
    }

    public void setRightIcon(Drawable iconDrawable) {
        this.mRightDrawable = iconDrawable;
        if (this.mUseIcon || this.mForceIcon) {
            this.mKeyRight.setText("");
            this.mKeyRight.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, this.mRightDrawable, (Drawable) null);
        } else {
            this.mKeyRight.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, (Drawable) null, (Drawable) null);
        }
    }

    public ViewGroup getFeatureBar() {
        checkError(16, this.mBar);
        return this.mBar;
    }

    private void checkError(int flag, Object obj) {
        switch (flag) {
            case 16:
                if (obj == null) {
                    throw new IllegalStateException("Can not find views, have you called wrapDecor before setContentView ?");
                }
                return;
            default:
                return;
        }
    }

    public static void sendDownAndUpKeyEvents(Activity activity, int keyCode) {
        Window window;
        if (activity != null && (window = activity.getWindow()) != null) {
            long downTime = SystemClock.uptimeMillis();
            KeyEvent down = KeyEvent.obtain(downTime, downTime, 0, keyCode, 0, 0, -1, 0, 8, 257, null);
            window.injectInputEvent(down);
            long upTime = SystemClock.uptimeMillis();
            KeyEvent up = KeyEvent.obtain(downTime, upTime, 1, keyCode, 0, 0, -1, 0, 8, 257, null);
            window.injectInputEvent(up);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getSystemProperty() {
        this.mUseIcon = SystemProperties.getBoolean("persist.sys.duoqin.featurebar", true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void registerBroadcast() {
        if (this.mContext != null) {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("com.duoqin.featurebar.change");
            this.mReceiver = new BroadcastReceiver() { // from class: com.sprd.android.support.featurebar.FeatureBarHelper.6
                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context, Intent intent) {
                    FeatureBarHelper.this.getSystemProperty();
                    FeatureBarHelper.this.refreshLeft();
                    FeatureBarHelper.this.refreshCenter();
                    FeatureBarHelper.this.refreshRight();
                }
            };
            this.mContext.registerReceiver(this.mReceiver, intentFilter);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void unregisterBroadcast() {
        if (this.mContext != null && this.mReceiver != null) {
            this.mContext.unregisterReceiver(this.mReceiver);
        }
    }
}
