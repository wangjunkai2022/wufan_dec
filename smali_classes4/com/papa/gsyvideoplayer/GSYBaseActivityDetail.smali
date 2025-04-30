.class public abstract Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "GSYBaseActivityDetail.java"

# interfaces
.implements Lc2/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;",
        ">",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "Lc2/h;"
    }
.end annotation


# instance fields
.field protected a:Z

.field protected b:Z

.field protected c:Lcom/papa/gsyvideoplayer/utils/o;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs A(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs B0(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public abstract C0()V
.end method

.method public abstract D0()Z
.end method

.method public varargs E(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public abstract E0()Lcom/papa/gsyvideoplayer/builder/a;
.end method

.method public abstract F0()Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public G0()Lcom/papa/gsyvideoplayer/utils/n;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public H0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public I0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public varargs J(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->c:Lcom/papa/gsyvideoplayer/utils/o;

    const-string p2, "initVideo() or initVideoBuilderMode() first"

    .line 2
    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->D0()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->L0()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/papa/gsyvideoplayer/utils/o;->I(Z)V

    .line 4
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->a:Z

    return-void
.end method

.method public J0()V
    .locals 3

    .line 1
    new-instance v0, Lcom/papa/gsyvideoplayer/utils/o;

    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->F0()Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->G0()Lcom/papa/gsyvideoplayer/utils/n;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/papa/gsyvideoplayer/utils/o;-><init>(Landroid/app/Activity;Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Lcom/papa/gsyvideoplayer/utils/n;)V

    iput-object v0, p0, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->c:Lcom/papa/gsyvideoplayer/utils/o;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/papa/gsyvideoplayer/utils/o;->I(Z)V

    .line 3
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->F0()Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->F0()Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail$a;

    invoke-direct {v1, p0}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail$a;-><init>(Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public K0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->J0()V

    .line 2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->E0()Lcom/papa/gsyvideoplayer/builder/a;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p0}, Lcom/papa/gsyvideoplayer/builder/a;->T(Lc2/h;)Lcom/papa/gsyvideoplayer/builder/a;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->F0()Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa/gsyvideoplayer/builder/a;->b(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    return-void
.end method

.method public L0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public varargs M(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

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

.method public varargs Q(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs S(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs T(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs V(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs Z(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs b0(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs e0(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs h0(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs j0(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs k(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->c:Lcom/papa/gsyvideoplayer/utils/o;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/utils/o;->q()I

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/papa/gsyvideoplayer/d;->c0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->b:Z

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->F0()Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v1

    iget-object v4, p0, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->c:Lcom/papa/gsyvideoplayer/utils/o;

    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->H0()Z

    move-result v5

    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->I0()Z

    move-result v6

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;Lcom/papa/gsyvideoplayer/utils/o;ZZ)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 2
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->a:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->F0()Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getCurrentPlayer()Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->release()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->c:Lcom/papa/gsyvideoplayer/utils/o;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/utils/o;->D()V

    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->F0()Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getCurrentPlayer()Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoPause()V

    .line 3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->c:Lcom/papa/gsyvideoplayer/utils/o;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Lcom/papa/gsyvideoplayer/utils/o;->K(Z)V

    .line 5
    :cond_0
    iput-boolean v1, p0, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->b:Z

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->F0()Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getCurrentPlayer()Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoResume()V

    .line 3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->c:Lcom/papa/gsyvideoplayer/utils/o;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Lcom/papa/gsyvideoplayer/utils/o;->K(Z)V

    .line 5
    :cond_0
    iput-boolean v1, p0, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->b:Z

    return-void
.end method

.method public varargs q(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs t0(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs u(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs x(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs y(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->c:Lcom/papa/gsyvideoplayer/utils/o;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/utils/o;->q()I

    :cond_0
    return-void
.end method

.method public varargs z0(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
