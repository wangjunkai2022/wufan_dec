package com.papa.gsyvideoplayer.render.glrender;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import android.opengl.GLException;
import android.opengl.GLSurfaceView;
import android.opengl.Matrix;
import android.os.Handler;
import android.view.Surface;
import c2.e;
import com.papa.gsyvideoplayer.render.view.GSYVideoGLView;
import com.papa.gsyvideoplayer.utils.c;
import java.nio.IntBuffer;
import javax.microedition.khronos.opengles.GL10;
/* compiled from: GSYVideoGLViewBaseRender.java */
@SuppressLint({"ViewConstructor"})
/* loaded from: classes4.dex */
public abstract class a implements GLSurfaceView.Renderer, SurfaceTexture.OnFrameAvailableListener {

    /* renamed from: b  reason: collision with root package name */
    protected d2.a f55030b;

    /* renamed from: c  reason: collision with root package name */
    protected GLSurfaceView f55031c;

    /* renamed from: l  reason: collision with root package name */
    protected d2.b f55040l;

    /* renamed from: a  reason: collision with root package name */
    protected boolean f55029a = false;

    /* renamed from: d  reason: collision with root package name */
    protected float[] f55032d = new float[16];

    /* renamed from: e  reason: collision with root package name */
    protected float[] f55033e = new float[16];

    /* renamed from: f  reason: collision with root package name */
    protected int f55034f = 0;

    /* renamed from: g  reason: collision with root package name */
    protected int f55035g = 0;

    /* renamed from: h  reason: collision with root package name */
    protected int f55036h = 0;

    /* renamed from: i  reason: collision with root package name */
    protected int f55037i = 0;

    /* renamed from: j  reason: collision with root package name */
    protected boolean f55038j = false;

    /* renamed from: k  reason: collision with root package name */
    protected boolean f55039k = false;

    /* renamed from: m  reason: collision with root package name */
    protected Handler f55041m = new Handler();

    /* compiled from: GSYVideoGLViewBaseRender.java */
    /* renamed from: com.papa.gsyvideoplayer.render.glrender.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    class RunnableC0272a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Surface f55042a;

        RunnableC0272a(Surface surface) {
            this.f55042a = surface;
        }

        @Override // java.lang.Runnable
        public void run() {
            d2.a aVar = a.this.f55030b;
            if (aVar != null) {
                aVar.onSurfaceAvailable(this.f55042a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GSYVideoGLViewBaseRender.java */
    /* loaded from: classes4.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f55044a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f55045b;

        b(String str, int i2) {
            this.f55044a = str;
            this.f55045b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            a aVar = a.this;
            d2.b bVar = aVar.f55040l;
            if (bVar != null) {
                bVar.a(aVar, this.f55044a + ": glError " + this.f55045b, this.f55045b, a.this.f55039k);
            }
            a.this.f55039k = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(String str) {
        int glGetError = GLES20.glGetError();
        if (glGetError != 0) {
            c.e(str + ": glError " + glGetError);
            this.f55041m.post(new b(str, glGetError));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Bitmap b(int i2, int i4, int i5, int i6, GL10 gl10) {
        int i7 = i5 * i6;
        int[] iArr = new int[i7];
        int[] iArr2 = new int[i7];
        IntBuffer wrap = IntBuffer.wrap(iArr);
        wrap.position(0);
        try {
            gl10.glReadPixels(i2, i4, i5, i6, 6408, 5121, wrap);
            for (int i8 = 0; i8 < i6; i8++) {
                int i9 = i8 * i5;
                int i10 = ((i6 - i8) - 1) * i5;
                for (int i11 = 0; i11 < i5; i11++) {
                    int i12 = iArr[i9 + i11];
                    iArr2[i10 + i11] = (i12 & (-16711936)) | ((i12 << 16) & 16711680) | ((i12 >> 16) & 255);
                }
            }
            if (this.f55029a) {
                return Bitmap.createBitmap(iArr2, i5, i6, Bitmap.Config.ARGB_8888);
            }
            return Bitmap.createBitmap(iArr2, i5, i6, Bitmap.Config.RGB_565);
        } catch (GLException unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int c(String str, String str2) {
        int k4;
        int k5 = k(35633, str);
        if (k5 == 0 || (k4 = k(35632, str2)) == 0) {
            return 0;
        }
        int glCreateProgram = GLES20.glCreateProgram();
        if (glCreateProgram != 0) {
            GLES20.glAttachShader(glCreateProgram, k5);
            a("glAttachShader");
            GLES20.glAttachShader(glCreateProgram, k4);
            a("glAttachShader");
            GLES20.glLinkProgram(glCreateProgram);
            int[] iArr = new int[1];
            GLES20.glGetProgramiv(glCreateProgram, 35714, iArr, 0);
            if (iArr[0] != 1) {
                c.e("Could not link program: ");
                c.e(GLES20.glGetProgramInfoLog(glCreateProgram));
                GLES20.glDeleteProgram(glCreateProgram);
                return 0;
            }
        }
        return glCreateProgram;
    }

    public int d() {
        return this.f55037i;
    }

    public int e() {
        return this.f55036h;
    }

    public int f() {
        return this.f55035g;
    }

    public int g() {
        return this.f55034f;
    }

    public GSYVideoGLView.c h() {
        return null;
    }

    public float[] i() {
        return this.f55032d;
    }

    public void j() {
        int i2 = this.f55034f;
        if (i2 == 0 || this.f55035g == 0) {
            return;
        }
        Matrix.scaleM(this.f55032d, 0, i2 / this.f55031c.getWidth(), this.f55035g / this.f55031c.getHeight(), 1.0f);
    }

    protected int k(int i2, String str) {
        int glCreateShader = GLES20.glCreateShader(i2);
        if (glCreateShader != 0) {
            GLES20.glShaderSource(glCreateShader, str);
            GLES20.glCompileShader(glCreateShader);
            int[] iArr = new int[1];
            GLES20.glGetShaderiv(glCreateShader, 35713, iArr, 0);
            if (iArr[0] == 0) {
                c.e("Could not compile shader " + i2 + ":");
                c.e(GLES20.glGetShaderInfoLog(glCreateShader));
                GLES20.glDeleteShader(glCreateShader);
                return 0;
            }
            return glCreateShader;
        }
        return glCreateShader;
    }

    public abstract void l();

    public void m(Surface surface) {
        this.f55041m.post(new RunnableC0272a(surface));
    }

    public void n(int i2) {
        this.f55037i = i2;
    }

    public void o(int i2) {
        this.f55036h = i2;
    }

    public void p(int i2) {
        this.f55035g = i2;
    }

    public void q(int i2) {
        this.f55034f = i2;
    }

    public void r(GSYVideoGLView.c cVar) {
    }

    public void s(d2.a aVar) {
        this.f55030b = aVar;
    }

    public void t(d2.b bVar) {
        this.f55040l = bVar;
    }

    public void u(e eVar, boolean z3) {
    }

    public void v(float[] fArr) {
        this.f55032d = fArr;
    }

    public void w(GLSurfaceView gLSurfaceView) {
        this.f55031c = gLSurfaceView;
    }

    public void x() {
    }
}
