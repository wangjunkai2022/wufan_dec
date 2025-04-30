package com.papa.gsyvideoplayer.utils;

import androidx.core.app.FrameMetricsAggregator;
import com.papa91.arc.ext.Log;
import java.io.IOException;
import java.io.OutputStream;
/* compiled from: AnimatedGifEncoder.java */
/* loaded from: classes4.dex */
class h {

    /* renamed from: x  reason: collision with root package name */
    private static final int f55174x = -1;

    /* renamed from: y  reason: collision with root package name */
    static final int f55175y = 12;

    /* renamed from: z  reason: collision with root package name */
    static final int f55176z = 5003;

    /* renamed from: a  reason: collision with root package name */
    private int f55177a;

    /* renamed from: b  reason: collision with root package name */
    private int f55178b;

    /* renamed from: c  reason: collision with root package name */
    private byte[] f55179c;

    /* renamed from: d  reason: collision with root package name */
    private int f55180d;

    /* renamed from: e  reason: collision with root package name */
    private int f55181e;

    /* renamed from: f  reason: collision with root package name */
    private int f55182f;

    /* renamed from: g  reason: collision with root package name */
    int f55183g;

    /* renamed from: i  reason: collision with root package name */
    int f55185i;

    /* renamed from: p  reason: collision with root package name */
    int f55192p;

    /* renamed from: q  reason: collision with root package name */
    int f55193q;

    /* renamed from: r  reason: collision with root package name */
    int f55194r;

    /* renamed from: v  reason: collision with root package name */
    int f55198v;

    /* renamed from: h  reason: collision with root package name */
    int f55184h = 12;

    /* renamed from: j  reason: collision with root package name */
    int f55186j = 4096;

    /* renamed from: k  reason: collision with root package name */
    int[] f55187k = new int[5003];

    /* renamed from: l  reason: collision with root package name */
    int[] f55188l = new int[5003];

    /* renamed from: m  reason: collision with root package name */
    int f55189m = 5003;

    /* renamed from: n  reason: collision with root package name */
    int f55190n = 0;

    /* renamed from: o  reason: collision with root package name */
    boolean f55191o = false;

    /* renamed from: s  reason: collision with root package name */
    int f55195s = 0;

    /* renamed from: t  reason: collision with root package name */
    int f55196t = 0;

    /* renamed from: u  reason: collision with root package name */
    int[] f55197u = {0, 1, 3, 7, 15, 31, 63, 127, 255, FrameMetricsAggregator.EVERY_DURATION, Log.LogWrapper.MAX_MSG_LEN, 2047, 4095, 8191, 16383, 32767, 65535};

    /* renamed from: w  reason: collision with root package name */
    byte[] f55199w = new byte[256];

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(int i2, int i4, byte[] bArr, int i5) {
        this.f55177a = i2;
        this.f55178b = i4;
        this.f55179c = bArr;
        this.f55180d = Math.max(2, i5);
    }

    private int h() {
        int i2 = this.f55181e;
        if (i2 == 0) {
            return -1;
        }
        this.f55181e = i2 - 1;
        byte[] bArr = this.f55179c;
        int i4 = this.f55182f;
        this.f55182f = i4 + 1;
        return bArr[i4] & 255;
    }

    final int a(int i2) {
        return (1 << i2) - 1;
    }

    void b(byte b4, OutputStream outputStream) throws IOException {
        byte[] bArr = this.f55199w;
        int i2 = this.f55198v;
        int i4 = i2 + 1;
        this.f55198v = i4;
        bArr[i2] = b4;
        if (i4 >= 254) {
            g(outputStream);
        }
    }

    void c(OutputStream outputStream) throws IOException {
        d(this.f55189m);
        int i2 = this.f55193q;
        this.f55190n = i2 + 2;
        this.f55191o = true;
        i(i2, outputStream);
    }

    void d(int i2) {
        for (int i4 = 0; i4 < i2; i4++) {
            this.f55187k[i4] = -1;
        }
    }

    void e(int i2, OutputStream outputStream) throws IOException {
        int[] iArr;
        this.f55192p = i2;
        int i4 = 0;
        this.f55191o = false;
        this.f55183g = i2;
        this.f55185i = a(i2);
        int i5 = 1 << (i2 - 1);
        this.f55193q = i5;
        this.f55194r = i5 + 1;
        this.f55190n = i5 + 2;
        this.f55198v = 0;
        int h4 = h();
        for (int i6 = this.f55189m; i6 < 65536; i6 *= 2) {
            i4++;
        }
        int i7 = 8 - i4;
        int i8 = this.f55189m;
        d(i8);
        i(this.f55193q, outputStream);
        while (true) {
            int h5 = h();
            if (h5 != -1) {
                int i9 = (h5 << this.f55184h) + h4;
                int i10 = (h5 << i7) ^ h4;
                int[] iArr2 = this.f55187k;
                if (iArr2[i10] == i9) {
                    h4 = this.f55188l[i10];
                } else {
                    if (iArr2[i10] >= 0) {
                        int i11 = i8 - i10;
                        if (i10 == 0) {
                            i11 = 1;
                        }
                        do {
                            i10 -= i11;
                            if (i10 < 0) {
                                i10 += i8;
                            }
                            iArr = this.f55187k;
                            if (iArr[i10] == i9) {
                                h4 = this.f55188l[i10];
                                break;
                            }
                        } while (iArr[i10] >= 0);
                    }
                    i(h4, outputStream);
                    int i12 = this.f55190n;
                    if (i12 < this.f55186j) {
                        int[] iArr3 = this.f55188l;
                        this.f55190n = i12 + 1;
                        iArr3[i10] = i12;
                        this.f55187k[i10] = i9;
                    } else {
                        c(outputStream);
                    }
                    h4 = h5;
                }
            } else {
                i(h4, outputStream);
                i(this.f55194r, outputStream);
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f(OutputStream outputStream) throws IOException {
        outputStream.write(this.f55180d);
        this.f55181e = this.f55177a * this.f55178b;
        this.f55182f = 0;
        e(this.f55180d + 1, outputStream);
        outputStream.write(0);
    }

    void g(OutputStream outputStream) throws IOException {
        int i2 = this.f55198v;
        if (i2 > 0) {
            outputStream.write(i2);
            outputStream.write(this.f55199w, 0, this.f55198v);
            this.f55198v = 0;
        }
    }

    void i(int i2, OutputStream outputStream) throws IOException {
        int i4 = this.f55195s;
        int[] iArr = this.f55197u;
        int i5 = this.f55196t;
        int i6 = i4 & iArr[i5];
        this.f55195s = i6;
        if (i5 > 0) {
            this.f55195s = i6 | (i2 << i5);
        } else {
            this.f55195s = i2;
        }
        this.f55196t = i5 + this.f55183g;
        while (this.f55196t >= 8) {
            b((byte) (this.f55195s & 255), outputStream);
            this.f55195s >>= 8;
            this.f55196t -= 8;
        }
        if (this.f55190n > this.f55185i || this.f55191o) {
            if (this.f55191o) {
                int i7 = this.f55192p;
                this.f55183g = i7;
                this.f55185i = a(i7);
                this.f55191o = false;
            } else {
                int i8 = this.f55183g + 1;
                this.f55183g = i8;
                if (i8 == this.f55184h) {
                    this.f55185i = this.f55186j;
                } else {
                    this.f55185i = a(i8);
                }
            }
        }
        if (i2 == this.f55194r) {
            while (this.f55196t > 0) {
                b((byte) (this.f55195s & 255), outputStream);
                this.f55195s >>= 8;
                this.f55196t -= 8;
            }
            g(outputStream);
        }
    }
}
