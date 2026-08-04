package com.sprd.classichome.model;

import android.content.ComponentName;
import android.content.Context;
import android.os.UserHandle;
import com.sprd.classichome.AppItemInfo;
import com.sprd.classichome.util.ComponentKey;
import com.sprd.classichome.util.UtilitiesExt;
import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: classes.dex */
public class AllAppsList {
    public final HashMap<ComponentKey, AppItemInfo> data = new HashMap<>();
    public final ArrayList<AppItemInfo> added = new ArrayList<>();
    public final ArrayList<ComponentKey> removed = new ArrayList<>();

    public void put(AppItemInfo info) {
        this.data.put(info.getComponentKey(), info);
    }

    public void remove(AppItemInfo info) {
        this.data.remove(info.getComponentKey());
    }

    public void clear() {
        this.data.clear();
        synchronized (this.added) {
            this.added.clear();
        }
        synchronized (this.removed) {
            this.removed.clear();
        }
    }

    public void addPackage(Context context, String packageName, UserHandle user) {
        ArrayList<AppItemInfo> activities = UtilitiesExt.findActivitiesForPackage(context, packageName, user);
        synchronized (this.added) {
            this.added.addAll(activities);
        }
    }

    public void removePackage(Context context, String packageName, UserHandle user) {
        ComponentKey cpk = new ComponentKey(new ComponentName(packageName, ""), user);
        synchronized (this.removed) {
            this.removed.add(cpk);
        }
    }

    public void updatePackage(Context context, String packageName, UserHandle user) {
        removePackage(context, packageName, user);
        addPackage(context, packageName, user);
    }
}
