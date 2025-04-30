package com.swift.sandhook;

import android.util.Log;
/* loaded from: classes.dex */
public class HookLog {
    public static boolean DEBUG = SandHookConfig.DEBUG;
    public static final String TAG = "SandHook";

    public static int d(String s3) {
        return Log.d(TAG, s3);
    }

    public static int e(String s3) {
        return Log.e(TAG, s3);
    }

    public static int i(String s3) {
        return Log.i(TAG, s3);
    }

    public static int v(String s3) {
        return Log.v(TAG, s3);
    }

    public static int w(String s3) {
        return Log.w(TAG, s3);
    }

    public static int e(String s3, Throwable t3) {
        return Log.e(TAG, s3, t3);
    }
}
