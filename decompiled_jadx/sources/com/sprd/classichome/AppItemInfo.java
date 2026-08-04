package com.sprd.classichome;

import android.content.ComponentName;
import android.graphics.drawable.Drawable;
import android.os.UserHandle;
import com.sprd.classichome.util.ComponentKey;
import com.sprd.common.util.Utilities;

/* loaded from: classes.dex */
public class AppItemInfo {
    public final String clsName;
    public String group;
    public Drawable icon;
    public boolean iconCustomized;
    public final String pkgName;
    public int position;
    public CharSequence title;
    public final UserHandle user;

    public AppItemInfo(CharSequence title, Drawable icon, String pkg, String cls) {
        this(title, icon, pkg, cls, "mainmenu", Integer.MAX_VALUE);
    }

    public AppItemInfo(CharSequence title, Drawable icon, String pkg, String cls, String group, int position) {
        this.title = title;
        this.icon = icon;
        this.pkgName = pkg == null ? "" : pkg;
        this.clsName = cls == null ? "" : cls;
        this.group = isGroupValid(group) ? group : "mainmenu";
        this.position = position < 1 ? Integer.MAX_VALUE : position;
        this.user = Utilities.getNoEmptyUser(null);
    }

    public boolean isGroupValid(String group) {
        return "mainmenu".equals(group) || "extra".equals(group) || "game".equals(group) || "gam".equals(group) || "hide".equals(group);
    }

    public ComponentKey getComponentKey() {
        return new ComponentKey(new ComponentName(this.pkgName, this.clsName), this.user);
    }

    public ComponentName getTargetComponent() {
        return new ComponentName(this.pkgName, this.clsName);
    }
}
