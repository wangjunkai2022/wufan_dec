package com.papa.gsyvideoplayer.render.glrender;

import android.annotation.SuppressLint;
import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import android.opengl.Matrix;
import android.view.Surface;
import c2.e;
import com.papa.gsyvideoplayer.render.effect.q;
import com.papa.gsyvideoplayer.render.view.GSYVideoGLView;
import com.uc.crashsdk.export.LogType;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;
/* compiled from: GSYVideoGLViewSimpleRender.java */
@SuppressLint({"ViewConstructor"})
/* loaded from: classes4.dex */
public class b extends a {
    private static final int B = 4;
    private static final int C = 20;
    private static final int D = 0;
    private static final int E = 3;
    protected static final int F = 36197;

    /* renamed from: n  reason: collision with root package name */
    private final float[] f55047n;

    /* renamed from: p  reason: collision with root package name */
    private int f55049p;

    /* renamed from: r  reason: collision with root package name */
    private int f55051r;

    /* renamed from: s  reason: collision with root package name */
    private int f55052s;

    /* renamed from: t  reason: collision with root package name */
    private int f55053t;

    /* renamed from: u  reason: collision with root package name */
    private int f55054u;

    /* renamed from: x  reason: collision with root package name */
    private FloatBuffer f55057x;

    /* renamed from: y  reason: collision with root package name */
    private SurfaceTexture f55058y;

    /* renamed from: z  reason: collision with root package name */
    private e f55059z;

    /* renamed from: o  reason: collision with root package name */
    private final String f55048o = "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n";

    /* renamed from: q  reason: collision with root package name */
    private int[] f55050q = new int[2];

    /* renamed from: v  reason: collision with root package name */
    private boolean f55055v = false;

    /* renamed from: w  reason: collision with root package name */
    private boolean f55056w = false;
    private GSYVideoGLView.c A = new q();

    public b() {
        float[] fArr = {-1.0f, -1.0f, 0.0f, 0.0f, 0.0f, 1.0f, -1.0f, 0.0f, 1.0f, 0.0f, -1.0f, 1.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f, 1.0f};
        this.f55047n = fArr;
        FloatBuffer asFloatBuffer = ByteBuffer.allocateDirect(fArr.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.f55057x = asFloatBuffer;
        asFloatBuffer.put(fArr).position(0);
        Matrix.setIdentityM(this.f55033e, 0);
        Matrix.setIdentityM(this.f55032d, 0);
    }

    public int A() {
        return this.f55053t;
    }

    public int B() {
        return this.f55054u;
    }

    public int C() {
        return this.f55051r;
    }

    public int D() {
        return this.f55052s;
    }

    public int E() {
        return this.f55049p;
    }

    public float[] F() {
        return this.f55033e;
    }

    public int[] G() {
        return this.f55050q;
    }

    protected String H() {
        return "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n";
    }

    protected void I() {
        if (this.f55038j) {
            this.f55049p = c(H(), z());
            this.f55038j = false;
        }
        GLES20.glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
        GLES20.glClear(LogType.UNEXP_RESTART);
        GLES20.glUseProgram(this.f55049p);
        a("glUseProgram");
    }

    protected void J() {
        this.f55057x.position(0);
        GLES20.glVertexAttribPointer(this.f55053t, 3, 5126, false, 20, (Buffer) this.f55057x);
        a("glVertexAttribPointer maPosition");
        GLES20.glEnableVertexAttribArray(this.f55053t);
        a("glEnableVertexAttribArray maPositionHandle");
        this.f55057x.position(3);
        GLES20.glVertexAttribPointer(this.f55054u, 3, 5126, false, 20, (Buffer) this.f55057x);
        a("glVertexAttribPointer maTextureHandle");
        GLES20.glEnableVertexAttribArray(this.f55054u);
        a("glEnableVertexAttribArray maTextureHandle");
        GLES20.glUniformMatrix4fv(this.f55051r, 1, false, this.f55032d, 0);
        GLES20.glUniformMatrix4fv(this.f55052s, 1, false, this.f55033e, 0);
        GLES20.glDrawArrays(5, 0, 4);
        a("glDrawArrays");
    }

    protected void K(GL10 gl10) {
        if (this.f55056w) {
            this.f55056w = false;
            if (this.f55059z != null) {
                this.f55059z.a(b(0, 0, this.f55031c.getWidth(), this.f55031c.getHeight(), gl10));
            }
        }
    }

    @Override // com.papa.gsyvideoplayer.render.glrender.a
    public GSYVideoGLView.c h() {
        return this.A;
    }

    @Override // com.papa.gsyvideoplayer.render.glrender.a
    public void l() {
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onDrawFrame(GL10 gl10) {
        synchronized (this) {
            if (this.f55055v) {
                this.f55058y.updateTexImage();
                this.f55058y.getTransformMatrix(this.f55033e);
                this.f55055v = false;
            }
        }
        I();
        y();
        J();
        K(gl10);
        GLES20.glFinish();
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public synchronized void onFrameAvailable(SurfaceTexture surfaceTexture) {
        this.f55055v = true;
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onSurfaceChanged(GL10 gl10, int i2, int i4) {
        GLES20.glViewport(0, 0, i2, i4);
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
        int c4 = c(H(), z());
        this.f55049p = c4;
        if (c4 == 0) {
            return;
        }
        this.f55053t = GLES20.glGetAttribLocation(c4, "aPosition");
        a("glGetAttribLocation aPosition");
        if (this.f55053t != -1) {
            this.f55054u = GLES20.glGetAttribLocation(this.f55049p, "aTextureCoord");
            a("glGetAttribLocation aTextureCoord");
            if (this.f55054u != -1) {
                this.f55051r = GLES20.glGetUniformLocation(this.f55049p, "uMVPMatrix");
                a("glGetUniformLocation uMVPMatrix");
                if (this.f55051r != -1) {
                    this.f55052s = GLES20.glGetUniformLocation(this.f55049p, "uSTMatrix");
                    a("glGetUniformLocation uSTMatrix");
                    if (this.f55052s != -1) {
                        GLES20.glGenTextures(2, this.f55050q, 0);
                        GLES20.glBindTexture(F, this.f55050q[0]);
                        a("glBindTexture mTextureID");
                        GLES20.glTexParameteri(3553, 10241, 9729);
                        GLES20.glTexParameteri(3553, 10240, 9729);
                        GLES20.glTexParameteri(3553, 10242, 33071);
                        GLES20.glTexParameteri(3553, 10243, 33071);
                        SurfaceTexture surfaceTexture = new SurfaceTexture(this.f55050q[0]);
                        this.f55058y = surfaceTexture;
                        surfaceTexture.setOnFrameAvailableListener(this);
                        m(new Surface(this.f55058y));
                        return;
                    }
                    throw new RuntimeException("Could not get attrib location for uSTMatrix");
                }
                throw new RuntimeException("Could not get attrib location for uMVPMatrix");
            }
            throw new RuntimeException("Could not get attrib location for aTextureCoord");
        }
        throw new RuntimeException("Could not get attrib location for aPosition");
    }

    @Override // com.papa.gsyvideoplayer.render.glrender.a
    public void r(GSYVideoGLView.c cVar) {
        if (cVar != null) {
            this.A = cVar;
        }
        this.f55038j = true;
        this.f55039k = true;
    }

    @Override // com.papa.gsyvideoplayer.render.glrender.a
    public void u(e eVar, boolean z3) {
        this.f55059z = eVar;
        this.f55029a = z3;
    }

    @Override // com.papa.gsyvideoplayer.render.glrender.a
    public void x() {
        this.f55056w = true;
    }

    protected void y() {
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(F, this.f55050q[0]);
    }

    protected String z() {
        return this.A.a(this.f55031c);
    }
}
