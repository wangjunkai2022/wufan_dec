.class public Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$f;
.super Ljava/util/TimerTask;
.source "JCVideoPlayerStandard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;


# direct methods
.method public constructor <init>(Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$f;->a:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$f;->a:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;

    iget v1, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->b:I

    if-eqz v1, :cond_0

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$f;->a:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$f;->a:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$f$a;

    invoke-direct {v1, p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$f$a;-><init>(Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$f;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
