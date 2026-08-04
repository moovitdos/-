package com.sprd;

import android.widget.GridView;

/* loaded from: classes.dex */
public class PlatformHelper {
    public static boolean isTargetBuild() {
        return true;
    }

    public static boolean isLayoutRtl(GridView view) {
        if (view == null) {
            return false;
        }
        boolean ret = view.isLayoutRtl();
        return ret;
    }
}
