package android.os;

/**
 * COMPILE-TIME STUB ONLY — never packaged into the APK.
 *
 * android.os.SystemProperties is @hide in the public SDK but present on every
 * device. Verified absent from tools/android-19/android.jar, which is why the
 * stub is needed.
 *
 * Used by FeatureBarHelper:316 — SystemProperties.getBoolean(...). The rest of
 * the accessors are included because they are the standard surface and cost
 * nothing.
 */
public class SystemProperties {

    public static String get(String key) {
        throw new RuntimeException("stub");
    }

    public static String get(String key, String def) {
        throw new RuntimeException("stub");
    }

    public static boolean getBoolean(String key, boolean def) {
        throw new RuntimeException("stub");
    }

    public static int getInt(String key, int def) {
        throw new RuntimeException("stub");
    }

    public static long getLong(String key, long def) {
        throw new RuntimeException("stub");
    }

    public static void set(String key, String val) {
        throw new RuntimeException("stub");
    }
}
