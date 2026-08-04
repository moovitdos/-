package com.sprd.classichome.mainmenu;

import android.content.ComponentName;
import android.content.Context;
import android.graphics.drawable.BitmapDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.TextView;
import com.sprd.classichome.AppItemInfo;
import com.sprd.classichome.HomeApplication;
import com.sprd.classichome.model.HomeMonitorCallbacks;
import com.sprd.classichome.model.LauncherModel;
import com.sprd.classichome.util.IconUtilities;
import com.sprd.classichome.util.UtilitiesExt;
import com.sprd.common.util.LogUtils;
import com.sprd.simple.launcher.R;
import com.sprd.simple.util.UnreadCountStyleUtil;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class MainMenuAdapter extends BaseAdapter {
    Context mContext;
    GridView mGridView;
    private LayoutInflater mInflater;
    private ArrayList<AppItemInfo> mMainMenuApps;
    private static final ComponentName MSG_CPNAME = new ComponentName("com.android.mms", "com.android.mms.ui.ConversationList");
    private static final ComponentName CALL_LOG_CPNAME = new ComponentName("com.android.dialer", "com.android.dialer.calllog.CallLogActivity");
    private int mUnreadMsgCount = 0;
    private int mUnreadCallLogCount = 0;
    private HomeMonitorCallbacks mCallback = new HomeMonitorCallbacks() { // from class: com.sprd.classichome.mainmenu.MainMenuAdapter.1
        @Override // com.sprd.classichome.model.HomeMonitorCallbacks
        public void notifyAppsUpdated() {
            MainMenuAdapter.this.mMainMenuApps = LauncherModel.getMainMenuAppsList();
            MainMenuAdapter.this.notifyDataSetChanged();
        }
    };

    public MainMenuAdapter(GridView gridView) {
        this.mMainMenuApps = new ArrayList<>();
        this.mContext = gridView.getContext();
        this.mGridView = gridView;
        this.mMainMenuApps = LauncherModel.getMainMenuAppsList();
        this.mInflater = (LayoutInflater) this.mContext.getSystemService("layout_inflater");
        HomeApplication.getInstance().setHomeCallback(this.mCallback);
    }

    @Override // android.widget.Adapter
    public View getView(int position, View convertView, ViewGroup parent) {
        int width = this.mGridView.getColumnWidth();
        int height = this.mGridView.getMeasuredHeight() / this.mGridView.getNumColumns();
        if (convertView == null) {
            convertView = this.mInflater.inflate(R.layout.main_menu_item, (ViewGroup) null);
        }
        AppItemInfo info = this.mMainMenuApps.get(position);
        ImageView icon = (ImageView) convertView.findViewById(R.id.app_item_icon);
        if (icon != null) {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
            icon.setLayoutParams(layoutParams);
        }
        if (UtilitiesExt.isSystemApp(this.mContext, info.pkgName)) {
            icon.setImageDrawable(info.icon);
        } else {
            icon.setImageBitmap(IconUtilities.get3rdPartyAppIcon(this.mContext, (BitmapDrawable) info.icon));
        }
        convertView.setTag(info);
        convertView.setLayoutParams(new AbsListView.LayoutParams(width, height));
        TextView text = (TextView) convertView.findViewById(R.id.unread_info);
        setUnreadTextView(text, info.getTargetComponent());
        return convertView;
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        return this.mMainMenuApps.size();
    }

    @Override // android.widget.Adapter
    public final Object getItem(int position) {
        return this.mMainMenuApps.get(position);
    }

    @Override // android.widget.Adapter
    public final long getItemId(int position) {
        return position;
    }

    protected void finalize() throws Throwable {
        super.finalize();
        HomeApplication.getInstance().removeHomeCallback(this.mCallback);
    }

    private void setUnreadTextView(TextView text, ComponentName componentName) {
        int count = 0;
        if (MSG_CPNAME.equals(componentName)) {
            count = this.mUnreadMsgCount;
        } else if (CALL_LOG_CPNAME.equals(componentName)) {
            count = this.mUnreadCallLogCount;
        }
        if (count > 0) {
            UnreadCountStyleUtil.setReadCountStyle(text, count);
        } else {
            text.setVisibility(4);
        }
        if (LogUtils.DEBUG) {
            LogUtils.d("MainMenuAdapter", "count = " + count + "; componentName: " + componentName);
        }
    }
}
