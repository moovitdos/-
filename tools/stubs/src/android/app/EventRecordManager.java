package android.app;

import android.content.Context;

/**
 * COMPILE-TIME STUB ONLY — never packaged into the APK.
 *
 * The real class ships in the Duoqin framework on the device. This file exists
 * solely so javac can resolve the signatures used by MainMenuActivity,
 * BaseListActivity and PreviewWallpaperActivity.
 *
 * Signatures were derived from the actual call sites:
 *   EventRecordManager.getInstance(this)
 *   EventRecordManager.getInstance(this).onEvent("OPEN_BROWSER", "")
 */
public class EventRecordManager {

    public static EventRecordManager getInstance(Context context) {
        throw new RuntimeException("stub");
    }

    public void onEvent(String event, String extra) {
        throw new RuntimeException("stub");
    }
}
