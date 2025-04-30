.class public Lcom/join/android/app/component/video/StandardVideoViewJC$f;
.super Ljava/util/TimerTask;
.source "StandardVideoViewJC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/android/app/component/video/StandardVideoViewJC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lcom/join/android/app/component/video/StandardVideoViewJC;


# direct methods
.method public constructor <init>(Lcom/join/android/app/component/video/StandardVideoViewJC;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC$f;->a:Lcom/join/android/app/component/video/StandardVideoViewJC;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC$f;->a:Lcom/join/android/app/component/video/StandardVideoViewJC;

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

    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC$f;->a:Lcom/join/android/app/component/video/StandardVideoViewJC;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC$f;->a:Lcom/join/android/app/component/video/StandardVideoViewJC;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/join/android/app/component/video/StandardVideoViewJC$f$a;

    invoke-direct {v1, p0}, Lcom/join/android/app/component/video/StandardVideoViewJC$f$a;-><init>(Lcom/join/android/app/component/video/StandardVideoViewJC$f;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
