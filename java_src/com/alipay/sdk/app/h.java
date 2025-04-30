package com.alipay.sdk.app;
/* loaded from: classes2.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    public static String f9601a;

    public static String a() {
        i a4 = i.a(i.CANCELED.a());
        return b(a4.a(), a4.b(), "");
    }

    public static String b(int i2, String str, String str2) {
        return "resultStatus={" + i2 + "};memo={" + str + "};result={" + str2 + "}";
    }

    private static void c(String str) {
        f9601a = str;
    }

    private static String d() {
        return f9601a;
    }

    private static String e() {
        i a4 = i.a(i.DOUBLE_REQUEST.a());
        return b(a4.a(), a4.b(), "");
    }

    private static String f() {
        i a4 = i.a(i.PARAMS_ERROR.a());
        return b(a4.a(), a4.b(), "");
    }
}
