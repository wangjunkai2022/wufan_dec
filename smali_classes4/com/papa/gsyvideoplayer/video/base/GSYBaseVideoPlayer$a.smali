.class Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$a;
.super Ljava/lang/Object;
.source "GSYBaseVideoPlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setSmallVideoTextureView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;


# direct methods
.method constructor <init>(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$a;->a:Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$a;->a:Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->hideSmallVideo()V

    .line 2
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$a;->a:Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->releaseVideos()V

    return-void
.end method
