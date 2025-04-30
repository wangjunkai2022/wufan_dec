package com.swift.sandhook.xposedcompat.utils;

import android.util.Log;
import com.swift.sandhook.HookLog;
import java.lang.reflect.Member;
/* loaded from: classes4.dex */
public class DexLog {
    public static boolean DEBUG = HookLog.DEBUG;
    public static final String TAG = "SandXposed";

    public static int d(String s3) {
        return Log.d("SandXposed", s3);
    }

    public static int e(String s3) {
        return Log.e("SandXposed", s3);
    }

    public static int i(String s3) {
        return Log.i("SandXposed", s3);
    }

    public static void printCallOriginError(Member member) {
        if (member != null) {
            StringBuilder sb = new StringBuilder();
            sb.append("method <");
            sb.append(member.toString());
            sb.append("> call origin error!");
        }
    }

    public static void printMethodHookIn(Member member) {
        if (!DEBUG || member == null) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("method <");
        sb.append(member.toString());
        sb.append("> hook in");
    }

    public static int v(String s3) {
        return Log.v("SandXposed", s3);
    }

    public static int w(String s3) {
        return Log.w("SandXposed", s3);
    }

    public static int e(String s3, Throwable t3) {
        return Log.e("SandXposed", s3, t3);
    }
}
