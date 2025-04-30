.class Lcom/join/mgps/service/CommonService$c;
.super Ljava/lang/Object;
.source "CommonService.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/service/CommonService;->N(Lcom/join/mgps/service/CommonService$n;)V
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

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:Lcom/join/mgps/service/CommonService$n;

.field final synthetic g:Z

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:Lcom/join/mgps/service/CommonService;


# direct methods
.method constructor <init>(Lcom/join/mgps/service/CommonService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/join/mgps/service/CommonService$n;ZLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/service/CommonService$c;->i:Lcom/join/mgps/service/CommonService;

    iput-object p2, p0, Lcom/join/mgps/service/CommonService$c;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/join/mgps/service/CommonService$c;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/join/mgps/service/CommonService$c;->c:Ljava/lang/String;

    iput p5, p0, Lcom/join/mgps/service/CommonService$c;->d:I

    iput p6, p0, Lcom/join/mgps/service/CommonService$c;->e:I

    iput-object p7, p0, Lcom/join/mgps/service/CommonService$c;->f:Lcom/join/mgps/service/CommonService$n;

    iput-boolean p8, p0, Lcom/join/mgps/service/CommonService$c;->g:Z

    iput-object p9, p0, Lcom/join/mgps/service/CommonService$c;->h:Ljava/lang/String;

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

    .line 1
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$c;->i:Lcom/join/mgps/service/CommonService;

    invoke-static {p1}, Lcom/join/mgps/service/CommonService;->g(Lcom/join/mgps/service/CommonService;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string p2, "\u83b7\u53d6\u6e38\u620f\u4fe1\u606f\u5931\u8d25"

    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 4
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

    if-eqz p2, :cond_9

    .line 1
    :try_start_0
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 2
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    if-eqz p1, :cond_9

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    move-result p2

    const/16 v0, 0x258

    if-ne p2, v0, :cond_9

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/mygame/data/DataGameListBean;

    if-eqz p1, :cond_9

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/activity/mygame/data/DataGameListBean;->getGameList()Ljava/util/List;

    move-result-object p1

    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_9

    const/4 p2, 0x0

    .line 7
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 8
    iget-object p2, p0, Lcom/join/mgps/service/CommonService$c;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/DownloadPointBase;->setRecPosition(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lcom/join/mgps/service/CommonService$c;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/DownloadPointBase;->setReMarks(Ljava/lang/String;)V

    .line 10
    iget-object p2, p0, Lcom/join/mgps/service/CommonService$c;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/DownloadPointBase;->setNodeId(Ljava/lang/String;)V

    .line 11
    iget p2, p0, Lcom/join/mgps/service/CommonService$c;->d:I

    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 12
    iget p2, p0, Lcom/join/mgps/service/CommonService$c;->e:I

    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 13
    iget-object p2, p0, Lcom/join/mgps/service/CommonService$c;->f:Lcom/join/mgps/service/CommonService$n;

    iget-object p2, p2, Lcom/join/mgps/service/CommonService$n;->i:Ljava/lang/String;

    invoke-static {p2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 14
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object p2

    iget-object v0, p0, Lcom/join/mgps/service/CommonService$c;->f:Lcom/join/mgps/service/CommonService$n;

    iget-object v0, v0, Lcom/join/mgps/service/CommonService$n;->i:Ljava/lang/String;

    const-class v1, Lcom/psk/eventmodule/StatFactory$VolcanoOther;

    invoke-virtual {p2, v0, v1}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/psk/eventmodule/StatFactory$VolcanoOther;

    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/DownloadPointBase;->setPosition_path(Lcom/psk/eventmodule/StatFactory$VolcanoOther;)V

    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p2

    .line 16
    iget v0, p0, Lcom/join/mgps/service/CommonService$c;->d:I

    invoke-virtual {p2, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from(I)V

    .line 17
    iget v0, p0, Lcom/join/mgps/service/CommonService$c;->e:I

    invoke-virtual {p2, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from_type(I)V

    .line 18
    iget-boolean v0, p0, Lcom/join/mgps/service/CommonService$c;->g:Z

    invoke-virtual {p2, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFromRecomDown(Z)V

    .line 19
    iget-object v0, p0, Lcom/join/mgps/service/CommonService$c;->h:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setKeyword(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21
    new-instance p1, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {p1}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v0, 0x4

    .line 22
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 23
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/join/mgps/service/CommonService$c;->i:Lcom/join/mgps/service/CommonService;

    invoke-static {v0}, Lcom/join/mgps/service/CommonService;->g(Lcom/join/mgps/service/CommonService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/join/mgps/Util/UtilsMy;->h2(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 25
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p2

    iget-object v0, p0, Lcom/join/mgps/service/CommonService$c;->i:Lcom/join/mgps/service/CommonService;

    invoke-static {v0}, Lcom/join/mgps/service/CommonService;->g(Lcom/join/mgps/service/CommonService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void

    .line 26
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->o0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    .line 27
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$c;->i:Lcom/join/mgps/service/CommonService;

    invoke-static {p1}, Lcom/join/mgps/service/CommonService;->g(Lcom/join/mgps/service/CommonService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/join/mgps/Util/UtilsMy;->m3(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 28
    :cond_2
    invoke-static {p2, p1}, Lcom/join/mgps/Util/UtilsMy;->c1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 29
    iget-object v0, p0, Lcom/join/mgps/service/CommonService$c;->i:Lcom/join/mgps/service/CommonService;

    invoke-static {v0}, Lcom/join/mgps/service/CommonService;->g(Lcom/join/mgps/service/CommonService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/join/mgps/Util/UtilsMy;->T0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_0

    .line 30
    :cond_3
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_status()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x5

    const-string v2, "gameid"

    const-string v3, "com.wufun.down.androidversion"

    if-ne v0, v1, :cond_6

    .line 31
    :try_start_1
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMax_an_compatible_ver()I

    move-result p1

    if-lez p1, :cond_5

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMin_an_compatible_ver()I

    move-result v0

    if-lt p1, v0, :cond_4

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMax_an_compatible_ver()I

    move-result v0

    if-le p1, v0, :cond_5

    :cond_4
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMod_info()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 32
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$c;->i:Lcom/join/mgps/service/CommonService;

    invoke-static {p1, p2}, Lcom/join/mgps/service/CommonService;->j(Lcom/join/mgps/service/CommonService;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 33
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 34
    iget-object p2, p0, Lcom/join/mgps/service/CommonService$c;->i:Lcom/join/mgps/service/CommonService;

    invoke-static {p2}, Lcom/join/mgps/service/CommonService;->i(Lcom/join/mgps/service/CommonService;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p2

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    iget-object p2, p0, Lcom/join/mgps/service/CommonService$c;->i:Lcom/join/mgps/service/CommonService;

    invoke-virtual {p2, p1}, Landroid/app/Service;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 36
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$c;->i:Lcom/join/mgps/service/CommonService;

    invoke-static {p1}, Lcom/join/mgps/service/CommonService;->g(Lcom/join/mgps/service/CommonService;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 37
    :cond_6
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMax_an_compatible_ver()I

    move-result v0

    if-lez v0, :cond_8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMin_an_compatible_ver()I

    move-result v1

    if-lt v0, v1, :cond_7

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMax_an_compatible_ver()I

    move-result v1

    if-le v0, v1, :cond_8

    :cond_7
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMod_info()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 38
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$c;->i:Lcom/join/mgps/service/CommonService;

    invoke-static {p1, p2}, Lcom/join/mgps/service/CommonService;->j(Lcom/join/mgps/service/CommonService;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 39
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 40
    iget-object p2, p0, Lcom/join/mgps/service/CommonService$c;->i:Lcom/join/mgps/service/CommonService;

    invoke-static {p2}, Lcom/join/mgps/service/CommonService;->i(Lcom/join/mgps/service/CommonService;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p2

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    iget-object p2, p0, Lcom/join/mgps/service/CommonService$c;->i:Lcom/join/mgps/service/CommonService;

    invoke-virtual {p2, p1}, Landroid/app/Service;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 42
    :cond_8
    iget-object v0, p0, Lcom/join/mgps/service/CommonService$c;->i:Lcom/join/mgps/service/CommonService;

    invoke-static {v0}, Lcom/join/mgps/service/CommonService;->g(Lcom/join/mgps/service/CommonService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getTp_down_url()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getOther_down_switch()I

    move-result v2

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCdn_down_switch()I

    move-result p1

    invoke-static {v0, p2, v1, v2, p1}, Lcom/join/mgps/Util/UtilsMy;->F0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 43
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 44
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$c;->i:Lcom/join/mgps/service/CommonService;

    invoke-static {p1}, Lcom/join/mgps/service/CommonService;->g(Lcom/join/mgps/service/CommonService;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string p2, "\u83b7\u53d6\u6e38\u620f\u4fe1\u606f\u5931\u8d25"

    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :cond_9
    :goto_0
    return-void
.end method
