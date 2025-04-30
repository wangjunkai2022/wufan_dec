.class Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$b;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "GSYVideoControlView.java"


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
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$b;->a:Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$b;->a:Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->touchDoubleUp()V

    .line 2
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$b;->a:Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;

    invoke-virtual {v0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->touchLongPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$b;->a:Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;

    iget-boolean v1, v0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mChangePosition:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mChangeVolume:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightness:Z

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->onClickUiToggle()V

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
