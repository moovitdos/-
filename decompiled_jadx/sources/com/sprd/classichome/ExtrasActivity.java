package com.sprd.classichome;

import android.os.Bundle;
import com.sprd.classichome.model.LauncherModel;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class ExtrasActivity extends BaseListActivity {
    @Override // com.sprd.classichome.BaseListActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
    }

    @Override // com.sprd.classichome.BaseListActivity
    ArrayList<AppItemInfo> getApps() {
        return LauncherModel.getExtraAppsList();
    }
}
