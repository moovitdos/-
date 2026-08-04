package com.sprd.common.util;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.ViewGroup;
import com.sprd.android.support.featurebar.FeatureBarHelper;

/* loaded from: classes.dex */
public class FeatureBarUtil {

    public enum SoftKey {
        LFK,
        MDK,
        RTK
    }

    /* renamed from: com.sprd.common.util.FeatureBarUtil$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sprd$common$util$FeatureBarUtil$SoftKey = new int[SoftKey.values().length];

        static {
            try {
                $SwitchMap$com$sprd$common$util$FeatureBarUtil$SoftKey[SoftKey.LFK.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$sprd$common$util$FeatureBarUtil$SoftKey[SoftKey.MDK.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$sprd$common$util$FeatureBarUtil$SoftKey[SoftKey.RTK.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    public static void hideSoftKey(FeatureBarHelper fbh, SoftKey key) {
        switch (AnonymousClass1.$SwitchMap$com$sprd$common$util$FeatureBarUtil$SoftKey[key.ordinal()]) {
            case 1:
                fbh.hideLeft();
                break;
            case 2:
                fbh.hideCenter();
                break;
            case 3:
                fbh.hideRight();
                break;
        }
    }

    public static void setTextColor(Context context, FeatureBarHelper fbh, SoftKey key, int resId) {
    }

    public static void setBackgroundAlpha(FeatureBarHelper fbh, int alpha) {
        Drawable bg = getBackground(fbh);
        if (bg != null) {
            bg.setAlpha(alpha);
        }
    }

    public static void setBackgroundNull(FeatureBarHelper fbh) {
        ViewGroup featureBar;
        if (fbh != null && (featureBar = fbh.getFeatureBar()) != null) {
            featureBar.setBackground(null);
        }
    }

    private static Drawable getBackground(FeatureBarHelper fbh) {
        ViewGroup featureBar;
        if (fbh == null || (featureBar = fbh.getFeatureBar()) == null) {
            return null;
        }
        return featureBar.getBackground();
    }
}
