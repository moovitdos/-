package com.sprd.classichome.util;

import com.sprd.classichome.AppItemInfo;
import java.text.Collator;
import java.util.Comparator;

/* loaded from: classes.dex */
public class NameComparator implements Comparator<AppItemInfo> {
    private final Collator mCollator = Collator.getInstance();

    @Override // java.util.Comparator
    public int compare(AppItemInfo appA, AppItemInfo appB) {
        String titleA = appA.title == null ? "" : appA.title.toString();
        String titleB = appB.title == null ? "" : appB.title.toString();
        boolean aStartsWithLetter = titleA.length() > 0 && Character.isLetterOrDigit(titleA.codePointAt(0));
        boolean bStartsWithLetter = titleB.length() > 0 && Character.isLetterOrDigit(titleB.codePointAt(0));
        if (aStartsWithLetter && !bStartsWithLetter) {
            return -1;
        }
        if (aStartsWithLetter || !bStartsWithLetter) {
            return this.mCollator.compare(titleA, titleB);
        }
        return 1;
    }
}
