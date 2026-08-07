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
import android.content.ComponentName;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.util.Log;
import android.view.Gravity;
import android.view.KeyEvent;
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

    /** Smallest a widget may be shrunk to. Below this it cannot be selected again. */
    static final int MIN_WIDGET_PX = 32;

    /** Pixels moved or resized per arrow press in edit mode. */
    static final int EDIT_STEP_PX = 4;

    /** Height given to a widget that has never been positioned. */
    static final int DEFAULT_WIDGET_H_PX = 72;

    public static class WidgetItem {
        public int id;
        public int page; // 0 = main screen, 1..N = widget pages
        public String packageName;
        public String label;

        /**
         * Geometry on page 0, in pixels. -1 means "not placed yet" — such a widget is
         * laid out full-width at the top and gets real coordinates the first time the
         * user moves or resizes it.
         *
         * Pixels rather than dp because this screen is a fixed 240x320 at ldpi and the
         * values are only ever compared against that surface. Storing dp would mean
         * converting on every read for no benefit.
         */
        public int x = -1;
        public int y = -1;
        public int w = -1;
        public int h = -1;

        public WidgetItem(int id, int page, String packageName, String label) {
            this.id = id;
            this.page = page;
            this.packageName = packageName != null ? packageName : "";
            this.label = label != null ? label : "ווידג'ט";
        }

        public boolean hasGeometry() {
            return x >= 0 && y >= 0 && w > 0 && h > 0;
        }

        public JSONObject toJson() {
            JSONObject obj = new JSONObject();
            try {
                obj.put("id", id);
                obj.put("page", page);
                obj.put("pkg", packageName);
                obj.put("label", label);
                obj.put("x", x);
                obj.put("y", y);
                obj.put("w", w);
                obj.put("h", h);
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
            WidgetItem item = new WidgetItem(id, page, pkg, label);
            // Absent keys default to -1, so entries written before geometry existed
            // load cleanly and simply arrive unplaced.
            item.x = obj.optInt("x", -1);
            item.y = obj.optInt("y", -1);
            item.w = obj.optInt("w", -1);
            item.h = obj.optInt("h", -1);
            return item;
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
    private ComponentName mPendingConfigureComponent;
    private boolean mPendingConfigurationStarted;

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

    private void purgeInvalidWidgets() {
        List<WidgetItem> current = getWidgetList();
        List<WidgetItem> valid = new ArrayList<>();
        boolean changed = false;
        for (WidgetItem item : current) {
            if (item == null || item.id < 0 || this.mAppWidgetManager.getAppWidgetInfo(item.id) == null) {
                if (item != null && item.id >= 0) {
                    try {
                        this.mAppWidgetHost.deleteAppWidgetId(item.id);
                    } catch (Exception ignored) {
                    }
                }
                changed = true;
            } else {
                valid.add(item);
            }
        }
        if (changed) {
            saveWidgetList(valid);
        }
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
        // Page 0 used to be capped at a single widget, replacing whatever was there.
        // It now holds as many as fit, each with its own position and size.
        List<WidgetItem> list = getWidgetList();
        list.add(item);
        saveWidgetList(list);
    }

    /** Persist geometry for one widget. */
    public synchronized void saveGeometry(int appWidgetId, int x, int y, int w, int h) {
        List<WidgetItem> list = getWidgetList();
        for (WidgetItem item : list) {
            if (item.id == appWidgetId) {
                item.x = x;
                item.y = y;
                item.w = w;
                item.h = h;
                break;
            }
        }
        saveWidgetList(list);
    }

    /**
     * Keep a widget inside the visible surface.
     *
     * There is no touchscreen, page 0 does not scroll, and a widget dragged past the
     * edge would have no way back. Clamping on both save and load means a bad value —
     * from an older build, a resolution change, or a bug — self-corrects instead of
     * stranding the user.
     */
    static void clampToSurface(WidgetItem item, int surfaceW, int surfaceH) {
        if (surfaceW <= 0 || surfaceH <= 0) return;
        if (item.w > surfaceW) item.w = surfaceW;
        if (item.h > surfaceH) item.h = surfaceH;
        if (item.w < MIN_WIDGET_PX) item.w = MIN_WIDGET_PX;
        if (item.h < MIN_WIDGET_PX) item.h = MIN_WIDGET_PX;
        if (item.x < 0) item.x = 0;
        if (item.y < 0) item.y = 0;
        if (item.x + item.w > surfaceW) item.x = surfaceW - item.w;
        if (item.y + item.h > surfaceH) item.y = surfaceH - item.h;
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
        purgeInvalidWidgets();

        // 1. Populate the main screen (page 0) with freely positioned widgets.
        View page0 = flipper.getChildAt(0);
        if (page0 != null) {
            int mainContainerId = activity.getResources().getIdentifier("widget_container_page1", "id", activity.getPackageName());
            final ViewGroup mainContainer = (ViewGroup) page0.findViewById(mainContainerId);
            if (mainContainer != null) {
                mainContainer.removeAllViews();
                // Blocked by default so the widgets never steal the D-pad from the home
                // shortcuts. Edit mode lifts this for as long as it runs.
                mainContainer.setDescendantFocusability(ViewGroup.FOCUS_BLOCK_DESCENDANTS);

                List<WidgetItem> p0Widgets = getWidgetsForPage(0);
                if (p0Widgets.isEmpty()) {
                    mainContainer.setVisibility(View.GONE);
                } else {
                    mainContainer.setVisibility(View.VISIBLE);
                    layoutPage0(activity, mainContainer, p0Widgets);
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

    /**
     * Lay out page 0. Each widget sits in its own holder at an absolute offset.
     *
     * The holder exists so long-press has somewhere to live: the widget itself is made
     * view-only (no focus, no clicks) to keep the D-pad free for the home shortcuts,
     * which would otherwise be swallowed by the widget's own content.
     *
     * Gravity.LEFT with leftMargin/topMargin rather than START — Gravity.START would be
     * mirrored under the Hebrew locale and every saved coordinate would jump.
     */
    private void layoutPage0(final Activity activity, final ViewGroup container,
                             List<WidgetItem> widgets) {
        // Measurements are not available yet on this pass — setupHomeWidgets runs from
        // onCreate before the first layout, and clamping against a half-measured
        // container is how a widget ends up squeezed into a 33px strip. Worse, the
        // clamp only ever shrinks, so a bad value sticks. Real clamping happens in
        // clampAllToSurface() once the container reports a usable height.
        int surfaceW = usableWidth(activity, container);
        int surfaceH = usableHeight(activity, container);

        int stackY = 0;
        boolean geometryChanged = false;

        for (final WidgetItem item : widgets) {
            AppWidgetProviderInfo info = this.mAppWidgetManager.getAppWidgetInfo(item.id);
            if (info == null) continue;

            if (!item.hasGeometry()) {
                // First appearance: full width, a sensible height, stacked downwards.
                item.x = 0;
                item.y = stackY;
                item.w = surfaceW;
                item.h = DEFAULT_WIDGET_H_PX;
                geometryChanged = true;
            }
            clampToSurface(item, surfaceW, surfaceH);
            stackY = Math.min(item.y + item.h, Math.max(0, surfaceH - DEFAULT_WIDGET_H_PX));

            try {
                AppWidgetHostView hostView = this.mAppWidgetHost.createView(activity, item.id, info);
                hostView.setAppWidget(item.id, info);
                makeViewOnly(hostView);

                final FrameLayout holder = new FrameLayout(activity);
                holder.addView(hostView, new FrameLayout.LayoutParams(
                        ViewGroup.LayoutParams.MATCH_PARENT,
                        ViewGroup.LayoutParams.MATCH_PARENT));
                holder.setLongClickable(true);
                holder.setOnLongClickListener(new View.OnLongClickListener() {
                    @Override
                    public boolean onLongClick(View v) {
                        beginEdit(activity, container, holder, item);
                        return true;
                    }
                });

                FrameLayout.LayoutParams lp = new FrameLayout.LayoutParams(item.w, item.h);
                lp.gravity = Gravity.LEFT | Gravity.TOP;
                lp.leftMargin = item.x;
                lp.topMargin = item.y;
                container.addView(holder, lp);
            } catch (Exception e) {
                Log.e(TAG, "Error creating page 0 widget " + item.id, e);
            }
        }

        if (geometryChanged) {
            saveWidgetList(getMergedList(widgets));
        }

        // Now that the views are attached, wait for a real measurement and only then
        // enforce the bounds.
        container.post(new Runnable() {
            @Override
            public void run() {
                clampAllToSurface(activity, container);
            }
        });

        // Did the settings screen ask us to open one for editing? Consumed once, and
        // posted so the container has been measured — clampToSurface needs real width
        // and height, which are still zero at this point in the layout pass.
        final int pending =
                com.sprd.classichome.settings.LauncherSettings.takePendingWidgetEdit(activity);
        if (pending != -1) {
            container.post(new Runnable() {
                @Override
                public void run() {
                    beginEditById(activity, container, pending);
                }
            });
        }
    }

    /**
     * Usable width/height of the widget surface.
     *
     * A measured container is authoritative, but only once it reports something
     * plausible. Below MIN_USABLE_PX it is still mid-layout, and trusting it would
     * permanently shrink whatever is inside.
     */
    private static final int MIN_USABLE_PX = 60;

    private static int usableWidth(Activity activity, ViewGroup container) {
        int w = container.getWidth();
        if (w >= MIN_USABLE_PX) return w;
        return activity.getResources().getDisplayMetrics().widthPixels;
    }

    private static int usableHeight(Activity activity, ViewGroup container) {
        int h = container.getHeight();
        if (h >= MIN_USABLE_PX) return h;
        return activity.getResources().getDisplayMetrics().heightPixels;
    }

    /** Enforce bounds once, against a container that has actually been measured. */
    private void clampAllToSurface(Activity activity, ViewGroup container) {
        int surfaceW = container.getWidth();
        int surfaceH = container.getHeight();
        if (surfaceW < MIN_USABLE_PX || surfaceH < MIN_USABLE_PX) return;

        List<WidgetItem> p0 = getWidgetsForPage(0);
        boolean changed = false;
        int index = 0;
        for (int i = 0; i < container.getChildCount() && index < p0.size(); i++) {
            View child = container.getChildAt(i);
            if (!(child instanceof FrameLayout) || child == mEditHint) continue;
            WidgetItem item = p0.get(index++);
            int ox = item.x, oy = item.y, ow = item.w, oh = item.h;
            clampToSurface(item, surfaceW, surfaceH);
            if (ox != item.x || oy != item.y || ow != item.w || oh != item.h) {
                changed = true;
                FrameLayout.LayoutParams lp = (FrameLayout.LayoutParams) child.getLayoutParams();
                lp.width = item.w;
                lp.height = item.h;
                lp.leftMargin = item.x;
                lp.topMargin = item.y;
                child.setLayoutParams(lp);
            }
        }
        if (changed) {
            saveWidgetList(getMergedList(p0));
        }
    }

    private void beginEditById(Activity activity, ViewGroup container, int appWidgetId) {
        List<WidgetItem> p0 = getWidgetsForPage(0);
        int index = 0;
        for (WidgetItem item : p0) {
            if (item.id == appWidgetId) {
                int seen = 0;
                for (int i = 0; i < container.getChildCount(); i++) {
                    View child = container.getChildAt(i);
                    if (!(child instanceof FrameLayout) || child == mEditHint) continue;
                    if (seen == index) {
                        beginEdit(activity, container, child, item);
                        return;
                    }
                    seen++;
                }
                return;
            }
            index++;
        }
        Toast.makeText(activity, "הווידג'ט נמצא בעמוד אחר, לא במסך הראשי",
                Toast.LENGTH_SHORT).show();
    }

    // --- Edit mode -------------------------------------------------------------
    //
    // Entered by long-pressing a widget — with the mouse when StarMouseApp has it
    // switched on, and reachable from a mapped key otherwise. Everything inside is
    // driven by the D-pad, because the mouse cannot be assumed: enabling it belongs
    // to StarMouseApp, not to the launcher.

    private View mEditHolder;
    private WidgetItem mEditItem;
    private TextView mEditHint;
    /** 0 = move the whole widget, 1..4 = drag one edge. Cycled with the OK key. */
    private int mEditMode;
    private static final int MODE_MOVE = 0;
    private static final int MODE_LEFT = 1;
    private static final int MODE_TOP = 2;
    private static final int MODE_RIGHT = 3;
    private static final int MODE_BOTTOM = 4;
    private int mOrigX, mOrigY, mOrigW, mOrigH;

    private void beginEdit(final Activity activity, final ViewGroup container,
                           final View holder, final WidgetItem item) {
        if (mEditHolder != null) return;

        mEditHolder = holder;
        mEditItem = item;
        mEditMode = MODE_MOVE;
        mOrigX = item.x;
        mOrigY = item.y;
        mOrigW = item.w;
        mOrigH = item.h;

        // The container blocks descendant focus so widgets never steal the D-pad.
        // Edit mode is the one time we need focus inside it.
        container.setDescendantFocusability(ViewGroup.FOCUS_AFTER_DESCENDANTS);
        holder.setFocusable(true);
        holder.setFocusableInTouchMode(true);
        holder.setBackgroundDrawable(editBorder(0xFF00C0D4));
        holder.requestFocus();

        final AppWidgetProviderInfo info = this.mAppWidgetManager.getAppWidgetInfo(item.id);
        final int resizeMode = (info != null) ? info.resizeMode : AppWidgetProviderInfo.RESIZE_BOTH;

        showEditHint(activity, container, resizeMode);

        holder.setOnKeyListener(new View.OnKeyListener() {
            @Override
            public boolean onKey(View v, int keyCode, KeyEvent event) {
                // Consume DOWN as well as UP. Home.onKeyUp only runs its own handling
                // when startTracking() fired in onKeyDown; letting a DOWN through would
                // hand the key to the launcher and, for '#', open the dialer.
                if (event.getAction() != KeyEvent.ACTION_DOWN) {
                    return isEditKey(keyCode);
                }
                switch (keyCode) {
                    case KeyEvent.KEYCODE_DPAD_LEFT:
                        step(container, -EDIT_STEP_PX, 0);
                        return true;
                    case KeyEvent.KEYCODE_DPAD_RIGHT:
                        step(container, EDIT_STEP_PX, 0);
                        return true;
                    case KeyEvent.KEYCODE_DPAD_UP:
                        step(container, 0, -EDIT_STEP_PX);
                        return true;
                    case KeyEvent.KEYCODE_DPAD_DOWN:
                        step(container, 0, EDIT_STEP_PX);
                        return true;
                    case KeyEvent.KEYCODE_DPAD_CENTER:
                    case KeyEvent.KEYCODE_ENTER:
                        // OK walks the modes: move, then each edge in turn, then back
                        // to move. Edges the provider refuses to resize are skipped, so
                        // the cycle never stops somewhere the arrows do nothing.
                        mEditMode = nextMode(mEditMode, resizeMode);
                        updateEditHint(resizeMode);
                        return true;
                    case KeyEvent.KEYCODE_BACK:
                        commitEdit(activity, container, true);
                        return true;
                    case KeyEvent.KEYCODE_POUND:
                        commitEdit(activity, container, false);
                        return true;
                    default:
                        return false;
                }
            }
        });
    }

    /**
     * Keyboard entry into edit mode.
     *
     * Page-0 widgets are deliberately not focusable, so the D-pad can never land on
     * one to long-press it. Without this, edit mode would be mouse-only — and whether
     * the mouse is on is StarMouseApp's decision, not ours.
     *
     * Edits the first widget on page 0; the arrows then move it, so reaching the
     * others is a matter of exiting and re-entering on the next one.
     */
    public boolean beginEditFromKey(Activity activity) {
        if (activity == null) return false;
        if (mEditHolder != null) return true; // already editing
        try {
            int id = activity.getResources().getIdentifier(
                    "widget_container_page1", "id", activity.getPackageName());
            View v = activity.findViewById(id);
            if (!(v instanceof ViewGroup)) return false;
            ViewGroup container = (ViewGroup) v;

            List<WidgetItem> p0 = getWidgetsForPage(0);
            if (p0.isEmpty()) {
                Toast.makeText(activity, "אין ווידג'טים במסך הראשי", Toast.LENGTH_SHORT).show();
                return true;
            }
            for (int i = 0; i < container.getChildCount(); i++) {
                View child = container.getChildAt(i);
                if (child instanceof FrameLayout && child != mEditHint) {
                    beginEdit(activity, container, child, p0.get(0));
                    return true;
                }
            }
        } catch (Throwable t) {
            Log.e(TAG, "Could not enter widget edit mode", t);
        }
        return false;
    }

    private static boolean isEditKey(int keyCode) {
        return keyCode == KeyEvent.KEYCODE_DPAD_LEFT || keyCode == KeyEvent.KEYCODE_DPAD_RIGHT
                || keyCode == KeyEvent.KEYCODE_DPAD_UP || keyCode == KeyEvent.KEYCODE_DPAD_DOWN
                || keyCode == KeyEvent.KEYCODE_POUND || keyCode == KeyEvent.KEYCODE_DPAD_CENTER
                || keyCode == KeyEvent.KEYCODE_ENTER || keyCode == KeyEvent.KEYCODE_BACK;
    }

    private static boolean canResizeH(int resizeMode) {
        return resizeMode == AppWidgetProviderInfo.RESIZE_BOTH
                || resizeMode == AppWidgetProviderInfo.RESIZE_HORIZONTAL;
    }

    private static boolean canResizeV(int resizeMode) {
        return resizeMode == AppWidgetProviderInfo.RESIZE_BOTH
                || resizeMode == AppWidgetProviderInfo.RESIZE_VERTICAL;
    }

    /** Next mode the OK key should land on, skipping edges this provider won't resize. */
    private static int nextMode(int mode, int resizeMode) {
        for (int i = 0; i < 5; i++) {
            mode = (mode + 1) % 5;
            if (mode == MODE_MOVE) return mode;
            if ((mode == MODE_LEFT || mode == MODE_RIGHT) && canResizeH(resizeMode)) return mode;
            if ((mode == MODE_TOP || mode == MODE_BOTTOM) && canResizeV(resizeMode)) return mode;
        }
        return MODE_MOVE;
    }

    /**
     * Apply one arrow press to whatever the current mode addresses.
     *
     * Dragging the left or top edge changes position and size together: the opposite
     * edge has to stay put, which is the whole point of picking an edge rather than
     * just growing the widget right and down.
     */
    private void step(ViewGroup container, int dx, int dy) {
        if (mEditItem == null || mEditHolder == null) return;

        switch (mEditMode) {
            case MODE_MOVE:
                mEditItem.x += dx;
                mEditItem.y += dy;
                break;
            case MODE_LEFT:
                // Right edge is anchored: move x and compensate in w.
                if (mEditItem.w - dx >= MIN_WIDGET_PX) {
                    mEditItem.x += dx;
                    mEditItem.w -= dx;
                }
                break;
            case MODE_RIGHT:
                if (mEditItem.w + dx >= MIN_WIDGET_PX) {
                    mEditItem.w += dx;
                }
                break;
            case MODE_TOP:
                // Bottom edge anchored.
                if (mEditItem.h - dy >= MIN_WIDGET_PX) {
                    mEditItem.y += dy;
                    mEditItem.h -= dy;
                }
                break;
            case MODE_BOTTOM:
                if (mEditItem.h + dy >= MIN_WIDGET_PX) {
                    mEditItem.h += dy;
                }
                break;
            default:
                break;
        }

        clampToSurface(mEditItem, container.getWidth(), container.getHeight());

        FrameLayout.LayoutParams lp = (FrameLayout.LayoutParams) mEditHolder.getLayoutParams();
        lp.width = mEditItem.w;
        lp.height = mEditItem.h;
        lp.leftMargin = mEditItem.x;
        lp.topMargin = mEditItem.y;
        mEditHolder.setLayoutParams(lp);
    }

    private void commitEdit(Activity activity, ViewGroup container, boolean save) {
        if (mEditItem == null) return;

        if (save) {
            saveGeometry(mEditItem.id, mEditItem.x, mEditItem.y, mEditItem.w, mEditItem.h);
            applyWidgetSize(mEditItem);
            Toast.makeText(activity, "נשמר", Toast.LENGTH_SHORT).show();
        } else {
            mEditItem.x = mOrigX;
            mEditItem.y = mOrigY;
            mEditItem.w = mOrigW;
            mEditItem.h = mOrigH;
            FrameLayout.LayoutParams lp = (FrameLayout.LayoutParams) mEditHolder.getLayoutParams();
            lp.width = mOrigW;
            lp.height = mOrigH;
            lp.leftMargin = mOrigX;
            lp.topMargin = mOrigY;
            mEditHolder.setLayoutParams(lp);
        }

        mEditHolder.setOnKeyListener(null);
        mEditHolder.setBackgroundDrawable(null);
        mEditHolder.setFocusable(false);
        mEditHolder.setFocusableInTouchMode(false);
        container.setDescendantFocusability(ViewGroup.FOCUS_BLOCK_DESCENDANTS);
        hideEditHint(container);

        mEditHolder = null;
        mEditItem = null;
        mEditMode = MODE_MOVE;
    }

    /**
     * Tell the provider its new size.
     *
     * Only informational — what the user sees comes from the LayoutParams above. A
     * provider that ignores options simply gets clipped rather than reflowing.
     *
     * Called on commit rather than on every layout pass: updateAppWidgetSize does a
     * getAppWidgetOptions Binder round trip first, and setupHomeWidgets runs on every
     * onResume.
     */
    private void applyWidgetSize(WidgetItem item) {
        try {
            float density = mContext.getResources().getDisplayMetrics().density;
            int wDp = (int) (item.w / density);
            int hDp = (int) (item.h / density);
            Bundle options = this.mAppWidgetManager.getAppWidgetOptions(item.id);
            if (options == null) options = new Bundle();
            options.putInt(AppWidgetManager.OPTION_APPWIDGET_MIN_WIDTH, wDp);
            options.putInt(AppWidgetManager.OPTION_APPWIDGET_MAX_WIDTH, wDp);
            options.putInt(AppWidgetManager.OPTION_APPWIDGET_MIN_HEIGHT, hDp);
            options.putInt(AppWidgetManager.OPTION_APPWIDGET_MAX_HEIGHT, hDp);
            this.mAppWidgetManager.updateAppWidgetOptions(item.id, options);
        } catch (Throwable t) {
            Log.w(TAG, "Could not push widget size options", t);
        }
    }

    private static GradientDrawable editBorder(int color) {
        GradientDrawable d = new GradientDrawable();
        d.setShape(GradientDrawable.RECTANGLE);
        d.setColor(Color.TRANSPARENT);
        d.setStroke(2, color);
        return d;
    }

    private void showEditHint(Activity activity, ViewGroup container, int resizeMode) {
        mEditHint = new TextView(activity);
        // 240px wide at density 0.75: 12sp is 9px, about the smallest that stays
        // readable here, and the text is split over two lines so it cannot be cut off.
        mEditHint.setTextSize(12.0f);
        mEditHint.setTextColor(0xFFFFFFFF);
        mEditHint.setBackgroundColor(0xCC000000);
        mEditHint.setGravity(Gravity.CENTER);
        mEditHint.setPadding(4, 3, 4, 3);
        FrameLayout.LayoutParams lp = new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.WRAP_CONTENT);
        lp.gravity = Gravity.LEFT | Gravity.BOTTOM;
        container.addView(mEditHint, lp);
        updateEditHint(resizeMode);
    }

    private void updateEditHint(int resizeMode) {
        if (mEditHint == null) return;
        String what;
        switch (mEditMode) {
            case MODE_LEFT:   what = "צד שמאל"; break;
            case MODE_RIGHT:  what = "צד ימין"; break;
            case MODE_TOP:    what = "צד עליון"; break;
            case MODE_BOTTOM: what = "צד תחתון"; break;
            default:          what = "הזזה"; break;
        }
        // All-Hebrew: a Latin token at the start of an RTL line is reordered to the end
        // by the bidi algorithm, which read as "...ביטולOK" on screen.
        String cycle = (resizeMode == AppWidgetProviderInfo.RESIZE_NONE)
                ? "" : " · אישור מחליף צד";
        mEditHint.setText(what + " · חיצים" + cycle
                + System.getProperty("line.separator")
                + "חזור לשמירה · סולמית לביטול");
    }

    private void hideEditHint(ViewGroup container) {
        if (mEditHint != null) {
            container.removeView(mEditHint);
            mEditHint = null;
        }
    }

    /** Forget every saved position and size; the next layout re-stacks from scratch. */
    public synchronized void resetPage0Layout() {
        List<WidgetItem> list = getWidgetList();
        for (WidgetItem item : list) {
            item.x = -1;
            item.y = -1;
            item.w = -1;
            item.h = -1;
        }
        saveWidgetList(list);
    }

    /** Merge freshly computed page-0 geometry back into the full stored list. */
    private List<WidgetItem> getMergedList(List<WidgetItem> updated) {
        List<WidgetItem> all = getWidgetList();
        for (WidgetItem stored : all) {
            for (WidgetItem u : updated) {
                if (stored.id == u.id) {
                    stored.x = u.x;
                    stored.y = u.y;
                    stored.w = u.w;
                    stored.h = u.h;
                }
            }
        }
        return all;
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
        if (activity == null || info == null || info.provider == null) return;
        if (this.mPendingWidgetId != -1) {
            Toast.makeText(activity, "פעולת ווידג'ט קודמת עדיין בתהליך", Toast.LENGTH_SHORT).show();
            return;
        }
        int appWidgetId = this.mAppWidgetHost.allocateAppWidgetId();
        this.mPendingWidgetId = appWidgetId;
        this.mPendingTargetPage = targetPage;
        this.mPendingPkg = info.provider != null ? info.provider.getPackageName() : "";
        this.mPendingLabel = (info.label != null && !info.label.isEmpty()) ? info.label : "ווידג'ט";
        this.mPendingConfigureComponent = info.configure;
        this.mPendingConfigurationStarted = false;

        boolean allowed = false;
        try {
            allowed = this.mAppWidgetManager.bindAppWidgetIdIfAllowed(appWidgetId, info.provider);
        } catch (Exception e) {
            Log.w(TAG, "bindAppWidgetIdIfAllowed failed", e);
        }

        if (!allowed) {
            try {
                Intent intent = new Intent(AppWidgetManager.ACTION_APPWIDGET_BIND);
                intent.putExtra(AppWidgetManager.EXTRA_APPWIDGET_ID, appWidgetId);
                intent.putExtra(AppWidgetManager.EXTRA_APPWIDGET_PROVIDER, info.provider);
                activity.startActivityForResult(intent, REQUEST_CREATE_WIDGET);
            } catch (Exception e) {
                Log.e(TAG, "Unable to start widget bind flow", e);
                deletePendingWidgetId();
                resetPendingWidget();
            }
            return;
        }

        if (info.configure != null) {
            try {
                startConfigurationActivity(activity, appWidgetId, info.configure);
            } catch (Exception e) {
                Log.e(TAG, "Unable to start widget configuration", e);
                deletePendingWidgetId();
                resetPendingWidget();
            }
        } else {
            finalizeWidgetAdd(activity, appWidgetId, targetPage, mPendingPkg, mPendingLabel);
        }
    }

    private void finalizeWidgetAdd(Activity activity, int appWidgetId, int targetPage, String pkg, String label) {
        if (appWidgetId == -1 || activity == null) return;
        if (this.mAppWidgetManager.getAppWidgetInfo(appWidgetId) == null) {
            Log.w(TAG, "Skipping invalid widget id " + appWidgetId);
            deletePendingWidgetId();
            resetPendingWidget();
            return;
        }
        addWidget(new WidgetItem(appWidgetId, targetPage, pkg, label));
        Toast.makeText(activity, "הווידג'ט נוסף בהצלחה", Toast.LENGTH_SHORT).show();
        notifyActivityRefresh(activity);
        resetPendingWidget();
    }

    private void startConfigurationActivity(Activity activity, int appWidgetId, ComponentName component) {
        if (activity == null || component == null) return;
        Intent intent = new Intent(AppWidgetManager.ACTION_APPWIDGET_CONFIGURE);
        intent.setComponent(component);
        intent.putExtra(AppWidgetManager.EXTRA_APPWIDGET_ID, appWidgetId);
        this.mPendingConfigurationStarted = true;
        activity.startActivityForResult(intent, REQUEST_CREATE_WIDGET);
    }

    private void deletePendingWidgetId() {
        if (this.mPendingWidgetId != -1) {
            try {
                this.mAppWidgetHost.deleteAppWidgetId(this.mPendingWidgetId);
            } catch (Exception e) {
                Log.e(TAG, "Error deleting pending widget id", e);
            }
        }
    }

    private void resetPendingWidget() {
        this.mPendingWidgetId = -1;
        this.mPendingTargetPage = 1;
        this.mPendingPkg = "";
        this.mPendingLabel = "";
        this.mPendingConfigureComponent = null;
        this.mPendingConfigurationStarted = false;
    }

    public void handleActivityResult(Activity activity, int requestCode, int resultCode, Intent data) {
        if (requestCode == REQUEST_CREATE_WIDGET) {
            int appWidgetId = (data != null) ? data.getIntExtra(AppWidgetManager.EXTRA_APPWIDGET_ID, this.mPendingWidgetId) : this.mPendingWidgetId;
            if (resultCode == Activity.RESULT_OK && appWidgetId != -1) {
                if (this.mPendingWidgetId != -1 && !this.mPendingConfigurationStarted && this.mPendingConfigureComponent != null) {
                    startConfigurationActivity(activity, appWidgetId, this.mPendingConfigureComponent);
                    return;
                }
                if (this.mPendingWidgetId != -1) {
                    finalizeWidgetAdd(activity, appWidgetId, this.mPendingTargetPage, this.mPendingPkg, this.mPendingLabel);
                }
            } else if (appWidgetId != -1) {
                try {
                    this.mAppWidgetHost.deleteAppWidgetId(appWidgetId);
                } catch (Exception e) {
                    Log.e(TAG, "Error deleting cancelled widget id", e);
                }
                resetPendingWidget();
            }
        }
    }
}
