package com.sprd.common.util;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.PrintStream;

/* loaded from: classes.dex */
public class FlashlightController {
    private static final String SWITCH_ON = SystemPropertiesUtils.get("ro.flashlight.on_value", "1");
    private static final String SWITCH_OFF = SystemPropertiesUtils.get("ro.flashlight.off_value", "0");
    private static final String FLASH_PATH = SystemPropertiesUtils.get("ro.flashlight.node", "/sys/class/flashlight/torch/enable");
    private static final int VALID_INDEX = SWITCH_ON.length();

    public static boolean turnOnFlashlight(boolean force) {
        if (force) {
            return writeFile(SWITCH_ON);
        }
        return isFlashlightOn() || turnOnFlashlight(true);
    }

    public static boolean turnOffFlashlight(boolean force) {
        if (force) {
            return writeFile(SWITCH_OFF);
        }
        return !isFlashlightOn() || turnOffFlashlight(true);
    }

    private static boolean isFlashlightOn() {
        return SWITCH_ON.equals(readFile());
    }

    public static boolean switchFlashlight() {
        boolean ret;
        if (isFlashlightOn()) {
            if (LogUtils.DEBUG) {
                LogUtils.i("FlashlightController", "switchFlashlight, will close.");
            }
            ret = turnOffFlashlight(true);
        } else {
            if (LogUtils.DEBUG) {
                LogUtils.i("FlashlightController", "switchFlashlight, will open.");
            }
            ret = turnOnFlashlight(true);
        }
        if (LogUtils.DEBUG) {
            LogUtils.d("FlashlightController", "switchFlashlight, ret:" + ret);
        }
        return ret;
    }

    private static String readFile() throws Throwable {
        String str = "";
        File flashFile = new File(FLASH_PATH);
        if (flashFile.exists()) {
            BufferedReader reader = null;
            try {
                try {
                    BufferedReader reader2 = new BufferedReader(new FileReader(flashFile));
                    while (true) {
                        try {
                            String line = reader2.readLine();
                            if (line == null) {
                                break;
                            }
                            str = str + line;
                        } catch (Exception e) {
                            e = e;
                            reader = reader2;
                            LogUtils.d("FlashlightController", "Read file error!!!");
                            str = "readError";
                            e.printStackTrace();
                            if (reader != null) {
                                try {
                                    reader.close();
                                } catch (Exception e2) {
                                    e2.printStackTrace();
                                }
                            }
                            LogUtils.d("FlashlightController", "read value is " + str.trim());
                            return str.trim();
                        } catch (Throwable th) {
                            th = th;
                            reader = reader2;
                            if (reader != null) {
                                try {
                                    reader.close();
                                } catch (Exception e22) {
                                    e22.printStackTrace();
                                }
                            }
                            throw th;
                        }
                    }
                    int length = str.length();
                    if (length >= VALID_INDEX) {
                        str = str.substring(length - VALID_INDEX, length);
                    }
                    if (reader2 != null) {
                        try {
                            reader2.close();
                        } catch (Exception e23) {
                            e23.printStackTrace();
                        }
                    }
                } catch (Exception e3) {
                    e = e3;
                }
                LogUtils.d("FlashlightController", "read value is " + str.trim());
            } catch (Throwable th2) {
                th = th2;
            }
        } else {
            LogUtils.d("FlashlightController", "File is not exist");
        }
        return str.trim();
    }

    private static boolean writeFile(String str) throws Throwable {
        FileOutputStream out;
        PrintStream p;
        boolean flag = true;
        FileOutputStream out2 = null;
        PrintStream p2 = null;
        File flashFile = new File(FLASH_PATH);
        if (flashFile.exists()) {
            try {
                try {
                    out = new FileOutputStream(FLASH_PATH);
                    try {
                        p = new PrintStream(out);
                    } catch (Exception e) {
                        e = e;
                        out2 = out;
                    } catch (Throwable th) {
                        th = th;
                        out2 = out;
                    }
                } catch (Exception e2) {
                    e = e2;
                }
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                p.print(str);
                if (out != null) {
                    try {
                        out.close();
                    } catch (Exception e22) {
                        e22.printStackTrace();
                    }
                }
                if (p != null) {
                    try {
                        p.close();
                    } catch (Exception e23) {
                        e23.printStackTrace();
                    }
                }
            } catch (Exception e3) {
                e = e3;
                p2 = p;
                out2 = out;
                flag = false;
                LogUtils.d("FlashlightController", "Write file error!!!");
                e.printStackTrace();
                if (out2 != null) {
                    try {
                        out2.close();
                    } catch (Exception e24) {
                        e24.printStackTrace();
                    }
                }
                if (p2 != null) {
                    try {
                        p2.close();
                    } catch (Exception e25) {
                        e25.printStackTrace();
                    }
                }
                return flag;
            } catch (Throwable th3) {
                th = th3;
                p2 = p;
                out2 = out;
                if (out2 != null) {
                    try {
                        out2.close();
                    } catch (Exception e26) {
                        e26.printStackTrace();
                    }
                }
                if (p2 != null) {
                    try {
                        p2.close();
                    } catch (Exception e27) {
                        e27.printStackTrace();
                    }
                }
                throw th;
            }
        } else {
            LogUtils.d("FlashlightController", "File is not exist");
        }
        return flag;
    }
}
