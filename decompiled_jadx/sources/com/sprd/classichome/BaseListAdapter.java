package com.sprd.classichome;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.sprd.simple.launcher.R;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class BaseListAdapter extends BaseAdapter {
    private ArrayList<AppItemInfo> mApps = new ArrayList<>();
    Context mContext;
    private LayoutInflater mInflater;

    BaseListAdapter(Context context) {
        this.mContext = context;
        this.mInflater = (LayoutInflater) this.mContext.getSystemService("layout_inflater");
    }

    void setApps(ArrayList<AppItemInfo> apps) {
        this.mApps.clear();
        this.mApps.addAll(apps);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.mApps.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int position) {
        return this.mApps.get(position);
    }

    @Override // android.widget.Adapter
    public long getItemId(int position) {
        return position;
    }

    @Override // android.widget.Adapter
    public View getView(int position, View convertView, ViewGroup parent) {
        if (convertView == null) {
            convertView = this.mInflater.inflate(R.layout.base_list_item, (ViewGroup) null);
        }
        AppItemInfo info = this.mApps.get(position);
        ImageView appIcon = (ImageView) convertView.findViewById(R.id.list_item_icon);
        appIcon.setImageDrawable(info.icon);
        TextView appName = (TextView) convertView.findViewById(R.id.list_item_title);
        appName.setText(info.title);
        convertView.setTag(info);
        return convertView;
    }

    public void notifyAppsUpdated(ArrayList<AppItemInfo> apps) {
        setApps(apps);
        notifyDataSetChanged();
    }
}
