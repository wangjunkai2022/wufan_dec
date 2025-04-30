package com.alipay.android.phone.mrpc.core;
/* loaded from: classes2.dex */
public final class c extends RuntimeException {

    /* renamed from: d  reason: collision with root package name */
    private static final long f9425d = -2875437994101380406L;

    /* renamed from: a  reason: collision with root package name */
    private String f9426a;

    /* renamed from: b  reason: collision with root package name */
    private int f9427b;

    /* renamed from: c  reason: collision with root package name */
    private String f9428c;

    public c(Integer num, String str) {
        super(b(num, str));
        this.f9427b = num.intValue();
        this.f9428c = str;
    }

    public c(Integer num, String str, Throwable th) {
        super(b(num, str), th);
        this.f9427b = num.intValue();
        this.f9428c = str;
    }

    private c(Integer num, Throwable th) {
        super(th);
        this.f9427b = num.intValue();
    }

    private c(String str) {
        super(str);
        this.f9427b = 0;
        this.f9428c = str;
    }

    private String a() {
        return this.f9426a;
    }

    private static String b(Integer num, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("RPCException: ");
        if (num != null) {
            sb.append("[");
            sb.append(num);
            sb.append("]");
        }
        sb.append(" : ");
        if (str != null) {
            sb.append(str);
        }
        return sb.toString();
    }

    private int d() {
        return this.f9427b;
    }

    private String e() {
        return this.f9428c;
    }

    public final void c(String str) {
        this.f9426a = str;
    }
}
