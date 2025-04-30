.class Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$d;
.super Ljava/lang/Object;
.source "GSYVideoControlView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;


# direct methods
.method constructor <init>(Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$d;->a:Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$d;->a:Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;

    iget v1, v0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setTextAndProgress(I)V

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$d;->a:Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;

    iget-boolean v1, v0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mPostProgress:Z

    if-eqz v1, :cond_2

    const-wide/16 v1, 0x3e8

    .line 4
    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method
