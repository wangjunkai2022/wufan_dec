.class Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$b;
.super Ljava/lang/Object;
.source "GSYBaseVideoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->resolveFullVideoShow(Landroid/content/Context;Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Landroid/widget/FrameLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

.field final synthetic d:Landroid/widget/FrameLayout;

.field final synthetic e:Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;


# direct methods
.method constructor <init>(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;ZZLcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$b;->e:Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$b;->a:Z

    iput-boolean p3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$b;->b:Z

    iput-object p4, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$b;->c:Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    iput-object p5, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$b;->d:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$b;->a:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$b;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$b;->e:Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    iget-object v0, v0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/papa/gsyvideoplayer/utils/o;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/utils/o;->r()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$b;->e:Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    iget-object v0, v0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/papa/gsyvideoplayer/utils/o;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/utils/o;->E()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$b;->c:Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$b;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
