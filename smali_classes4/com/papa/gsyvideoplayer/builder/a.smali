.class public Lcom/papa/gsyvideoplayer/builder/a;
.super Ljava/lang/Object;
.source "GSYVideoOptionBuilder.java"


# instance fields
.field protected A:Z

.field protected B:Z

.field protected C:Z

.field protected D:Z

.field protected E:Ljava/lang/String;

.field protected F:Ljava/lang/String;

.field protected G:Ljava/lang/String;

.field protected H:Ljava/lang/String;

.field private I:Z

.field protected J:Ljava/io/File;

.field protected K:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected L:Lc2/h;

.field protected M:Lc2/g;

.field protected N:Landroid/view/View;

.field protected O:Landroid/graphics/drawable/Drawable;

.field protected P:Landroid/graphics/drawable/Drawable;

.field protected Q:Landroid/graphics/drawable/Drawable;

.field protected R:Landroid/graphics/drawable/Drawable;

.field protected S:Landroid/graphics/drawable/Drawable;

.field protected T:Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$c;

.field protected U:Lc2/d;

.field protected a:I

.field protected b:I

.field protected c:I

.field protected d:I

.field protected e:I

.field protected f:I

.field protected g:J

.field protected h:F

.field protected i:F

.field protected j:Z

.field protected k:Z

.field protected l:Z

.field protected m:Z

.field protected n:Z

.field protected o:Z

.field protected p:Z

.field protected q:Z

.field protected r:Z

.field protected s:Z

.field protected t:Z

.field protected u:Z

.field protected v:Z

.field protected w:Z

.field protected x:Z

.field protected y:Z

.field protected z:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/papa/gsyvideoplayer/builder/a;->a:I

    .line 3
    iput v0, p0, Lcom/papa/gsyvideoplayer/builder/a;->b:I

    const/16 v0, -0x16

    .line 4
    iput v0, p0, Lcom/papa/gsyvideoplayer/builder/a;->c:I

    const/16 v0, -0xb

    .line 5
    iput v0, p0, Lcom/papa/gsyvideoplayer/builder/a;->d:I

    .line 6
    iput v0, p0, Lcom/papa/gsyvideoplayer/builder/a;->e:I

    const/16 v0, 0x9c4

    .line 7
    iput v0, p0, Lcom/papa/gsyvideoplayer/builder/a;->f:I

    const-wide/16 v0, -0x1

    .line 8
    iput-wide v0, p0, Lcom/papa/gsyvideoplayer/builder/a;->g:J

    const/high16 v0, 0x3f800000    # 1.0f

    .line 9
    iput v0, p0, Lcom/papa/gsyvideoplayer/builder/a;->h:F

    .line 10
    iput v0, p0, Lcom/papa/gsyvideoplayer/builder/a;->i:F

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/builder/a;->j:Z

    .line 12
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/builder/a;->k:Z

    const/4 v1, 0x0

    .line 13
    iput-boolean v1, p0, Lcom/papa/gsyvideoplayer/builder/a;->l:Z

    .line 14
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/builder/a;->m:Z

    .line 15
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/builder/a;->n:Z

    .line 16
    iput-boolean v1, p0, Lcom/papa/gsyvideoplayer/builder/a;->o:Z

    .line 17
    iput-boolean v1, p0, Lcom/papa/gsyvideoplayer/builder/a;->p:Z

    .line 18
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/builder/a;->q:Z

    .line 19
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/builder/a;->r:Z

    .line 20
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/builder/a;->s:Z

    .line 21
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/builder/a;->t:Z

    .line 22
    iput-boolean v1, p0, Lcom/papa/gsyvideoplayer/builder/a;->y:Z

    .line 23
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/builder/a;->z:Z

    .line 24
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/builder/a;->A:Z

    .line 25
    iput-boolean v1, p0, Lcom/papa/gsyvideoplayer/builder/a;->B:Z

    .line 26
    iput-boolean v1, p0, Lcom/papa/gsyvideoplayer/builder/a;->C:Z

    .line 27
    iput-boolean v1, p0, Lcom/papa/gsyvideoplayer/builder/a;->D:Z

    const-string v0, ""

    .line 28
    iput-object v0, p0, Lcom/papa/gsyvideoplayer/builder/a;->E:Ljava/lang/String;

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/papa/gsyvideoplayer/builder/a;->G:Ljava/lang/String;

    .line 30
    iput-boolean v1, p0, Lcom/papa/gsyvideoplayer/builder/a;->I:Z

    .line 31
    new-instance v0, Lcom/papa/gsyvideoplayer/render/effect/q;

    invoke-direct {v0}, Lcom/papa/gsyvideoplayer/render/effect/q;-><init>()V

    iput-object v0, p0, Lcom/papa/gsyvideoplayer/builder/a;->T:Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$c;

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;)Lcom/papa/gsyvideoplayer/builder/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/builder/a;->H:Ljava/lang/String;

    return-object p0
.end method

.method public B(I)Lcom/papa/gsyvideoplayer/builder/a;
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/gsyvideoplayer/builder/a;->c:I

    return-object p0
.end method

.method public C(Ljava/lang/String;)Lcom/papa/gsyvideoplayer/builder/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/builder/a;->E:Ljava/lang/String;

    return-object p0
.end method

.method public D(Z)Lcom/papa/gsyvideoplayer/builder/a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/builder/a;->A:Z

    return-object p0
.end method

.method public E(Z)Lcom/papa/gsyvideoplayer/builder/a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/builder/a;->n:Z

    return-object p0
.end method

.method public F(Z)Lcom/papa/gsyvideoplayer/builder/a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/builder/a;->t:Z

    return-object p0
.end method

.method public G(J)Lcom/papa/gsyvideoplayer/builder/a;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/papa/gsyvideoplayer/builder/a;->g:J

    return-object p0
.end method

.method public H(F)Lcom/papa/gsyvideoplayer/builder/a;
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    return-object p0

    .line 1
    :cond_0
    iput p1, p0, Lcom/papa/gsyvideoplayer/builder/a;->h:F

    return-object p0
.end method

.method public I(Z)Lcom/papa/gsyvideoplayer/builder/a;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/builder/a;->y:Z

    return-object p0
.end method

.method public J(Z)Lcom/papa/gsyvideoplayer/builder/a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/builder/a;->D:Z

    return-object p0
.end method

.method public K(Z)Lcom/papa/gsyvideoplayer/builder/a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/builder/a;->k:Z

    return-object p0
.end method

.method public L(Z)Lcom/papa/gsyvideoplayer/builder/a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/builder/a;->s:Z

    return-object p0
.end method

.method public M(I)Lcom/papa/gsyvideoplayer/builder/a;
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/gsyvideoplayer/builder/a;->a:I

    return-object p0
.end method

.method public N(Z)Lcom/papa/gsyvideoplayer/builder/a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/builder/a;->x:Z

    return-object p0
.end method

.method public O(F)Lcom/papa/gsyvideoplayer/builder/a;
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/gsyvideoplayer/builder/a;->i:F

    return-object p0
.end method

.method public P(Z)Lcom/papa/gsyvideoplayer/builder/a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/builder/a;->z:Z

    return-object p0
.end method

.method public Q(Landroid/view/View;)Lcom/papa/gsyvideoplayer/builder/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/builder/a;->N:Landroid/view/View;

    return-object p0
.end method

.method public R(Z)Lcom/papa/gsyvideoplayer/builder/a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/builder/a;->w:Z

    return-object p0
.end method

.method public S(Ljava/lang/String;)Lcom/papa/gsyvideoplayer/builder/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/builder/a;->F:Ljava/lang/String;

    return-object p0
.end method

.method public T(Lc2/h;)Lcom/papa/gsyvideoplayer/builder/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/builder/a;->L:Lc2/h;

    return-object p0
.end method

.method public U(Ljava/lang/String;)Lcom/papa/gsyvideoplayer/builder/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/builder/a;->G:Ljava/lang/String;

    return-object p0
.end method

.method public a(Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/builder/a;->P:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/papa/gsyvideoplayer/builder/a;->Q:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p1, v0, v1}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->setBottomShowProgressBarDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/builder/a;->O:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1, v0}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->setBottomProgressBarDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/builder/a;->R:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p1, v0}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->setDialogVolumeProgressBar(Landroid/graphics/drawable/Drawable;)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/builder/a;->S:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p1, v0}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->setDialogProgressBar(Landroid/graphics/drawable/Drawable;)V

    .line 9
    :cond_3
    iget v0, p0, Lcom/papa/gsyvideoplayer/builder/a;->d:I

    if-lez v0, :cond_4

    iget v1, p0, Lcom/papa/gsyvideoplayer/builder/a;->e:I

    if-lez v1, :cond_4

    .line 10
    invoke-virtual {p1, v0, v1}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->setDialogProgressColor(II)V

    .line 11
    :cond_4
    invoke-virtual {p0, p1}, Lcom/papa/gsyvideoplayer/builder/a;->b(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    return-void
.end method

.method public b(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/builder/a;->E:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setPlayTag(Ljava/lang/String;)V

    .line 2
    iget v0, p0, Lcom/papa/gsyvideoplayer/builder/a;->c:I

    invoke-virtual {p1, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setPlayPosition(I)V

    .line 3
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/builder/a;->w:Z

    invoke-virtual {p1, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setThumbPlay(Z)V

    .line 4
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/builder/a;->N:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setThumbImageView(Landroid/view/View;)V

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/builder/a;->v:Z

    invoke-virtual {p1, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setNeedLockFull(Z)V

    .line 7
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/builder/a;->M:Lc2/g;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p1, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setLockClickListener(Lc2/g;)V

    .line 9
    :cond_1
    iget v0, p0, Lcom/papa/gsyvideoplayer/builder/a;->f:I

    invoke-virtual {p1, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setDismissControlTime(I)V

    .line 10
    iget-wide v0, p0, Lcom/papa/gsyvideoplayer/builder/a;->g:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 11
    invoke-virtual {p1, v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setSeekOnStart(J)V

    .line 12
    :cond_2
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/builder/a;->k:Z

    invoke-virtual {p1, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setShowFullAnimation(Z)V

    .line 13
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/builder/a;->p:Z

    invoke-virtual {p1, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setLooping(Z)V

    .line 14
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/builder/a;->L:Lc2/h;

    if-eqz v0, :cond_3

    .line 15
    invoke-virtual {p1, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setVideoAllCallBack(Lc2/h;)V

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/builder/a;->U:Lc2/d;

    if-eqz v0, :cond_4

    .line 17
    invoke-virtual {p1, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setGSYVideoProgressListener(Lc2/d;)V

    .line 18
    :cond_4
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/builder/a;->H:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setOverrideExtension(Ljava/lang/String;)V

    .line 19
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/builder/a;->l:Z

    invoke-virtual {p1, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setAutoFullWithSize(Z)V

    .line 20
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/builder/a;->n:Z

    invoke-virtual {p1, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setRotateViewAuto(Z)V

    .line 21
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/builder/a;->I:Z

    invoke-virtual {p1, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setOnlyRotateLand(Z)V

    .line 22
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/builder/a;->o:Z

    invoke-virtual {p1, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setLockLand(Z)V

    .line 23
    iget v0, p0, Lcom/papa/gsyvideoplayer/builder/a;->i:F

    iget-boolean v1, p0, Lcom/papa/gsyvideoplayer/builder/a;->x:Z

    invoke-virtual {p1, v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setSpeed(FZ)V

    .line 24
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/builder/a;->j:Z

    invoke-virtual {p1, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setHideKey(Z)V

    .line 25
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/builder/a;->q:Z

    invoke-virtual {p1, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setIsTouchWiget(Z)V

    .line 26
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/builder/a;->r:Z

    invoke-virtual {p1, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setIsTouchWigetFull(Z)V

    .line 27
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/builder/a;->m:Z

    invoke-virtual {p1, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setNeedShowWifiTip(Z)V

    .line 28
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/builder/a;->T:Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$c;

    invoke-virtual {p1, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->setEffectFilter(Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$c;)V

    .line 29
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/builder/a;->z:Z

    invoke-virtual {p1, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setStartAfterPrepared(Z)V

    .line 30
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/builder/a;->A:Z

    invoke-virtual {p1, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setReleaseWhenLossAudio(Z)V

    .line 31
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/builder/a;->B:Z

    invoke-virtual {p1, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setFullHideActionBar(Z)V

    .line 32
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/builder/a;->D:Z

    invoke-virtual {p1, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setShowDragProgressTextOnSeekBar(Z)V

    .line 33
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/builder/a;->C:Z

    invoke-virtual {p1, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setFullHideStatusBar(Z)V

    .line 34
    iget v0, p0, Lcom/papa/gsyvideoplayer/builder/a;->b:I

    if-lez v0, :cond_5

    .line 35
    invoke-virtual {p1, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setEnlargeImageRes(I)V

    .line 36
    :cond_5
    iget v0, p0, Lcom/papa/gsyvideoplayer/builder/a;->a:I

    if-lez v0, :cond_6

    .line 37
    invoke-virtual {p1, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setShrinkImageRes(I)V

    .line 38
    :cond_6
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/builder/a;->s:Z

    invoke-virtual {p1, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setShowPauseCover(Z)V

    .line 39
    iget v0, p0, Lcom/papa/gsyvideoplayer/builder/a;->h:F

    invoke-virtual {p1, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setSeekRatio(F)V

    .line 40
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/builder/a;->t:Z

    invoke-virtual {p1, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setRotateWithSystem(Z)V

    .line 41
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/builder/a;->y:Z

    if-eqz v0, :cond_7

    .line 42
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/builder/a;->F:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/papa/gsyvideoplayer/builder/a;->u:Z

    iget-object v4, p0, Lcom/papa/gsyvideoplayer/builder/a;->J:Ljava/io/File;

    iget-object v5, p0, Lcom/papa/gsyvideoplayer/builder/a;->K:Ljava/util/Map;

    iget-object v6, p0, Lcom/papa/gsyvideoplayer/builder/a;->G:Ljava/lang/String;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setUpLazy(Ljava/lang/String;ZLjava/io/File;Ljava/util/Map;Ljava/lang/String;)Z

    goto :goto_0

    .line 43
    :cond_7
    iget-object v8, p0, Lcom/papa/gsyvideoplayer/builder/a;->F:Ljava/lang/String;

    iget-boolean v9, p0, Lcom/papa/gsyvideoplayer/builder/a;->u:Z

    iget-object v10, p0, Lcom/papa/gsyvideoplayer/builder/a;->J:Ljava/io/File;

    iget-object v11, p0, Lcom/papa/gsyvideoplayer/builder/a;->K:Ljava/util/Map;

    iget-object v12, p0, Lcom/papa/gsyvideoplayer/builder/a;->G:Ljava/lang/String;

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setUp(Ljava/lang/String;ZLjava/io/File;Ljava/util/Map;Ljava/lang/String;)Z

    :goto_0
    return-void
.end method

.method public c(Z)Lcom/papa/gsyvideoplayer/builder/a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/builder/a;->l:Z

    return-object p0
.end method

.method public d(Landroid/graphics/drawable/Drawable;)Lcom/papa/gsyvideoplayer/builder/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/builder/a;->O:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public e(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/papa/gsyvideoplayer/builder/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/builder/a;->P:Landroid/graphics/drawable/Drawable;

    .line 2
    iput-object p2, p0, Lcom/papa/gsyvideoplayer/builder/a;->Q:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public f(Ljava/io/File;)Lcom/papa/gsyvideoplayer/builder/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/builder/a;->J:Ljava/io/File;

    return-object p0
.end method

.method public g(Z)Lcom/papa/gsyvideoplayer/builder/a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/builder/a;->u:Z

    return-object p0
.end method

.method public h(Landroid/graphics/drawable/Drawable;)Lcom/papa/gsyvideoplayer/builder/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/builder/a;->S:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public i(II)Lcom/papa/gsyvideoplayer/builder/a;
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/gsyvideoplayer/builder/a;->d:I

    .line 2
    iput p2, p0, Lcom/papa/gsyvideoplayer/builder/a;->e:I

    return-object p0
.end method

.method public j(Landroid/graphics/drawable/Drawable;)Lcom/papa/gsyvideoplayer/builder/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/builder/a;->R:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public k(I)Lcom/papa/gsyvideoplayer/builder/a;
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/gsyvideoplayer/builder/a;->f:I

    return-object p0
.end method

.method public l(Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$c;)Lcom/papa/gsyvideoplayer/builder/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/builder/a;->T:Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$c;

    return-object p0
.end method

.method public m(I)Lcom/papa/gsyvideoplayer/builder/a;
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/gsyvideoplayer/builder/a;->b:I

    return-object p0
.end method

.method public n(Z)Lcom/papa/gsyvideoplayer/builder/a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/builder/a;->B:Z

    return-object p0
.end method

.method public o(Z)Lcom/papa/gsyvideoplayer/builder/a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/builder/a;->C:Z

    return-object p0
.end method

.method public p(Lc2/d;)Lcom/papa/gsyvideoplayer/builder/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/builder/a;->U:Lc2/d;

    return-object p0
.end method

.method public q(Z)Lcom/papa/gsyvideoplayer/builder/a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/builder/a;->j:Z

    return-object p0
.end method

.method public r(Z)Lcom/papa/gsyvideoplayer/builder/a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/builder/a;->q:Z

    return-object p0
.end method

.method public s(Z)Lcom/papa/gsyvideoplayer/builder/a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/builder/a;->r:Z

    return-object p0
.end method

.method public t(Lc2/g;)Lcom/papa/gsyvideoplayer/builder/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/builder/a;->M:Lc2/g;

    return-object p0
.end method

.method public u(Z)Lcom/papa/gsyvideoplayer/builder/a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/builder/a;->o:Z

    return-object p0
.end method

.method public v(Z)Lcom/papa/gsyvideoplayer/builder/a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/builder/a;->p:Z

    return-object p0
.end method

.method public w(Ljava/util/Map;)Lcom/papa/gsyvideoplayer/builder/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/papa/gsyvideoplayer/builder/a;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/builder/a;->K:Ljava/util/Map;

    return-object p0
.end method

.method public x(Z)Lcom/papa/gsyvideoplayer/builder/a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/builder/a;->v:Z

    return-object p0
.end method

.method public y(Z)Lcom/papa/gsyvideoplayer/builder/a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/builder/a;->m:Z

    return-object p0
.end method

.method public z(Z)Lcom/papa/gsyvideoplayer/builder/a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/builder/a;->I:Z

    return-object p0
.end method
