.class public Lcom/papa/gsyvideoplayer/utils/e;
.super Ljava/lang/Object;
.source "GSYVideoHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa/gsyvideoplayer/utils/e$g;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

.field private c:Landroid/view/ViewGroup;

.field private d:Landroid/view/ViewGroup;

.field private e:Landroid/view/ViewGroup;

.field private f:Landroid/view/ViewGroup$LayoutParams;

.field private g:Lcom/papa/gsyvideoplayer/utils/o;

.field private h:Lcom/papa/gsyvideoplayer/utils/n;

.field private i:Lcom/papa/gsyvideoplayer/utils/e$g;

.field private j:Landroid/content/Context;

.field private k:I

.field private l:I

.field private m:Z

.field private n:Z

.field private o:[I

.field private p:[I

.field private q:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-direct {v0, p1}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/papa/gsyvideoplayer/utils/e;-><init>(Landroid/content/Context;Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "NULL"

    .line 3
    iput-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e;->a:Ljava/lang/String;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/papa/gsyvideoplayer/utils/e;->k:I

    .line 5
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e;->q:Landroid/os/Handler;

    .line 6
    iput-object p2, p0, Lcom/papa/gsyvideoplayer/utils/e;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    .line 7
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/utils/e;->j:Landroid/content/Context;

    .line 8
    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/b;->o(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    const p2, 0x1020002

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/papa/gsyvideoplayer/utils/e;->d:Landroid/view/ViewGroup;

    return-void
.end method

.method private B(ILjava/lang/String;)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/utils/e;->k:I

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/e;->a:Ljava/lang/String;

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

.method private E()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e;->d:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/papa/gsyvideoplayer/utils/e;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e;->d:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/papa/gsyvideoplayer/utils/e;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private F(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e;->i:Lcom/papa/gsyvideoplayer/utils/e$g;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/utils/e$g;->z0()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-lez p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e;->q:Landroid/os/Handler;

    new-instance v2, Lcom/papa/gsyvideoplayer/utils/e$e;

    invoke-direct {v2, p0}, Lcom/papa/gsyvideoplayer/utils/e$e;-><init>(Lcom/papa/gsyvideoplayer/utils/e;)V

    int-to-long v3, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/e;->g:Lcom/papa/gsyvideoplayer/utils/o;

    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/utils/o;->r()I

    move-result p1

    if-eq p1, v1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/e;->c:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const/high16 v0, -0x1000000

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/e;->g:Lcom/papa/gsyvideoplayer/utils/o;

    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/utils/o;->E()V

    .line 7
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/e;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {p1, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setIfCurrentIsFullscreen(Z)V

    .line 8
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/e;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->restartTimerTask()V

    .line 9
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/e;->i:Lcom/papa/gsyvideoplayer/utils/e$g;

    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/utils/e$g;->q0()Lc2/h;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string p1, "onEnterFullscreen"

    .line 10
    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/e;->i:Lcom/papa/gsyvideoplayer/utils/e$g;

    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/utils/e$g;->q0()Lc2/h;

    move-result-object p1

    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e;->i:Lcom/papa/gsyvideoplayer/utils/e$g;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/utils/e$g;->p0()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/papa/gsyvideoplayer/utils/e;->i:Lcom/papa/gsyvideoplayer/utils/e$g;

    invoke-virtual {v4}, Lcom/papa/gsyvideoplayer/utils/e$g;->r0()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/papa/gsyvideoplayer/utils/e;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    aput-object v3, v2, v1

    invoke-interface {p1, v0, v2}, Lc2/h;->t0(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method private G()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e;->i:Lcom/papa/gsyvideoplayer/utils/e$g;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/utils/e$g;->G0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e;->c:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const/high16 v1, -0x1000000

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0}, Lcom/papa/gsyvideoplayer/utils/e;->F(I)V

    .line 5
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e;->c:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 6
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/utils/e;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e;->d:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/papa/gsyvideoplayer/utils/e;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method private H()V
    .locals 7

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 1
    iput-object v1, p0, Lcom/papa/gsyvideoplayer/utils/e;->o:[I

    new-array v0, v0, [I

    .line 2
    iput-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e;->p:[I

    .line 3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e;->j:Landroid/content/Context;

    iget-object v1, p0, Lcom/papa/gsyvideoplayer/utils/e;->i:Lcom/papa/gsyvideoplayer/utils/e$g;

    invoke-virtual {v1}, Lcom/papa/gsyvideoplayer/utils/e$g;->u0()Z

    move-result v1

    iget-object v2, p0, Lcom/papa/gsyvideoplayer/utils/e;->i:Lcom/papa/gsyvideoplayer/utils/e$g;

    invoke-virtual {v2}, Lcom/papa/gsyvideoplayer/utils/e$g;->w0()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/papa/gsyvideoplayer/utils/e;->M(Landroid/content/Context;ZZ)V

    .line 4
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 5
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/papa/gsyvideoplayer/utils/e;->j:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v2, -0x1000000

    .line 6
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 7
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lcom/papa/gsyvideoplayer/utils/e;->p:[I

    const/4 v4, 0x0

    aget v5, v3, v4

    const/4 v6, 0x1

    aget v3, v3, v6

    invoke-direct {v2, v5, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 8
    iget-object v3, p0, Lcom/papa/gsyvideoplayer/utils/e;->o:[I

    aget v5, v3, v4

    aget v3, v3, v6

    invoke-virtual {v2, v5, v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 9
    iget-object v3, p0, Lcom/papa/gsyvideoplayer/utils/e;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v1, v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/utils/e;->c:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 11
    invoke-virtual {v2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/utils/e;->d:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    :goto_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e;->q:Landroid/os/Handler;

    new-instance v1, Lcom/papa/gsyvideoplayer/utils/e$b;

    invoke-direct {v1, p0}, Lcom/papa/gsyvideoplayer/utils/e$b;-><init>(Lcom/papa/gsyvideoplayer/utils/e;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private I(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V
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

.method private J(Lcom/papa/gsyvideoplayer/video/base/GSYVideoPlayer;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e;->i:Lcom/papa/gsyvideoplayer/utils/e$g;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/utils/e$g;->G0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e;->c:Landroid/view/ViewGroup;

    instance-of v0, v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e;->g:Lcom/papa/gsyvideoplayer/utils/o;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/utils/o;->q()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/utils/e;->q:Landroid/os/Handler;

    new-instance v2, Lcom/papa/gsyvideoplayer/utils/e$d;

    invoke-direct {v2, p0, p1}, Lcom/papa/gsyvideoplayer/utils/e$d;-><init>(Lcom/papa/gsyvideoplayer/utils/e;Lcom/papa/gsyvideoplayer/video/base/GSYVideoPlayer;)V

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/papa/gsyvideoplayer/utils/e;->L()V

    :goto_0
    return-void
.end method

.method private K()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e;->j:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    iput v0, p0, Lcom/papa/gsyvideoplayer/utils/e;->l:I

    .line 2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e;->j:Landroid/content/Context;

    iget-object v1, p0, Lcom/papa/gsyvideoplayer/utils/e;->i:Lcom/papa/gsyvideoplayer/utils/e$g;

    invoke-virtual {v1}, Lcom/papa/gsyvideoplayer/utils/e$g;->u0()Z

    move-result v1

    iget-object v2, p0, Lcom/papa/gsyvideoplayer/utils/e;->i:Lcom/papa/gsyvideoplayer/utils/e$g;

    invoke-virtual {v2}, Lcom/papa/gsyvideoplayer/utils/e$g;->w0()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/papa/gsyvideoplayer/utils/b;->l(Landroid/content/Context;ZZ)V

    .line 3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e;->i:Lcom/papa/gsyvideoplayer/utils/e$g;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/utils/e$g;->v0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/b;->k(Landroid/content/Context;)V

    :cond_0
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/e;->m:Z

    .line 6
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/utils/e;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 7
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/utils/e;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput-object v2, p0, Lcom/papa/gsyvideoplayer/utils/e;->f:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v1, :cond_1

    .line 8
    iput-object v1, p0, Lcom/papa/gsyvideoplayer/utils/e;->e:Landroid/view/ViewGroup;

    .line 9
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/utils/e;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/utils/e;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v1, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setIfCurrentIsFullscreen(Z)V

    .line 11
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/papa/gsyvideoplayer/utils/e;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getShrinkImageRes()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 12
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getBackButton()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    new-instance v0, Lcom/papa/gsyvideoplayer/utils/o;

    iget-object v1, p0, Lcom/papa/gsyvideoplayer/utils/e;->j:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/papa/gsyvideoplayer/utils/e;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    iget-object v3, p0, Lcom/papa/gsyvideoplayer/utils/e;->h:Lcom/papa/gsyvideoplayer/utils/n;

    invoke-direct {v0, v1, v2, v3}, Lcom/papa/gsyvideoplayer/utils/o;-><init>(Landroid/app/Activity;Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Lcom/papa/gsyvideoplayer/utils/n;)V

    iput-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e;->g:Lcom/papa/gsyvideoplayer/utils/o;

    .line 14
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/utils/e;->i:Lcom/papa/gsyvideoplayer/utils/e$g;

    invoke-virtual {v1}, Lcom/papa/gsyvideoplayer/utils/e$g;->D0()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/papa/gsyvideoplayer/utils/o;->I(Z)V

    .line 15
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getBackButton()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/papa/gsyvideoplayer/utils/e$a;

    invoke-direct {v1, p0}, Lcom/papa/gsyvideoplayer/utils/e$a;-><init>(Lcom/papa/gsyvideoplayer/utils/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e;->i:Lcom/papa/gsyvideoplayer/utils/e$g;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/utils/e$g;->G0()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 17
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e;->c:Landroid/view/ViewGroup;

    instance-of v0, v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    .line 18
    invoke-direct {p0}, Lcom/papa/gsyvideoplayer/utils/e;->H()V

    goto :goto_0

    .line 19
    :cond_2
    invoke-direct {p0}, Lcom/papa/gsyvideoplayer/utils/e;->G()V

    goto :goto_0

    .line 20
    :cond_3
    invoke-direct {p0}, Lcom/papa/gsyvideoplayer/utils/e;->G()V

    :goto_0
    return-void
.end method

.method private L()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e;->g:Lcom/papa/gsyvideoplayer/utils/o;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/utils/o;->q()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/utils/e;->i:Lcom/papa/gsyvideoplayer/utils/e$g;

    invoke-virtual {v1}, Lcom/papa/gsyvideoplayer/utils/e$g;->G0()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/utils/e;->q:Landroid/os/Handler;

    new-instance v2, Lcom/papa/gsyvideoplayer/utils/e$c;

    invoke-direct {v2, p0}, Lcom/papa/gsyvideoplayer/utils/e$c;-><init>(Lcom/papa/gsyvideoplayer/utils/e;)V

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private M(Landroid/content/Context;ZZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e;->e:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/papa/gsyvideoplayer/utils/e;->o:[I

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
    iget-object p2, p0, Lcom/papa/gsyvideoplayer/utils/e;->o:[I

    aget v2, p2, v1

    sub-int/2addr v2, v0

    aput v2, p2, v1

    :cond_0
    if-eqz p3, :cond_1

    .line 5
    iget-object p2, p0, Lcom/papa/gsyvideoplayer/utils/e;->o:[I

    aget p3, p2, v1

    sub-int/2addr p3, p1

    aput p3, p2, v1

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/e;->p:[I

    const/4 p2, 0x0

    iget-object p3, p0, Lcom/papa/gsyvideoplayer/utils/e;->e:Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getWidth()I

    move-result p3

    aput p3, p1, p2

    .line 7
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/e;->p:[I

    iget-object p2, p0, Lcom/papa/gsyvideoplayer/utils/e;->e:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result p2

    aput p2, p1, v1

    return-void
.end method

.method static synthetic a(Lcom/papa/gsyvideoplayer/utils/e;)Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/gsyvideoplayer/utils/e;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    return-object p0
.end method

.method static synthetic b(Lcom/papa/gsyvideoplayer/utils/e;Lcom/papa/gsyvideoplayer/video/base/GSYVideoPlayer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa/gsyvideoplayer/utils/e;->J(Lcom/papa/gsyvideoplayer/video/base/GSYVideoPlayer;)V

    return-void
.end method

.method static synthetic c(Lcom/papa/gsyvideoplayer/utils/e;)Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/gsyvideoplayer/utils/e;->e:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic d(Lcom/papa/gsyvideoplayer/utils/e;)Lcom/papa/gsyvideoplayer/utils/e$g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/gsyvideoplayer/utils/e;->i:Lcom/papa/gsyvideoplayer/utils/e$g;

    return-object p0
.end method

.method static synthetic e(Lcom/papa/gsyvideoplayer/utils/e;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/gsyvideoplayer/utils/e;->j:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic f(Lcom/papa/gsyvideoplayer/utils/e;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/papa/gsyvideoplayer/utils/e;->l:I

    return p0
.end method

.method static synthetic g(Lcom/papa/gsyvideoplayer/utils/e;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/gsyvideoplayer/utils/e;->o:[I

    return-object p0
.end method

.method static synthetic h(Lcom/papa/gsyvideoplayer/utils/e;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/gsyvideoplayer/utils/e;->p:[I

    return-object p0
.end method

.method static synthetic i(Lcom/papa/gsyvideoplayer/utils/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa/gsyvideoplayer/utils/e;->L()V

    return-void
.end method

.method static synthetic j(Lcom/papa/gsyvideoplayer/utils/e;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/gsyvideoplayer/utils/e;->q:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic k(Lcom/papa/gsyvideoplayer/utils/e;)Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/gsyvideoplayer/utils/e;->c:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic l(Lcom/papa/gsyvideoplayer/utils/e;)Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/gsyvideoplayer/utils/e;->d:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic m(Lcom/papa/gsyvideoplayer/utils/e;Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa/gsyvideoplayer/utils/e;->I(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    return-void
.end method

.method static synthetic n(Lcom/papa/gsyvideoplayer/utils/e;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa/gsyvideoplayer/utils/e;->F(I)V

    return-void
.end method

.method static synthetic o(Lcom/papa/gsyvideoplayer/utils/e;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/utils/e;->m:Z

    return p1
.end method

.method static synthetic p(Lcom/papa/gsyvideoplayer/utils/e;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa/gsyvideoplayer/utils/e;->E()Z

    move-result p0

    return p0
.end method

.method static synthetic q(Lcom/papa/gsyvideoplayer/utils/e;)Lcom/papa/gsyvideoplayer/utils/o;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/gsyvideoplayer/utils/e;->g:Lcom/papa/gsyvideoplayer/utils/o;

    return-object p0
.end method

.method static synthetic r(Lcom/papa/gsyvideoplayer/utils/e;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/gsyvideoplayer/utils/e;->f:Landroid/view/ViewGroup$LayoutParams;

    return-object p0
.end method

.method private z(ILjava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/papa/gsyvideoplayer/utils/e;->B(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public A()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/e;->m:Z

    return v0
.end method

.method public C()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/e;->n:Z

    return v0
.end method

.method public D()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/papa/gsyvideoplayer/utils/e;->E()Z

    .line 2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/papa/gsyvideoplayer/utils/e;->k:I

    const-string v0, "NULL"

    .line 5
    iput-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e;->a:Ljava/lang/String;

    .line 6
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e;->g:Lcom/papa/gsyvideoplayer/utils/o;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/utils/o;->D()V

    :cond_1
    return-void
.end method

.method public N(Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/utils/e;->c:Landroid/view/ViewGroup;

    return-void
.end method

.method public O(Lcom/papa/gsyvideoplayer/utils/e$g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/utils/e;->i:Lcom/papa/gsyvideoplayer/utils/e$g;

    return-void
.end method

.method public P(Lcom/papa/gsyvideoplayer/utils/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/utils/e;->h:Lcom/papa/gsyvideoplayer/utils/n;

    return-void
.end method

.method public Q(ILjava/lang/String;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/gsyvideoplayer/utils/e;->k:I

    .line 2
    iput-object p2, p0, Lcom/papa/gsyvideoplayer/utils/e;->a:Ljava/lang/String;

    return-void
.end method

.method public R(Landroid/graphics/Point;ZZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->showSmallVideo(Landroid/graphics/Point;ZZ)Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/utils/e;->n:Z

    :cond_0
    return-void
.end method

.method public S()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/e;->n:Z

    .line 2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->hideSmallVideo()V

    return-void
.end method

.method public T()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/utils/e;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/utils/e;->S()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->release()V

    .line 4
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e;->i:Lcom/papa/gsyvideoplayer/utils/e$g;

    const-string v1, "mVideoOptionBuilder can\'t be null"

    .line 5
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/utils/e;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v0, v1}, Lcom/papa/gsyvideoplayer/builder/a;->a(Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;)V

    .line 7
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getBackButton()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getBackButton()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 12
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/papa/gsyvideoplayer/utils/e$f;

    invoke-direct {v1, p0}, Lcom/papa/gsyvideoplayer/utils/e$f;-><init>(Lcom/papa/gsyvideoplayer/utils/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->startPlayLogic()V

    return-void
.end method

.method public s(ILandroid/view/View;Ljava/lang/String;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2
    invoke-direct {p0, p1, p3}, Lcom/papa/gsyvideoplayer/utils/e;->z(ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-boolean p1, p0, Lcom/papa/gsyvideoplayer/utils/e;->m:Z

    if-nez p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/e;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/e;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

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

.method public t()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e;->c:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-direct {p0, v0}, Lcom/papa/gsyvideoplayer/utils/e;->J(Lcom/papa/gsyvideoplayer/video/base/GSYVideoPlayer;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e;->d:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/papa/gsyvideoplayer/utils/e;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 4
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-direct {p0, v0}, Lcom/papa/gsyvideoplayer/utils/e;->J(Lcom/papa/gsyvideoplayer/video/base/GSYVideoPlayer;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public u()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/e;->m:Z

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/papa/gsyvideoplayer/utils/e;->K()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-direct {p0, v0}, Lcom/papa/gsyvideoplayer/utils/e;->J(Lcom/papa/gsyvideoplayer/video/base/GSYVideoPlayer;)V

    :goto_0
    return-void
.end method

.method public v()Lcom/papa/gsyvideoplayer/builder/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e;->i:Lcom/papa/gsyvideoplayer/utils/e$g;

    return-object v0
.end method

.method public w()Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    return-object v0
.end method

.method public x()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/utils/e;->k:I

    return v0
.end method

.method public y()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e;->a:Ljava/lang/String;

    return-object v0
.end method
