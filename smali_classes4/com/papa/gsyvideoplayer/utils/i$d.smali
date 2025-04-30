.class Lcom/papa/gsyvideoplayer/utils/i$d;
.super Ljava/lang/Object;
.source "ListVideoUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/gsyvideoplayer/utils/i;->b0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/papa/gsyvideoplayer/utils/i;


# direct methods
.method constructor <init>(Lcom/papa/gsyvideoplayer/utils/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/utils/i$d;->a:Lcom/papa/gsyvideoplayer/utils/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i$d;->a:Lcom/papa/gsyvideoplayer/utils/i;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/papa/gsyvideoplayer/utils/i;->q(Lcom/papa/gsyvideoplayer/utils/i;Z)Z

    .line 2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i$d;->a:Lcom/papa/gsyvideoplayer/utils/i;

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/i;->m(Lcom/papa/gsyvideoplayer/utils/i;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i$d;->a:Lcom/papa/gsyvideoplayer/utils/i;

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/i;->a(Lcom/papa/gsyvideoplayer/utils/i;)Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i$d;->a:Lcom/papa/gsyvideoplayer/utils/i;

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/i;->a(Lcom/papa/gsyvideoplayer/utils/i;)Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/papa/gsyvideoplayer/utils/i$d;->a:Lcom/papa/gsyvideoplayer/utils/i;

    invoke-static {v2}, Lcom/papa/gsyvideoplayer/utils/i;->a(Lcom/papa/gsyvideoplayer/utils/i;)Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i$d;->a:Lcom/papa/gsyvideoplayer/utils/i;

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/i;->r(Lcom/papa/gsyvideoplayer/utils/i;)Lcom/papa/gsyvideoplayer/utils/o;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/papa/gsyvideoplayer/utils/o;->I(Z)V

    .line 6
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i$d;->a:Lcom/papa/gsyvideoplayer/utils/i;

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/i;->a(Lcom/papa/gsyvideoplayer/utils/i;)Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setIfCurrentIsFullscreen(Z)V

    .line 7
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i$d;->a:Lcom/papa/gsyvideoplayer/utils/i;

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/i;->m(Lcom/papa/gsyvideoplayer/utils/i;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 8
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i$d;->a:Lcom/papa/gsyvideoplayer/utils/i;

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/i;->t(Lcom/papa/gsyvideoplayer/utils/i;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v2, p0, Lcom/papa/gsyvideoplayer/utils/i$d;->a:Lcom/papa/gsyvideoplayer/utils/i;

    invoke-static {v2}, Lcom/papa/gsyvideoplayer/utils/i;->a(Lcom/papa/gsyvideoplayer/utils/i;)Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    move-result-object v2

    iget-object v3, p0, Lcom/papa/gsyvideoplayer/utils/i$d;->a:Lcom/papa/gsyvideoplayer/utils/i;

    invoke-static {v3}, Lcom/papa/gsyvideoplayer/utils/i;->s(Lcom/papa/gsyvideoplayer/utils/i;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i$d;->a:Lcom/papa/gsyvideoplayer/utils/i;

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/i;->a(Lcom/papa/gsyvideoplayer/utils/i;)Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Lcom/papa/gsyvideoplayer/utils/i$d;->a:Lcom/papa/gsyvideoplayer/utils/i;

    invoke-static {v2}, Lcom/papa/gsyvideoplayer/utils/i;->a(Lcom/papa/gsyvideoplayer/utils/i;)Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getEnlargeImageRes()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 10
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i$d;->a:Lcom/papa/gsyvideoplayer/utils/i;

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/i;->a(Lcom/papa/gsyvideoplayer/utils/i;)Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getBackButton()Landroid/widget/ImageView;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i$d;->a:Lcom/papa/gsyvideoplayer/utils/i;

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/i;->a(Lcom/papa/gsyvideoplayer/utils/i;)Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setIfCurrentIsFullscreen(Z)V

    .line 12
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i$d;->a:Lcom/papa/gsyvideoplayer/utils/i;

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/i;->u(Lcom/papa/gsyvideoplayer/utils/i;)Lc2/h;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "onQuitFullscreen"

    .line 13
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i$d;->a:Lcom/papa/gsyvideoplayer/utils/i;

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/i;->u(Lcom/papa/gsyvideoplayer/utils/i;)Lc2/h;

    move-result-object v0

    iget-object v2, p0, Lcom/papa/gsyvideoplayer/utils/i$d;->a:Lcom/papa/gsyvideoplayer/utils/i;

    invoke-static {v2}, Lcom/papa/gsyvideoplayer/utils/i;->c(Lcom/papa/gsyvideoplayer/utils/i;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/papa/gsyvideoplayer/utils/i$d;->a:Lcom/papa/gsyvideoplayer/utils/i;

    invoke-static {v4}, Lcom/papa/gsyvideoplayer/utils/i;->d(Lcom/papa/gsyvideoplayer/utils/i;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x1

    iget-object v4, p0, Lcom/papa/gsyvideoplayer/utils/i$d;->a:Lcom/papa/gsyvideoplayer/utils/i;

    invoke-static {v4}, Lcom/papa/gsyvideoplayer/utils/i;->a(Lcom/papa/gsyvideoplayer/utils/i;)Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-interface {v0, v2, v3}, Lc2/h;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i$d;->a:Lcom/papa/gsyvideoplayer/utils/i;

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/i;->e(Lcom/papa/gsyvideoplayer/utils/i;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i$d;->a:Lcom/papa/gsyvideoplayer/utils/i;

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/i;->f(Lcom/papa/gsyvideoplayer/utils/i;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/papa/gsyvideoplayer/utils/i$d;->a:Lcom/papa/gsyvideoplayer/utils/i;

    invoke-static {v1}, Lcom/papa/gsyvideoplayer/utils/i;->g(Lcom/papa/gsyvideoplayer/utils/i;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/papa/gsyvideoplayer/utils/b;->p(Landroid/content/Context;I)V

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i$d;->a:Lcom/papa/gsyvideoplayer/utils/i;

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/i;->f(Lcom/papa/gsyvideoplayer/utils/i;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/papa/gsyvideoplayer/utils/i$d;->a:Lcom/papa/gsyvideoplayer/utils/i;

    invoke-static {v1}, Lcom/papa/gsyvideoplayer/utils/i;->h(Lcom/papa/gsyvideoplayer/utils/i;)Z

    move-result v1

    iget-object v2, p0, Lcom/papa/gsyvideoplayer/utils/i$d;->a:Lcom/papa/gsyvideoplayer/utils/i;

    invoke-static {v2}, Lcom/papa/gsyvideoplayer/utils/i;->i(Lcom/papa/gsyvideoplayer/utils/i;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/papa/gsyvideoplayer/utils/b;->q(Landroid/content/Context;ZZ)V

    return-void
.end method
