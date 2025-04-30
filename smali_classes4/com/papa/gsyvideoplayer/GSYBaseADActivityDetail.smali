.class public abstract Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;
.super Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;
.source "GSYBaseADActivityDetail.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;",
        "R:",
        "Lcom/papa/gsyvideoplayer/video/GSYADVideoPlayer;",
        ">",
        "Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected d:Lcom/papa/gsyvideoplayer/utils/o;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;-><init>()V

    return-void
.end method


# virtual methods
.method public C0()V
    .locals 0

    return-void
.end method

.method public G0()Lcom/papa/gsyvideoplayer/utils/n;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public varargs J(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->J(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;->Q0()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;->S0()V

    :cond_0
    return-void
.end method

.method public J0()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->J0()V

    .line 2
    new-instance v0, Lcom/papa/gsyvideoplayer/utils/o;

    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;->O0()Lcom/papa/gsyvideoplayer/video/GSYADVideoPlayer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;->G0()Lcom/papa/gsyvideoplayer/utils/n;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/papa/gsyvideoplayer/utils/o;-><init>(Landroid/app/Activity;Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Lcom/papa/gsyvideoplayer/utils/n;)V

    iput-object v0, p0, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;->d:Lcom/papa/gsyvideoplayer/utils/o;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/papa/gsyvideoplayer/utils/o;->I(Z)V

    .line 4
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;->O0()Lcom/papa/gsyvideoplayer/video/GSYADVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;->O0()Lcom/papa/gsyvideoplayer/video/GSYADVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail$a;

    invoke-direct {v1, p0}, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail$a;-><init>(Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public K0()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->K0()V

    .line 2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;->N0()Lcom/papa/gsyvideoplayer/builder/a;

    move-result-object v0

    new-instance v1, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail$b;

    invoke-direct {v1, p0}, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail$b;-><init>(Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/papa/gsyvideoplayer/builder/a;->T(Lc2/h;)Lcom/papa/gsyvideoplayer/builder/a;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;->O0()Lcom/papa/gsyvideoplayer/video/GSYADVideoPlayer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa/gsyvideoplayer/builder/a;->a(Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;)V

    return-void
.end method

.method public M0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->c:Lcom/papa/gsyvideoplayer/utils/o;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/utils/o;->r()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->c:Lcom/papa/gsyvideoplayer/utils/o;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/utils/o;->E()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->F0()Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->H0()Z

    move-result v1

    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->I0()Z

    move-result v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->startWindowFullscreen(Landroid/content/Context;ZZ)Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    return-void
.end method

.method public abstract N0()Lcom/papa/gsyvideoplayer/builder/a;
.end method

.method public abstract O0()Lcom/papa/gsyvideoplayer/video/GSYADVideoPlayer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation
.end method

.method protected P0()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;->O0()Lcom/papa/gsyvideoplayer/video/GSYADVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getCurrentPlayer()Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    move-result v0

    if-ltz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;->O0()Lcom/papa/gsyvideoplayer/video/GSYADVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getCurrentPlayer()Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;->O0()Lcom/papa/gsyvideoplayer/video/GSYADVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getCurrentPlayer()Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract Q0()Z
.end method

.method public R0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;->d:Lcom/papa/gsyvideoplayer/utils/o;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/utils/o;->r()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;->d:Lcom/papa/gsyvideoplayer/utils/o;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/utils/o;->E()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;->O0()Lcom/papa/gsyvideoplayer/video/GSYADVideoPlayer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->H0()Z

    move-result v1

    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->I0()Z

    move-result v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->startWindowFullscreen(Landroid/content/Context;ZZ)Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    return-void
.end method

.method public S0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;->O0()Lcom/papa/gsyvideoplayer/video/GSYADVideoPlayer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;->O0()Lcom/papa/gsyvideoplayer/video/GSYADVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->startPlayLogic()V

    .line 3
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->F0()Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getCurrentPlayer()Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->isIfCurrentIsFullscreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;->R0()V

    .line 5
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;->O0()Lcom/papa/gsyvideoplayer/video/GSYADVideoPlayer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->F0()Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getSaveBeforeFullSystemUiVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setSaveBeforeFullSystemUiVisibility(I)V

    :cond_0
    return-void
.end method

.method public varargs j0(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->j0(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;->d:Lcom/papa/gsyvideoplayer/utils/o;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/utils/o;->q()I

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/papa/gsyvideoplayer/b;->c0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->a:Z

    .line 2
    iget-boolean v1, p0, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->b:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;->O0()Lcom/papa/gsyvideoplayer/video/GSYADVideoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;->P0()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->a:Z

    .line 5
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;->O0()Lcom/papa/gsyvideoplayer/video/GSYADVideoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getCurrentPlayer()Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v2

    iget-object v5, p0, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;->d:Lcom/papa/gsyvideoplayer/utils/o;

    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->H0()Z

    move-result v6

    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->I0()Z

    move-result v7

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;Lcom/papa/gsyvideoplayer/utils/o;ZZ)V

    .line 6
    :cond_0
    invoke-super {p0, p1}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 7
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->a:Z

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->onDestroy()V

    .line 2
    invoke-static {}, Lcom/papa/gsyvideoplayer/b;->i0()V

    .line 3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;->d:Lcom/papa/gsyvideoplayer/utils/o;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/utils/o;->D()V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->onPause()V

    .line 2
    invoke-static {}, Lcom/papa/gsyvideoplayer/b;->f0()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->onResume()V

    .line 2
    invoke-static {}, Lcom/papa/gsyvideoplayer/b;->g0()V

    return-void
.end method

.method public varargs t0(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->t0(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 2
    aget-object p1, p2, p1

    check-cast p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoPlayer;

    .line 3
    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getBackButton()Landroid/widget/ImageView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
