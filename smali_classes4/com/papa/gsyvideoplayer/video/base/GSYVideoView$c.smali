.class Lcom/papa/gsyvideoplayer/video/base/GSYVideoView$c;
.super Ljava/lang/Object;
.source "GSYVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->netWorkErrorLogic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;


# direct methods
.method constructor <init>(Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView$c;->b:Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;

    iput-wide p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView$c;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView$c;->b:Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;

    iget-wide v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView$c;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setSeekOnStart(J)V

    .line 2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView$c;->b:Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->startPlayLogic()V

    return-void
.end method
