.class Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail$b;
.super Lc2/b;
.source "GSYBaseADActivityDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;->K0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;


# direct methods
.method constructor <init>(Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail$b;->a:Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;

    invoke-direct {p0}, Lc2/b;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs j0(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lc2/b;->j0(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail$b;->a:Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;

    iget-object p2, p1, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;->d:Lcom/papa/gsyvideoplayer/utils/o;

    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->D0()Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/papa/gsyvideoplayer/utils/o;->I(Z)V

    return-void
.end method

.method public varargs q(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail$b;->a:Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;

    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;->O0()Lcom/papa/gsyvideoplayer/video/GSYADVideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getCurrentPlayer()Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->release()V

    .line 2
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail$b;->a:Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;

    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;->O0()Lcom/papa/gsyvideoplayer/video/GSYADVideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoReset()V

    .line 3
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail$b;->a:Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;

    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;->O0()Lcom/papa/gsyvideoplayer/video/GSYADVideoPlayer;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail$b;->a:Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;

    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->F0()Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getCurrentPlayer()Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->startAfterPrepared()V

    .line 5
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail$b;->a:Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;

    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;->O0()Lcom/papa/gsyvideoplayer/video/GSYADVideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getCurrentPlayer()Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->isIfCurrentIsFullscreen()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail$b;->a:Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;

    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;->O0()Lcom/papa/gsyvideoplayer/video/GSYADVideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/GSYADVideoPlayer;->b()V

    .line 7
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail$b;->a:Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;

    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->F0()Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getCurrentPlayer()Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->isIfCurrentIsFullscreen()Z

    move-result p1

    if-nez p1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail$b;->a:Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;

    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;->M0()V

    .line 9
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail$b;->a:Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;

    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->F0()Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object p1

    iget-object p2, p0, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail$b;->a:Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;

    invoke-virtual {p2}, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;->O0()Lcom/papa/gsyvideoplayer/video/GSYADVideoPlayer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getSaveBeforeFullSystemUiVisibility()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setSaveBeforeFullSystemUiVisibility(I)V

    :cond_0
    return-void
.end method

.method public varargs y(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail$b;->a:Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;

    iget-object p1, p1, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;->d:Lcom/papa/gsyvideoplayer/utils/o;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/utils/o;->q()I

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail$b;->a:Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;

    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->F0()Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getCurrentPlayer()Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->isIfCurrentIsFullscreen()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail$b;->a:Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;

    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->F0()Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->onBackFullscreen()V

    :cond_1
    return-void
.end method
