.class Lcom/join/mgps/service/CommonService$i;
.super Ljava/lang/Object;
.source "CommonService.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/service/CommonService;->L(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/join/mgps/dto/ResponseModel<",
        "Lcom/join/mgps/activity/mygame/data/DataGameListBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/join/mgps/service/CommonService;


# direct methods
.method constructor <init>(Lcom/join/mgps/service/CommonService;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/service/CommonService$i;->d:Lcom/join/mgps/service/CommonService;

    iput-object p2, p0, Lcom/join/mgps/service/CommonService$i;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/join/mgps/service/CommonService$i;->b:Z

    iput-object p4, p0, Lcom/join/mgps/service/CommonService$i;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/activity/mygame/data/DataGameListBean;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/activity/mygame/data/DataGameListBean;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/activity/mygame/data/DataGameListBean;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p2, :cond_4

    .line 1
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    if-eqz p1, :cond_4

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/mygame/data/DataGameListBean;

    invoke-virtual {p1}, Lcom/join/mgps/activity/mygame/data/DataGameListBean;->getGameList()Ljava/util/List;

    move-result-object p1

    const/high16 p2, 0x10000000

    if-eqz p1, :cond_2

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 5
    new-instance v0, Lcom/join/mgps/activity/recomend/DownloadCenterTuijianMain;

    invoke-direct {v0}, Lcom/join/mgps/activity/recomend/DownloadCenterTuijianMain;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/service/CommonService$i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/recomend/DownloadCenterTuijianMain;->setGameid(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/recomend/DownloadCenterTuijianMain;->setCollectionList(Ljava/util/List;)V

    .line 8
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/join/mgps/service/CommonService$i;->d:Lcom/join/mgps/service/CommonService;

    iget-object v0, v0, Lcom/join/mgps/service/CommonService;->b:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->recomDataJson()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 10
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.hasget.new.recomdwon,data"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/service/CommonService$i;->d:Lcom/join/mgps/service/CommonService;

    invoke-static {v0}, Lcom/join/mgps/service/CommonService;->g(Lcom/join/mgps/service/CommonService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 12
    iget-boolean p1, p0, Lcom/join/mgps/service/CommonService$i;->b:Z

    if-nez p1, :cond_4

    .line 13
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/service/CommonService$i;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 14
    sget-boolean p1, Lcom/join/mgps/service/CommonService;->H:Z

    if-eqz p1, :cond_4

    .line 15
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/service/CommonService$i;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    .line 16
    iget-object v0, p0, Lcom/join/mgps/service/CommonService$i;->d:Lcom/join/mgps/service/CommonService;

    invoke-static {v0}, Lcom/join/mgps/service/CommonService;->g(Lcom/join/mgps/service/CommonService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/pref/h;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$i;->d:Lcom/join/mgps/service/CommonService;

    invoke-static {p1}, Lcom/join/mgps/service/CommonService;->g(Lcom/join/mgps/service/CommonService;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity_$IntentBuilder_;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity_$IntentBuilder_;

    iget-object p2, p0, Lcom/join/mgps/service/CommonService$i;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity_$IntentBuilder_;->gameName(Ljava/lang/String;)Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity_$IntentBuilder_;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto/16 :goto_0

    :cond_0
    if-eqz p1, :cond_4

    .line 18
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    iget-object v1, p0, Lcom/join/mgps/service/CommonService$i;->d:Lcom/join/mgps/service/CommonService;

    .line 19
    invoke-static {v1}, Lcom/join/mgps/service/CommonService;->g(Lcom/join/mgps/service/CommonService;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpGameSize()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getActual_size()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_4

    .line 20
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 21
    :cond_1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isDisableShowSpeedUpPrompt()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/join/mgps/service/CommonService$i;->d:Lcom/join/mgps/service/CommonService;

    .line 22
    invoke-static {v0}, Lcom/join/mgps/service/CommonService;->g(Lcom/join/mgps/service/CommonService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->U(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 23
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$i;->d:Lcom/join/mgps/service/CommonService;

    invoke-static {p1}, Lcom/join/mgps/service/CommonService;->g(Lcom/join/mgps/service/CommonService;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2_$IntentBuilder_;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2_$IntentBuilder_;

    iget-object p2, p0, Lcom/join/mgps/service/CommonService$i;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2_$IntentBuilder_;->gameName(Ljava/lang/String;)Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2_$IntentBuilder_;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto/16 :goto_0

    .line 24
    :cond_2
    iget-boolean p1, p0, Lcom/join/mgps/service/CommonService$i;->b:Z

    if-nez p1, :cond_4

    .line 25
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/service/CommonService$i;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 26
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    iget-object v1, p0, Lcom/join/mgps/service/CommonService$i;->d:Lcom/join/mgps/service/CommonService;

    .line 27
    invoke-static {v1}, Lcom/join/mgps/service/CommonService;->g(Lcom/join/mgps/service/CommonService;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->downloadSpeedUpGameSize()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getActual_size()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_4

    .line 28
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 29
    :cond_3
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isDisableShowSpeedUpPrompt()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/join/mgps/service/CommonService$i;->d:Lcom/join/mgps/service/CommonService;

    .line 30
    invoke-static {v0}, Lcom/join/mgps/service/CommonService;->g(Lcom/join/mgps/service/CommonService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->U(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 31
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$i;->d:Lcom/join/mgps/service/CommonService;

    invoke-static {p1}, Lcom/join/mgps/service/CommonService;->g(Lcom/join/mgps/service/CommonService;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2_$IntentBuilder_;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2_$IntentBuilder_;

    iget-object p2, p0, Lcom/join/mgps/service/CommonService$i;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2_$IntentBuilder_;->gameName(Ljava/lang/String;)Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2_$IntentBuilder_;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    :cond_4
    :goto_0
    return-void
.end method
