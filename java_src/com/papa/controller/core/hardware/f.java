package com.papa.controller.core.hardware;
/* compiled from: GamepadState.java */
/* loaded from: classes4.dex */
public class f extends a {

    /* renamed from: p  reason: collision with root package name */
    private int f54867p;

    /* renamed from: q  reason: collision with root package name */
    private int f54868q;

    /* renamed from: r  reason: collision with root package name */
    private int f54869r;

    public f() {
    }

    @Override // com.papa.controller.core.hardware.a
    public byte[] a() {
        return super.b(new byte[]{3});
    }

    public int k() {
        return this.f54867p;
    }

    public int l() {
        return this.f54869r;
    }

    public int m() {
        return this.f54868q;
    }

    public void n(int i2) {
        this.f54867p = i2;
    }

    public void o(int i2) {
        this.f54869r = i2;
    }

    public void p(int i2) {
        this.f54868q = i2;
    }

    public f(byte[] bArr) {
        super(bArr);
        if (this.f54849d != 5) {
            return;
        }
        if (this.f54848c > 5) {
            this.f54867p = d(bArr[5]);
        }
        if (this.f54848c > 6) {
            byte b4 = bArr[6];
            this.f54868q = b4 & 1;
            this.f54869r = b4 & 2;
        }
    }
}
