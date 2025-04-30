.class public Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;
.super Landroid/opengl/GLSurfaceView;
.source "GSYVideoGLView.java"

# interfaces
.implements Ld2/a;
.implements Lcom/papa/gsyvideoplayer/render/view/a;
.implements Lcom/papa/gsyvideoplayer/utils/j$a;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$c;
    }
.end annotation


# static fields
.field private static final j:Ljava/lang/String;

.field public static final k:I = 0x0

.field public static final l:I = 0x1


# instance fields
.field private a:Lcom/papa/gsyvideoplayer/render/glrender/a;

.field private b:Landroid/content/Context;

.field private c:Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$c;

.field private d:Lcom/papa/gsyvideoplayer/utils/j$a;

.field private e:Lcom/papa/gsyvideoplayer/utils/j;

.field private f:Ld2/a;

.field private g:Ld2/c;

.field private h:[F

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Lcom/papa/gsyvideoplayer/render/effect/q;

    invoke-direct {v0}, Lcom/papa/gsyvideoplayer/render/effect/q;-><init>()V

    iput-object v0, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->c:Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$c;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->i:I

    .line 4
    invoke-direct {p0, p1}, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->i(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    new-instance p2, Lcom/papa/gsyvideoplayer/render/effect/q;

    invoke-direct {p2}, Lcom/papa/gsyvideoplayer/render/effect/q;-><init>()V

    iput-object p2, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->c:Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$c;

    const/4 p2, 0x0

    .line 7
    iput p2, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->i:I

    .line 8
    invoke-direct {p0, p1}, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->i(Landroid/content/Context;)V

    return-void
.end method

.method public static h(Landroid/content/Context;Landroid/view/ViewGroup;ILd2/c;Lcom/papa/gsyvideoplayer/utils/j$a;Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$c;[FLcom/papa/gsyvideoplayer/render/glrender/a;I)Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;
    .locals 11

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 3
    :cond_0
    new-instance v2, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;

    move-object v4, p0

    invoke-direct {v2, p0}, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;-><init>(Landroid/content/Context;)V

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v2, v1}, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->setCustomRenderer(Lcom/papa/gsyvideoplayer/render/glrender/a;)V

    :cond_1
    move-object/from16 v1, p5

    .line 5
    invoke-virtual {v2, v1}, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->setEffect(Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$c;)V

    move-object v1, p4

    .line 6
    invoke-virtual {v2, p4}, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->setVideoParamsListener(Lcom/papa/gsyvideoplayer/utils/j$a;)V

    move/from16 v9, p8

    .line 7
    invoke-virtual {v2, v9}, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->setRenderMode(I)V

    move-object v7, p3

    .line 8
    invoke-virtual {v2, p3}, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->setIGSYSurfaceListener(Ld2/c;)V

    move v6, p2

    int-to-float v3, v6

    .line 9
    invoke-virtual {v2, v3}, Landroid/opengl/GLSurfaceView;->setRotation(F)V

    .line 10
    invoke-virtual {v2}, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->j()V

    .line 11
    new-instance v10, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$b;

    move-object v3, v10

    move-object v4, p0

    move-object v5, p1

    move-object v8, p4

    invoke-direct/range {v3 .. v9}, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$b;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;ILd2/c;Lcom/papa/gsyvideoplayer/utils/j$a;I)V

    invoke-virtual {v2, v10}, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->setGSYVideoGLRenderErrorListener(Ld2/b;)V

    if-eqz v0, :cond_2

    .line 12
    array-length v1, v0

    const/16 v3, 0x10

    if-ne v1, v3, :cond_2

    .line 13
    invoke-virtual {v2, v0}, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->setMVPMatrix([F)V

    :cond_2
    move-object v0, p1

    .line 14
    invoke-static {p1, v2}, Lcom/papa/gsyvideoplayer/render/a;->a(Landroid/view/ViewGroup;Landroid/view/View;)V

    return-object v2
.end method

.method private i(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->b:Landroid/content/Context;

    const/4 p1, 0x2

    .line 2
    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 3
    new-instance p1, Lcom/papa/gsyvideoplayer/render/glrender/b;

    invoke-direct {p1}, Lcom/papa/gsyvideoplayer/render/glrender/b;-><init>()V

    iput-object p1, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->a:Lcom/papa/gsyvideoplayer/render/glrender/a;

    .line 4
    new-instance p1, Lcom/papa/gsyvideoplayer/utils/j;

    invoke-direct {p1, p0, p0}, Lcom/papa/gsyvideoplayer/utils/j;-><init>(Landroid/view/View;Lcom/papa/gsyvideoplayer/utils/j$a;)V

    iput-object p1, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->e:Lcom/papa/gsyvideoplayer/utils/j;

    .line 5
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->a:Lcom/papa/gsyvideoplayer/render/glrender/a;

    invoke-virtual {p1, p0}, Lcom/papa/gsyvideoplayer/render/glrender/a;->w(Landroid/opengl/GLSurfaceView;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;ZLc2/f;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$a;

    invoke-direct {v0, p0, p3, p1}, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$a;-><init>(Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;Lc2/f;Ljava/io/File;)V

    .line 2
    invoke-virtual {p0, v0, p2}, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->setGSYVideoShotListener(Lc2/e;Z)V

    .line 3
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->m()V

    return-void
.end method

.method public b()Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not support initCover now"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public c()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->requestLayout()V

    .line 2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->onResume()V

    return-void
.end method

.method public d()Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not support initCoverHigh now"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public e()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->requestLayout()V

    .line 2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->l()V

    return-void
.end method

.method public f(Lc2/e;Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->setGSYVideoShotListener(Lc2/e;Z)V

    .line 2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->m()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->requestLayout()V

    .line 2
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    return-void
.end method

.method public getCurrentVideoHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->d:Lcom/papa/gsyvideoplayer/utils/j$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/utils/j$a;->getCurrentVideoHeight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentVideoWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->d:Lcom/papa/gsyvideoplayer/utils/j$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/utils/j$a;->getCurrentVideoWidth()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getEffect()Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->c:Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$c;

    return-object v0
.end method

.method public getIGSYSurfaceListener()Ld2/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->g:Ld2/c;

    return-object v0
.end method

.method public getMVPMatrix()[F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->h:[F

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->i:I

    return v0
.end method

.method public getRenderView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getRenderer()Lcom/papa/gsyvideoplayer/render/glrender/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->a:Lcom/papa/gsyvideoplayer/render/glrender/a;

    return-object v0
.end method

.method public getSizeH()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getHeight()I

    move-result v0

    return v0
.end method

.method public getSizeW()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getWidth()I

    move-result v0

    return v0
.end method

.method public getVideoSarDen()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->d:Lcom/papa/gsyvideoplayer/utils/j$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/utils/j$a;->getVideoSarDen()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoSarNum()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->d:Lcom/papa/gsyvideoplayer/utils/j$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/utils/j$a;->getVideoSarNum()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->a:Lcom/papa/gsyvideoplayer/render/glrender/a;

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    return-void
.end method

.method protected k()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->d:Lcom/papa/gsyvideoplayer/utils/j$a;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->i:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/utils/j$a;->getCurrentVideoWidth()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->d:Lcom/papa/gsyvideoplayer/utils/j$a;

    invoke-interface {v1}, Lcom/papa/gsyvideoplayer/utils/j$a;->getCurrentVideoHeight()I

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->a:Lcom/papa/gsyvideoplayer/render/glrender/a;

    if-eqz v2, :cond_0

    .line 5
    iget-object v3, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->e:Lcom/papa/gsyvideoplayer/utils/j;

    invoke-virtual {v3}, Lcom/papa/gsyvideoplayer/utils/j;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/papa/gsyvideoplayer/render/glrender/a;->q(I)V

    .line 6
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->a:Lcom/papa/gsyvideoplayer/render/glrender/a;

    iget-object v3, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->e:Lcom/papa/gsyvideoplayer/utils/j;

    invoke-virtual {v3}, Lcom/papa/gsyvideoplayer/utils/j;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/papa/gsyvideoplayer/render/glrender/a;->p(I)V

    .line 7
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->a:Lcom/papa/gsyvideoplayer/render/glrender/a;

    invoke-virtual {v2, v0}, Lcom/papa/gsyvideoplayer/render/glrender/a;->o(I)V

    .line 8
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->a:Lcom/papa/gsyvideoplayer/render/glrender/a;

    invoke-virtual {v0, v1}, Lcom/papa/gsyvideoplayer/render/glrender/a;->n(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->a:Lcom/papa/gsyvideoplayer/render/glrender/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/render/glrender/a;->l()V

    :cond_0
    return-void
.end method

.method public m()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->a:Lcom/papa/gsyvideoplayer/render/glrender/a;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/render/glrender/a;->x()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-super {p0, p1, p2}, Landroid/opengl/GLSurfaceView;->onMeasure(II)V

    .line 3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->e:Lcom/papa/gsyvideoplayer/utils/j;

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getRotation()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/papa/gsyvideoplayer/utils/j;->e(III)V

    .line 4
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->k()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->e:Lcom/papa/gsyvideoplayer/utils/j;

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getRotation()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/papa/gsyvideoplayer/utils/j;->e(III)V

    .line 6
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->e:Lcom/papa/gsyvideoplayer/utils/j;

    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/utils/j;->c()I

    move-result p1

    iget-object p2, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->e:Lcom/papa/gsyvideoplayer/utils/j;

    invoke-virtual {p2}, Lcom/papa/gsyvideoplayer/utils/j;->b()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/opengl/GLSurfaceView;->setMeasuredDimension(II)V

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->a:Lcom/papa/gsyvideoplayer/render/glrender/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/render/glrender/a;->j()V

    :cond_0
    return-void
.end method

.method public onSurfaceAvailable(Landroid/view/Surface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->g:Ld2/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ld2/c;->onSurfaceAvailable(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public setCustomRenderer(Lcom/papa/gsyvideoplayer/render/glrender/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->a:Lcom/papa/gsyvideoplayer/render/glrender/a;

    .line 2
    invoke-virtual {p1, p0}, Lcom/papa/gsyvideoplayer/render/glrender/a;->w(Landroid/opengl/GLSurfaceView;)V

    .line 3
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->k()V

    return-void
.end method

.method public setEffect(Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$c;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->c:Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$c;

    .line 2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->a:Lcom/papa/gsyvideoplayer/render/glrender/a;

    invoke-virtual {v0, p1}, Lcom/papa/gsyvideoplayer/render/glrender/a;->r(Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$c;)V

    :cond_0
    return-void
.end method

.method public setGLEffectFilter(Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$c;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->setEffect(Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$c;)V

    return-void
.end method

.method public setGLMVPMatrix([F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->setMVPMatrix([F)V

    return-void
.end method

.method public setGLRenderer(Lcom/papa/gsyvideoplayer/render/glrender/a;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->setCustomRenderer(Lcom/papa/gsyvideoplayer/render/glrender/a;)V

    return-void
.end method

.method public setGSYVideoGLRenderErrorListener(Ld2/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->a:Lcom/papa/gsyvideoplayer/render/glrender/a;

    invoke-virtual {v0, p1}, Lcom/papa/gsyvideoplayer/render/glrender/a;->t(Ld2/b;)V

    return-void
.end method

.method public setGSYVideoShotListener(Lc2/e;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->a:Lcom/papa/gsyvideoplayer/render/glrender/a;

    invoke-virtual {v0, p1, p2}, Lcom/papa/gsyvideoplayer/render/glrender/a;->u(Lc2/e;Z)V

    return-void
.end method

.method public setIGSYSurfaceListener(Ld2/c;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p0}, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->setOnGSYSurfaceListener(Ld2/a;)V

    .line 2
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->g:Ld2/c;

    return-void
.end method

.method public setMVPMatrix([F)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->h:[F

    .line 2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->a:Lcom/papa/gsyvideoplayer/render/glrender/a;

    invoke-virtual {v0, p1}, Lcom/papa/gsyvideoplayer/render/glrender/a;->v([F)V

    :cond_0
    return-void
.end method

.method public setMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->i:I

    return-void
.end method

.method public setOnGSYSurfaceListener(Ld2/a;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->f:Ld2/a;

    .line 2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->a:Lcom/papa/gsyvideoplayer/render/glrender/a;

    invoke-virtual {v0, p1}, Lcom/papa/gsyvideoplayer/render/glrender/a;->s(Ld2/a;)V

    return-void
.end method

.method public setRenderMode(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->setMode(I)V

    return-void
.end method

.method public setRenderTransform(Landroid/graphics/Matrix;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not support setRenderTransform now"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    return-void
.end method

.method public setVideoParamsListener(Lcom/papa/gsyvideoplayer/utils/j$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView;->d:Lcom/papa/gsyvideoplayer/utils/j$a;

    return-void
.end method
