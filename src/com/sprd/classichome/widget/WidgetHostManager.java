package com.sprd.classichome.widget;

import android.app.Activity;
import android.app.AlertDialog;
import android.appwidget.AppWidgetHost;
import android.appwidget.AppWidgetHostView;
import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProviderInfo;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.util.Log;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.ViewFlipper;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

public class WidgetHostManager {
    private static final String TAG = "WidgetHostManager";
    public static final int APPWIDGET_HOST_ID = 1024;
    private static final String PREFS_NAME = "launcher_widget_prefs";
    private static final String PREF_KEY_WIDGET_LIST = "widget_list_json";

    public static final int REQUEST_CREATE_WIDGET = 1005;

    public static class WidgetItem {
        public int id;
        public int page; // 0 = main screen (view-only), 1..N = widget pages
        public String packageName;
        public String label;

        public WidgetItem(int id, int page, String packageName, String label) {
            this.id = id;
            this.page = page;
            this.packageName = packageName != null ? packageName : "";
            this.label = label != null ? label : "ווידג'ט";
        }

        public JSONObject toJson() {
            JSONObject obj = new JSONObject();
            try {
                obj.put("id", id);
                obj.put("page", page);
                obj.put("pkg", packageName);
                obj.put("label", label);
            } catch (Exception e) {
                Log.e(TAG, "Error serializing widget item", e);
            }
            return obj;
        }

        public static WidgetItem fromJson(JSONObject obj) {
            if (obj == null) return null;
            int id = obj.optInt("id", -1);
            if (id == -1) return null;
            int page = obj.optInt("page", 1);
            String pkg = obj.optString("pkg", "");
            String label = obj.optString("label", "ווידג'ט");
            return new WidgetItem(id, page, pkg, label);
        }
    }

    private static WidgetHostManager sInstance;
    private AppWidgetHost mAppWidgetHost;
    private AppWidgetManager mAppWidgetManager;
    private Context mContext;
    private SharedPreferences mPrefs;
    private int mPendingWidgetId = -1;
    private int mPendingTargetPage = 1;
    private String mPendingLabel = "";
    private String mPendingPkg = "";

    private WidgetHostManager(Context context) {
        this.mContext = context.getApplicationContext();
        this.mAppWidgetHost = new AppWidgetHost(this.mContext, APPWIDGET_HOST_ID);
        this.mAppWidgetManager = AppWidgetManager.getInstance(this.mContext);
        this.mPrefs = this.mContext.getSharedPreferences(PREFS_NAME, Context.MODE_PRIVATE);
    }

    public static synchronized WidgetHostManager getInstance(Context context) {
        if (sInstance == null) {
            sInstance = new WidgetHostManager(context);
        }
        return sInstance;
    }

    public AppWidgetHost getHost() {
        return this.mAppWidgetHost;
    }

    public AppWidgetManager getManager() {
        return this.mAppWidgetManager;
    }

    public void startListening() {
        try {
            if (this.mAppWidgetHost != null) {
                this.mAppWidgetHost.startListening();
            }
        } catch (Exception e) {
            Log.e(TAG, "Error in startListening", e);
        }
    }

    public void stopListening() {
        try {
            if (this.mAppWidgetHost != null) {
                this.mAppWidgetHost.stopListening();
            }
        } catch (Exception e) {
            Log.e(TAG, "Error in stopListening", e);
        }
    }

    public synchronized List<WidgetItem> getWidgetList() {
        List<WidgetItem> list = new ArrayList<>();
        String jsonStr = this.mPrefs.getString(PREF_KEY_WIDGET_LIST, null);
        if (jsonStr != null && !jsonStr.isEmpty()) {
            try {
                JSONArray arr = new JSONArray(jsonStr);
                for (int i = 0; i < arr.length(); i++) {
                    WidgetItem item = WidgetItem.fromJson(arr.getJSONObject(i));
                    if (item != null) {
                        list.add(item);
                    }
                }
            } catch (Exception e) {
                Log.e(TAG, "Error parsing widget list JSON", e);
            }
        }
        return list;
    }

    public synchronized void saveWidgetList(List<WidgetItem> list) {
        JSONArray arr = new JSONArray();
        if (list != null) {
            for (WidgetItem item : list) {
                if (item != null) {
                    arr.put(item.toJson());
                }
            }
        }
        this.mPrefs.edit().putString(PREF_KEY_WIDGET_LIST, arr.toString()).apply();
    }

    public int getMaxPage() {
        List<WidgetItem> list = getWidgetList();
        int max = 0;
        for (WidgetItem item : list) {
            if (item.page > max) {
                max = item.page;
            }
        }
        return max;
    }

    public List<WidgetItem> getWidgetsForPage(int page) {
        List<WidgetItem> result = new ArrayList<>();
        for (WidgetItem item : getWidgetList()) {
            if (item.page == page) {
                result.add(item);
            }
        }
        return result;
    }

    public void addWidget(WidgetItem item) {
        if (item == null) return;
        List<WidgetItem> list = getWidgetList();
        if (item.page == 0) {
            // Main screen only allows one widget; remove previous page 0 widget
            List<WidgetItem> updated = new ArrayList<>();
            for (WidgetItem existing : list) {
                if (existing.page == 0) {
                    try {
                        this.mAppWidgetHost.deleteAppWidgetId(existing.id);
                    } catch (Exception ignored) {}
                } else {
                    updated.add(existing);
                }
            }
            list = updated;
        }
        list.add(item);
        saveWidgetList(list);
    }

    public void removeWidgetById(final Activity activity, int appWidgetId) {
        List<WidgetItem> list = getWidgetList();
        List<WidgetItem> remaining = new ArrayList<>();
        boolean found = false;
        for (WidgetItem item : list) {
            if (item.id == appWidgetId) {
                found = true;
                try {
                    this.mAppWidgetHost.deleteAppWidgetId(item.id);
                } catch (Exception e) {
                    Log.e(TAG, "Error deleting widget id: " + item.id, e);
                }
            } else {
                remaining.add(item);
            }
        }
        if (found) {
            saveWidgetList(remaining);
            notifyActivityRefresh(activity);
            Toast.makeText(activity, "הווידג'ט הוסר", Toast.LENGTH_SHORT).show();
        }
    }

    private void notifyActivityRefresh(Activity activity) {
        if (activity == null) return;
        try {
            Method m = activity.getClass().getMethod("refreshWidgets");
            m.invoke(activity);
        } catch (Exception e) {
            Log.w(TAG, "Failed to invoke refreshWidgets via reflection", e);
        }
    }

    public void showRemoveDialogForCurrentPage(final Activity activity, final int page) {
        final List<WidgetItem> pageWidgets = getWidgetsForPage(page);
        if (pageWidgets.isEmpty()) {
            Toast.makeText(activity, "אין ווידג'טים להסרה בעמוד זה", Toast.LENGTH_SHORT).show();
            return;
        }

        String[] labels = new String[pageWidgets.size()];
        for (int i = 0; i < pageWidgets.size(); i++) {
            labels[i] = pageWidgets.get(i).label;
        }

        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        builder.setTitle("בחר ווידג'ט להסרה");
        builder.setItems(labels, new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which) {
                final WidgetItem chosen = pageWidgets.get(which);
                AlertDialog.Builder confirm = new AlertDialog.Builder(activity);
                confirm.setTitle("אישור הסרה");
                confirm.setMessage("האם להסיר את הווידג'ט \"" + chosen.label + "\"?");
                confirm.setPositiveButton("הסר", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface d, int w) {
                        removeWidgetById(activity, chosen.id);
                    }
                });
                confirm.setNegativeButton("ביטול", null);
                confirm.show();
            }
        });
        builder.setNegativeButton("ביטול", null);
        builder.show();
    }

    public void setupHomeWidgets(final Activity activity, final ViewFlipper flipper) {
        if (activity == null || flipper == null) return;

        // 1. Populate Main Screen (Page 0)
        View page0 = flipper.getChildAt(0);
        if (page0 != null) {
            int mainContainerId = activity.getResources().getIdentifier("widget_container_page1", "id", activity.getPackageName());
            ViewGroup mainContainer = (ViewGroup) page0.findViewById(mainContainerId);
            if (mainContainer != null) {
                mainContainer.removeAllViews();
                mainContainer.setDescendantFocusability(ViewGroup.FOCUS_BLOCK_DESCENDANTS);

                List<WidgetItem> p0Widgets = getWidgetsForPage(0);
                if (!p0Widgets.isEmpty()) {
                    WidgetItem item = p0Widgets.get(0);
                    AppWidgetProviderInfo info = this.mAppWidgetManager.getAppWidgetInfo(item.id);
                    if (info != null) {
                        try {
                            AppWidgetHostView hostView = this.mAppWidgetHost.createView(activity, item.id, info);
                            hostView.setAppWidget(item.id, info);
                            makeViewOnly(hostView);

                            FrameLayout.LayoutParams lp = new FrameLayout.LayoutParams(
                                    ViewGroup.LayoutParams.MATCH_PARENT,
                                    ViewGroup.LayoutParams.WRAP_CONTENT
                            );
                            mainContainer.addView(hostView, lp);
                            mainContainer.setVisibility(View.VISIBLE);
                        } catch (Exception e) {
                            Log.e(TAG, "Error creating page 0 widget", e);
                            mainContainer.setVisibility(View.GONE);
                        }
                    } else {
                        mainContainer.setVisibility(View.GONE);
                    }
                } else {
                    mainContainer.setVisibility(View.GONE);
                }
            }
        }

        // 2. Remove any previous dynamic pages
        while (flipper.getChildCount() > 1) {
            flipper.removeViewAt(1);
        }

        // 3. Determine number of widget pages
        int maxPage = getMaxPage();
        if (maxPage < 1) {
            maxPage = 1; // At least one widget page exists
        }

        for (int p = 1; p <= maxPage; p++) {
            final int pageNumber = p;
            final int totalPages = maxPage;

            ScrollView scrollView = new ScrollView(activity);
            scrollView.setFillViewport(true);
            scrollView.setScrollbarFadingEnabled(true);

            LinearLayout pageLayout = new LinearLayout(activity);
            pageLayout.setOrientation(LinearLayout.VERTICAL);
            pageLayout.setPadding(12, 8, 12, 16);

            // Page Header
            TextView headerTv = new TextView(activity);
            headerTv.setText("ווידג'טים (" + pageNumber + "/" + totalPages + ")");
            headerTv.setTextColor(0xb0ffffff);
            headerTv.setTextSize(13.0f);
            headerTv.setGravity(Gravity.CENTER);
            headerTv.setPadding(0, 4, 0, 8);
            pageLayout.addView(headerTv, new LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT,
                    ViewGroup.LayoutParams.WRAP_CONTENT
            ));

            List<WidgetItem> pageWidgets = getWidgetsForPage(pageNumber);
            if (pageWidgets.isEmpty()) {
                TextView emptyTv = new TextView(activity);
                emptyTv.setText("עמוד ריק\n\nלחץ לחיצה ארוכה על אפליקציה בתפריט להוספת ווידג'ט\n(לחץ על מקש Menu להסרה)");
                emptyTv.setTextColor(0x99ffffff);
                emptyTv.setTextSize(12.0f);
                emptyTv.setGravity(Gravity.CENTER);
                emptyTv.setPadding(16, 40, 16, 40);
                pageLayout.addView(emptyTv, new LinearLayout.LayoutParams(
                        ViewGroup.LayoutParams.MATCH_PARENT,
                        ViewGroup.LayoutParams.WRAP_CONTENT
                ));
            } else {
                for (final WidgetItem item : pageWidgets) {
                    AppWidgetProviderInfo info = this.mAppWidgetManager.getAppWidgetInfo(item.id);
                    if (info != null) {
                        try {
                            AppWidgetHostView hostView = this.mAppWidgetHost.createView(activity, item.id, info);
                            hostView.setAppWidget(item.id, info);

                            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                                    ViewGroup.LayoutParams.MATCH_PARENT,
                                    ViewGroup.LayoutParams.WRAP_CONTENT
                            );
                            lp.setMargins(0, 4, 0, 8);
                            pageLayout.addView(hostView, lp);
                        } catch (Exception e) {
                            Log.e(TAG, "Error adding widget view for page " + pageNumber, e);
                        }
                    }
                }
            }

            scrollView.addView(pageLayout, new ViewGroup.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT,
                    ViewGroup.LayoutParams.WRAP_CONTENT
            ));

            flipper.addView(scrollView, new ViewGroup.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT,
                    ViewGroup.LayoutParams.MATCH_PARENT
            ));
        }
    }

    public static void makeViewOnly(View view) {
        if (view == null) return;
        view.setFocusable(false);
        view.setFocusableInTouchMode(false);
        view.setClickable(false);
        view.setLongClickable(false);
        view.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public boolean onTouch(View v, MotionEvent event) {
                return false; // Do not consume or trigger actions
            }
        });
        if (view instanceof ViewGroup) {
            ViewGroup vg = (ViewGroup) view;
            vg.setDescendantFocusability(ViewGroup.FOCUS_BLOCK_DESCENDANTS);
            for (int i = 0; i < vg.getChildCount(); i++) {
                makeViewOnly(vg.getChildAt(i));
            }
        }
    }

    public void addWidgetFromPackage(final Activity activity, final String packageName, final int targetPage) {
        List<AppWidgetProviderInfo> providers = this.mAppWidgetManager.getInstalledProviders();
        final List<AppWidgetProviderInfo> matching = new ArrayList<>();
        if (providers != null) {
            for (AppWidgetProviderInfo info : providers) {
                if (info != null && info.provider != null && packageName.equalsIgnoreCase(info.provider.getPackageName())) {
                    matching.add(info);
                }
            }
        }

        if (matching.isEmpty()) {
            Toast.makeText(activity, "לא נמצאו ווידג'טים ליישום זה", Toast.LENGTH_SHORT).show();
            return;
        }

        if (matching.size() == 1) {
            bindAndConfigureWidget(activity, matching.get(0), targetPage);
        } else {
            String[] labels = new String[matching.size()];
            for (int i = 0; i < matching.size(); i++) {
                labels[i] = matching.get(i).label;
                if (labels[i] == null || labels[i].isEmpty()) {
                    labels[i] = "ווידג'ט " + (i + 1);
                }
            }
            AlertDialog.Builder builder = new AlertDialog.Builder(activity);
            builder.setTitle("בחר ווידג'ט");
            builder.setItems(labels, new DialogInterface.OnClickListener() {
                @Override
                public void onClick(DialogInterface dialog, int which) {
                    bindAndConfigureWidget(activity, matching.get(which), targetPage);
                }
            });
            builder.setNegativeButton("ביטול", null);
            builder.show();
        }
    }

    public void bindAndConfigureWidget(Activity activity, AppWidgetProviderInfo info, int targetPage) {
        int appWidgetId = this.mAppWidgetHost.allocateAppWidgetId();
        this.mPendingWidgetId = appWidgetId;
        this.mPendingTargetPage = targetPage;
        this.mPendingPkg = info.provider != null ? info.provider.getPackageName() : "";
        this.mPendingLabel = (info.label != null && !info.label.isEmpty()) ? info.label : "ווידג'ט";

        boolean allowed = false;
        try {
            allowed = this.mAppWidgetManager.bindAppWidgetIdIfAllowed(appWidgetId, info.provider);
        } catch (Exception e) {
            Log.w(TAG, "bindAppWidgetIdIfAllowed failed", e);
        }

        if (!allowed) {
            Intent intent = new Intent(AppWidgetManager.ACTION_APPWIDGET_BIND);
            intent.putExtra(AppWidgetManager.EXTRA_APPWIDGET_ID, appWidgetId);
            intent.putExtra(AppWidgetManager.EXTRA_APPWIDGET_PROVIDER, info.provider);
            activity.startActivityForResult(intent, REQUEST_CREATE_WIDGET);
            return;
        }

        if (info.configure != null) {
            Intent intent = new Intent(AppWidgetManager.ACTION_APPWIDGET_CONFIGURE);
            intent.setComponent(info.configure);
            intent.putExtra(AppWidgetManager.EXTRA_APPWIDGET_ID, appWidgetId);
            activity.startActivityForResult(intent, REQUEST_CREATE_WIDGET);
        } else {
            finalizeWidgetAdd(activity, appWidgetId, targetPage, mPendingPkg, mPendingLabel);
        }
    }

    private void finalizeWidgetAdd(Activity activity, int appWidgetId, int targetPage, String pkg, String label) {
        addWidget(new WidgetItem(appWidgetId, targetPage, pkg, label));
        Toast.makeText(activity, "הווידג'ט נוסף בהצלחה", Toast.LENGTH_SHORT).show();
        notifyActivityRefresh(activity);
    }

    public void handleActivityResult(Activity activity, int requestCode, int resultCode, Intent data) {
        if (requestCode == REQUEST_CREATE_WIDGET) {
            int appWidgetId = (data != null) ? data.getIntExtra(AppWidgetManager.EXTRA_APPWIDGET_ID, this.mPendingWidgetId) : this.mPendingWidgetId;
            if (resultCode == Activity.RESULT_OK && appWidgetId != -1) {
                finalizeWidgetAdd(activity, appWidgetId, this.mPendingTargetPage, this.mPendingPkg, this.mPendingLabel);
            } else {
                if (appWidgetId != -1) {
                    try {
                        this.mAppWidgetHost.deleteAppWidgetId(appWidgetId);
                    } catch (Exception e) {
                        Log.e(TAG, "Error deleting cancelled widget id", e);
                    }
                }
            }
            this.mPendingWidgetId = -1;
        }
    }
}
