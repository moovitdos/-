package com.sprd.wallpaperpicker;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import com.sprd.common.util.LogUtils;
import com.sprd.simple.launcher.R;

/* loaded from: classes.dex */
public class SetWallpaperAdapter extends BaseAdapter {
    private static final boolean DEBUG = LogUtils.DEBUG_ALL;
    private Context mContext;

    public SetWallpaperAdapter(Context context) {
        this.mContext = null;
        if (DEBUG) {
            LogUtils.i("SetWallpaperAdapter", "SetWallpaperAdapter");
        }
        this.mContext = context;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        if (DEBUG) {
            LogUtils.i("SetWallpaperAdapter", "getCount");
        }
        return WallpaperUtil.getWallpaperResCount(this.mContext);
    }

    @Override // android.widget.Adapter
    public Object getItem(int item) {
        if (DEBUG) {
            LogUtils.i("SetWallpaperAdapter", "getItem = " + item);
        }
        return Integer.valueOf(WallpaperUtil.getWallpaperRes(this.mContext, item));
    }

    @Override // android.widget.Adapter
    public long getItemId(int position) {
        if (DEBUG) {
            LogUtils.i("SetWallpaperAdapter", "getItemId , position = " + position);
        }
        return position;
    }

    @Override // android.widget.Adapter
    public View getView(int position, View convertView, ViewGroup parent) {
        if (DEBUG) {
            LogUtils.i("SetWallpaperAdapter", "getView , position = " + position);
        }
        if (convertView == null) {
            convertView = LayoutInflater.from(this.mContext).inflate(R.layout.wallpaper_item, (ViewGroup) null);
            ImageView imageView = (ImageView) convertView.findViewById(R.id.wallpaper_item);
            imageView.setImageResource(WallpaperUtil.getWallpaperRes(this.mContext, position));
            convertView.setTag(imageView);
        } else {
            ImageView imageView2 = (ImageView) convertView.getTag();
            imageView2.setImageResource(WallpaperUtil.getWallpaperRes(this.mContext, position));
        }
        ImageView imageView3 = (ImageView) convertView.findViewById(R.id.wallpaper_item);
        imageView3.setImageResource(WallpaperUtil.getWallpaperRes(this.mContext, position));
        return convertView;
    }
}
