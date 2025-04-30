package com.papa.controller.core.hardware;
/* compiled from: GamepadInput.java */
/* loaded from: classes4.dex */
public class d extends a {
    private int A;
    private int B;
    private int C;
    private int D;
    private int E;
    private int F;
    private int G;
    private int[] H;
    private int[] I;
    private int[] J;
    private int[] K;

    /* renamed from: p  reason: collision with root package name */
    private int f54856p;

    /* renamed from: q  reason: collision with root package name */
    private int f54857q;

    /* renamed from: r  reason: collision with root package name */
    private int f54858r;

    /* renamed from: s  reason: collision with root package name */
    private int f54859s;

    /* renamed from: t  reason: collision with root package name */
    private int f54860t;

    /* renamed from: u  reason: collision with root package name */
    private int f54861u;

    /* renamed from: v  reason: collision with root package name */
    private int f54862v;

    /* renamed from: w  reason: collision with root package name */
    private int f54863w;

    /* renamed from: x  reason: collision with root package name */
    private int f54864x;

    /* renamed from: y  reason: collision with root package name */
    private int f54865y;

    /* renamed from: z  reason: collision with root package name */
    private int f54866z;

    public d() {
    }

    private int H(byte b4, int i2) {
        return ((b4 & 255) & i2) == i2 ? 1 : 0;
    }

    private int[] p(byte[] bArr, int i2) {
        int[] iArr = new int[2];
        if (bArr == null || bArr.length < i2 + 2) {
            iArr[0] = 128;
            iArr[1] = 128;
            return iArr;
        }
        iArr[0] = bArr[i2] & 255;
        iArr[1] = bArr[i2 + 1] & 255;
        return iArr;
    }

    public int A() {
        return this.f54859s;
    }

    public int B() {
        return this.f54860t;
    }

    public int C() {
        return this.f54862v;
    }

    public int D() {
        return this.f54863w;
    }

    public int E() {
        return this.f54856p;
    }

    public int F() {
        return this.B;
    }

    public int G() {
        return this.C;
    }

    public void I(int i2) {
        this.f54866z = i2;
    }

    public void J(int[] iArr) {
        this.H = iArr;
    }

    public void K(int[] iArr) {
        this.I = iArr;
    }

    public void L(int[] iArr) {
        this.J = iArr;
    }

    public void M(int[] iArr) {
        this.K = iArr;
    }

    public void N(int i2) {
        this.A = i2;
    }

    public void O(int i2) {
        this.f54861u = i2;
    }

    public void P(int i2) {
        this.f54857q = i2;
    }

    public void Q(int i2) {
        this.f54864x = i2;
    }

    public void R(int i2) {
        this.f54865y = i2;
    }

    public void S(int i2) {
        this.D = i2;
    }

    public void T(int i2) {
        this.F = i2;
    }

    public void U(int i2) {
        this.f54858r = i2;
    }

    public void V(int i2) {
        this.E = i2;
    }

    public void W(int i2) {
        this.G = i2;
    }

    public void X(int i2) {
        this.f54859s = i2;
    }

    public void Y(int i2) {
        this.f54860t = i2;
    }

    public void Z(int i2) {
        this.f54862v = i2;
    }

    public void a0(int i2) {
        this.f54863w = i2;
    }

    public void b0(int i2) {
        this.f54856p = i2;
    }

    public void c0(int i2) {
        this.B = i2;
    }

    public void d0(int i2) {
        this.C = i2;
    }

    public int k() {
        return this.f54866z;
    }

    public int l() {
        return this.H[0];
    }

    public int m() {
        return this.I[0];
    }

    public int n() {
        return this.J[0];
    }

    public int o() {
        return this.K[0];
    }

    public int q() {
        return this.A;
    }

    public int r() {
        return this.f54861u;
    }

    public int s() {
        return this.f54857q;
    }

    public int t() {
        return this.f54864x;
    }

    public int u() {
        return this.f54865y;
    }

    public int v() {
        return this.D;
    }

    public int w() {
        return this.F;
    }

    public int x() {
        return this.f54858r;
    }

    public int y() {
        return this.E;
    }

    public int z() {
        return this.G;
    }

    public d(byte[] bArr) {
        super(bArr);
        if (this.f54848c < 23 || this.f54849d != 1) {
            return;
        }
        byte b4 = bArr[5];
        this.f54856p = H(b4, 1);
        this.f54857q = H(b4, 2);
        this.f54858r = H(b4, 4);
        this.f54859s = H(b4, 8);
        this.f54860t = H(b4, 16);
        this.f54861u = H(b4, 32);
        this.f54862v = H(b4, 64);
        this.f54863w = H(b4, 128);
        byte b5 = bArr[6];
        this.f54864x = H(b5, 1);
        this.f54865y = H(b5, 2);
        this.f54866z = d(bArr[7]);
        this.A = d(bArr[8]);
        this.B = d(bArr[9]);
        this.C = d(bArr[10]);
        this.D = d(bArr[11]);
        this.E = d(bArr[12]);
        this.F = d(bArr[13]);
        this.G = d(bArr[14]);
        this.H = p(bArr, 15);
        this.I = p(bArr, 17);
        this.J = p(bArr, 19);
        this.K = p(bArr, 21);
    }
}
