.class Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$h;
.super Ljava/lang/Object;
.source "GSYBaseVideoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->startWindowFullscreen(Landroid/content/Context;ZZ)Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

.field final synthetic d:Landroid/widget/FrameLayout;

.field final synthetic e:Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;


# direct methods
.method constructor <init>(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Landroid/view/ViewGroup;Landroid/content/Context;Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$h;->e:Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    iput-object p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$h;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$h;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$h;->c:Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    iput-object p5, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$h;->d:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$h;->a:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$h;->e:Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$h;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$h;->c:Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    iget-object v3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$h;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2, v3}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->resolveFullVideoShow(Landroid/content/Context;Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Landroid/widget/FrameLayout;)V

    .line 3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$h;->e:Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mFullAnimEnd:Z

    return-void
.end method
