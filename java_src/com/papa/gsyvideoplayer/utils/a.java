package com.papa.gsyvideoplayer.utils;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import java.io.IOException;
import java.io.OutputStream;
/* compiled from: AnimatedGifEncoder.java */
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    protected int f55092a;

    /* renamed from: b  reason: collision with root package name */
    protected int f55093b;

    /* renamed from: f  reason: collision with root package name */
    protected int f55097f;

    /* renamed from: j  reason: collision with root package name */
    protected OutputStream f55101j;

    /* renamed from: k  reason: collision with root package name */
    protected Bitmap f55102k;

    /* renamed from: l  reason: collision with root package name */
    protected byte[] f55103l;

    /* renamed from: m  reason: collision with root package name */
    protected byte[] f55104m;

    /* renamed from: n  reason: collision with root package name */
    protected int f55105n;

    /* renamed from: o  reason: collision with root package name */
    protected byte[] f55106o;

    /* renamed from: c  reason: collision with root package name */
    protected int f55094c = 0;

    /* renamed from: d  reason: collision with root package name */
    protected int f55095d = 0;

    /* renamed from: e  reason: collision with root package name */
    protected int f55096e = -1;

    /* renamed from: g  reason: collision with root package name */
    protected int f55098g = -1;

    /* renamed from: h  reason: collision with root package name */
    protected int f55099h = 0;

    /* renamed from: i  reason: collision with root package name */
    protected boolean f55100i = false;

    /* renamed from: p  reason: collision with root package name */
    protected boolean[] f55107p = new boolean[256];

    /* renamed from: q  reason: collision with root package name */
    protected int f55108q = 7;

    /* renamed from: r  reason: collision with root package name */
    protected int f55109r = -1;

    /* renamed from: s  reason: collision with root package name */
    protected boolean f55110s = false;

    /* renamed from: t  reason: collision with root package name */
    protected boolean f55111t = true;

    /* renamed from: u  reason: collision with root package name */
    protected boolean f55112u = false;

    /* renamed from: v  reason: collision with root package name */
    protected int f55113v = 10;

    public boolean a(Bitmap bitmap) {
        if (bitmap == null || !this.f55100i) {
            return false;
        }
        try {
            if (!this.f55112u) {
                m(bitmap.getWidth(), bitmap.getHeight());
            }
            this.f55102k = bitmap;
            f();
            b();
            if (this.f55111t) {
                r();
                t();
                if (this.f55098g >= 0) {
                    s();
                }
            }
            p();
            q();
            if (!this.f55111t) {
                t();
            }
            u();
            this.f55111t = false;
            return true;
        } catch (IOException unused) {
            return false;
        }
    }

    protected void b() {
        byte[] bArr = this.f55103l;
        int length = bArr.length;
        int i2 = length / 3;
        this.f55104m = new byte[i2];
        m mVar = new m(bArr, length, this.f55113v);
        this.f55106o = mVar.h();
        int i4 = 0;
        int i5 = 0;
        while (true) {
            byte[] bArr2 = this.f55106o;
            if (i5 >= bArr2.length) {
                break;
            }
            byte b4 = bArr2[i5];
            int i6 = i5 + 2;
            bArr2[i5] = bArr2[i6];
            bArr2[i6] = b4;
            this.f55107p[i5 / 3] = false;
            i5 += 3;
        }
        int i7 = 0;
        while (i4 < i2) {
            byte[] bArr3 = this.f55103l;
            int i8 = i7 + 1;
            int i9 = i8 + 1;
            int g4 = mVar.g(bArr3[i7] & 255, bArr3[i8] & 255, bArr3[i9] & 255);
            this.f55107p[g4] = true;
            this.f55104m[i4] = (byte) g4;
            i4++;
            i7 = i9 + 1;
        }
        this.f55103l = null;
        this.f55105n = 8;
        this.f55108q = 7;
        int i10 = this.f55096e;
        if (i10 != -1) {
            this.f55097f = c(i10);
        }
    }

    protected int c(int i2) {
        byte[] bArr = this.f55106o;
        if (bArr == null) {
            return -1;
        }
        int i4 = (i2 >> 16) & 255;
        int i5 = (i2 >> 8) & 255;
        int i6 = 0;
        int i7 = (i2 >> 0) & 255;
        int length = bArr.length;
        int i8 = 0;
        int i9 = 16777216;
        while (i6 < length) {
            byte[] bArr2 = this.f55106o;
            int i10 = i6 + 1;
            int i11 = i4 - (bArr2[i6] & 255);
            int i12 = i10 + 1;
            int i13 = i5 - (bArr2[i10] & 255);
            int i14 = i7 - (bArr2[i12] & 255);
            int i15 = (i11 * i11) + (i13 * i13) + (i14 * i14);
            int i16 = i12 / 3;
            if (this.f55107p[i16] && i15 < i9) {
                i9 = i15;
                i8 = i16;
            }
            i6 = i12 + 1;
        }
        return i8;
    }

    public boolean d() {
        boolean z3;
        if (this.f55100i) {
            this.f55100i = false;
            try {
                this.f55101j.write(59);
                this.f55101j.flush();
                if (this.f55110s) {
                    this.f55101j.close();
                }
                z3 = true;
            } catch (IOException unused) {
                z3 = false;
            }
            this.f55097f = 0;
            this.f55101j = null;
            this.f55102k = null;
            this.f55103l = null;
            this.f55104m = null;
            this.f55106o = null;
            this.f55110s = false;
            this.f55111t = true;
            return z3;
        }
        return false;
    }

    protected int[] e(Bitmap bitmap) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int[] iArr = new int[width * height];
        bitmap.getPixels(iArr, 0, width, 0, 0, width, height);
        return iArr;
    }

    protected void f() {
        int width = this.f55102k.getWidth();
        int height = this.f55102k.getHeight();
        int i2 = this.f55092a;
        if (width != i2 || height != this.f55093b) {
            Bitmap createBitmap = Bitmap.createBitmap(i2, this.f55093b, Bitmap.Config.RGB_565);
            new Canvas(createBitmap).drawBitmap(this.f55102k, 0.0f, 0.0f, new Paint());
            this.f55102k = createBitmap;
        }
        int[] e4 = e(this.f55102k);
        this.f55103l = new byte[e4.length * 3];
        for (int i4 = 0; i4 < e4.length; i4++) {
            int i5 = e4[i4];
            int i6 = i4 * 3;
            byte[] bArr = this.f55103l;
            int i7 = i6 + 1;
            bArr[i6] = (byte) ((i5 >> 0) & 255);
            bArr[i7] = (byte) ((i5 >> 8) & 255);
            bArr[i7 + 1] = (byte) ((i5 >> 16) & 255);
        }
    }

    public void g(int i2) {
        this.f55099h = i2 / 10;
    }

    public void h(int i2) {
        if (i2 >= 0) {
            this.f55109r = i2;
        }
    }

    public void i(float f4) {
        if (f4 != 0.0f) {
            this.f55099h = (int) (100.0f / f4);
        }
    }

    public void j(int i2, int i4) {
        this.f55094c = i2;
        this.f55095d = i4;
    }

    public void k(int i2) {
        if (i2 < 1) {
            i2 = 1;
        }
        this.f55113v = i2;
    }

    public void l(int i2) {
        if (i2 >= 0) {
            this.f55098g = i2;
        }
    }

    public void m(int i2, int i4) {
        this.f55092a = i2;
        this.f55093b = i4;
        if (i2 < 1) {
            this.f55092a = 320;
        }
        if (i4 < 1) {
            this.f55093b = 240;
        }
        this.f55112u = true;
    }

    public void n(int i2) {
        this.f55096e = i2;
    }

    public boolean o(OutputStream outputStream) {
        boolean z3 = false;
        if (outputStream == null) {
            return false;
        }
        this.f55110s = false;
        this.f55101j = outputStream;
        try {
            w("GIF89a");
            z3 = true;
        } catch (IOException unused) {
        }
        this.f55100i = z3;
        return z3;
    }

    protected void p() throws IOException {
        int i2;
        int i4;
        this.f55101j.write(33);
        this.f55101j.write(249);
        this.f55101j.write(4);
        if (this.f55096e == -1) {
            i2 = 0;
            i4 = 0;
        } else {
            i2 = 1;
            i4 = 2;
        }
        int i5 = this.f55109r;
        if (i5 >= 0) {
            i4 = i5 & 7;
        }
        this.f55101j.write(i2 | (i4 << 2) | 0 | 0);
        v(this.f55099h);
        this.f55101j.write(this.f55097f);
        this.f55101j.write(0);
    }

    protected void q() throws IOException {
        this.f55101j.write(44);
        v(this.f55094c);
        v(this.f55095d);
        v(this.f55092a);
        v(this.f55093b);
        if (this.f55111t) {
            this.f55101j.write(0);
        } else {
            this.f55101j.write(this.f55108q | 128);
        }
    }

    protected void r() throws IOException {
        v(this.f55092a);
        v(this.f55093b);
        this.f55101j.write(this.f55108q | 240);
        this.f55101j.write(0);
        this.f55101j.write(0);
    }

    protected void s() throws IOException {
        this.f55101j.write(33);
        this.f55101j.write(255);
        this.f55101j.write(11);
        w("NETSCAPE2.0");
        this.f55101j.write(3);
        this.f55101j.write(1);
        v(this.f55098g);
        this.f55101j.write(0);
    }

    protected void t() throws IOException {
        OutputStream outputStream = this.f55101j;
        byte[] bArr = this.f55106o;
        outputStream.write(bArr, 0, bArr.length);
        int length = 768 - this.f55106o.length;
        for (int i2 = 0; i2 < length; i2++) {
            this.f55101j.write(0);
        }
    }

    protected void u() throws IOException {
        new h(this.f55092a, this.f55093b, this.f55104m, this.f55105n).f(this.f55101j);
    }

    protected void v(int i2) throws IOException {
        this.f55101j.write(i2 & 255);
        this.f55101j.write((i2 >> 8) & 255);
    }

    protected void w(String str) throws IOException {
        for (int i2 = 0; i2 < str.length(); i2++) {
            this.f55101j.write((byte) str.charAt(i2));
        }
    }
}
