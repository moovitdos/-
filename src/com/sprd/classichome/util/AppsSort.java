package com.sprd.classichome.util;

import com.sprd.classichome.AppItemInfo;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class AppsSort {
    private static final Comparator<AppItemInfo> POSITION_METHODS = new Comparator<AppItemInfo>() { // from class: com.sprd.classichome.util.AppsSort.1
        @Override // java.util.Comparator
        public final int compare(AppItemInfo a, AppItemInfo b) {
            if (a == null || b == null) {
                throw new RuntimeException("Comparator AppItemInfo should not be null!");
            }
            return a.position < b.position ? -1 : 1;
        }
    };
    private static final Comparator<AppItemInfo> NAME_METHODS = new NameComparator();

    public enum SortType {
        NAME,
        POSITION
    }

    /* renamed from: com.sprd.classichome.util.AppsSort$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$sprd$classichome$util$AppsSort$SortType = new int[SortType.values().length];

        static {
            try {
                $SwitchMap$com$sprd$classichome$util$AppsSort$SortType[SortType.NAME.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$sprd$classichome$util$AppsSort$SortType[SortType.POSITION.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    public static void sort(ArrayList<AppItemInfo> srcList, SortType type) {
        switch (AnonymousClass2.$SwitchMap$com$sprd$classichome$util$AppsSort$SortType[type.ordinal()]) {
            case 1:
                Collections.sort(srcList, NAME_METHODS);
                break;
            case 2:
                Collections.sort(srcList, POSITION_METHODS);
                break;
        }
    }

    public static void verifyPosition(ArrayList<AppItemInfo> srcList) {
        ArrayList<AppItemInfo> posList = new ArrayList<>();
        ArrayList<AppItemInfo> tmpList = new ArrayList<>();
        Iterator i$ = srcList.iterator();
        while (i$.hasNext()) {
            AppItemInfo info = i$.next();
            if (info.position >= 1 && info.position != Integer.MAX_VALUE) {
                posList.add(info);
            } else {
                tmpList.add(info);
            }
        }
        sort(posList, SortType.POSITION);
        for (int i = 0; i < posList.size(); i++) {
            AppItemInfo appInfo = posList.get(i);
            int index = appInfo.position - 1;
            if (index < tmpList.size()) {
                tmpList.add(index, appInfo);
            } else {
                tmpList.add(appInfo);
            }
        }
        srcList.clear();
        srcList.addAll(tmpList);
    }
}
