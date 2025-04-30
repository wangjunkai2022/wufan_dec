.class public Lcom/papa/gsyvideoplayer/utils/i;
.super Ljava/lang/Object;
.source "ListVideoUtil.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private A:Z

.field private B:Z

.field private C:Landroid/os/Handler;

.field private a:Ljava/lang/String;

.field private b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

.field private c:Landroid/view/ViewGroup;

.field private d:Landroid/view/ViewGroup;

.field private e:Landroid/view/ViewGroup$LayoutParams;

.field private f:Lcom/papa/gsyvideoplayer/utils/o;

.field private g:Lc2/h;

.field private h:Ljava/lang/String;

.field private i:Landroid/content/Context;

.field private j:Ljava/io/File;

.field private k:Ljava/lang/String;

.field private l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:I

.field private n:I

.field private o:I

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field protected w:Z

.field private x:[I

.field private y:[I

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "NULL"

    .line 2
    iput-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->a:Ljava/lang/String;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->m:I

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->n:I

    .line 5
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->u:Z

    .line 6
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->v:Z

    .line 7
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->w:Z

    .line 8
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->z:Z

    .line 9
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->A:Z

    .line 10
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->B:Z

    .line 11
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->C:Landroid/os/Handler;

    .line 12
    new-instance v0, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-direct {v0, p1}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    .line 13
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/utils/i;->i:Landroid/content/Context;

    return-void
.end method

.method private H(ILjava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/papa/gsyvideoplayer/utils/i;->Q(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private Q(ILjava/lang/String;)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->m:I

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/i;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private U(I)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/utils/i;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->C:Landroid/os/Handler;

    new-instance v1, Lcom/papa/gsyvideoplayer/utils/i$f;

    invoke-direct {v1, p0}, Lcom/papa/gsyvideoplayer/utils/i$f;-><init>(Lcom/papa/gsyvideoplayer/utils/i;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/i;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setIfCurrentIsFullscreen(Z)V

    .line 4
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/i;->g:Lc2/h;

    if-eqz p1, :cond_1

    const-string p1, "onEnterFullscreen"

    .line 5
    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/i;->g:Lc2/h;

    iget-object v1, p0, Lcom/papa/gsyvideoplayer/utils/i;->h:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/papa/gsyvideoplayer/utils/i;->k:Ljava/lang/String;

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/papa/gsyvideoplayer/utils/i;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    aput-object v3, v2, v0

    invoke-interface {p1, v1, v2}, Lc2/h;->t0(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private V()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->c:Landroid/view/ViewGroup;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/papa/gsyvideoplayer/utils/i;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/16 v0, 0x32

    .line 3
    invoke-direct {p0, v0}, Lcom/papa/gsyvideoplayer/utils/i;->U(I)V

    return-void
.end method

.method private X()V
    .locals 7

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 1
    iput-object v1, p0, Lcom/papa/gsyvideoplayer/utils/i;->x:[I

    new-array v0, v0, [I

    .line 2
    iput-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->y:[I

    .line 3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->i:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/papa/gsyvideoplayer/utils/i;->r:Z

    iget-boolean v2, p0, Lcom/papa/gsyvideoplayer/utils/i;->s:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/papa/gsyvideoplayer/utils/i;->c0(Landroid/content/Context;ZZ)V

    .line 4
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 5
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/papa/gsyvideoplayer/utils/i;->i:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v2, -0x1000000

    .line 6
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 7
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lcom/papa/gsyvideoplayer/utils/i;->y:[I

    const/4 v4, 0x0

    aget v5, v3, v4

    const/4 v6, 0x1

    aget v3, v3, v6

    invoke-direct {v2, v5, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 8
    iget-object v3, p0, Lcom/papa/gsyvideoplayer/utils/i;->x:[I

    aget v5, v3, v4

    aget v3, v3, v6

    invoke-virtual {v2, v5, v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 9
    iget-object v3, p0, Lcom/papa/gsyvideoplayer/utils/i;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v1, v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/utils/i;->c:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->C:Landroid/os/Handler;

    new-instance v1, Lcom/papa/gsyvideoplayer/utils/i$c;

    invoke-direct {v1, p0}, Lcom/papa/gsyvideoplayer/utils/i$c;-><init>(Lcom/papa/gsyvideoplayer/utils/i;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private Y(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    const/4 v1, -0x1

    .line 3
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 4
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v1, 0x11

    .line 5
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 6
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    .line 7
    invoke-virtual {p1, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setIfCurrentIsFullscreen(Z)V

    return-void
.end method

.method private Z(Lcom/papa/gsyvideoplayer/video/base/GSYVideoPlayer;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->B:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->c:Landroid/view/ViewGroup;

    instance-of v0, v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->f:Lcom/papa/gsyvideoplayer/utils/o;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/utils/o;->q()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/utils/i;->C:Landroid/os/Handler;

    new-instance v2, Lcom/papa/gsyvideoplayer/utils/i$e;

    invoke-direct {v2, p0, p1}, Lcom/papa/gsyvideoplayer/utils/i$e;-><init>(Lcom/papa/gsyvideoplayer/utils/i;Lcom/papa/gsyvideoplayer/video/base/GSYVideoPlayer;)V

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/papa/gsyvideoplayer/utils/i;->b0()V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/papa/gsyvideoplayer/utils/i;)Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/gsyvideoplayer/utils/i;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    return-object p0
.end method

.method private a0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->i:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    iput v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->o:I

    .line 2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->i:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/papa/gsyvideoplayer/utils/i;->s:Z

    iget-boolean v2, p0, Lcom/papa/gsyvideoplayer/utils/i;->r:Z

    invoke-static {v0, v1, v2}, Lcom/papa/gsyvideoplayer/utils/b;->l(Landroid/content/Context;ZZ)V

    .line 3
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->u:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/b;->k(Landroid/content/Context;)V

    :cond_0
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->p:Z

    .line 6
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/utils/i;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 7
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/utils/i;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput-object v2, p0, Lcom/papa/gsyvideoplayer/utils/i;->e:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v1, :cond_1

    .line 8
    iput-object v1, p0, Lcom/papa/gsyvideoplayer/utils/i;->d:Landroid/view/ViewGroup;

    .line 9
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/utils/i;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/utils/i;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v1, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setIfCurrentIsFullscreen(Z)V

    .line 11
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/papa/gsyvideoplayer/utils/i;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getShrinkImageRes()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 12
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getBackButton()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    new-instance v0, Lcom/papa/gsyvideoplayer/utils/o;

    iget-object v1, p0, Lcom/papa/gsyvideoplayer/utils/i;->i:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/papa/gsyvideoplayer/utils/i;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-direct {v0, v1, v2}, Lcom/papa/gsyvideoplayer/utils/o;-><init>(Landroid/app/Activity;Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    iput-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->f:Lcom/papa/gsyvideoplayer/utils/o;

    .line 14
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/utils/i;->G()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/papa/gsyvideoplayer/utils/o;->I(Z)V

    .line 15
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getBackButton()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/papa/gsyvideoplayer/utils/i$b;

    invoke-direct {v1, p0}, Lcom/papa/gsyvideoplayer/utils/i$b;-><init>(Lcom/papa/gsyvideoplayer/utils/i;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->B:Z

    if-eqz v0, :cond_3

    .line 17
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->c:Landroid/view/ViewGroup;

    instance-of v0, v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    .line 18
    invoke-direct {p0}, Lcom/papa/gsyvideoplayer/utils/i;->X()V

    goto :goto_0

    .line 19
    :cond_2
    invoke-direct {p0}, Lcom/papa/gsyvideoplayer/utils/i;->V()V

    goto :goto_0

    .line 20
    :cond_3
    invoke-direct {p0}, Lcom/papa/gsyvideoplayer/utils/i;->V()V

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/papa/gsyvideoplayer/utils/i;Lcom/papa/gsyvideoplayer/video/base/GSYVideoPlayer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa/gsyvideoplayer/utils/i;->Z(Lcom/papa/gsyvideoplayer/video/base/GSYVideoPlayer;)V

    return-void
.end method

.method private b0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->f:Lcom/papa/gsyvideoplayer/utils/o;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/utils/o;->q()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/utils/i;->C:Landroid/os/Handler;

    new-instance v2, Lcom/papa/gsyvideoplayer/utils/i$d;

    invoke-direct {v2, p0}, Lcom/papa/gsyvideoplayer/utils/i$d;-><init>(Lcom/papa/gsyvideoplayer/utils/i;)V

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic c(Lcom/papa/gsyvideoplayer/utils/i;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/gsyvideoplayer/utils/i;->h:Ljava/lang/String;

    return-object p0
.end method

.method private c0(Landroid/content/Context;ZZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->d:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/papa/gsyvideoplayer/utils/i;->x:[I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 2
    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/b;->i(Landroid/content/Context;)I

    move-result v0

    .line 3
    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/b;->c(Landroid/app/Activity;)I

    move-result p1

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 4
    iget-object p2, p0, Lcom/papa/gsyvideoplayer/utils/i;->x:[I

    aget v2, p2, v1

    sub-int/2addr v2, v0

    aput v2, p2, v1

    :cond_0
    if-eqz p3, :cond_1

    .line 5
    iget-object p2, p0, Lcom/papa/gsyvideoplayer/utils/i;->x:[I

    aget p3, p2, v1

    sub-int/2addr p3, p1

    aput p3, p2, v1

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/i;->y:[I

    const/4 p2, 0x0

    iget-object p3, p0, Lcom/papa/gsyvideoplayer/utils/i;->d:Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getWidth()I

    move-result p3

    aput p3, p1, p2

    .line 7
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/i;->y:[I

    iget-object p2, p0, Lcom/papa/gsyvideoplayer/utils/i;->d:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result p2

    aput p2, p1, v1

    return-void
.end method

.method static synthetic d(Lcom/papa/gsyvideoplayer/utils/i;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/gsyvideoplayer/utils/i;->k:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/papa/gsyvideoplayer/utils/i;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/papa/gsyvideoplayer/utils/i;->u:Z

    return p0
.end method

.method static synthetic f(Lcom/papa/gsyvideoplayer/utils/i;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/gsyvideoplayer/utils/i;->i:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic g(Lcom/papa/gsyvideoplayer/utils/i;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/papa/gsyvideoplayer/utils/i;->o:I

    return p0
.end method

.method static synthetic h(Lcom/papa/gsyvideoplayer/utils/i;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/papa/gsyvideoplayer/utils/i;->s:Z

    return p0
.end method

.method static synthetic i(Lcom/papa/gsyvideoplayer/utils/i;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/papa/gsyvideoplayer/utils/i;->r:Z

    return p0
.end method

.method static synthetic j(Lcom/papa/gsyvideoplayer/utils/i;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/gsyvideoplayer/utils/i;->x:[I

    return-object p0
.end method

.method static synthetic k(Lcom/papa/gsyvideoplayer/utils/i;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/gsyvideoplayer/utils/i;->y:[I

    return-object p0
.end method

.method static synthetic l(Lcom/papa/gsyvideoplayer/utils/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa/gsyvideoplayer/utils/i;->b0()V

    return-void
.end method

.method static synthetic m(Lcom/papa/gsyvideoplayer/utils/i;)Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/gsyvideoplayer/utils/i;->c:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic n(Lcom/papa/gsyvideoplayer/utils/i;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/gsyvideoplayer/utils/i;->C:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic o(Lcom/papa/gsyvideoplayer/utils/i;Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa/gsyvideoplayer/utils/i;->Y(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    return-void
.end method

.method static synthetic p(Lcom/papa/gsyvideoplayer/utils/i;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa/gsyvideoplayer/utils/i;->U(I)V

    return-void
.end method

.method static synthetic q(Lcom/papa/gsyvideoplayer/utils/i;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/utils/i;->p:Z

    return p1
.end method

.method static synthetic r(Lcom/papa/gsyvideoplayer/utils/i;)Lcom/papa/gsyvideoplayer/utils/o;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/gsyvideoplayer/utils/i;->f:Lcom/papa/gsyvideoplayer/utils/o;

    return-object p0
.end method

.method static synthetic s(Lcom/papa/gsyvideoplayer/utils/i;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/gsyvideoplayer/utils/i;->e:Landroid/view/ViewGroup$LayoutParams;

    return-object p0
.end method

.method static synthetic t(Lcom/papa/gsyvideoplayer/utils/i;)Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/gsyvideoplayer/utils/i;->d:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic u(Lcom/papa/gsyvideoplayer/utils/i;)Lc2/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/gsyvideoplayer/utils/i;->g:Lc2/h;

    return-object p0
.end method


# virtual methods
.method public A()Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    return-object v0
.end method

.method public B()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->l:Ljava/util/Map;

    return-object v0
.end method

.method public C()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->m:I

    return v0
.end method

.method public D()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method public E()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->n:I

    return v0
.end method

.method public F()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->k:Ljava/lang/String;

    return-object v0
.end method

.method public G()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->A:Z

    return v0
.end method

.method public I()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->p:Z

    return v0
.end method

.method public J()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->z:Z

    return v0
.end method

.method public K()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->s:Z

    return v0
.end method

.method public L()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->u:Z

    return v0
.end method

.method public M()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->r:Z

    return v0
.end method

.method public N()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->t:Z

    return v0
.end method

.method public O()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->v:Z

    return v0
.end method

.method public P()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->w:Z

    return v0
.end method

.method public R()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->B:Z

    return v0
.end method

.method public S()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->q:Z

    return v0
.end method

.method public T()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->m:I

    const-string v0, "NULL"

    .line 4
    iput-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->a:Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->f:Lcom/papa/gsyvideoplayer/utils/o;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/utils/o;->D()V

    :cond_1
    return-void
.end method

.method public W()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->c:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->p:Z

    if-nez v0, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/papa/gsyvideoplayer/utils/i;->a0()V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-direct {p0, v0}, Lcom/papa/gsyvideoplayer/utils/i;->Z(Lcom/papa/gsyvideoplayer/video/base/GSYVideoPlayer;)V

    :goto_0
    return-void
.end method

.method public d0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/utils/i;->A:Z

    return-void
.end method

.method public e0(Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/utils/i;->j:Ljava/io/File;

    return-void
.end method

.method public f0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/utils/i;->z:Z

    return-void
.end method

.method public g0(Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/utils/i;->c:Landroid/view/ViewGroup;

    return-void
.end method

.method public h0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/utils/i;->s:Z

    return-void
.end method

.method public i0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/utils/i;->u:Z

    return-void
.end method

.method public j0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/utils/i;->r:Z

    return-void
.end method

.method public k0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/utils/i;->t:Z

    return-void
.end method

.method public l0(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/utils/i;->l:Ljava/util/Map;

    return-void
.end method

.method public m0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/utils/i;->v:Z

    return-void
.end method

.method public n0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/utils/i;->w:Z

    return-void
.end method

.method public o0(ILjava/lang/String;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/gsyvideoplayer/utils/i;->m:I

    .line 2
    iput-object p2, p0, Lcom/papa/gsyvideoplayer/utils/i;->a:Ljava/lang/String;

    return-void
.end method

.method public p0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/utils/i;->B:Z

    return-void
.end method

.method public q0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/gsyvideoplayer/utils/i;->n:I

    return-void
.end method

.method public r0(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/utils/i;->k:Ljava/lang/String;

    return-void
.end method

.method public s0(Lc2/h;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/utils/i;->g:Lc2/h;

    .line 2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setVideoAllCallBack(Lc2/h;)V

    return-void
.end method

.method public t0(Landroid/graphics/Point;ZZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->showSmallVideo(Landroid/graphics/Point;ZZ)Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/utils/i;->q:Z

    :cond_0
    return-void
.end method

.method public u0()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->q:Z

    .line 2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->hideSmallVideo()V

    return-void
.end method

.method public v(ILandroid/view/View;Ljava/lang/String;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2
    invoke-direct {p0, p1, p3}, Lcom/papa/gsyvideoplayer/utils/i;->H(ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-boolean p1, p0, Lcom/papa/gsyvideoplayer/utils/i;->p:Z

    if-nez p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/i;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/i;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {p4, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 p1, 0x4

    .line 7
    invoke-virtual {p5, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p5, p1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    invoke-virtual {p4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 10
    invoke-virtual {p4, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public v0(Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/utils/i;->S()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/utils/i;->u0()V

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/utils/i;->h:Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->release()V

    .line 5
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    iget-boolean v1, p0, Lcom/papa/gsyvideoplayer/utils/i;->t:Z

    invoke-virtual {v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setLooping(Z)V

    .line 6
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    iget v1, p0, Lcom/papa/gsyvideoplayer/utils/i;->n:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setSpeed(F)V

    .line 7
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    iget-boolean v1, p0, Lcom/papa/gsyvideoplayer/utils/i;->w:Z

    invoke-virtual {v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setNeedShowWifiTip(Z)V

    .line 8
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    iget-boolean v1, p0, Lcom/papa/gsyvideoplayer/utils/i;->v:Z

    invoke-virtual {v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setNeedLockFull(Z)V

    .line 9
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/utils/i;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/papa/gsyvideoplayer/utils/i;->j:Ljava/io/File;

    iget-object v6, p0, Lcom/papa/gsyvideoplayer/utils/i;->l:Ljava/util/Map;

    iget-object v7, p0, Lcom/papa/gsyvideoplayer/utils/i;->k:Ljava/lang/String;

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setUp(Ljava/lang/String;ZLjava/io/File;Ljava/util/Map;Ljava/lang/String;)Z

    .line 10
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/i;->k:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 11
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/i;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/i;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 13
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/i;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getBackButton()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/i;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object p1

    new-instance v0, Lcom/papa/gsyvideoplayer/utils/i$a;

    invoke-direct {v0, p0}, Lcom/papa/gsyvideoplayer/utils/i$a;-><init>(Lcom/papa/gsyvideoplayer/utils/i;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/i;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->startPlayLogic()V

    return-void
.end method

.method public w()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/utils/i;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-direct {p0, v1}, Lcom/papa/gsyvideoplayer/utils/i;->Z(Lcom/papa/gsyvideoplayer/video/base/GSYVideoPlayer;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public x()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->j:Ljava/io/File;

    return-object v0
.end method

.method public y()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentPositionWhenPlaying()I

    move-result v0

    return v0
.end method

.method public z()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getDuration()I

    move-result v0

    return v0
.end method
