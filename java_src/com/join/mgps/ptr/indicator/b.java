package com.join.mgps.ptr.indicator;
/* compiled from: PtrTensionIndicator.java */
/* loaded from: classes4.dex */
public class b extends a {

    /* renamed from: p  reason: collision with root package name */
    private float f51353p;

    /* renamed from: q  reason: collision with root package name */
    private float f51354q;

    /* renamed from: s  reason: collision with root package name */
    private float f51356s;

    /* renamed from: t  reason: collision with root package name */
    private int f51357t;

    /* renamed from: o  reason: collision with root package name */
    private float f51352o = 0.5f;

    /* renamed from: r  reason: collision with root package name */
    private float f51355r = 0.0f;

    /* renamed from: u  reason: collision with root package name */
    private float f51358u = -1.0f;

    private float O(float f4) {
        float f5 = f4 / this.f51355r;
        this.f51356s = f5;
        Math.min(1.0f, Math.abs(f5));
        float f6 = this.f51355r;
        Math.pow(Math.max(0.0f, Math.min(f4 - f6, f6 * 2.0f) / this.f51355r) / 4.0f, 2.0d);
        return 0.0f;
    }

    @Override // com.join.mgps.ptr.indicator.a
    public void A() {
        super.A();
        this.f51357t = d();
        this.f51358u = this.f51356s;
    }

    @Override // com.join.mgps.ptr.indicator.a
    public void B() {
        this.f51357t = d();
        this.f51358u = N();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.ptr.indicator.a
    public void D(float f4, float f5, float f6, float f7) {
        float f8 = this.f51353p;
        if (f5 < f8) {
            super.D(f4, f5, f6, f7);
            return;
        }
        float f9 = ((f5 - f8) * this.f51352o) + this.f51354q;
        float f10 = f9 / this.f51355r;
        if (f10 < 0.0f) {
            G(f6, 0.0f);
            return;
        }
        this.f51356s = f10;
        float min = Math.min(1.0f, Math.abs(f10));
        float f11 = this.f51355r;
        double max = Math.max(0.0f, Math.min(f9 - f11, f11 * 2.0f) / this.f51355r) / 4.0f;
        double pow = Math.pow(max, 2.0d);
        Double.isNaN(max);
        float f12 = this.f51355r;
        G(f4, ((int) ((f12 * min) + (((((float) (max - pow)) * 2.0f) * f12) / 2.0f))) - d());
    }

    @Override // com.join.mgps.ptr.indicator.a
    public void F(int i2) {
        super.F(i2);
        this.f51355r = (i2 * 4.0f) / 5.0f;
    }

    public float N() {
        if (x()) {
            return this.f51356s;
        }
        float f4 = this.f51358u;
        if (f4 <= 0.0f) {
            return (d() * 1.0f) / h();
        }
        return (f4 * d()) / this.f51357t;
    }

    @Override // com.join.mgps.ptr.indicator.a
    public int h() {
        return i();
    }

    @Override // com.join.mgps.ptr.indicator.a
    public int i() {
        return (int) this.f51355r;
    }

    @Override // com.join.mgps.ptr.indicator.a
    public void z(float f4, float f5) {
        super.z(f4, f5);
        this.f51353p = f5;
        this.f51354q = d();
    }
}
