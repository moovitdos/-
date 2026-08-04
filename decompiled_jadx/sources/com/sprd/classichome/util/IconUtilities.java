package com.sprd.classichome.util;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.util.Log;
import com.sprd.simple.launcher.R;

/* loaded from: classes.dex */
public final class IconUtilities {
    public static int ICON_SCAN_STEP = 3;

    public static Bitmap get3rdPartyAppIcon(Context context, BitmapDrawable icon) throws Resources.NotFoundException {
        Bitmap background = BitmapFactory.decodeResource(context.getResources(), R.drawable.app_icon_bg).copy(Bitmap.Config.ARGB_8888, true);
        int w = background.getWidth();
        int h = background.getHeight();
        int w_2 = context.getResources().getDimensionPixelOffset(R.dimen.main_menu_icon_size);
        Bitmap iconBitmap = getCircleBitmap(icon.getBitmap(), 8, false);
        Log.d("duoqin", "iconBitmap w = " + iconBitmap.getWidth() + "; iconBitmap h = " + iconBitmap.getHeight());
        float scaleFactor = w_2 / iconBitmap.getWidth();
        Bitmap scaledIcon = transform(iconBitmap, scaleFactor, true);
        Bitmap newBitmap = Bitmap.createBitmap(background);
        Canvas canvas = new Canvas(newBitmap);
        Paint paint = new Paint();
        canvas.drawBitmap(scaledIcon, Math.abs(w - w_2) / 2, Math.abs(h - w_2) / 2, paint);
        canvas.save(31);
        canvas.restore();
        return newBitmap;
    }

    public static Bitmap getCircleBitmap(Bitmap bitmap, int cornerRadius, boolean recycle) {
        int w = bitmap.getWidth();
        int h = bitmap.getHeight();
        int l = w > h ? h : w;
        Bitmap output = Bitmap.createBitmap(l, l, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(output);
        Paint paint = new Paint();
        Rect rect = new Rect(0, 0, l, l);
        RectF rectF = new RectF(rect);
        float roundPx = cornerRadius;
        paint.setAntiAlias(true);
        canvas.drawARGB(0, 0, 0, 0);
        paint.setColor(-1);
        canvas.drawRoundRect(rectF, roundPx, roundPx, paint);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(bitmap, rect, rect, paint);
        if (recycle) {
            bitmap.recycle();
        }
        return output;
    }

    public static Bitmap transform(Bitmap source, float scaleFactor, boolean recycle) {
        Matrix scaler = new Matrix();
        scaler.setScale(scaleFactor, scaleFactor);
        Bitmap b1 = Bitmap.createBitmap(source, 0, 0, source.getWidth(), source.getHeight(), scaler, true);
        if (recycle && b1 != source) {
            source.recycle();
        }
        return b1;
    }
}
