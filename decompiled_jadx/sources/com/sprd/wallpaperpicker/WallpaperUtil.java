package com.sprd.wallpaperpicker;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import com.sprd.common.util.LogUtils;
import com.sprd.simple.launcher.R;

/* loaded from: classes.dex */
public class WallpaperUtil {
    private static final boolean DEBUG = LogUtils.DEBUG_ALL;
    private static int[] mResIds = null;

    public static void initWallpaperResArray(Context context) throws Resources.NotFoundException {
        if (mResIds == null) {
            TypedArray typedArray = context.getResources().obtainTypedArray(R.array.wallpapers);
            mResIds = new int[typedArray.length()];
            for (int i = 0; i < mResIds.length; i++) {
                mResIds[i] = typedArray.getResourceId(i, -1);
            }
            typedArray.recycle();
        }
    }

    public static int getWallpaperRes(Context context, int position) throws Resources.NotFoundException {
        if (mResIds == null) {
            initWallpaperResArray(context);
        }
        if (position < mResIds.length) {
            return mResIds[position];
        }
        if (DEBUG) {
            LogUtils.i("WallpaperUtil", "getWallpaperRes position too big, position = " + position + ",mResIds.length = " + mResIds.length);
        }
        return 0;
    }

    public static int getWallpaperResCount(Context context) throws Resources.NotFoundException {
        if (mResIds == null) {
            initWallpaperResArray(context);
        }
        return mResIds.length;
    }
}
