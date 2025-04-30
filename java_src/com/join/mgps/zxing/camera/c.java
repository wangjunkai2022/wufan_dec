package com.join.mgps.zxing.camera;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.hardware.Camera;
import android.os.Build;
import android.os.Handler;
import android.view.SurfaceHolder;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.io.IOException;
/* compiled from: CameraManager.java */
/* loaded from: classes4.dex */
public final class c {

    /* renamed from: k  reason: collision with root package name */
    private static final String f52452k = "c";

    /* renamed from: l  reason: collision with root package name */
    private static final int f52453l = 420;

    /* renamed from: m  reason: collision with root package name */
    private static final int f52454m = 420;

    /* renamed from: n  reason: collision with root package name */
    private static final int f52455n = 800;

    /* renamed from: o  reason: collision with root package name */
    private static final int f52456o = 480;

    /* renamed from: p  reason: collision with root package name */
    private static c f52457p;

    /* renamed from: q  reason: collision with root package name */
    static final int f52458q;

    /* renamed from: a  reason: collision with root package name */
    private final Context f52459a;

    /* renamed from: b  reason: collision with root package name */
    private final b f52460b;

    /* renamed from: c  reason: collision with root package name */
    private Camera f52461c;

    /* renamed from: d  reason: collision with root package name */
    private Rect f52462d;

    /* renamed from: e  reason: collision with root package name */
    private Rect f52463e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f52464f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f52465g;

    /* renamed from: h  reason: collision with root package name */
    private final boolean f52466h;

    /* renamed from: i  reason: collision with root package name */
    private final g f52467i;

    /* renamed from: j  reason: collision with root package name */
    private final a f52468j;

    static {
        int i2;
        try {
            i2 = Integer.parseInt(Build.VERSION.SDK);
        } catch (NumberFormatException unused) {
            i2 = 10000;
        }
        f52458q = i2;
    }

    private c(Context context) {
        this.f52459a = context;
        b bVar = new b(context);
        this.f52460b = bVar;
        boolean z3 = Integer.parseInt(Build.VERSION.SDK) > 3;
        this.f52466h = z3;
        this.f52467i = new g(bVar, z3);
        this.f52468j = new a();
    }

    public static c c() {
        return f52457p;
    }

    public static void g(Context context) {
        if (f52457p == null) {
            f52457p = new c(context);
        }
    }

    public f a(byte[] bArr, int i2, int i4) {
        Rect f4 = f();
        int f5 = this.f52460b.f();
        String g4 = this.f52460b.g();
        if (f5 != 16 && f5 != 17) {
            if ("yuv420p".equals(g4)) {
                return new f(bArr, i2, i4, f4.left, f4.top, f4.width(), f4.height());
            }
            throw new IllegalArgumentException("Unsupported picture format: " + f5 + '/' + g4);
        }
        return new f(bArr, i2, i4, f4.left, f4.top, f4.width(), f4.height());
    }

    public void b() {
        if (this.f52461c != null) {
            d.a();
            this.f52461c.release();
            this.f52461c = null;
        }
    }

    public Rect d() {
        Point h4 = this.f52460b.h();
        if (this.f52462d == null) {
            if (this.f52461c == null) {
                return null;
            }
            int i2 = h4 != null ? (h4.x * 3) / 4 : 0;
            int i4 = TypedValues.CycleType.TYPE_EASING;
            if (i2 < 420) {
                i2 = TypedValues.CycleType.TYPE_EASING;
            } else if (i2 > 800) {
                i2 = 800;
            }
            int i5 = h4 != null ? (h4.y * 3) / 4 : 0;
            if (i5 >= 420) {
                i4 = i5 > f52456o ? f52456o : i5;
            }
            int i6 = h4 != null ? (h4.x - i2) / 2 : 0;
            int i7 = h4 != null ? (h4.y - i4) / 2 : 0;
            if (this.f52459a.getResources().getConfiguration().orientation == 1) {
                this.f52462d = new Rect(0, i7, i6 + i6 + i2, i4 + i7);
            } else {
                this.f52462d = new Rect(i6, i7, i2 + i6, i4 + i7);
            }
            StringBuilder sb = new StringBuilder();
            sb.append("Calculated framing rect: ");
            sb.append(this.f52462d);
        }
        return this.f52462d;
    }

    public Rect e() {
        float f4 = this.f52459a.getResources().getDisplayMetrics().density;
        int i2 = (int) (360.0f * f4);
        int i4 = (int) (f4 * 240.0f);
        Point h4 = this.f52460b.h();
        if (this.f52462d == null) {
            if (this.f52461c == null) {
                return null;
            }
            int i5 = h4.x;
            int i6 = (i5 * 3) / 4;
            if (i6 < 240) {
                i2 = 240;
            } else if (i6 <= i2) {
                i2 = i6;
            }
            int i7 = h4.y;
            int i8 = (i7 * 3) / 4;
            if (i8 < 240) {
                i4 = 240;
            } else if (i8 <= i4) {
                i4 = i8;
            }
            int i9 = (i5 - i2) / 2;
            int i10 = (i7 - i4) / 2;
            this.f52462d = new Rect(i9, i10, i2 + i9, i4 + i10);
            StringBuilder sb = new StringBuilder();
            sb.append("Calculated framing rect: ");
            sb.append(this.f52462d);
        }
        return this.f52462d;
    }

    public Rect f() {
        if (this.f52463e == null) {
            Rect rect = new Rect(d());
            Point c4 = this.f52460b.c();
            Point h4 = this.f52460b.h();
            if (this.f52459a.getResources().getConfiguration().orientation == 1) {
                int i2 = rect.left;
                int i4 = c4.y;
                int i5 = h4.x;
                rect.left = (i2 * i4) / i5;
                rect.right = (rect.right * i4) / i5;
                int i6 = rect.top;
                int i7 = c4.x;
                int i8 = h4.y;
                rect.top = (i6 * i7) / i8;
                rect.bottom = (rect.bottom * i7) / i8;
            } else if (h4 != null) {
                int i9 = rect.left;
                int i10 = c4.x;
                int i11 = h4.x;
                rect.left = (i9 * i10) / i11;
                rect.right = (rect.right * i10) / i11;
                int i12 = rect.top;
                int i13 = c4.y;
                int i14 = h4.y;
                rect.top = (i12 * i13) / i14;
                rect.bottom = (rect.bottom * i13) / i14;
            } else {
                int i15 = rect.left;
                int i16 = c4.x;
                rect.left = i15 * i16;
                rect.right *= i16;
                int i17 = rect.top;
                int i18 = c4.y;
                rect.top = i17 * i18;
                rect.bottom *= i18;
            }
            this.f52463e = rect;
        }
        return this.f52463e;
    }

    public Context getContext() {
        return this.f52459a;
    }

    public void h(SurfaceHolder surfaceHolder) throws IOException {
        if (this.f52461c == null) {
            Camera open = Camera.open();
            this.f52461c = open;
            if (open != null) {
                open.setPreviewDisplay(surfaceHolder);
                if (!this.f52464f) {
                    this.f52464f = true;
                    this.f52460b.i(this.f52461c);
                }
                this.f52460b.j(this.f52461c);
                d.b();
                return;
            }
            throw new IOException();
        }
    }

    public void i(SurfaceHolder surfaceHolder, int i2) throws IOException {
        if (this.f52461c == null) {
            Camera open = Camera.open();
            this.f52461c = open;
            if (open != null) {
                open.setPreviewDisplay(surfaceHolder);
                try {
                    this.f52461c.getParameters().setFocusMode("continuous-picture");
                } catch (Exception unused) {
                }
                if (!this.f52464f) {
                    this.f52464f = true;
                    this.f52460b.i(this.f52461c);
                }
                this.f52460b.k(this.f52461c, i2);
                d.b();
                return;
            }
            throw new IOException();
        }
    }

    public void j(Handler handler, int i2) {
        if (this.f52461c == null || !this.f52465g) {
            return;
        }
        this.f52468j.a(handler, i2);
        this.f52461c.autoFocus(this.f52468j);
    }

    public void k(Handler handler, int i2) {
        if (this.f52461c == null || !this.f52465g) {
            return;
        }
        this.f52467i.a(handler, i2);
        if (this.f52466h) {
            this.f52461c.setOneShotPreviewCallback(this.f52467i);
        } else {
            this.f52461c.setPreviewCallback(this.f52467i);
        }
    }

    public void l() {
        Camera camera = this.f52461c;
        if (camera == null || this.f52465g) {
            return;
        }
        camera.startPreview();
        this.f52465g = true;
    }

    public void m() {
        Camera camera = this.f52461c;
        if (camera == null || !this.f52465g) {
            return;
        }
        if (!this.f52466h) {
            camera.setPreviewCallback(null);
        }
        this.f52461c.stopPreview();
        this.f52467i.a(null, 0);
        this.f52468j.a(null, 0);
        this.f52465g = false;
    }
}
