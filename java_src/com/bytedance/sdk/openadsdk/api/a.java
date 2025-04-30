package com.bytedance.sdk.openadsdk.api;
/* compiled from: TTLogger.java */
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f10504a = false;

    /* renamed from: b  reason: collision with root package name */
    private static int f10505b = 4;

    public static void a(int i2) {
        f10505b = i2;
    }

    public static void a(String str, String str2) {
    }

    public static void a(String str, String str2, Throwable th) {
    }

    public static void b(String str, String str2) {
    }

    public static void b(String str, String str2, Throwable th) {
    }

    public static void c(String str, String str2) {
    }

    public static void d(String str, String str2) {
    }

    public static void e(String str, String str2) {
    }

    public static void a() {
        f10504a = true;
        a(3);
    }

    public static void a(String str) {
        if (f10504a) {
            d("TTLogger", str);
        }
    }
}
