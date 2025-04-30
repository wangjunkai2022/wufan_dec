.class Lcom/papa/gsyvideoplayer/utils/e$b;
.super Ljava/lang/Object;
.source "GSYVideoHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/gsyvideoplayer/utils/e;->H()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/papa/gsyvideoplayer/utils/e;


# direct methods
.method constructor <init>(Lcom/papa/gsyvideoplayer/utils/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/utils/e$b;->a:Lcom/papa/gsyvideoplayer/utils/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e$b;->a:Lcom/papa/gsyvideoplayer/utils/e;

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/e;->k(Lcom/papa/gsyvideoplayer/utils/e;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e$b;->a:Lcom/papa/gsyvideoplayer/utils/e;

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/e;->k(Lcom/papa/gsyvideoplayer/utils/e;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e$b;->a:Lcom/papa/gsyvideoplayer/utils/e;

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/e;->l(Lcom/papa/gsyvideoplayer/utils/e;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e$b;->a:Lcom/papa/gsyvideoplayer/utils/e;

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/e;->a(Lcom/papa/gsyvideoplayer/utils/e;)Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/papa/gsyvideoplayer/utils/e;->m(Lcom/papa/gsyvideoplayer/utils/e;Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    .line 5
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/e$b;->a:Lcom/papa/gsyvideoplayer/utils/e;

    const/16 v1, 0x258

    invoke-static {v0, v1}, Lcom/papa/gsyvideoplayer/utils/e;->n(Lcom/papa/gsyvideoplayer/utils/e;I)V

    return-void
.end method
