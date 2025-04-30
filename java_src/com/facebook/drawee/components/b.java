package com.facebook.drawee.components;
/* compiled from: RetryManager.java */
/* loaded from: classes2.dex */
public class b {

    /* renamed from: d  reason: collision with root package name */
    private static final int f11922d = 4;

    /* renamed from: a  reason: collision with root package name */
    private boolean f11923a;

    /* renamed from: b  reason: collision with root package name */
    private int f11924b;

    /* renamed from: c  reason: collision with root package name */
    private int f11925c;

    public b() {
        a();
    }

    public static b c() {
        return new b();
    }

    public void a() {
        this.f11923a = false;
        this.f11924b = 4;
        e();
    }

    public boolean b() {
        return this.f11923a;
    }

    public void d() {
        this.f11925c++;
    }

    public void e() {
        this.f11925c = 0;
    }

    public void f(int i2) {
        this.f11924b = i2;
    }

    public void g(boolean z3) {
        this.f11923a = z3;
    }

    public boolean h() {
        return this.f11923a && this.f11925c < this.f11924b;
    }
}
