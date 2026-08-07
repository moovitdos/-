package com.android.internal.widget;

import android.content.Context;
import android.view.ViewGroup;

/**
 * COMPILE-TIME STUB ONLY — never packaged into the APK.
 *
 * com.android.internal.widget.ActionBarView is an internal framework class,
 * absent from the public SDK. FeatureBarHelper:153 casts the decor view's
 * action bar to it.
 *
 * Extends ViewGroup so that findViewById results and the setter calls
 * FeatureBarHelper makes still type-check.
 */
public class ActionBarView extends ViewGroup {

    public ActionBarView(Context context) {
        super(context);
        throw new RuntimeException("stub");
    }

    @Override
    protected void onLayout(boolean changed, int l, int t, int r, int b) {
        throw new RuntimeException("stub");
    }
}
