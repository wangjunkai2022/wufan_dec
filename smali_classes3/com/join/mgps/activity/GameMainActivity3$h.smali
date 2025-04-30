.class Lcom/join/mgps/activity/GameMainActivity3$h;
.super Ljava/lang/Object;
.source "GameMainActivity3.java"

# interfaces
.implements Lcom/github/snowdream/android/app/downloader/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameMainActivity3;->j2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/GameMainActivity3;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameMainActivity3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameMainActivity3$h;->a:Lcom/join/mgps/activity/GameMainActivity3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3$h;->a:Lcom/join/mgps/activity/GameMainActivity3;

    iget v1, v0, Lcom/join/mgps/activity/GameMainActivity3;->a1:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/join/mgps/activity/GameMainActivity3;->a1:I

    .line 2
    iget v2, v0, Lcom/join/mgps/activity/GameMainActivity3;->Z0:I

    if-ne v2, v1, :cond_0

    iget-object v0, v0, Lcom/join/mgps/activity/GameMainActivity3;->X0:Lcom/join/mgps/dialog/x;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3$h;->a:Lcom/join/mgps/activity/GameMainActivity3;

    iget-object v0, v0, Lcom/join/mgps/activity/GameMainActivity3;->V0:Lcom/github/snowdream/android/app/downloader/b;

    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/b;->l(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3$h;->a:Lcom/join/mgps/activity/GameMainActivity3;

    iget-object v0, v0, Lcom/join/mgps/activity/GameMainActivity3;->Y0:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/CloudListDataBean;

    if-nez p1, :cond_1

    return-void

    .line 5
    :cond_1
    new-instance v0, Lcom/join/mgps/event/e;

    invoke-direct {v0}, Lcom/join/mgps/event/e;-><init>()V

    const/4 v1, 0x6

    .line 6
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/CloudListDataBean;->setStatus(I)V

    .line 7
    invoke-virtual {v0, p1}, Lcom/join/mgps/event/e;->f(Lcom/join/mgps/dto/CloudListDataBean;)V

    .line 8
    invoke-virtual {v0, v1}, Lcom/join/mgps/event/e;->j(I)V

    .line 9
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    return-void
.end method

.method public onFinish(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3$h;->a:Lcom/join/mgps/activity/GameMainActivity3;

    iget v1, v0, Lcom/join/mgps/activity/GameMainActivity3;->Z0:I

    iget v2, v0, Lcom/join/mgps/activity/GameMainActivity3;->a1:I

    if-ne v1, v2, :cond_0

    iget-object v0, v0, Lcom/join/mgps/activity/GameMainActivity3;->X0:Lcom/join/mgps/dialog/x;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3$h;->a:Lcom/join/mgps/activity/GameMainActivity3;

    iget v1, v0, Lcom/join/mgps/activity/GameMainActivity3;->a1:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/join/mgps/activity/GameMainActivity3;->a1:I

    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/GameMainActivity3;->V0:Lcom/github/snowdream/android/app/downloader/b;

    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/b;->l(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3$h;->a:Lcom/join/mgps/activity/GameMainActivity3;

    iget-object v0, v0, Lcom/join/mgps/activity/GameMainActivity3;->Y0:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/CloudListDataBean;

    if-nez p1, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFilePath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/join/mgps/Util/u;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3$h;->a:Lcom/join/mgps/activity/GameMainActivity3;

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/GameMainActivity3;->O1(Lcom/join/mgps/dto/CloudListDataBean;)V

    goto :goto_0

    .line 7
    :cond_2
    new-instance v0, Lcom/join/mgps/db/tables/CloudDownRecoderTable;

    invoke-direct {v0}, Lcom/join/mgps/db/tables/CloudDownRecoderTable;-><init>()V

    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3$h;->a:Lcom/join/mgps/activity/GameMainActivity3;

    iget-object v1, v1, Lcom/join/mgps/activity/GameMainActivity3;->o0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/CloudDownRecoderTable;->setGameId(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/CloudDownRecoderTable;->setFilePath(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/CloudDownRecoderTable;->setFileName(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getFileMd5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/CloudDownRecoderTable;->setMd5(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Ln1/i;->o()Ln1/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lg1/b;->k(Ljava/lang/Object;)I

    .line 13
    new-instance v0, Lcom/join/mgps/event/e;

    invoke-direct {v0}, Lcom/join/mgps/event/e;-><init>()V

    const/4 v1, 0x0

    .line 14
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/CloudListDataBean;->setStatus(I)V

    .line 15
    invoke-virtual {v0, p1}, Lcom/join/mgps/event/e;->f(Lcom/join/mgps/dto/CloudListDataBean;)V

    .line 16
    invoke-virtual {v0, v1}, Lcom/join/mgps/event/e;->j(I)V

    .line 17
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onProgress(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3$h;->a:Lcom/join/mgps/activity/GameMainActivity3;

    iget-object v0, v0, Lcom/join/mgps/activity/GameMainActivity3;->Y0:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/CloudListDataBean;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getFileSize()J

    move-result-wide v1

    int-to-long v3, p2

    mul-long v1, v1, v3

    const-wide/16 v3, 0x64

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->d(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getFileSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->d(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "K"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v2, Lcom/join/mgps/event/e;

    invoke-direct {v2}, Lcom/join/mgps/event/e;-><init>()V

    const/4 v3, 0x3

    .line 4
    invoke-virtual {p1, v3}, Lcom/join/mgps/dto/CloudListDataBean;->setStatus(I)V

    .line 5
    invoke-virtual {v2, p1}, Lcom/join/mgps/event/e;->f(Lcom/join/mgps/dto/CloudListDataBean;)V

    .line 6
    invoke-virtual {v2, v3}, Lcom/join/mgps/event/e;->j(I)V

    .line 7
    invoke-virtual {v2, p3}, Lcom/join/mgps/event/e;->g(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v2, p2}, Lcom/join/mgps/event/e;->i(I)V

    .line 9
    invoke-virtual {v2, v0}, Lcom/join/mgps/event/e;->h(Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivity3$h;->a:Lcom/join/mgps/activity/GameMainActivity3;

    iget p2, p1, Lcom/join/mgps/activity/GameMainActivity3;->Z0:I

    const/4 p3, 0x1

    if-le p2, p3, :cond_1

    if-eqz p2, :cond_2

    .line 12
    iget-object p1, p1, Lcom/join/mgps/activity/GameMainActivity3;->X0:Lcom/join/mgps/dialog/x;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/join/mgps/activity/GameMainActivity3$h;->a:Lcom/join/mgps/activity/GameMainActivity3;

    iget p3, p3, Lcom/join/mgps/activity/GameMainActivity3;->a1:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/join/mgps/activity/GameMainActivity3$h;->a:Lcom/join/mgps/activity/GameMainActivity3;

    iget p3, p3, Lcom/join/mgps/activity/GameMainActivity3;->Z0:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2}, Lcom/join/mgps/event/e;->b()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2}, Lcom/join/mgps/event/e;->d()I

    move-result v0

    invoke-virtual {p1, p2, p3, v0}, Lcom/join/mgps/dialog/x;->c(Ljava/lang/String;Ljava/lang/String;I)Lcom/join/mgps/dialog/x;

    goto :goto_0

    .line 13
    :cond_1
    iget-object p1, p1, Lcom/join/mgps/activity/GameMainActivity3;->X0:Lcom/join/mgps/dialog/x;

    if-eqz p1, :cond_2

    .line 14
    invoke-virtual {v2}, Lcom/join/mgps/event/e;->c()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/join/mgps/event/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/S"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2}, Lcom/join/mgps/event/e;->d()I

    move-result v0

    invoke-virtual {p1, p2, p3, v0}, Lcom/join/mgps/dialog/x;->c(Ljava/lang/String;Ljava/lang/String;I)Lcom/join/mgps/dialog/x;

    :cond_2
    :goto_0
    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivity3$h;->a:Lcom/join/mgps/activity/GameMainActivity3;

    iget v0, p1, Lcom/join/mgps/activity/GameMainActivity3;->Z0:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p1, Lcom/join/mgps/activity/GameMainActivity3;->X0:Lcom/join/mgps/dialog/x;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3$h;->a:Lcom/join/mgps/activity/GameMainActivity3;

    iget v1, v1, Lcom/join/mgps/activity/GameMainActivity3;->a1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3$h;->a:Lcom/join/mgps/activity/GameMainActivity3;

    iget v1, v1, Lcom/join/mgps/activity/GameMainActivity3;->Z0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x64

    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivity3$h;->a:Lcom/join/mgps/activity/GameMainActivity3;

    iget v2, v2, Lcom/join/mgps/activity/GameMainActivity3;->Z0:I

    div-int/2addr v1, v2

    const-string v2, "0K"

    invoke-virtual {p1, v0, v2, v1}, Lcom/join/mgps/dialog/x;->c(Ljava/lang/String;Ljava/lang/String;I)Lcom/join/mgps/dialog/x;

    :cond_0
    return-void
.end method

.method public onStop(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3$h;->a:Lcom/join/mgps/activity/GameMainActivity3;

    iget v1, v0, Lcom/join/mgps/activity/GameMainActivity3;->a1:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/join/mgps/activity/GameMainActivity3;->a1:I

    .line 2
    iget v2, v0, Lcom/join/mgps/activity/GameMainActivity3;->Z0:I

    if-ne v2, v1, :cond_0

    iget-object v0, v0, Lcom/join/mgps/activity/GameMainActivity3;->X0:Lcom/join/mgps/dialog/x;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3$h;->a:Lcom/join/mgps/activity/GameMainActivity3;

    iget-object v0, v0, Lcom/join/mgps/activity/GameMainActivity3;->V0:Lcom/github/snowdream/android/app/downloader/b;

    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/b;->l(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3$h;->a:Lcom/join/mgps/activity/GameMainActivity3;

    iget-object v0, v0, Lcom/join/mgps/activity/GameMainActivity3;->Y0:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/CloudListDataBean;

    if-nez p1, :cond_1

    return-void

    .line 5
    :cond_1
    new-instance v0, Lcom/join/mgps/event/e;

    invoke-direct {v0}, Lcom/join/mgps/event/e;-><init>()V

    const/4 v1, 0x6

    .line 6
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/CloudListDataBean;->setStatus(I)V

    .line 7
    invoke-virtual {v0, p1}, Lcom/join/mgps/event/e;->f(Lcom/join/mgps/dto/CloudListDataBean;)V

    .line 8
    invoke-virtual {v0, v1}, Lcom/join/mgps/event/e;->j(I)V

    .line 9
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

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
