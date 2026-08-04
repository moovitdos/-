package com.sprd.wallpaperpicker;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import com.sprd.PlatformHelper;
import com.sprd.android.support.featurebar.FeatureBarHelper;
import com.sprd.common.util.FeatureBarUtil;
import com.sprd.common.util.LogUtils;
import com.sprd.common.view.LoopGridView;
import com.sprd.simple.launcher.R;

/* loaded from: classes.dex */
public class SetWallpaperActivity extends Activity implements AdapterView.OnItemClickListener {
    private static final boolean DEBUG = LogUtils.DEBUG_ALL;
    private FeatureBarHelper mFeatureBarHelper;
    private LoopGridView mGridView = null;

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        if (DEBUG) {
            LogUtils.i("SetWallpaperActivity", "onCreate");
        }
        super.onCreate(savedInstanceState);
        setContentView(R.layout.wallpaper_layout);
        setAdapter();
        setSoftKey();
    }

    @Override // android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (DEBUG) {
            LogUtils.i("SetWallpaperActivity", "onActivityResult " + requestCode + ' ' + resultCode);
        }
        if (requestCode == 1) {
            if (resultCode == -1) {
                finish();
            } else if (resultCode >= 0) {
                this.mGridView.setSelection(resultCode);
            }
        }
    }

    private void setSoftKey() {
        if (PlatformHelper.isTargetBuild() && this.mFeatureBarHelper == null) {
            this.mFeatureBarHelper = new FeatureBarHelper(this);
        }
        FeatureBarUtil.hideSoftKey(this.mFeatureBarHelper, FeatureBarUtil.SoftKey.LFK);
    }

    private void handleCenterKey(int i) {
        if (DEBUG) {
            LogUtils.i("SetWallpaperActivity", "handleCenterKey id = " + i);
        }
        Intent intent = new Intent(this, (Class<?>) PreviewWallpaperActivity.class);
        Bundle bundle = new Bundle();
        bundle.putInt("Position", i);
        intent.putExtras(bundle);
        startActivityForResult(intent, 1);
    }

    private void setAdapter() {
        if (DEBUG) {
            LogUtils.i("SetWallpaperActivity", "setAdapter");
        }
        this.mGridView = (LoopGridView) findViewById(R.id.grid_view);
        SetWallpaperAdapter adapter = new SetWallpaperAdapter(this);
        this.mGridView.setAdapter((ListAdapter) adapter);
        this.mGridView.setOnItemClickListener(this);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> container, View view, int position, long id) {
        if (DEBUG) {
            LogUtils.i("SetWallpaperActivity", "onItemClick mPosition = " + position);
        }
        handleCenterKey(position);
    }
}
