.class Lcom/papa/gsyvideoplayer/utils/i$c;
.super Ljava/lang/Object;
.source "ListVideoUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/gsyvideoplayer/utils/i;->X()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/papa/gsyvideoplayer/utils/i;


# direct methods
.method constructor <init>(Lcom/papa/gsyvideoplayer/utils/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/utils/i$c;->a:Lcom/papa/gsyvideoplayer/utils/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i$c;->a:Lcom/papa/gsyvideoplayer/utils/i;

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/i;->m(Lcom/papa/gsyvideoplayer/utils/i;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i$c;->a:Lcom/papa/gsyvideoplayer/utils/i;

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/i;->a(Lcom/papa/gsyvideoplayer/utils/i;)Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/papa/gsyvideoplayer/utils/i;->o(Lcom/papa/gsyvideoplayer/utils/i;Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    .line 3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i$c;->a:Lcom/papa/gsyvideoplayer/utils/i;

    const/16 v1, 0x258

    invoke-static {v0, v1}, Lcom/papa/gsyvideoplayer/utils/i;->p(Lcom/papa/gsyvideoplayer/utils/i;I)V

    return-void
.end method
