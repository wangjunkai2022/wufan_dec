.class Lcom/join/mgps/mod/activity/ModLoadingActivity$c;
.super Ljava/lang/Object;
.source "ModLoadingActivity.java"

# interfaces
.implements Lcom/github/snowdream/android/app/downloader/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/mod/activity/ModLoadingActivity;->a1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/mod/activity/ModLoadingActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/mod/activity/ModLoadingActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$c;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$c;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    invoke-virtual {p1}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->i1()V

    return-void
.end method

.method public onFinish(Ljava/lang/String;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFinish onStart - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/u0;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->P0()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/snowdream/android/app/downloader/c;

    if-eqz v0, :cond_4

    .line 3
    iget-object v1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$c;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    invoke-static {v1}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->T0(Lcom/join/mgps/mod/activity/ModLoadingActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isMod()Z

    move-result v1

    const/16 v2, 0xe

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$c;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    invoke-static {v1}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->U0(Lcom/join/mgps/mod/activity/ModLoadingActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v1

    iget-object v3, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$c;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    invoke-static {v3}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->U0(Lcom/join/mgps/mod/activity/ModLoadingActivity;)Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/join/mgps/dto/ModInfoBean;

    invoke-virtual {v1, v3, v4}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/ModInfoBean;

    if-eqz v1, :cond_0

    .line 6
    iget-object v3, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$c;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    invoke-static {v3}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->T0(Lcom/join/mgps/mod/activity/ModLoadingActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v3

    invoke-virtual {v1}, Lcom/join/mgps/dto/ModInfoBean;->getDown_url()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setResource_url_remote(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ModInfoBean;->setStatus(I)V

    .line 8
    iget-object v2, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$c;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    invoke-static {v2}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->T0(Lcom/join/mgps/mod/activity/ModLoadingActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v2

    invoke-static {v1}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setMod_info(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$c;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    invoke-static {v1}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->T0(Lcom/join/mgps/mod/activity/ModLoadingActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$c;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    invoke-static {v2}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->U0(Lcom/join/mgps/mod/activity/ModLoadingActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setMod_info(Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$c;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    invoke-static {v1}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->T0(Lcom/join/mgps/mod/activity/ModLoadingActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    invoke-static {v1}, Lcom/join/android/app/common/utils/APKUtils;->H(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 11
    iget-object v1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$c;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    invoke-static {v1}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->U0(Lcom/join/mgps/mod/activity/ModLoadingActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 12
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v1

    iget-object v3, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$c;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    invoke-static {v3}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->U0(Lcom/join/mgps/mod/activity/ModLoadingActivity;)Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/join/mgps/dto/SingleGameModInfoBean;

    invoke-virtual {v1, v3, v4}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/SingleGameModInfoBean;

    if-eqz v1, :cond_2

    .line 13
    iget-object v3, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$c;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    invoke-static {v3}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->T0(Lcom/join/mgps/mod/activity/ModLoadingActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v3

    invoke-virtual {v1}, Lcom/join/mgps/dto/SingleGameModInfoBean;->getDownUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setResource_url_remote(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/SingleGameModInfoBean;->setStatus(I)V

    .line 15
    iget-object v2, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$c;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    invoke-static {v2}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->T0(Lcom/join/mgps/mod/activity/ModLoadingActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v2

    invoke-static {v1}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSingle_game_mod_info(Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$c;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    invoke-static {v1}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->T0(Lcom/join/mgps/mod/activity/ModLoadingActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$c;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    invoke-static {v2}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->U0(Lcom/join/mgps/mod/activity/ModLoadingActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSingle_game_mod_info(Ljava/lang/String;)V

    .line 17
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$c;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/c;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/c;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/join/mgps/mod/activity/ModLoadingActivity;->c:Ljava/lang/String;

    .line 18
    iget-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$c;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    invoke-static {v0}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->T0(Lcom/join/mgps/mod/activity/ModLoadingActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$c;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    iget-object v1, v1, Lcom/join/mgps/mod/activity/ModLoadingActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setResource_path(Ljava/lang/String;)V

    .line 19
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$c;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    invoke-static {v1}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->T0(Lcom/join/mgps/mod/activity/ModLoadingActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$c;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    new-instance v1, Lcom/join/mgps/mod/activity/ModLoadingActivity$c$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/mod/activity/ModLoadingActivity$c$c;-><init>(Lcom/join/mgps/mod/activity/ModLoadingActivity$c;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 21
    iget-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$c;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    invoke-virtual {v0}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->i1()V

    .line 22
    invoke-static {}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->P0()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onProgress(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$c;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    new-instance v1, Lcom/join/mgps/mod/activity/ModLoadingActivity$c$b;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/join/mgps/mod/activity/ModLoadingActivity$c$b;-><init>(Lcom/join/mgps/mod/activity/ModLoadingActivity$c;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PreDownloadPlug onStart - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/join/mgps/Util/u0;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$c;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    new-instance v0, Lcom/join/mgps/mod/activity/ModLoadingActivity$c$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/mod/activity/ModLoadingActivity$c$a;-><init>(Lcom/join/mgps/mod/activity/ModLoadingActivity$c;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStop(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onWait(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public updateSize(Ljava/lang/String;J)V
    .locals 0

    return-void
.end method
