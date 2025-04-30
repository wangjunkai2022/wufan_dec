.class Lcom/join/mgps/adapter/FullScreenActivity$a;
.super Ljava/lang/Object;
.source "FullScreenActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/FullScreenActivity;->F0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/adapter/FullScreenActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/FullScreenActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/FullScreenActivity$a;->a:Lcom/join/mgps/adapter/FullScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/FullScreenActivity$a;->a:Lcom/join/mgps/adapter/FullScreenActivity;

    iget-object v0, v0, Lcom/join/mgps/adapter/FullScreenActivity;->a:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/adapter/FullScreenActivity$a;->a:Lcom/join/mgps/adapter/FullScreenActivity;

    iget-object v0, v0, Lcom/join/mgps/adapter/FullScreenActivity;->a:Lcom/join/android/app/component/video/StandardVideoView;

    .line 2
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/FullScreenActivity$a;->a:Lcom/join/mgps/adapter/FullScreenActivity;

    iget-object v0, v0, Lcom/join/mgps/adapter/FullScreenActivity;->a:Lcom/join/android/app/component/video/StandardVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setMute(Z)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/adapter/FullScreenActivity$a;->a:Lcom/join/mgps/adapter/FullScreenActivity;

    iget-object v0, v0, Lcom/join/mgps/adapter/FullScreenActivity;->a:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v0}, Lcom/join/android/app/component/video/StandardVideoView;->startPlayLogic()V

    :cond_1
    return-void
.end method
