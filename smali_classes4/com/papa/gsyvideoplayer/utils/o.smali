.class public Lcom/papa/gsyvideoplayer/utils/o;
.super Ljava/lang/Object;
.source "OrientationUtils.java"


# static fields
.field private static final n:I = 0x0

.field private static final o:I = 0x1

.field private static final p:I = 0x2


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

.field private c:Landroid/view/OrientationEventListener;

.field private d:Lcom/papa/gsyvideoplayer/utils/n;

.field private e:I

.field private f:I

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/papa/gsyvideoplayer/utils/o;-><init>(Landroid/app/Activity;Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Lcom/papa/gsyvideoplayer/utils/n;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Lcom/papa/gsyvideoplayer/utils/n;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/papa/gsyvideoplayer/utils/o;->e:I

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lcom/papa/gsyvideoplayer/utils/o;->f:I

    .line 5
    iput-boolean v1, p0, Lcom/papa/gsyvideoplayer/utils/o;->g:Z

    .line 6
    iput-boolean v1, p0, Lcom/papa/gsyvideoplayer/utils/o;->h:Z

    .line 7
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/o;->j:Z

    .line 8
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/o;->k:Z

    .line 9
    iput-boolean v1, p0, Lcom/papa/gsyvideoplayer/utils/o;->l:Z

    .line 10
    iput-boolean v1, p0, Lcom/papa/gsyvideoplayer/utils/o;->m:Z

    .line 11
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/utils/o;->a:Landroid/app/Activity;

    .line 12
    iput-object p2, p0, Lcom/papa/gsyvideoplayer/utils/o;->b:Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    if-nez p3, :cond_0

    .line 13
    new-instance p2, Lcom/papa/gsyvideoplayer/utils/n;

    invoke-direct {p2}, Lcom/papa/gsyvideoplayer/utils/n;-><init>()V

    iput-object p2, p0, Lcom/papa/gsyvideoplayer/utils/o;->d:Lcom/papa/gsyvideoplayer/utils/n;

    goto :goto_0

    .line 14
    :cond_0
    iput-object p3, p0, Lcom/papa/gsyvideoplayer/utils/o;->d:Lcom/papa/gsyvideoplayer/utils/n;

    .line 15
    :goto_0
    invoke-direct {p0, p1}, Lcom/papa/gsyvideoplayer/utils/o;->v(Landroid/app/Activity;)V

    .line 16
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/utils/o;->u()V

    return-void
.end method

.method private N(I)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/o;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "OrientationUtils"

    .line 4
    invoke-static {v0, p1}, Lcom/papa/gsyvideoplayer/utils/c;->f(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/papa/gsyvideoplayer/utils/o;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/gsyvideoplayer/utils/o;->a:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic b(Lcom/papa/gsyvideoplayer/utils/o;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/papa/gsyvideoplayer/utils/o;->k:Z

    return p0
.end method

.method static synthetic c(Lcom/papa/gsyvideoplayer/utils/o;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/gsyvideoplayer/utils/o;->e:I

    return p1
.end method

.method static synthetic d(Lcom/papa/gsyvideoplayer/utils/o;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa/gsyvideoplayer/utils/o;->N(I)V

    return-void
.end method

.method static synthetic e(Lcom/papa/gsyvideoplayer/utils/o;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/papa/gsyvideoplayer/utils/o;->m:Z

    return p0
.end method

.method static synthetic f(Lcom/papa/gsyvideoplayer/utils/o;)Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/gsyvideoplayer/utils/o;->b:Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    return-object p0
.end method

.method static synthetic g(Lcom/papa/gsyvideoplayer/utils/o;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/papa/gsyvideoplayer/utils/o;->l:Z

    return p0
.end method

.method static synthetic h(Lcom/papa/gsyvideoplayer/utils/o;)Lcom/papa/gsyvideoplayer/utils/n;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/gsyvideoplayer/utils/o;->d:Lcom/papa/gsyvideoplayer/utils/n;

    return-object p0
.end method

.method static synthetic i(Lcom/papa/gsyvideoplayer/utils/o;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/papa/gsyvideoplayer/utils/o;->g:Z

    return p0
.end method

.method static synthetic j(Lcom/papa/gsyvideoplayer/utils/o;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/utils/o;->g:Z

    return p1
.end method

.method static synthetic k(Lcom/papa/gsyvideoplayer/utils/o;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/papa/gsyvideoplayer/utils/o;->f:I

    return p0
.end method

.method static synthetic l(Lcom/papa/gsyvideoplayer/utils/o;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/gsyvideoplayer/utils/o;->f:I

    return p1
.end method

.method static synthetic m(Lcom/papa/gsyvideoplayer/utils/o;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/papa/gsyvideoplayer/utils/o;->h:Z

    return p0
.end method

.method static synthetic n(Lcom/papa/gsyvideoplayer/utils/o;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/utils/o;->h:Z

    return p1
.end method

.method static synthetic o(Lcom/papa/gsyvideoplayer/utils/o;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/papa/gsyvideoplayer/utils/o;->i:Z

    return p0
.end method

.method static synthetic p(Lcom/papa/gsyvideoplayer/utils/o;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/utils/o;->i:Z

    return p1
.end method

.method private v(Landroid/app/Activity;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/utils/o;->f:I

    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 3
    iput v1, p0, Lcom/papa/gsyvideoplayer/utils/o;->f:I

    .line 4
    iput v0, p0, Lcom/papa/gsyvideoplayer/utils/o;->e:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    const/4 p1, 0x2

    .line 5
    iput p1, p0, Lcom/papa/gsyvideoplayer/utils/o;->f:I

    const/16 p1, 0x8

    .line 6
    iput p1, p0, Lcom/papa/gsyvideoplayer/utils/o;->e:I

    goto :goto_0

    .line 7
    :cond_1
    iput v0, p0, Lcom/papa/gsyvideoplayer/utils/o;->f:I

    .line 8
    iput v1, p0, Lcom/papa/gsyvideoplayer/utils/o;->e:I

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/o;->m:Z

    return v0
.end method

.method public B()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/o;->l:Z

    return v0
.end method

.method public C()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/o;->k:Z

    return v0
.end method

.method public D()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/o;->c:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    :cond_0
    return-void
.end method

.method public E()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SourceLockedOrientationActivity"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/utils/o;->f:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/o;->b:Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isVerticalFullByVideoSize()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/o;->g:Z

    .line 3
    iget v1, p0, Lcom/papa/gsyvideoplayer/utils/o;->f:I

    const/4 v2, 0x0

    if-nez v1, :cond_3

    .line 4
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/utils/o;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v3, :cond_1

    .line 5
    iput v3, p0, Lcom/papa/gsyvideoplayer/utils/o;->e:I

    goto :goto_0

    .line 6
    :cond_1
    iput v2, p0, Lcom/papa/gsyvideoplayer/utils/o;->e:I

    .line 7
    :goto_0
    iget v1, p0, Lcom/papa/gsyvideoplayer/utils/o;->e:I

    invoke-direct {p0, v1}, Lcom/papa/gsyvideoplayer/utils/o;->N(I)V

    .line 8
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/utils/o;->b:Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    invoke-virtual {v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 9
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/utils/o;->b:Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    invoke-virtual {v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v1

    iget-object v3, p0, Lcom/papa/gsyvideoplayer/utils/o;->b:Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    invoke-virtual {v3}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getShrinkImageRes()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 10
    :cond_2
    iput v0, p0, Lcom/papa/gsyvideoplayer/utils/o;->f:I

    .line 11
    iput-boolean v2, p0, Lcom/papa/gsyvideoplayer/utils/o;->h:Z

    goto :goto_2

    .line 12
    :cond_3
    iput v0, p0, Lcom/papa/gsyvideoplayer/utils/o;->e:I

    .line 13
    invoke-direct {p0, v0}, Lcom/papa/gsyvideoplayer/utils/o;->N(I)V

    .line 14
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/o;->b:Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 15
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/o;->b:Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->isIfCurrentIsFullscreen()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 16
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/o;->b:Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/papa/gsyvideoplayer/utils/o;->b:Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    invoke-virtual {v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getShrinkImageRes()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 17
    :cond_4
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/o;->b:Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/papa/gsyvideoplayer/utils/o;->b:Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    invoke-virtual {v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getEnlargeImageRes()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 18
    :cond_5
    :goto_1
    iput v2, p0, Lcom/papa/gsyvideoplayer/utils/o;->f:I

    .line 19
    iput-boolean v2, p0, Lcom/papa/gsyvideoplayer/utils/o;->i:Z

    :goto_2
    return-void
.end method

.method public F(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/utils/o;->g:Z

    return-void
.end method

.method public G(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/utils/o;->h:Z

    return-void
.end method

.method public H(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/utils/o;->i:Z

    return-void
.end method

.method public I(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/utils/o;->j:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/o;->c:Landroid/view/OrientationEventListener;

    invoke-virtual {p1}, Landroid/view/OrientationEventListener;->enable()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/o;->c:Landroid/view/OrientationEventListener;

    invoke-virtual {p1}, Landroid/view/OrientationEventListener;->disable()V

    :goto_0
    return-void
.end method

.method public J(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/gsyvideoplayer/utils/o;->f:I

    return-void
.end method

.method public K(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/utils/o;->l:Z

    return-void
.end method

.method public L(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/utils/o;->m:Z

    return-void
.end method

.method public M(Lcom/papa/gsyvideoplayer/utils/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/utils/o;->d:Lcom/papa/gsyvideoplayer/utils/n;

    return-void
.end method

.method public O(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/utils/o;->k:Z

    return-void
.end method

.method public P(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/gsyvideoplayer/utils/o;->e:I

    return-void
.end method

.method public q()I
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SourceLockedOrientationActivity"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/utils/o;->f:I

    const/4 v1, 0x0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/o;->g:Z

    .line 3
    invoke-direct {p0, v0}, Lcom/papa/gsyvideoplayer/utils/o;->N(I)V

    .line 4
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/o;->b:Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/o;->b:Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Lcom/papa/gsyvideoplayer/utils/o;->b:Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    invoke-virtual {v2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getEnlargeImageRes()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6
    :cond_0
    iput v1, p0, Lcom/papa/gsyvideoplayer/utils/o;->f:I

    .line 7
    iput-boolean v1, p0, Lcom/papa/gsyvideoplayer/utils/o;->i:Z

    const/16 v0, 0x1f4

    return v0

    :cond_1
    return v1
.end method

.method public r()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/utils/o;->f:I

    return v0
.end method

.method public s()Lcom/papa/gsyvideoplayer/utils/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/o;->d:Lcom/papa/gsyvideoplayer/utils/n;

    return-object v0
.end method

.method public t()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/utils/o;->e:I

    return v0
.end method

.method protected u()V
    .locals 2

    .line 1
    new-instance v0, Lcom/papa/gsyvideoplayer/utils/o$a;

    iget-object v1, p0, Lcom/papa/gsyvideoplayer/utils/o;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/papa/gsyvideoplayer/utils/o$a;-><init>(Lcom/papa/gsyvideoplayer/utils/o;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/papa/gsyvideoplayer/utils/o;->c:Landroid/view/OrientationEventListener;

    .line 2
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    return-void
.end method

.method public w()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/o;->g:Z

    return v0
.end method

.method public x()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/o;->h:Z

    return v0
.end method

.method public y()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/o;->i:Z

    return v0
.end method

.method public z()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/o;->j:Z

    return v0
.end method
