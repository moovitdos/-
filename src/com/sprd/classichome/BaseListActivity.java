package com.sprd.classichome;

import android.app.Activity;
import android.app.EventRecordManager;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.sprd.PlatformHelper;
import com.sprd.android.support.featurebar.FeatureBarHelper;
import com.sprd.classichome.model.HomeMonitorCallbacks;
import com.sprd.classichome.model.LauncherModel;
import com.sprd.common.util.FeatureBarUtil;
import com.sprd.common.util.Utilities;
import com.sprd.simple.launcher.R;
import java.util.ArrayList;

/* loaded from: classes.dex */
public abstract class BaseListActivity extends Activity implements AdapterView.OnItemClickListener, AdapterView.OnItemSelectedListener {
    protected BaseListAdapter mAdapter;
    private HomeMonitorCallbacks mCallback = new HomeMonitorCallbacks() { // from class: com.sprd.classichome.BaseListActivity.1
        @Override // com.sprd.classichome.model.HomeMonitorCallbacks
        public void notifyAppsUpdated() {
            if (BaseListActivity.this.mAdapter != null) {
                BaseListActivity.this.mAdapter.notifyAppsUpdated(BaseListActivity.this.getApps());
            }
        }
    };
    private FeatureBarHelper mFeatureBarHelper;
    private ListView mListView;
    protected LauncherModel mModel;

    abstract ArrayList<AppItemInfo> getApps();

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.mModel = ((HomeApplication) getApplication()).setHomeCallback(this.mCallback);
        setContentView(R.layout.base_list_activity_main);
        this.mListView = (ListView) findViewById(R.id.base_list_view);
        initListView();
        setSoftKey();
        EventRecordManager.getInstance(this);
    }

    private void initListView() {
        if (this.mListView != null) {
            this.mAdapter = new BaseListAdapter(this);
            this.mAdapter.setApps(getApps());
            this.mListView.setAdapter((ListAdapter) this.mAdapter);
            this.mListView.setOnItemClickListener(this);
            this.mListView.setOnItemSelectedListener(this);
        }
    }

    protected void setSoftKey() {
        if (PlatformHelper.isTargetBuild() && this.mFeatureBarHelper == null) {
            this.mFeatureBarHelper = new FeatureBarHelper(this);
        }
        FeatureBarUtil.hideSoftKey(this.mFeatureBarHelper, FeatureBarUtil.SoftKey.LFK);
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        ((HomeApplication) getApplication()).removeHomeCallback(this.mCallback);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
        if (view != null && view.getTag() != null) {
            Intent intent = Utilities.constructLauncherIntent(this, ((AppItemInfo) view.getTag()).pkgName, ((AppItemInfo) view.getTag()).clsName);
            Utilities.startActivity(this, intent);
            if ("com.android.browser".equalsIgnoreCase(((AppItemInfo) view.getTag()).pkgName)) {
                EventRecordManager.getInstance(this).onEvent("OPEN_BROWSER", "");
            }
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
        if (view == null) {
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> parent) {
    }
}
