.class public Lcom/join/mgps/adapter/FullScreenActivity;
.super Lcom/BaseAppCompatActivity;
.source "FullScreenActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c0231
.end annotation


# instance fields
.field a:Lcom/join/android/app/component/video/StandardVideoView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field c:Z

.field d:Lcom/danikula/videocache/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/adapter/FullScreenActivity;->c:Z

    return-void
.end method


# virtual methods
.method public D0(Landroid/widget/AbsListView;)V
    .locals 0

    return-void
.end method

.method public E0(Landroid/content/Context;)Lcom/danikula/videocache/i;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/MApplication;->p(Landroid/content/Context;)Lcom/danikula/videocache/i;

    move-result-object p1

    return-object p1
.end method

.method F0()V
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/join/mgps/adapter/FullScreenActivity$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/adapter/FullScreenActivity$a;-><init>(Lcom/join/mgps/adapter/FullScreenActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method afterViews()V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/FullScreenActivity;->b:Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0, p0}, Lcom/join/mgps/adapter/FullScreenActivity;->E0(Landroid/content/Context;)Lcom/danikula/videocache/i;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/adapter/FullScreenActivity;->d:Lcom/danikula/videocache/i;

    .line 4
    iget-object v0, p0, Lcom/join/mgps/adapter/FullScreenActivity;->b:Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;

    invoke-virtual {v0}, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->e()Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/adapter/FullScreenActivity;->b:Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;

    invoke-virtual {v1}, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->a()Ljava/lang/String;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lcom/join/mgps/adapter/FullScreenActivity;->a:Lcom/join/android/app/component/video/StandardVideoView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/join/android/app/component/video/StandardVideoView;->setMuteWhenPlay(Z)V

    .line 7
    iget-object v2, p0, Lcom/join/mgps/adapter/FullScreenActivity;->a:Lcom/join/android/app/component/video/StandardVideoView;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/join/android/app/component/video/StandardVideoView;->setNoneNetFinishActivity(Z)V

    .line 8
    iget-object v2, p0, Lcom/join/mgps/adapter/FullScreenActivity;->a:Lcom/join/android/app/component/video/StandardVideoView;

    iget-object v2, v2, Lcom/join/android/app/component/video/StandardVideoView;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v2, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 9
    iget-object v2, p0, Lcom/join/mgps/adapter/FullScreenActivity;->a:Lcom/join/android/app/component/video/StandardVideoView;

    const-string v5, "FullScreenActivity"

    invoke-virtual {v2, v5}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setPlayTag(Ljava/lang/String;)V

    .line 10
    iget-object v2, p0, Lcom/join/mgps/adapter/FullScreenActivity;->a:Lcom/join/android/app/component/video/StandardVideoView;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, ""

    aput-object v6, v5, v3

    aput-object v1, v5, v4

    invoke-virtual {v2, v0, v4, v5}, Lcom/join/android/app/component/video/StandardVideoView;->setUp(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method back()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/papa/gsyvideoplayer/d;->c0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    if-eqz p1, :cond_0

    .line 2
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/adapter/FullScreenActivity;->a:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getBackButton()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->performClick()Z

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/BaseAppCompatActivity;->setSystemUiHide(Z)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onDestroy()V

    .line 2
    invoke-static {}, Lcom/papa/gsyvideoplayer/d;->j0()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onPause()V

    .line 2
    invoke-static {}, Lcom/papa/gsyvideoplayer/d;->j0()V

    .line 3
    iget-boolean v0, p0, Lcom/join/mgps/adapter/FullScreenActivity;->c:Z

    sput-boolean v0, Lcom/join/android/app/component/video/StandardVideoView;->D:Z

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onResume()V

    .line 2
    sget-boolean v0, Lcom/join/android/app/component/video/StandardVideoView;->D:Z

    iput-boolean v0, p0, Lcom/join/mgps/adapter/FullScreenActivity;->c:Z

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/adapter/FullScreenActivity;->F0()V

    return-void
.end method
