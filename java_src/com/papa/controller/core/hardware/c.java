package com.papa.controller.core.hardware;
/* compiled from: GamepadHardwareInfo.java */
/* loaded from: classes4.dex */
public class c extends a {

    /* renamed from: p  reason: collision with root package name */
    private String f54851p;

    /* renamed from: q  reason: collision with root package name */
    private byte[] f54852q;

    /* renamed from: r  reason: collision with root package name */
    private byte[] f54853r;

    /* renamed from: s  reason: collision with root package name */
    private int f54854s;

    /* renamed from: t  reason: collision with root package name */
    private int f54855t;

    public c() {
    }

    @Override // com.papa.controller.core.hardware.a
    public byte[] a() {
        return super.b(new byte[]{6});
    }

    public int k() {
        return this.f54854s;
    }

    public int l() {
        return this.f54855t;
    }

    public byte[] m() {
        return this.f54853r;
    }

    public String n() {
        return this.f54851p;
    }

    public byte[] o() {
        return this.f54852q;
    }

    public void p(int i2) {
        this.f54854s = i2;
    }

    public void q(int i2) {
        this.f54855t = i2;
    }

    public void r(byte[] bArr) {
        this.f54853r = bArr;
    }

    public void s(String str) {
        this.f54851p = str;
    }

    public void t(byte[] bArr) {
        this.f54852q = bArr;
    }

    public c(byte[] bArr) {
        super(bArr);
        if (this.f54849d != 246) {
            return;
        }
        int i2 = 16;
        byte[] bArr2 = new byte[16];
        byte[] bArr3 = new byte[2];
        byte[] bArr4 = new byte[2];
        if (this.f54848c > 20) {
            System.arraycopy(bArr, 5, bArr2, 0, 16);
            int i4 = 15;
            while (true) {
                if (i4 < 0) {
                    break;
                } else if (bArr2[i4] != 0) {
                    i2 = i4 + 1;
                    break;
                } else {
                    i4--;
                }
            }
            this.f54851p = new String(bArr2, 0, i2);
        }
        if (this.f54848c > 22) {
            System.arraycopy(bArr, 21, bArr3, 0, 2);
            this.f54852q = bArr3;
        }
        if (this.f54848c > 24) {
            System.arraycopy(bArr, 23, bArr4, 0, 2);
            this.f54853r = bArr4;
        }
        if (this.f54848c > 25) {
            byte b4 = bArr[25];
            this.f54854s = b4 & 1;
            this.f54855t = b4 & 2;
        }
    }
}
