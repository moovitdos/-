package com.sprd.classichome.mainmenu;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.util.Log;
import com.sprd.classichome.widget.WidgetHostManager;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;

public class MainMenuWidgetHelper {
    private static final String TAG = "MainMenuWidgetHelper";

    public static boolean handleItemLongClick(final Activity activity, final Object itemTag) {
        if (activity == null || itemTag == null) {
            return false;
        }

        String pkg = "";
        CharSequence title = "יישום";

        try {
            Field pkgField = itemTag.getClass().getField("pkgName");
            Object pkgVal = pkgField.get(itemTag);
            if (pkgVal != null) {
                pkg = pkgVal.toString();
            }

            Field titleField = itemTag.getClass().getField("title");
            Object titleVal = titleField.get(itemTag);
            if (titleVal != null && (titleVal instanceof CharSequence)) {
                title = (CharSequence) titleVal;
            }
        } catch (Exception e) {
            Log.e(TAG, "Error inspecting itemTag", e);
            return false;
        }

        final String packageName = pkg;
        if (packageName.isEmpty()) {
            return false;
        }

        WidgetHostManager manager = WidgetHostManager.getInstance(activity);
        int maxPage = manager.getMaxPage();
        if (maxPage < 1) maxPage = 1;

        final List<String> options = new ArrayList<>();
        final List<Integer> pageTargets = new ArrayList<>();

        // Option 0: Main Screen (View Only)
        options.add("הוסף למסך הראשי (צפייה בלבד)");
        pageTargets.add(0);

        // Existing widget pages
        for (int p = 1; p <= maxPage; p++) {
            options.add("הוסף לעמוד ווידג'טים " + p);
            pageTargets.add(p);
        }

        // New widget page
        options.add("הוסף לעמוד ווידג'טים חדש (" + (maxPage + 1) + ")");
        pageTargets.add(maxPage + 1);

        // App details
        options.add("פרטי יישום");
        final int appDetailsIndex = options.size() - 1;

        CharSequence[] items = options.toArray(new CharSequence[0]);

        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        builder.setTitle(title);
        builder.setItems(items, new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which) {
                if (which == appDetailsIndex) {
                    Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
                    intent.setData(Uri.fromParts("package", packageName, null));
                    intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                    activity.startActivity(intent);
                } else {
                    int targetPage = pageTargets.get(which);
                    WidgetHostManager.getInstance(activity).addWidgetFromPackage(activity, packageName, targetPage);
                }
            }
        });
        builder.setNegativeButton("ביטול", null);
        builder.show();
        return true;
    }

    public static void handleActivityResult(Activity activity, int requestCode, int resultCode, Intent data) {
        WidgetHostManager.getInstance(activity).handleActivityResult(activity, requestCode, resultCode, data);
    }
}
