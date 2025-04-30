package com.zxing.android.camera;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.hardware.Camera;
import android.os.Handler;
import android.preference.PreferenceManager;
import android.view.SurfaceHolder;
import com.facebook.common.statfs.StatFsHelper;
import java.io.IOException;
import kotlinx.coroutines.v0;
/* compiled from: CameraManager.java */
/* loaded from: classes3.dex */
public final class c {

    /* renamed from: m  reason: collision with root package name */
    private static final String f65018m = "c";

    /* renamed from: n  reason: collision with root package name */
    private static final int f65019n = 240;

    /* renamed from: o  reason: collision with root package name */
    private static final int f65020o = 240;

    /* renamed from: p  reason: collision with root package name */
    private static final int f65021p = 400;

    /* renamed from: q  reason: collision with root package name */
    private static final int f65022q = 400;

    /* renamed from: r  reason: collision with root package name */
    public static final String f65023r = "preferences_reverse_image";

    /* renamed from: a  reason: collision with root package name */
    private final Context f65024a;

    /* renamed from: b  reason: collision with root package name */
    private final b f65025b;

    /* renamed from: c  reason: collision with root package name */
    private Camera f65026c;

    /* renamed from: d  reason: collision with root package name */
    private Rect f65027d;

    /* renamed from: e  reason: collision with root package name */
    private Rect f65028e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f65029f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f65030g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f65031h;

    /* renamed from: i  reason: collision with root package name */
    private int f65032i;

    /* renamed from: j  reason: collision with root package name */
    private int f65033j;

    /* renamed from: k  reason: collision with root package name */
    private final f f65034k;

    /* renamed from: l  reason: collision with root package name */
    private final a f65035l;

    public c(Context context) {
        this.f65024a = context;
        b bVar = new b(context);
        this.f65025b = bVar;
        this.f65034k = new f(bVar);
        this.f65035l = new a();
    }

    public e a(byte[] bArr, int i2, int i4) {
        Rect d4 = d();
        if (d4 == null) {
            return null;
        }
        return new e(bArr, i2, i4, d4.left, d4.top, d4.width(), d4.height(), this.f65031h);
    }

    public void b() {
        Camera camera = this.f65026c;
        if (camera != null) {
            camera.release();
            this.f65026c = null;
            this.f65027d = null;
            this.f65028e = null;
        }
    }

    public Rect c() {
        if (this.f65027d == null) {
            if (this.f65026c == null) {
                return null;
            }
            Point e4 = this.f65025b.e();
            int i2 = e4.x;
            int i4 = (i2 * 3) / 4;
            int i5 = StatFsHelper.f11741h;
            if (i4 < 240) {
                i4 = 240;
            } else if (i4 > 400) {
                i4 = StatFsHelper.f11741h;
            }
            int i6 = e4.y;
            int i7 = (i6 * 3) / 4;
            if (i7 < 240) {
                i5 = 240;
            } else if (i7 <= 400) {
                i5 = i7;
            }
            int i8 = (i2 - i4) / 2;
            int i9 = ((i6 - i5) * 2) / 5;
            this.f65027d = new Rect(i8, i9, i4 + i8, i5 + i9);
            StringBuilder sb = new StringBuilder();
            sb.append("Calculated framing rect: ");
            sb.append(this.f65027d);
        }
        return this.f65027d;
    }

    public Rect d() {
        if (this.f65028e == null) {
            Rect c4 = c();
            if (c4 == null) {
                return null;
            }
            Rect rect = new Rect(c4);
            Point d4 = this.f65025b.d();
            Point e4 = this.f65025b.e();
            int i2 = rect.left;
            int i4 = d4.y;
            int i5 = e4.x;
            rect.left = (i2 * i4) / i5;
            rect.right = (rect.right * i4) / i5;
            int i6 = rect.top;
            int i7 = d4.x;
            int i8 = e4.y;
            rect.top = (i6 * i7) / i8;
            rect.bottom = (rect.bottom * i7) / i8;
            this.f65028e = rect;
        }
        return this.f65028e;
    }

    public void e() {
        Camera camera = this.f65026c;
        if (camera != null) {
            Camera.Parameters parameters = camera.getParameters();
            parameters.setFlashMode(v0.f72523e);
            this.f65026c.setParameters(parameters);
        }
    }

    public void f(SurfaceHolder surfaceHolder) throws IOException {
        int i2;
        Camera camera = this.f65026c;
        if (camera == null) {
            camera = Camera.open();
            if (camera != null) {
                this.f65026c = camera;
            } else {
                throw new IOException();
            }
        }
        camera.setPreviewDisplay(surfaceHolder);
        if (!this.f65029f) {
            this.f65029f = true;
            this.f65025b.f(camera);
            int i4 = this.f65032i;
            if (i4 > 0 && (i2 = this.f65033j) > 0) {
                j(i4, i2);
                this.f65032i = 0;
                this.f65033j = 0;
            }
        }
        this.f65025b.h(camera);
        this.f65031h = PreferenceManager.getDefaultSharedPreferences(this.f65024a).getBoolean(f65023r, false);
    }

    public void g() {
        Camera camera = this.f65026c;
        if (camera != null) {
            Camera.Parameters parameters = camera.getParameters();
            parameters.setFlashMode("torch");
            this.f65026c.setParameters(parameters);
        }
    }

    public void h(Handler handler, int i2) {
        if (this.f65026c == null || !this.f65030g) {
            return;
        }
        this.f65035l.a(handler, i2);
        try {
            this.f65026c.autoFocus(this.f65035l);
        } catch (RuntimeException unused) {
        }
    }

    public void i(Handler handler, int i2) {
        Camera camera = this.f65026c;
        if (camera == null || !this.f65030g) {
            return;
        }
        this.f65034k.a(handler, i2);
        camera.setOneShotPreviewCallback(this.f65034k);
    }

    public void j(int i2, int i4) {
        if (this.f65029f) {
            Point e4 = this.f65025b.e();
            int i5 = e4.x;
            if (i2 > i5) {
                i2 = i5;
            }
            int i6 = e4.y;
            if (i4 > i6) {
                i4 = i6;
            }
            int i7 = (i5 - i2) / 2;
            int i8 = (i6 - i4) / 2;
            this.f65027d = new Rect(i7, i8, i2 + i7, i4 + i8);
            StringBuilder sb = new StringBuilder();
            sb.append("Calculated manual framing rect: ");
            sb.append(this.f65027d);
            this.f65028e = null;
            return;
        }
        this.f65032i = i2;
        this.f65033j = i4;
    }

    public void k() {
        Camera camera = this.f65026c;
        if (camera == null || this.f65030g) {
            return;
        }
        camera.startPreview();
        this.f65030g = true;
    }

    public void l() {
        Camera camera = this.f65026c;
        if (camera == null || !this.f65030g) {
            return;
        }
        camera.stopPreview();
        this.f65034k.a(null, 0);
        this.f65035l.a(null, 0);
        this.f65030g = false;
    }

    public void m() {
        Camera camera = this.f65026c;
        if (camera != null) {
            Camera.Parameters parameters = camera.getParameters();
            if (parameters.getFlashMode().equals("torch")) {
                parameters.setFlashMode(v0.f72523e);
            } else {
                parameters.setFlashMode("torch");
            }
            this.f65026c.setParameters(parameters);
        }
    }
}
