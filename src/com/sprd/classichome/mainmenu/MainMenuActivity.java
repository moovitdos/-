package com.sprd.classichome.mainmenu;

import android.app.EventRecordManager;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.GridView;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.sprd.classichome.AppItemInfo;
import com.sprd.classichome.BaseHomeActivity;
import com.sprd.classichome.util.UtilitiesExt;
import com.sprd.classichome.widget.WidgetHostManager;
import com.sprd.classichome.mainmenu.MainMenuWidgetHelper;
import com.sprd.common.util.FeatureBarUtil;
import com.sprd.common.util.Utilities;
import com.sprd.simple.launcher.R;

/* loaded from: classes.dex */
public class MainMenuActivity extends BaseHomeActivity implements AdapterView.OnItemClickListener, AdapterView.OnItemLongClickListener, AdapterView.OnItemSelectedListener {
    private MainMenuAdapter mAdapter;
    Context mContext;
    private GridView mGridView;
    private TextView mTitle;

    @Override // com.sprd.classichome.BaseHomeActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setupViews();
        enableWallpaperShowing(getResources().getBoolean(R.bool.main_menu_with_wallpaper));
        this.mContext = this;
        EventRecordManager.getInstance(this);
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        WidgetHostManager.getInstance(this).handleActivityResult(this, requestCode, resultCode, data);
    }

    private void setupViews() {
        setContentView(R.layout.main_menu_activity);
        this.mTitle = (TextView) findViewById(R.id.title);
        this.mGridView = (GridView) findViewById(R.id.all_apps_container);
        if (this.mGridView != null) {
            // Before setAdapter: MainMenuAdapter reads getNumColumns() while sizing
            // cells, so setting it afterwards would leave the first pass measured
            // against the layout's value instead of the user's.
            try {
                this.mGridView.setNumColumns(
                        com.sprd.classichome.settings.LauncherSettings.getMenuColumns(this));
            } catch (Throwable t) {
                // Keep the layout default rather than losing the menu entirely.
            }
            this.mAdapter = new MainMenuAdapter(this.mGridView);
            this.mGridView.setAdapter((ListAdapter) this.mAdapter);
            this.mGridView.setOnItemSelectedListener(this);
            this.mGridView.setOnItemClickListener(this);
            this.mGridView.setOnItemLongClickListener(this);
            this.mGridView.post(new Runnable() { // from class: com.sprd.classichome.mainmenu.MainMenuActivity.1
                @Override // java.lang.Runnable
                public void run() {
                    MainMenuActivity.this.mGridView.setSelection(4);
                }
            });
        }
        setSoftKey();
    }

    protected void setSoftKey() {
        setupFeatureBar(this);
        FeatureBarUtil.hideSoftKey(this.mFeatureBarHelper, FeatureBarUtil.SoftKey.LFK);
        FeatureBarUtil.setTextColor(this, this.mFeatureBarHelper, FeatureBarUtil.SoftKey.MDK, R.color.classichome_softbar_font_color);
        FeatureBarUtil.setTextColor(this, this.mFeatureBarHelper, FeatureBarUtil.SoftKey.RTK, R.color.classichome_softbar_font_color);
    }

    private void updateTitle(int position, boolean read) {
        AppItemInfo itemInfo;
        if (this.mGridView != null && (itemInfo = (AppItemInfo) this.mGridView.getItemAtPosition(position)) != null) {
            setTitle(itemInfo.title);
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long l) {
        updateTitle(i, true);
    }

    @Override // android.app.Activity
    public void setTitle(CharSequence title) {
        if (this.mTitle != null) {
            this.mTitle.setText(title);
        }
        super.setTitle(title);
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
        if (view != null && view.getTag() != null) {
            Intent intent = Utilities.constructLauncherIntent(this, ((AppItemInfo) view.getTag()).pkgName, ((AppItemInfo) view.getTag()).clsName);
            Utilities.startActivity(this, intent);
            if ("com.android.browser".equalsIgnoreCase(((AppItemInfo) view.getTag()).pkgName)) {
                EventRecordManager.getInstance(this).onEvent("OPEN_BROWSER", "");
            }
        }
    }

    @Override // android.widget.AdapterView.OnItemLongClickListener
    public boolean onItemLongClick(AdapterView<?> adapterView, View view, int position, long id) {
        Object tag = view.getTag();
        if (tag == null) {
            return false;
        }
        if (MainMenuWidgetHelper.handleItemLongClick(this, tag)) {
            return true;
        }
        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(Uri.fromParts("package", ((AppItemInfo) tag).pkgName, null));
        intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
        startActivity(intent);
        return true;
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        UtilitiesExt.goHome(this);
    }
}
