.class Lcom/join/mgps/activity/ModGameIndexActivity$u;
.super Ljava/lang/Object;
.source "ModGameIndexActivity.java"

# interfaces
.implements Lcom/github/snowdream/android/app/downloader/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ModGameIndexActivity;->B1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ModGameIndexActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ModGameIndexActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$u;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onFinish(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFinish onStart - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-static {}, Lcom/join/mgps/activity/ModGameIndexActivity;->U0()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/snowdream/android/app/downloader/c;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/c;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$u;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {v1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/ModGameIndexActivity$u;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/c;->j()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/join/android/app/common/utils/APKUtils;->u(Landroid/app/Activity;Ljava/io/File;)V

    .line 5
    :cond_0
    invoke-static {}, Lcom/join/mgps/activity/ModGameIndexActivity;->U0()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onProgress(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 0

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
