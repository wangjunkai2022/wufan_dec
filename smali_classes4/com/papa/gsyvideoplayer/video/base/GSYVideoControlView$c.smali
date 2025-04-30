.class Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$c;
.super Ljava/lang/Object;
.source "GSYVideoControlView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->onBufferingUpdate(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;


# direct methods
.method constructor <init>(Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$c;->b:Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;

    iput p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$c;->b:Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;

    iget v1, v0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 2
    iget v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$c;->a:I

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setTextAndProgress(I)V

    .line 4
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$c;->b:Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;

    iget v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$c;->a:I

    iput v1, v0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mBufferPoint:I

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Net speed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$c;->b:Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;

    invoke-virtual {v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getNetSpeedText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " percent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$c;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$c;->b:Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;

    iget-object v1, v0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    if-nez v1, :cond_1

    return-void

    .line 7
    :cond_1
    iget-boolean v3, v0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mLooping:Z

    if-eqz v3, :cond_2

    iget-boolean v0, v0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mHadPlay:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$c;->a:I

    if-nez v0, :cond_2

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$c;->b:Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;

    iget-object v1, v1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_2

    .line 8
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$c;->b:Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->loopSetProgressAndTime()V

    :cond_2
    return-void
.end method
