.class Lcom/papa/gsyvideoplayer/utils/e$d;
.super Ljava/lang/Object;
.source "GSYVideoHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/gsyvideoplayer/utils/e;->J(Lcom/papa/gsyvideoplayer/video/base/GSYVideoPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/papa/gsyvideoplayer/video/base/GSYVideoPlayer;

.field final synthetic b:Lcom/papa/gsyvideoplayer/utils/e;


# direct methods
.method constructor <init>(Lcom/papa/gsyvideoplayer/utils/e;Lcom/papa/gsyvideoplayer/video/base/GSYVideoPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/utils/e$d;->b:Lcom/papa/gsyvideoplayer/utils/e;

    iput-object p2, p0, Lcom/papa/gsyvideoplayer/utils/e$d;->a:Lcom/papa/gsyvideoplayer/video/base/GSYVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e$d;->b:Lcom/papa/gsyvideoplayer/utils/e;

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/e;->k(Lcom/papa/gsyvideoplayer/utils/e;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e$d;->a:Lcom/papa/gsyvideoplayer/video/base/GSYVideoPlayer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 3
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/utils/e$d;->b:Lcom/papa/gsyvideoplayer/utils/e;

    invoke-static {v1}, Lcom/papa/gsyvideoplayer/utils/e;->g(Lcom/papa/gsyvideoplayer/utils/e;)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v3, p0, Lcom/papa/gsyvideoplayer/utils/e$d;->b:Lcom/papa/gsyvideoplayer/utils/e;

    invoke-static {v3}, Lcom/papa/gsyvideoplayer/utils/e;->g(Lcom/papa/gsyvideoplayer/utils/e;)[I

    move-result-object v3

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-virtual {v0, v1, v3, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 4
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/utils/e$d;->b:Lcom/papa/gsyvideoplayer/utils/e;

    invoke-static {v1}, Lcom/papa/gsyvideoplayer/utils/e;->h(Lcom/papa/gsyvideoplayer/utils/e;)[I

    move-result-object v1

    aget v1, v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 5
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/utils/e$d;->b:Lcom/papa/gsyvideoplayer/utils/e;

    invoke-static {v1}, Lcom/papa/gsyvideoplayer/utils/e;->h(Lcom/papa/gsyvideoplayer/utils/e;)[I

    move-result-object v1

    aget v1, v1, v4

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 6
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 7
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/utils/e$d;->a:Lcom/papa/gsyvideoplayer/video/base/GSYVideoPlayer;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e$d;->b:Lcom/papa/gsyvideoplayer/utils/e;

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/e;->j(Lcom/papa/gsyvideoplayer/utils/e;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/papa/gsyvideoplayer/utils/e$d$a;

    invoke-direct {v1, p0}, Lcom/papa/gsyvideoplayer/utils/e$d$a;-><init>(Lcom/papa/gsyvideoplayer/utils/e$d;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
