package com.switfpass.pay.activity.zxing.camera;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.hardware.Camera;
import android.os.Build;
import android.os.Handler;
import android.view.SurfaceHolder;
import java.io.IOException;
/* loaded from: classes4.dex */
public final class a {

    /* renamed from: k  reason: collision with root package name */
    private static final String f58727k = "a";

    /* renamed from: l  reason: collision with root package name */
    private static a f58728l;

    /* renamed from: m  reason: collision with root package name */
    static final int f58729m;

    /* renamed from: a  reason: collision with root package name */
    private final Context f58730a;

    /* renamed from: b  reason: collision with root package name */
    private final d f58731b;

    /* renamed from: c  reason: collision with root package name */
    private Camera f58732c;

    /* renamed from: d  reason: collision with root package name */
    private Rect f58733d;

    /* renamed from: e  reason: collision with root package name */
    private Rect f58734e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f58735f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f58736g;

    /* renamed from: h  reason: collision with root package name */
    private final boolean f58737h;

    /* renamed from: i  reason: collision with root package name */
    private final f f58738i;

    /* renamed from: j  reason: collision with root package name */
    private final c f58739j;

    static {
        int i2;
        try {
            i2 = Integer.parseInt(Build.VERSION.SDK);
        } catch (NumberFormatException unused) {
            i2 = 10000;
        }
        f58729m = i2;
    }

    private a(Context context) {
        this.f58730a = context;
        d dVar = new d(context);
        this.f58731b = dVar;
        boolean z3 = Integer.parseInt(Build.VERSION.SDK) > 3;
        this.f58737h = z3;
        this.f58738i = new f(dVar, z3);
        this.f58739j = new c();
    }

    public static a c() {
        return f58728l;
    }

    public static void f(Context context) {
        if (f58728l == null) {
            f58728l = new a(context);
        }
    }

    public final b a(byte[] bArr, int i2, int i4) {
        Rect e4 = e();
        int e5 = this.f58731b.e();
        String h4 = this.f58731b.h();
        if (e5 == 16 || e5 == 17) {
            return new b(bArr, i2, i4, e4.left, e4.top, e4.width(), e4.height());
        }
        if ("yuv420p".equals(h4)) {
            return new b(bArr, i2, i4, e4.left, e4.top, e4.width(), e4.height());
        }
        throw new IllegalArgumentException("Unsupported picture format: " + e5 + '/' + h4);
    }

    public final void b() {
        if (this.f58732c != null) {
            e.d();
            this.f58732c.release();
            this.f58732c = null;
        }
    }

    public final Rect d() {
        Point g4 = this.f58731b.g();
        if (this.f58733d == null) {
            if (this.f58732c == null) {
                return null;
            }
            double d4 = this.f58730a.getResources().getDisplayMetrics().widthPixels;
            Double.isNaN(d4);
            int i2 = (int) (d4 * 0.6d);
            double d5 = i2;
            Double.isNaN(d5);
            int i4 = (int) (d5 * 0.9d);
            int i5 = (g4.x - i2) / 2;
            int i6 = (g4.y - i4) / 4;
            this.f58733d = new Rect(i5, i6, i2 + i5 + 30, i4 + i6 + 50);
            new StringBuilder("Calculated framing rect: ").append(this.f58733d);
        }
        return this.f58733d;
    }

    public final Rect e() {
        if (this.f58734e == null) {
            Rect rect = new Rect(d());
            Point f4 = this.f58731b.f();
            Point g4 = this.f58731b.g();
            int i2 = rect.left;
            int i4 = f4.y;
            int i5 = g4.x;
            rect.left = (i2 * i4) / i5;
            rect.right = (rect.right * i4) / i5;
            int i6 = rect.top;
            int i7 = f4.x;
            int i8 = g4.y;
            rect.top = (i6 * i7) / i8;
            rect.bottom = (rect.bottom * i7) / i8;
            this.f58734e = rect;
        }
        return this.f58734e;
    }

    public final void g(SurfaceHolder surfaceHolder) {
        if (this.f58732c == null) {
            Camera open = Camera.open();
            this.f58732c = open;
            if (open == null) {
                throw new IOException();
            }
            open.setPreviewDisplay(surfaceHolder);
            if (!this.f58735f) {
                this.f58735f = true;
                this.f58731b.c(this.f58732c);
            }
            this.f58731b.d(this.f58732c);
        }
    }

    public final void h(Handler handler, int i2) {
        if (this.f58732c == null || !this.f58736g) {
            return;
        }
        this.f58739j.a(handler, i2);
        this.f58732c.autoFocus(this.f58739j);
    }

    public final void i(Handler handler, int i2) {
        if (this.f58732c == null || !this.f58736g) {
            return;
        }
        this.f58738i.a(handler, i2);
        if (this.f58737h) {
            this.f58732c.setOneShotPreviewCallback(this.f58738i);
        } else {
            this.f58732c.setPreviewCallback(this.f58738i);
        }
    }

    public final void j() {
        Camera camera = this.f58732c;
        if (camera == null || this.f58736g) {
            return;
        }
        camera.startPreview();
        this.f58736g = true;
    }

    public final void k() {
        Camera camera = this.f58732c;
        if (camera == null || !this.f58736g) {
            return;
        }
        if (!this.f58737h) {
            camera.setPreviewCallback(null);
        }
        this.f58732c.stopPreview();
        this.f58738i.a(null, 0);
        this.f58739j.a(null, 0);
        this.f58736g = false;
    }
}
