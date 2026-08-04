package com.sprd.simple.util;

import android.util.Log;
import android.widget.TextView;

/* loaded from: classes.dex */
public class UnreadCountStyleUtil {
    private static float mLargeTextSize = 14.0f;
    private static float mMiddleTextSize = 12.0f;
    private static float mSmallTextSize = 10.0f;

    public static void setReadCountStyle(TextView textView, int count) {
        String finalText;
        if (textView != null) {
            if (count <= 99) {
                finalText = String.valueOf(count);
            } else {
                finalText = "99+";
            }
            Log.i("UnreadCountStyleUtil", "setReadCount count = " + count);
            switch (finalText.length()) {
                case 1:
                    textView.setTextSize(mLargeTextSize);
                    break;
                case 2:
                    textView.setTextSize(mMiddleTextSize);
                    break;
                default:
                    textView.setTextSize(mSmallTextSize);
                    break;
            }
            textView.setVisibility(0);
            textView.setText(String.valueOf(count));
            textView.setPadding(0, 0, 0, 5);
            Log.i("UnreadCountStyleUtil", "setReadCount textView = " + textView.getText().toString());
            textView.setTextColor(-1);
            textView.getPaint().setAntiAlias(true);
        }
    }
}
