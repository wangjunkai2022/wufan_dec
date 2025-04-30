.class Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$i;
.super Ljava/lang/Object;
.source "GSYBaseVideoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->checkAutoFullWithSizeAndAdaptation(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

.field final synthetic b:Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;


# direct methods
.method constructor <init>(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$i;->b:Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    iput-object p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$i;->a:Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$i;->a:Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getCurrentPlayer()Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->autoAdaptation()V

    return-void
.end method
