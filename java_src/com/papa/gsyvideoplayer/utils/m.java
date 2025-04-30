package com.papa.gsyvideoplayer.utils;
/* compiled from: AnimatedGifEncoder.java */
/* loaded from: classes4.dex */
class m {
    protected static final int A = 6;
    protected static final int B = 64;
    protected static final int C = 2048;
    protected static final int D = 30;
    protected static final int E = 10;
    protected static final int F = 1024;
    protected static final int G = 8;
    protected static final int H = 256;
    protected static final int I = 18;
    protected static final int J = 262144;

    /* renamed from: j  reason: collision with root package name */
    protected static final int f55265j = 256;

    /* renamed from: k  reason: collision with root package name */
    protected static final int f55266k = 499;

    /* renamed from: l  reason: collision with root package name */
    protected static final int f55267l = 491;

    /* renamed from: m  reason: collision with root package name */
    protected static final int f55268m = 487;

    /* renamed from: n  reason: collision with root package name */
    protected static final int f55269n = 503;

    /* renamed from: o  reason: collision with root package name */
    protected static final int f55270o = 1509;

    /* renamed from: p  reason: collision with root package name */
    protected static final int f55271p = 255;

    /* renamed from: q  reason: collision with root package name */
    protected static final int f55272q = 4;

    /* renamed from: r  reason: collision with root package name */
    protected static final int f55273r = 100;

    /* renamed from: s  reason: collision with root package name */
    protected static final int f55274s = 16;

    /* renamed from: t  reason: collision with root package name */
    protected static final int f55275t = 65536;

    /* renamed from: u  reason: collision with root package name */
    protected static final int f55276u = 10;

    /* renamed from: v  reason: collision with root package name */
    protected static final int f55277v = 1024;

    /* renamed from: w  reason: collision with root package name */
    protected static final int f55278w = 10;

    /* renamed from: x  reason: collision with root package name */
    protected static final int f55279x = 64;

    /* renamed from: y  reason: collision with root package name */
    protected static final int f55280y = 65536;

    /* renamed from: z  reason: collision with root package name */
    protected static final int f55281z = 32;

    /* renamed from: a  reason: collision with root package name */
    protected int f55282a;

    /* renamed from: b  reason: collision with root package name */
    protected byte[] f55283b;

    /* renamed from: c  reason: collision with root package name */
    protected int f55284c;

    /* renamed from: d  reason: collision with root package name */
    protected int f55285d;

    /* renamed from: f  reason: collision with root package name */
    protected int[] f55287f = new int[256];

    /* renamed from: g  reason: collision with root package name */
    protected int[] f55288g = new int[256];

    /* renamed from: h  reason: collision with root package name */
    protected int[] f55289h = new int[256];

    /* renamed from: i  reason: collision with root package name */
    protected int[] f55290i = new int[32];

    /* renamed from: e  reason: collision with root package name */
    protected int[][] f55286e = new int[256];

    public m(byte[] bArr, int i2, int i4) {
        this.f55283b = bArr;
        this.f55284c = i2;
        this.f55285d = i4;
        for (int i5 = 0; i5 < 256; i5++) {
            int[][] iArr = this.f55286e;
            iArr[i5] = new int[4];
            int[] iArr2 = iArr[i5];
            int i6 = (i5 << 12) / 256;
            iArr2[2] = i6;
            iArr2[1] = i6;
            iArr2[0] = i6;
            this.f55289h[i5] = 256;
            this.f55288g[i5] = 0;
        }
    }

    protected void a(int i2, int i4, int i5, int i6, int i7) {
        int i8 = i4 - i2;
        if (i8 < -1) {
            i8 = -1;
        }
        int i9 = i4 + i2;
        if (i9 > 256) {
            i9 = 256;
        }
        int i10 = i4 + 1;
        int i11 = i4 - 1;
        int i12 = 1;
        while (true) {
            if (i10 >= i9 && i11 <= i8) {
                return;
            }
            int i13 = i12 + 1;
            int i14 = this.f55290i[i12];
            if (i10 < i9) {
                int i15 = i10 + 1;
                int[] iArr = this.f55286e[i10];
                try {
                    iArr[0] = iArr[0] - (((iArr[0] - i5) * i14) / 262144);
                    iArr[1] = iArr[1] - (((iArr[1] - i6) * i14) / 262144);
                    iArr[2] = iArr[2] - (((iArr[2] - i7) * i14) / 262144);
                } catch (Exception unused) {
                }
                i10 = i15;
            }
            if (i11 > i8) {
                int i16 = i11 - 1;
                int[] iArr2 = this.f55286e[i11];
                try {
                    iArr2[0] = iArr2[0] - (((iArr2[0] - i5) * i14) / 262144);
                    iArr2[1] = iArr2[1] - (((iArr2[1] - i6) * i14) / 262144);
                    iArr2[2] = iArr2[2] - ((i14 * (iArr2[2] - i7)) / 262144);
                } catch (Exception unused2) {
                }
                i12 = i13;
                i11 = i16;
            } else {
                i12 = i13;
            }
        }
    }

    protected void b(int i2, int i4, int i5, int i6, int i7) {
        int[] iArr = this.f55286e[i4];
        iArr[0] = iArr[0] - (((iArr[0] - i5) * i2) / 1024);
        iArr[1] = iArr[1] - (((iArr[1] - i6) * i2) / 1024);
        iArr[2] = iArr[2] - ((i2 * (iArr[2] - i7)) / 1024);
    }

    public byte[] c() {
        byte[] bArr = new byte[768];
        int[] iArr = new int[256];
        for (int i2 = 0; i2 < 256; i2++) {
            iArr[this.f55286e[i2][3]] = i2;
        }
        int i4 = 0;
        int i5 = 0;
        while (i4 < 256) {
            int i6 = iArr[i4];
            int i7 = i5 + 1;
            int[][] iArr2 = this.f55286e;
            bArr[i5] = (byte) iArr2[i6][0];
            int i8 = i7 + 1;
            bArr[i7] = (byte) iArr2[i6][1];
            bArr[i8] = (byte) iArr2[i6][2];
            i4++;
            i5 = i8 + 1;
        }
        return bArr;
    }

    protected int d(int i2, int i4, int i5) {
        int i6 = Integer.MAX_VALUE;
        int i7 = Integer.MAX_VALUE;
        int i8 = -1;
        int i9 = -1;
        for (int i10 = 0; i10 < 256; i10++) {
            int[] iArr = this.f55286e[i10];
            int i11 = iArr[0] - i2;
            if (i11 < 0) {
                i11 = -i11;
            }
            int i12 = iArr[1] - i4;
            if (i12 < 0) {
                i12 = -i12;
            }
            int i13 = i11 + i12;
            int i14 = iArr[2] - i5;
            if (i14 < 0) {
                i14 = -i14;
            }
            int i15 = i13 + i14;
            if (i15 < i6) {
                i8 = i10;
                i6 = i15;
            }
            int[] iArr2 = this.f55288g;
            int i16 = i15 - (iArr2[i10] >> 12);
            if (i16 < i7) {
                i9 = i10;
                i7 = i16;
            }
            int[] iArr3 = this.f55289h;
            int i17 = iArr3[i10] >> 10;
            iArr3[i10] = iArr3[i10] - i17;
            iArr2[i10] = iArr2[i10] + (i17 << 10);
        }
        int[] iArr4 = this.f55289h;
        iArr4[i8] = iArr4[i8] + 64;
        int[] iArr5 = this.f55288g;
        iArr5[i8] = iArr5[i8] - 65536;
        return i9;
    }

    public void e() {
        int i2 = 0;
        int i4 = 0;
        int i5 = 0;
        while (i2 < 256) {
            int[] iArr = this.f55286e[i2];
            int i6 = iArr[1];
            int i7 = i2 + 1;
            int i8 = i2;
            for (int i9 = i7; i9 < 256; i9++) {
                int[] iArr2 = this.f55286e[i9];
                if (iArr2[1] < i6) {
                    i6 = iArr2[1];
                    i8 = i9;
                }
            }
            int[] iArr3 = this.f55286e[i8];
            if (i2 != i8) {
                int i10 = iArr3[0];
                iArr3[0] = iArr[0];
                iArr[0] = i10;
                int i11 = iArr3[1];
                iArr3[1] = iArr[1];
                iArr[1] = i11;
                int i12 = iArr3[2];
                iArr3[2] = iArr[2];
                iArr[2] = i12;
                int i13 = iArr3[3];
                iArr3[3] = iArr[3];
                iArr[3] = i13;
            }
            if (i6 != i4) {
                this.f55287f[i4] = (i5 + i2) >> 1;
                while (true) {
                    i4++;
                    if (i4 >= i6) {
                        break;
                    }
                    this.f55287f[i4] = i2;
                }
                i5 = i2;
                i4 = i6;
            }
            i2 = i7;
        }
        this.f55287f[i4] = (i5 + 255) >> 1;
        for (int i14 = i4 + 1; i14 < 256; i14++) {
            this.f55287f[i14] = 255;
        }
    }

    public void f() {
        int i2;
        int i4 = this.f55284c;
        if (i4 < f55270o) {
            this.f55285d = 1;
        }
        int i5 = this.f55285d;
        this.f55282a = ((i5 - 1) / 3) + 30;
        byte[] bArr = this.f55283b;
        int i6 = i4 / (i5 * 3);
        int i7 = i6 / 100;
        for (int i8 = 0; i8 < 32; i8++) {
            this.f55290i[i8] = 1024 * (((1024 - (i8 * i8)) * 256) / 1024);
        }
        int i9 = this.f55284c;
        if (i9 < f55270o) {
            i2 = 3;
        } else if (i9 % f55266k != 0) {
            i2 = 1497;
        } else if (i9 % f55267l != 0) {
            i2 = 1473;
        } else {
            i2 = i9 % f55268m != 0 ? 1461 : f55270o;
        }
        int i10 = i7;
        int i11 = 0;
        int i12 = 2048;
        int i13 = 32;
        int i14 = 1024;
        int i15 = 0;
        while (i11 < i6) {
            int i16 = (bArr[i15 + 0] & 255) << 4;
            int i17 = (bArr[i15 + 1] & 255) << 4;
            int i18 = (bArr[i15 + 2] & 255) << 4;
            int d4 = d(i16, i17, i18);
            int i19 = i11;
            b(i14, d4, i16, i17, i18);
            if (i13 != 0) {
                a(i13, d4, i16, i17, i18);
            }
            int i20 = i15 + i2;
            if (i20 >= i4) {
                i20 -= this.f55284c;
            }
            i15 = i20;
            i11 = i19 + 1;
            if (i10 == 0) {
                i10 = 1;
            }
            if (i11 % i10 == 0) {
                i14 -= i14 / this.f55282a;
                i12 -= i12 / 30;
                int i21 = i12 >> 6;
                i13 = i21 <= 1 ? 0 : i21;
                for (int i22 = 0; i22 < i13; i22++) {
                    int i23 = i13 * i13;
                    this.f55290i[i22] = (((i23 - (i22 * i22)) * 256) / i23) * i14;
                }
            }
        }
    }

    public int g(int i2, int i4, int i5) {
        int i6 = this.f55287f[i4];
        int i7 = i6 - 1;
        int i8 = 1000;
        int i9 = -1;
        while (true) {
            if (i6 >= 256 && i7 < 0) {
                return i9;
            }
            if (i6 < 256) {
                int[] iArr = this.f55286e[i6];
                int i10 = iArr[1] - i4;
                if (i10 >= i8) {
                    i6 = 256;
                } else {
                    i6++;
                    if (i10 < 0) {
                        i10 = -i10;
                    }
                    int i11 = iArr[0] - i2;
                    if (i11 < 0) {
                        i11 = -i11;
                    }
                    int i12 = i10 + i11;
                    if (i12 < i8) {
                        int i13 = iArr[2] - i5;
                        if (i13 < 0) {
                            i13 = -i13;
                        }
                        int i14 = i12 + i13;
                        if (i14 < i8) {
                            i9 = iArr[3];
                            i8 = i14;
                        }
                    }
                }
            }
            if (i7 >= 0) {
                int[] iArr2 = this.f55286e[i7];
                int i15 = i4 - iArr2[1];
                if (i15 >= i8) {
                    i7 = -1;
                } else {
                    i7--;
                    if (i15 < 0) {
                        i15 = -i15;
                    }
                    int i16 = iArr2[0] - i2;
                    if (i16 < 0) {
                        i16 = -i16;
                    }
                    int i17 = i15 + i16;
                    if (i17 < i8) {
                        int i18 = iArr2[2] - i5;
                        if (i18 < 0) {
                            i18 = -i18;
                        }
                        int i19 = i18 + i17;
                        if (i19 < i8) {
                            i9 = iArr2[3];
                            i8 = i19;
                        }
                    }
                }
            }
        }
    }

    public byte[] h() {
        f();
        i();
        e();
        return c();
    }

    public void i() {
        for (int i2 = 0; i2 < 256; i2++) {
            int[][] iArr = this.f55286e;
            int[] iArr2 = iArr[i2];
            iArr2[0] = iArr2[0] >> 4;
            int[] iArr3 = iArr[i2];
            iArr3[1] = iArr3[1] >> 4;
            int[] iArr4 = iArr[i2];
            iArr4[2] = iArr4[2] >> 4;
            iArr[i2][3] = i2;
        }
    }
}
