package com.join.mgps.ptr.indicator;

import android.graphics.PointF;
/* compiled from: PtrIndicator.java */
/* loaded from: classes4.dex */
public class a {

    /* renamed from: n  reason: collision with root package name */
    public static final int f51338n = 0;

    /* renamed from: c  reason: collision with root package name */
    private float f51341c;

    /* renamed from: d  reason: collision with root package name */
    private float f51342d;

    /* renamed from: g  reason: collision with root package name */
    private int f51345g;

    /* renamed from: a  reason: collision with root package name */
    protected int f51339a = 0;

    /* renamed from: b  reason: collision with root package name */
    private PointF f51340b = new PointF();

    /* renamed from: e  reason: collision with root package name */
    private int f51343e = 0;

    /* renamed from: f  reason: collision with root package name */
    private int f51344f = 0;

    /* renamed from: h  reason: collision with root package name */
    private int f51346h = 0;

    /* renamed from: i  reason: collision with root package name */
    private float f51347i = 1.2f;

    /* renamed from: j  reason: collision with root package name */
    private float f51348j = 2.7f;

    /* renamed from: k  reason: collision with root package name */
    private boolean f51349k = false;

    /* renamed from: l  reason: collision with root package name */
    private int f51350l = -1;

    /* renamed from: m  reason: collision with root package name */
    private int f51351m = 0;

    public void A() {
        this.f51349k = false;
    }

    public void B() {
        this.f51351m = this.f51343e;
    }

    protected void C(int i2, int i4) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void D(float f4, float f5, float f6, float f7) {
        G(f6, f7 / this.f51348j);
    }

    public final void E(int i2) {
        int i4 = this.f51343e;
        this.f51344f = i4;
        this.f51343e = i2;
        C(i2, i4);
    }

    public void F(int i2) {
        this.f51345g = i2;
        L();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void G(float f4, float f5) {
        this.f51341c = f4;
        this.f51342d = f5;
    }

    public void H(int i2) {
        this.f51350l = i2;
    }

    public void I(int i2) {
        this.f51347i = (this.f51345g * 1.0f) / i2;
        this.f51339a = i2;
    }

    public void J(float f4) {
        this.f51347i = f4;
        this.f51339a = (int) (this.f51345g * f4);
    }

    public void K(float f4) {
        this.f51348j = f4;
    }

    protected void L() {
        this.f51339a = (int) (this.f51347i * this.f51345g);
    }

    public boolean M(int i2) {
        return i2 < 0;
    }

    public void a(a aVar) {
        this.f51343e = aVar.f51343e;
        this.f51344f = aVar.f51344f;
        this.f51345g = aVar.f51345g;
    }

    public boolean b() {
        return this.f51344f < i() && this.f51343e >= i();
    }

    public float c() {
        int i2 = this.f51345g;
        if (i2 == 0) {
            return 0.0f;
        }
        return (this.f51343e * 1.0f) / i2;
    }

    public int d() {
        return this.f51343e;
    }

    public int e() {
        return this.f51345g;
    }

    public float f() {
        int i2 = this.f51345g;
        if (i2 == 0) {
            return 0.0f;
        }
        return (this.f51344f * 1.0f) / i2;
    }

    public int g() {
        return this.f51344f;
    }

    public int h() {
        int i2 = this.f51350l;
        return i2 >= 0 ? i2 : this.f51345g;
    }

    public int i() {
        return this.f51339a;
    }

    public float j() {
        return this.f51341c;
    }

    public float k() {
        return this.f51342d;
    }

    public float l() {
        return this.f51347i;
    }

    public float m() {
        return this.f51348j;
    }

    public boolean n() {
        return this.f51343e >= this.f51351m;
    }

    public boolean o() {
        return this.f51344f != 0 && u();
    }

    public boolean p() {
        return this.f51344f == 0 && r();
    }

    public boolean q() {
        int i2 = this.f51344f;
        int i4 = this.f51345g;
        return i2 < i4 && this.f51343e >= i4;
    }

    public boolean r() {
        return this.f51343e > 0;
    }

    public boolean s() {
        return this.f51343e != this.f51346h;
    }

    public boolean t(int i2) {
        return this.f51343e == i2;
    }

    public boolean u() {
        return this.f51343e == 0;
    }

    public boolean v() {
        return this.f51343e > h();
    }

    public boolean w() {
        return this.f51343e >= i();
    }

    public boolean x() {
        return this.f51349k;
    }

    public final void y(float f4, float f5) {
        PointF pointF = this.f51340b;
        D(f4, f5, f4 - pointF.x, f5 - pointF.y);
        this.f51340b.set(f4, f5);
    }

    public void z(float f4, float f5) {
        this.f51349k = true;
        this.f51346h = this.f51343e;
        this.f51340b.set(f4, f5);
    }
}
