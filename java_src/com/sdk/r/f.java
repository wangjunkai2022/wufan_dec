package com.sdk.r;
/* loaded from: classes4.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    public static f f56695a;

    /* renamed from: b  reason: collision with root package name */
    public com.sdk.s.a f56696b;

    /* renamed from: c  reason: collision with root package name */
    public final String f56697c;

    public f() {
        com.sdk.s.a gVar;
        int i2 = com.sdk.v.a.f56703d;
        this.f56697c = com.sdk.v.a.f56701b;
        if (i2 == 0) {
            gVar = new com.sdk.s.b();
        } else if (i2 != 2) {
            return;
        } else {
            gVar = new g();
        }
        this.f56696b = gVar;
    }

    public static f a() {
        if (f56695a == null) {
            f56695a = new f();
        }
        return f56695a;
    }
}
