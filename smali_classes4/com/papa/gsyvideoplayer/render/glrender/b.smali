.class public Lcom/papa/gsyvideoplayer/render/glrender/b;
.super Lcom/papa/gsyvideoplayer/render/glrender/a;
.source "GSYVideoGLViewSimpleRender.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field private static final B:I = 0x4

.field private static final C:I = 0x14

.field private static final D:I = 0x0

.field private static final E:I = 0x3

.field protected static final F:I = 0x8d65


# instance fields
.field private A:Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$c;

.field private final n:[F

.field private final o:Ljava/lang/String;

.field private p:I

.field private q:[I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:Z

.field private w:Z

.field private x:Ljava/nio/FloatBuffer;

.field private y:Landroid/graphics/SurfaceTexture;

.field private z:Lc2/e;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/papa/gsyvideoplayer/render/glrender/a;-><init>()V

    const/16 v0, 0x14

    new-array v0, v0, [F

    .line 2
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->n:[F

    const-string v1, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    .line 3
    iput-object v1, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->o:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 4
    iput-object v1, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->q:[I

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->v:Z

    .line 6
    iput-boolean v1, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->w:Z

    .line 7
    new-instance v2, Lcom/papa/gsyvideoplayer/render/effect/q;

    invoke-direct {v2}, Lcom/papa/gsyvideoplayer/render/effect/q;-><init>()V

    iput-object v2, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->A:Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$c;

    .line 8
    array-length v2, v0

    mul-int/lit8 v2, v2, 0x4

    .line 9
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 10
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->x:Ljava/nio/FloatBuffer;

    .line 11
    invoke-virtual {v2, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 12
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/a;->e:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 13
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/a;->d:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public A()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->t:I

    return v0
.end method

.method public B()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->u:I

    return v0
.end method

.method public C()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->r:I

    return v0
.end method

.method public D()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->s:I

    return v0
.end method

.method public E()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->p:I

    return v0
.end method

.method public F()[F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/a;->e:[F

    return-object v0
.end method

.method public G()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->q:[I

    return-object v0
.end method

.method protected H()Ljava/lang/String;
    .locals 1

    const-string v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    return-object v0
.end method

.method protected I()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/a;->j:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/render/glrender/b;->H()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/render/glrender/b;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/papa/gsyvideoplayer/render/glrender/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->p:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/a;->j:Z

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 4
    invoke-static {v1, v1, v1, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0x4100

    .line 5
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 6
    iget v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->p:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v0, "glUseProgram"

    .line 7
    invoke-virtual {p0, v0}, Lcom/papa/gsyvideoplayer/render/glrender/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected J()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->x:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 2
    iget v2, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->t:I

    iget-object v7, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->x:Ljava/nio/FloatBuffer;

    const/4 v3, 0x3

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/16 v6, 0x14

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const-string v0, "glVertexAttribPointer maPosition"

    .line 3
    invoke-virtual {p0, v0}, Lcom/papa/gsyvideoplayer/render/glrender/a;->a(Ljava/lang/String;)V

    .line 4
    iget v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->t:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string v0, "glEnableVertexAttribArray maPositionHandle"

    .line 5
    invoke-virtual {p0, v0}, Lcom/papa/gsyvideoplayer/render/glrender/a;->a(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->x:Ljava/nio/FloatBuffer;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 7
    iget v3, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->u:I

    iget-object v8, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->x:Ljava/nio/FloatBuffer;

    const/4 v4, 0x3

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/16 v7, 0x14

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const-string v0, "glVertexAttribPointer maTextureHandle"

    .line 8
    invoke-virtual {p0, v0}, Lcom/papa/gsyvideoplayer/render/glrender/a;->a(Ljava/lang/String;)V

    .line 9
    iget v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->u:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string v0, "glEnableVertexAttribArray maTextureHandle"

    .line 10
    invoke-virtual {p0, v0}, Lcom/papa/gsyvideoplayer/render/glrender/a;->a(Ljava/lang/String;)V

    .line 11
    iget v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->r:I

    iget-object v2, p0, Lcom/papa/gsyvideoplayer/render/glrender/a;->d:[F

    const/4 v3, 0x1

    invoke-static {v0, v3, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 12
    iget v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->s:I

    iget-object v2, p0, Lcom/papa/gsyvideoplayer/render/glrender/a;->e:[F

    invoke-static {v0, v3, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/4 v0, 0x5

    const/4 v2, 0x4

    .line 13
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const-string v0, "glDrawArrays"

    .line 14
    invoke-virtual {p0, v0}, Lcom/papa/gsyvideoplayer/render/glrender/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected K(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->w:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->w:Z

    .line 3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->z:Lc2/e;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/a;->c:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getWidth()I

    move-result v4

    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/a;->c:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getHeight()I

    move-result v5

    move-object v1, p0

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/papa/gsyvideoplayer/render/glrender/a;->b(IIIILjavax/microedition/khronos/opengles/GL10;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->z:Lc2/e;

    invoke-interface {v0, p1}, Lc2/e;->a(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public h()Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->A:Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$c;

    return-object v0
.end method

.method public l()V
    .locals 0

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->v:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->y:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 4
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->y:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/papa/gsyvideoplayer/render/glrender/a;->e:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->v:Z

    .line 6
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/render/glrender/b;->I()V

    .line 8
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/render/glrender/b;->y()V

    .line 9
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/render/glrender/b;->J()V

    .line 10
    invoke-virtual {p0, p1}, Lcom/papa/gsyvideoplayer/render/glrender/b;->K(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 11
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    return-void

    :catchall_0
    move-exception p1

    .line 12
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    monitor-enter p0

    const/4 p1, 0x1

    .line 1
    :try_start_0
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->v:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-static {p1, p1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/render/glrender/b;->H()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/render/glrender/b;->z()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/papa/gsyvideoplayer/render/glrender/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->p:I

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p2, "aPosition"

    .line 2
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->t:I

    const-string p1, "glGetAttribLocation aPosition"

    .line 3
    invoke-virtual {p0, p1}, Lcom/papa/gsyvideoplayer/render/glrender/a;->a(Ljava/lang/String;)V

    .line 4
    iget p1, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->t:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_4

    .line 5
    iget p1, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->p:I

    const-string v0, "aTextureCoord"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->u:I

    const-string p1, "glGetAttribLocation aTextureCoord"

    .line 6
    invoke-virtual {p0, p1}, Lcom/papa/gsyvideoplayer/render/glrender/a;->a(Ljava/lang/String;)V

    .line 7
    iget p1, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->u:I

    if-eq p1, p2, :cond_3

    .line 8
    iget p1, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->p:I

    const-string v0, "uMVPMatrix"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->r:I

    const-string p1, "glGetUniformLocation uMVPMatrix"

    .line 9
    invoke-virtual {p0, p1}, Lcom/papa/gsyvideoplayer/render/glrender/a;->a(Ljava/lang/String;)V

    .line 10
    iget p1, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->r:I

    if-eq p1, p2, :cond_2

    .line 11
    iget p1, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->p:I

    const-string v0, "uSTMatrix"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->s:I

    const-string p1, "glGetUniformLocation uSTMatrix"

    .line 12
    invoke-virtual {p0, p1}, Lcom/papa/gsyvideoplayer/render/glrender/a;->a(Ljava/lang/String;)V

    .line 13
    iget p1, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->s:I

    if-eq p1, p2, :cond_1

    const/4 p1, 0x2

    .line 14
    iget-object p2, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->q:[I

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    const p1, 0x8d65

    .line 15
    iget-object p2, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->q:[I

    aget p2, p2, v0

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const-string p1, "glBindTexture mTextureID"

    .line 16
    invoke-virtual {p0, p1}, Lcom/papa/gsyvideoplayer/render/glrender/a;->a(Ljava/lang/String;)V

    const/16 p1, 0x2801

    const/16 p2, 0xde1

    const/16 v1, 0x2601

    .line 17
    invoke-static {p2, p1, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2800

    .line 18
    invoke-static {p2, p1, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2802

    const v1, 0x812f

    .line 19
    invoke-static {p2, p1, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2803

    .line 20
    invoke-static {p2, p1, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 21
    new-instance p1, Landroid/graphics/SurfaceTexture;

    iget-object p2, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->q:[I

    aget p2, p2, v0

    invoke-direct {p1, p2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object p1, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->y:Landroid/graphics/SurfaceTexture;

    .line 22
    invoke-virtual {p1, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 23
    new-instance p1, Landroid/view/Surface;

    iget-object p2, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->y:Landroid/graphics/SurfaceTexture;

    invoke-direct {p1, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 24
    invoke-virtual {p0, p1}, Lcom/papa/gsyvideoplayer/render/glrender/a;->m(Landroid/view/Surface;)V

    return-void

    .line 25
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Could not get attrib location for uSTMatrix"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Could not get attrib location for uMVPMatrix"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Could not get attrib location for aTextureCoord"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Could not get attrib location for aPosition"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public r(Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$c;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->A:Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$c;

    :cond_0
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/render/glrender/a;->j:Z

    .line 3
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/render/glrender/a;->k:Z

    return-void
.end method

.method public u(Lc2/e;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->z:Lc2/e;

    .line 2
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/render/glrender/a;->a:Z

    return-void
.end method

.method public x()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->w:Z

    return-void
.end method

.method protected y()V
    .locals 2

    const v0, 0x84c0

    .line 1
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->q:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const v1, 0x8d65

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method

.method protected z()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/glrender/b;->A:Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$c;

    iget-object v1, p0, Lcom/papa/gsyvideoplayer/render/glrender/a;->c:Landroid/opengl/GLSurfaceView;

    invoke-interface {v0, v1}, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$c;->a(Landroid/opengl/GLSurfaceView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
