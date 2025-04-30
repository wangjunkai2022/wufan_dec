package com.alipay.android.phone.mrpc.core;
/* loaded from: classes2.dex */
public final class a extends Exception {

    /* renamed from: c  reason: collision with root package name */
    private static final long f9401c = -6320569206365033676L;

    /* renamed from: d  reason: collision with root package name */
    public static final int f9402d = 0;

    /* renamed from: e  reason: collision with root package name */
    public static final int f9403e = 1;

    /* renamed from: f  reason: collision with root package name */
    public static final int f9404f = 2;

    /* renamed from: g  reason: collision with root package name */
    public static final int f9405g = 3;

    /* renamed from: h  reason: collision with root package name */
    public static final int f9406h = 4;

    /* renamed from: i  reason: collision with root package name */
    public static final int f9407i = 5;

    /* renamed from: j  reason: collision with root package name */
    public static final int f9408j = 6;

    /* renamed from: k  reason: collision with root package name */
    public static final int f9409k = 7;

    /* renamed from: l  reason: collision with root package name */
    public static final int f9410l = 8;

    /* renamed from: m  reason: collision with root package name */
    public static final int f9411m = 9;

    /* renamed from: a  reason: collision with root package name */
    private int f9412a;

    /* renamed from: b  reason: collision with root package name */
    private String f9413b;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public a(java.lang.Integer r3, java.lang.String r4) {
        /*
            r2 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "Http Transport error"
            r0.append(r1)
            if (r3 == 0) goto L19
            java.lang.String r1 = "["
            r0.append(r1)
            r0.append(r3)
            java.lang.String r1 = "]"
            r0.append(r1)
        L19:
            java.lang.String r1 = " : "
            r0.append(r1)
            if (r4 == 0) goto L23
            r0.append(r4)
        L23:
            java.lang.String r0 = r0.toString()
            r2.<init>(r0)
            int r3 = r3.intValue()
            r2.f9412a = r3
            r2.f9413b = r4
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alipay.android.phone.mrpc.core.a.<init>(java.lang.Integer, java.lang.String):void");
    }

    private a(String str) {
        super(str);
        this.f9412a = 0;
        this.f9413b = str;
    }

    public final int a() {
        return this.f9412a;
    }

    public final String b() {
        return this.f9413b;
    }
}
