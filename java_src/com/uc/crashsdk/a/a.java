package com.uc.crashsdk.a;

import com.uc.crashsdk.JNIBridge;
/* compiled from: ProGuard */
/* loaded from: classes4.dex */
public final class a {
    public static void a(String str) {
        com.uc.crashsdk.g.M();
    }

    public static void b(String str) {
        com.uc.crashsdk.g.M();
    }

    public static void c(String str, String str2) {
        if (com.uc.crashsdk.b.f60229d) {
            JNIBridge.nativeLog(5, str, str2);
        }
    }

    public static void d(String str, String str2) {
        if (com.uc.crashsdk.b.f60229d) {
            JNIBridge.nativeLog(6, str, str2);
        }
    }

    public static void a(String str, String str2) {
        com.uc.crashsdk.g.M();
    }

    public static void b(String str, String str2) {
        if (com.uc.crashsdk.b.f60229d) {
            JNIBridge.nativeLog(4, str, str2);
        }
    }

    public static void a(String str, String str2, Throwable th) {
        com.uc.crashsdk.g.M();
    }
}
