package com.sprd.classichome.util;

import android.content.ComponentName;
import android.os.UserHandle;
import com.sprd.common.util.Utilities;
import java.util.Arrays;

/* loaded from: classes.dex */
public class ComponentKey {
    public final ComponentName componentName;
    private final int mHashCode;
    public final UserHandle user;

    public ComponentKey(ComponentName componentName, UserHandle user) {
        this.componentName = componentName;
        this.user = Utilities.getNoEmptyUser(user);
        this.mHashCode = Arrays.hashCode(new Object[]{componentName, user});
    }

    public int hashCode() {
        return this.mHashCode;
    }

    public boolean equals(Object o) {
        if (o instanceof ComponentKey) {
            ComponentKey other = (ComponentKey) o;
            return other.componentName.equals(this.componentName) && other.user.equals(this.user);
        }
        return super.equals(o);
    }

    public String toString() {
        return this.componentName.flattenToString() + "#" + this.user;
    }
}
