.class Lcom/papa/gsyvideoplayer/utils/e$c;
.super Ljava/lang/Object;
.source "GSYVideoHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/gsyvideoplayer/utils/e;->L()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/papa/gsyvideoplayer/utils/e;


# direct methods
.method constructor <init>(Lcom/papa/gsyvideoplayer/utils/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/utils/e$c;->a:Lcom/papa/gsyvideoplayer/utils/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e$c;->a:Lcom/papa/gsyvideoplayer/utils/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/papa/gsyvideoplayer/utils/e;->o(Lcom/papa/gsyvideoplayer/utils/e;Z)Z

    .line 2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e$c;->a:Lcom/papa/gsyvideoplayer/utils/e;

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/e;->p(Lcom/papa/gsyvideoplayer/utils/e;)Z

    .line 3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e$c;->a:Lcom/papa/gsyvideoplayer/utils/e;

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/e;->k(Lcom/papa/gsyvideoplayer/utils/e;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e$c;->a:Lcom/papa/gsyvideoplayer/utils/e;

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/e;->k(Lcom/papa/gsyvideoplayer/utils/e;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e$c;->a:Lcom/papa/gsyvideoplayer/utils/e;

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/e;->a(Lcom/papa/gsyvideoplayer/utils/e;)Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e$c;->a:Lcom/papa/gsyvideoplayer/utils/e;

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/e;->a(Lcom/papa/gsyvideoplayer/utils/e;)Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/papa/gsyvideoplayer/utils/e$c;->a:Lcom/papa/gsyvideoplayer/utils/e;

    invoke-static {v2}, Lcom/papa/gsyvideoplayer/utils/e;->a(Lcom/papa/gsyvideoplayer/utils/e;)Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e$c;->a:Lcom/papa/gsyvideoplayer/utils/e;

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/e;->q(Lcom/papa/gsyvideoplayer/utils/e;)Lcom/papa/gsyvideoplayer/utils/o;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/papa/gsyvideoplayer/utils/o;->I(Z)V

    .line 8
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e$c;->a:Lcom/papa/gsyvideoplayer/utils/e;

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/e;->a(Lcom/papa/gsyvideoplayer/utils/e;)Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setIfCurrentIsFullscreen(Z)V

    .line 9
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e$c;->a:Lcom/papa/gsyvideoplayer/utils/e;

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/e;->k(Lcom/papa/gsyvideoplayer/utils/e;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e$c;->a:Lcom/papa/gsyvideoplayer/utils/e;

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/e;->k(Lcom/papa/gsyvideoplayer/utils/e;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e$c;->a:Lcom/papa/gsyvideoplayer/utils/e;

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/e;->c(Lcom/papa/gsyvideoplayer/utils/e;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v2, p0, Lcom/papa/gsyvideoplayer/utils/e$c;->a:Lcom/papa/gsyvideoplayer/utils/e;

    invoke-static {v2}, Lcom/papa/gsyvideoplayer/utils/e;->a(Lcom/papa/gsyvideoplayer/utils/e;)Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    move-result-object v2

    iget-object v3, p0, Lcom/papa/gsyvideoplayer/utils/e$c;->a:Lcom/papa/gsyvideoplayer/utils/e;

    invoke-static {v3}, Lcom/papa/gsyvideoplayer/utils/e;->r(Lcom/papa/gsyvideoplayer/utils/e;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e$c;->a:Lcom/papa/gsyvideoplayer/utils/e;

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/e;->a(Lcom/papa/gsyvideoplayer/utils/e;)Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Lcom/papa/gsyvideoplayer/utils/e$c;->a:Lcom/papa/gsyvideoplayer/utils/e;

    invoke-static {v2}, Lcom/papa/gsyvideoplayer/utils/e;->a(Lcom/papa/gsyvideoplayer/utils/e;)Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getEnlargeImageRes()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 13
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e$c;->a:Lcom/papa/gsyvideoplayer/utils/e;

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/e;->a(Lcom/papa/gsyvideoplayer/utils/e;)Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getBackButton()Landroid/widget/ImageView;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e$c;->a:Lcom/papa/gsyvideoplayer/utils/e;

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/e;->a(Lcom/papa/gsyvideoplayer/utils/e;)Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setIfCurrentIsFullscreen(Z)V

    .line 15
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e$c;->a:Lcom/papa/gsyvideoplayer/utils/e;

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/e;->a(Lcom/papa/gsyvideoplayer/utils/e;)Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->restartTimerTask()V

    .line 16
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e$c;->a:Lcom/papa/gsyvideoplayer/utils/e;

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/e;->d(Lcom/papa/gsyvideoplayer/utils/e;)Lcom/papa/gsyvideoplayer/utils/e$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/utils/e$g;->q0()Lc2/h;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "onQuitFullscreen"

    .line 17
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e$c;->a:Lcom/papa/gsyvideoplayer/utils/e;

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/e;->d(Lcom/papa/gsyvideoplayer/utils/e;)Lcom/papa/gsyvideoplayer/utils/e$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/utils/e$g;->q0()Lc2/h;

    move-result-object v0

    iget-object v2, p0, Lcom/papa/gsyvideoplayer/utils/e$c;->a:Lcom/papa/gsyvideoplayer/utils/e;

    invoke-static {v2}, Lcom/papa/gsyvideoplayer/utils/e;->d(Lcom/papa/gsyvideoplayer/utils/e;)Lcom/papa/gsyvideoplayer/utils/e$g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/papa/gsyvideoplayer/utils/e$g;->p0()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/papa/gsyvideoplayer/utils/e$c;->a:Lcom/papa/gsyvideoplayer/utils/e;

    invoke-static {v4}, Lcom/papa/gsyvideoplayer/utils/e;->d(Lcom/papa/gsyvideoplayer/utils/e;)Lcom/papa/gsyvideoplayer/utils/e$g;

    move-result-object v4

    invoke-virtual {v4}, Lcom/papa/gsyvideoplayer/utils/e$g;->r0()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x1

    iget-object v4, p0, Lcom/papa/gsyvideoplayer/utils/e$c;->a:Lcom/papa/gsyvideoplayer/utils/e;

    invoke-static {v4}, Lcom/papa/gsyvideoplayer/utils/e;->a(Lcom/papa/gsyvideoplayer/utils/e;)Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-interface {v0, v2, v3}, Lc2/h;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    :cond_3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e$c;->a:Lcom/papa/gsyvideoplayer/utils/e;

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/e;->d(Lcom/papa/gsyvideoplayer/utils/e;)Lcom/papa/gsyvideoplayer/utils/e$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/utils/e$g;->v0()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 20
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e$c;->a:Lcom/papa/gsyvideoplayer/utils/e;

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/e;->e(Lcom/papa/gsyvideoplayer/utils/e;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/papa/gsyvideoplayer/utils/e$c;->a:Lcom/papa/gsyvideoplayer/utils/e;

    invoke-static {v1}, Lcom/papa/gsyvideoplayer/utils/e;->f(Lcom/papa/gsyvideoplayer/utils/e;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/papa/gsyvideoplayer/utils/b;->p(Landroid/content/Context;I)V

    .line 21
    :cond_4
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e$c;->a:Lcom/papa/gsyvideoplayer/utils/e;

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/e;->e(Lcom/papa/gsyvideoplayer/utils/e;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/papa/gsyvideoplayer/utils/e$c;->a:Lcom/papa/gsyvideoplayer/utils/e;

    invoke-static {v1}, Lcom/papa/gsyvideoplayer/utils/e;->d(Lcom/papa/gsyvideoplayer/utils/e;)Lcom/papa/gsyvideoplayer/utils/e$g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/papa/gsyvideoplayer/utils/e$g;->u0()Z

    move-result v1

    iget-object v2, p0, Lcom/papa/gsyvideoplayer/utils/e$c;->a:Lcom/papa/gsyvideoplayer/utils/e;

    invoke-static {v2}, Lcom/papa/gsyvideoplayer/utils/e;->d(Lcom/papa/gsyvideoplayer/utils/e;)Lcom/papa/gsyvideoplayer/utils/e$g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/papa/gsyvideoplayer/utils/e$g;->w0()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/papa/gsyvideoplayer/utils/b;->q(Landroid/content/Context;ZZ)V

    return-void
.end method
