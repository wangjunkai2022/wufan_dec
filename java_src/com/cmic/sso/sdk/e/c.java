package com.cmic.sso.sdk.e;
/* compiled from: LogUtils.java */
/* loaded from: classes2.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static final c f10918a = new c();

    /* renamed from: b  reason: collision with root package name */
    private static boolean f10919b = false;

    public static void a(boolean z3) {
        f10919b = z3;
    }

    public static void b(String str, String str2) {
        if (f10919b) {
            StringBuilder sb = new StringBuilder();
            sb.append("CMCC-SDK:");
            sb.append(str);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("");
            sb2.append(str2);
        }
    }

    public static void a(String str, String str2) {
        if (f10919b) {
            StringBuilder sb = new StringBuilder();
            sb.append("CMCC-SDK:");
            sb.append(str);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("");
            sb2.append(str2);
        }
    }
}
