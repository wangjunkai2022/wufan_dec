.class Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$e;
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
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$e;->a:Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$e;->a:Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;

    iget v1, v0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    if-eqz v1, :cond_1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getActivityContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$e;->a:Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->hideAllWidget()V

    .line 4
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$e;->a:Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;

    iget-object v1, v0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    .line 5
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$e;->a:Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;

    iget-boolean v1, v0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mHideKey:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mShowVKey:Z

    if-eqz v1, :cond_0

    .line 6
    iget-object v0, v0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/b;->k(Landroid/content/Context;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$e;->a:Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;

    iget-boolean v1, v0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mPostDismiss:Z

    if-eqz v1, :cond_1

    .line 8
    iget v1, v0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mDismissControlTime:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
