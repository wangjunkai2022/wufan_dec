package com.xinzhu.overmind.client;

import androidx.annotation.Keep;
import java.io.File;
/* loaded from: classes.dex */
public class VMCore {
    public static final String TAG = "VMCoreJava";

    static {
        try {
            System.loadLibrary("overmind_a");
        } catch (Throwable unused) {
            System.loadLibrary("overmind");
        }
    }

    public static native void addIORule(String targetPath, String relocatePath);

    @Keep
    public static int getCallingUid(int origCallingUid) {
        return origCallingUid;
    }

    public static native void hideXposed();

    public static native void init(int apiLevel, String host_package_name, String mind_package_name, String mind_cache_dir);

    public static native void initClientClassloader(ClassLoader classLoader);

    public static void initLibrary() {
        com.xinzhu.overmind.b.c(TAG, "Call initLibrary.");
    }

    @Keep
    public static String redirectPath(String path) {
        com.xinzhu.overmind.b.c(TAG, "redirectPath " + path + " " + com.xinzhu.overmind.client.hook.f.d().h(path));
        return com.xinzhu.overmind.client.hook.f.d().h(path);
    }

    public static native void waitForNativeDebugger();

    @Keep
    public static File redirectPath(File path) {
        com.xinzhu.overmind.b.c(TAG, "redirectPath " + path + " " + com.xinzhu.overmind.client.hook.f.d().f(path));
        return com.xinzhu.overmind.client.hook.f.d().f(path);
    }
}
