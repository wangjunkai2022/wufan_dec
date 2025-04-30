.class Lcom/papa/gsyvideoplayer/video/base/GSYVideoView$b;
.super Ljava/lang/Object;
.source "GSYVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onLossAudio()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;


# direct methods
.method constructor <init>(Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView$b;->a:Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView$b;->a:Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;

    iget-boolean v1, v0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mReleaseWhenLossAudio:Z

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->releaseVideos()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoPause()V

    :goto_0
    return-void
.end method
