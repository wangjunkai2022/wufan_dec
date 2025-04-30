.class Lcom/join/mgps/service/CommonService$b;
.super Ljava/lang/Object;
.source "CommonService.java"

# interfaces
.implements Ll1/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/service/CommonService;->N0(Lcom/join/mgps/dto/DownloadGameArgsBean;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ll1/h<",
        "Lcom/join/mgps/dto/ResponseModel<",
        "Lcom/join/mgps/activity/mygame/data/DataGameListBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/DownloadGameArgsBean;

.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/service/CommonService;


# direct methods
.method constructor <init>(Lcom/join/mgps/service/CommonService;Lcom/join/mgps/dto/DownloadGameArgsBean;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/service/CommonService$b;->c:Lcom/join/mgps/service/CommonService;

    iput-object p2, p0, Lcom/join/mgps/service/CommonService$b;->a:Lcom/join/mgps/dto/DownloadGameArgsBean;

    iput p3, p0, Lcom/join/mgps/service/CommonService$b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$b;->c:Lcom/join/mgps/service/CommonService;

    iget-object v0, p0, Lcom/join/mgps/service/CommonService$b;->a:Lcom/join/mgps/dto/DownloadGameArgsBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DownloadGameArgsBean;->getGameId()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x31

    invoke-static {p1, v0, v1}, Lcom/join/mgps/service/CommonService;->h(Lcom/join/mgps/service/CommonService;Ljava/lang/String;I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$b;->c:Lcom/join/mgps/service/CommonService;

    invoke-static {p1}, Lcom/join/mgps/service/CommonService;->g(Lcom/join/mgps/service/CommonService;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u83b7\u53d6\u6e38\u620f\u4fe1\u606f\u5931\u8d25"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/join/mgps/dto/ResponseModel;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/activity/mygame/data/DataGameListBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "\u83b7\u53d6\u6e38\u620f\u4fe1\u606f\u5931\u8d25"

    const/16 v1, 0x31

    if-eqz p1, :cond_f

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    move-result v2

    const/16 v3, 0x258

    if-ne v2, v3, :cond_f

    .line 2
    iget-object v2, p0, Lcom/join/mgps/service/CommonService$b;->c:Lcom/join/mgps/service/CommonService;

    iget-object v3, p0, Lcom/join/mgps/service/CommonService$b;->a:Lcom/join/mgps/dto/DownloadGameArgsBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/DownloadGameArgsBean;->getGameId()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x32

    invoke-static {v2, v3, v4}, Lcom/join/mgps/service/CommonService;->h(Lcom/join/mgps/service/CommonService;Ljava/lang/String;I)V

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/mygame/data/DataGameListBean;

    if-eqz p1, :cond_10

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/activity/mygame/data/DataGameListBean;->getGameList()Ljava/util/List;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_10

    const/4 v2, 0x0

    .line 6
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 7
    iget v3, p0, Lcom/join/mgps/service/CommonService$b;->b:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    .line 9
    iget-object v2, p0, Lcom/join/mgps/service/CommonService$b;->a:Lcom/join/mgps/dto/DownloadGameArgsBean;

    if-eqz v2, :cond_10

    .line 10
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v2

    iget-object v3, p0, Lcom/join/mgps/service/CommonService$b;->a:Lcom/join/mgps/dto/DownloadGameArgsBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/DownloadGameArgsBean;->getGameId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v2

    .line 11
    invoke-static {v2}, Lcom/php25/PDownload/d;->b(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 12
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getId()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setId(I)V

    .line 13
    iget-object v2, p0, Lcom/join/mgps/service/CommonService$b;->a:Lcom/join/mgps/dto/DownloadGameArgsBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/DownloadGameArgsBean;->getKeyWord()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setKeyword(Ljava/lang/String;)V

    .line 14
    iget-object v2, p0, Lcom/join/mgps/service/CommonService$b;->a:Lcom/join/mgps/dto/DownloadGameArgsBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/DownloadGameArgsBean;->getExt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setExt(Ljava/lang/String;)V

    .line 15
    iget-object v2, p0, Lcom/join/mgps/service/CommonService$b;->c:Lcom/join/mgps/service/CommonService;

    invoke-static {v2}, Lcom/join/mgps/service/CommonService;->g(Lcom/join/mgps/service/CommonService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_0
    const/4 v5, 0x2

    const/4 v6, 0x5

    if-ne v3, v5, :cond_5

    .line 16
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v3

    iget-object v5, p0, Lcom/join/mgps/service/CommonService$b;->a:Lcom/join/mgps/dto/DownloadGameArgsBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/DownloadGameArgsBean;->getGameId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v3

    .line 17
    iget-object v5, p0, Lcom/join/mgps/service/CommonService$b;->a:Lcom/join/mgps/dto/DownloadGameArgsBean;

    if-eqz v5, :cond_1

    .line 18
    invoke-virtual {v5}, Lcom/join/mgps/dto/DownloadGameArgsBean;->getKeyWord()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setKeyword(Ljava/lang/String;)V

    .line 19
    iget-object v5, p0, Lcom/join/mgps/service/CommonService$b;->a:Lcom/join/mgps/dto/DownloadGameArgsBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/DownloadGameArgsBean;->getExt()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setExt(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer_name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_url_remote()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 23
    :cond_1
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_status()I

    move-result p1

    if-ne p1, v6, :cond_2

    .line 24
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$b;->c:Lcom/join/mgps/service/CommonService;

    invoke-static {p1}, Lcom/join/mgps/service/CommonService;->g(Lcom/join/mgps/service/CommonService;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 25
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5, v4}, Ljava/util/HashMap;-><init>(I)V

    const-string v4, "crc_sign_id"

    .line 26
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-static {}, Ln1/q;->o()Ln1/q;

    move-result-object v4

    invoke-virtual {v4, v5}, Lg1/b;->h(Ljava/util/Map;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 28
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 29
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/db/tables/EMUUpdateTable;

    :cond_3
    if-eqz p1, :cond_10

    .line 30
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUUpdateTable;->getVer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUUpdateTable;->getVer_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUUpdateTable;->getDown_url_remote()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p1

    invoke-virtual {p1, v3}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-static {v3}, Lcom/join/mgps/Util/UtilsMy;->A0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 35
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPay_game_amount()I

    move-result p1

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/join/mgps/Util/UtilsMy;->n0(ILjava/lang/String;)I

    move-result p1

    if-lez p1, :cond_4

    .line 36
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$b;->c:Lcom/join/mgps/service/CommonService;

    invoke-static {p1}, Lcom/join/mgps/service/CommonService;->g(Lcom/join/mgps/service/CommonService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/join/mgps/Util/UtilsMy;->m3(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 37
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$b;->c:Lcom/join/mgps/service/CommonService;

    invoke-static {p1}, Lcom/join/mgps/service/CommonService;->g(Lcom/join/mgps/service/CommonService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTp_down_url()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getOther_down_switch()I

    move-result v4

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCdn_down_switch()I

    move-result v5

    invoke-static {p1, v3, v2, v4, v5}, Lcom/join/mgps/Util/UtilsMy;->F0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    goto/16 :goto_0

    .line 38
    :cond_5
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v2

    .line 39
    iget-object v3, p0, Lcom/join/mgps/service/CommonService$b;->a:Lcom/join/mgps/dto/DownloadGameArgsBean;

    if-eqz v3, :cond_7

    .line 40
    invoke-virtual {v3}, Lcom/join/mgps/dto/DownloadGameArgsBean;->getRecPosition()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/join/mgps/dto/DownloadPointBase;->setRecPosition(Ljava/lang/String;)V

    .line 41
    iget-object v3, p0, Lcom/join/mgps/service/CommonService$b;->a:Lcom/join/mgps/dto/DownloadGameArgsBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/DownloadGameArgsBean;->getRemarks()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/join/mgps/dto/DownloadPointBase;->setReMarks(Ljava/lang/String;)V

    .line 42
    iget-object v3, p0, Lcom/join/mgps/service/CommonService$b;->a:Lcom/join/mgps/dto/DownloadGameArgsBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/DownloadGameArgsBean;->getNodeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/join/mgps/dto/DownloadPointBase;->setNodeId(Ljava/lang/String;)V

    .line 43
    iget-object v3, p0, Lcom/join/mgps/service/CommonService$b;->a:Lcom/join/mgps/dto/DownloadGameArgsBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/DownloadGameArgsBean;->getFrom()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 44
    iget-object v3, p0, Lcom/join/mgps/service/CommonService$b;->a:Lcom/join/mgps/dto/DownloadGameArgsBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/DownloadGameArgsBean;->getFromType()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 45
    iget-object v3, p0, Lcom/join/mgps/service/CommonService$b;->a:Lcom/join/mgps/dto/DownloadGameArgsBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/DownloadGameArgsBean;->getVolcanoOther()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 46
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v3

    iget-object v4, p0, Lcom/join/mgps/service/CommonService$b;->a:Lcom/join/mgps/dto/DownloadGameArgsBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/DownloadGameArgsBean;->getVolcanoOther()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/psk/eventmodule/StatFactory$VolcanoOther;

    invoke-virtual {v3, v4, v5}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/psk/eventmodule/StatFactory$VolcanoOther;

    invoke-virtual {p1, v3}, Lcom/join/mgps/dto/DownloadPointBase;->setPosition_path(Lcom/psk/eventmodule/StatFactory$VolcanoOther;)V

    .line 47
    :cond_6
    iget-object v3, p0, Lcom/join/mgps/service/CommonService$b;->a:Lcom/join/mgps/dto/DownloadGameArgsBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/DownloadGameArgsBean;->getFrom()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from(I)V

    .line 48
    iget-object v3, p0, Lcom/join/mgps/service/CommonService$b;->a:Lcom/join/mgps/dto/DownloadGameArgsBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/DownloadGameArgsBean;->getFromType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from_type(I)V

    .line 49
    iget-object v3, p0, Lcom/join/mgps/service/CommonService$b;->a:Lcom/join/mgps/dto/DownloadGameArgsBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/DownloadGameArgsBean;->isFromRecommend()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFromRecomDown(Z)V

    .line 50
    iget-object v3, p0, Lcom/join/mgps/service/CommonService$b;->a:Lcom/join/mgps/dto/DownloadGameArgsBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/DownloadGameArgsBean;->getKeyWord()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setKeyword(Ljava/lang/String;)V

    .line 51
    iget-object v3, p0, Lcom/join/mgps/service/CommonService$b;->a:Lcom/join/mgps/dto/DownloadGameArgsBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/DownloadGameArgsBean;->getExt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setExt(Ljava/lang/String;)V

    .line 52
    :cond_7
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v5}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 53
    new-instance v3, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v3}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v4, 0x4

    .line 54
    invoke-virtual {v3, v4}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 55
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_url_remote()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 56
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$b;->c:Lcom/join/mgps/service/CommonService;

    invoke-static {p1}, Lcom/join/mgps/service/CommonService;->g(Lcom/join/mgps/service/CommonService;)Landroid/content/Context;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/join/mgps/Util/UtilsMy;->h2(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 57
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p1

    invoke-virtual {p1, v2}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object v2, p0, Lcom/join/mgps/service/CommonService$b;->c:Lcom/join/mgps/service/CommonService;

    invoke-static {v2}, Lcom/join/mgps/service/CommonService;->g(Lcom/join/mgps/service/CommonService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v2, v3}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void

    .line 59
    :cond_8
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v3

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->o0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_9

    .line 60
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$b;->c:Lcom/join/mgps/service/CommonService;

    invoke-static {p1}, Lcom/join/mgps/service/CommonService;->g(Lcom/join/mgps/service/CommonService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/join/mgps/Util/UtilsMy;->m3(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 61
    :cond_9
    invoke-static {v2, p1}, Lcom/join/mgps/Util/UtilsMy;->c1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 62
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_status()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "gameid"

    const-string v5, "com.wufun.down.androidversion"

    if-ne v3, v6, :cond_c

    .line 63
    :try_start_1
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMax_an_compatible_ver()I

    move-result p1

    if-lez p1, :cond_b

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMin_an_compatible_ver()I

    move-result v3

    if-lt p1, v3, :cond_a

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMax_an_compatible_ver()I

    move-result v3

    if-le p1, v3, :cond_b

    :cond_a
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMod_info()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 64
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$b;->c:Lcom/join/mgps/service/CommonService;

    invoke-static {p1, v2}, Lcom/join/mgps/service/CommonService;->j(Lcom/join/mgps/service/CommonService;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 65
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 66
    iget-object v2, p0, Lcom/join/mgps/service/CommonService$b;->c:Lcom/join/mgps/service/CommonService;

    invoke-static {v2}, Lcom/join/mgps/service/CommonService;->i(Lcom/join/mgps/service/CommonService;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    iget-object v2, p0, Lcom/join/mgps/service/CommonService$b;->c:Lcom/join/mgps/service/CommonService;

    invoke-virtual {v2, p1}, Landroid/app/Service;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 68
    :cond_b
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$b;->c:Lcom/join/mgps/service/CommonService;

    invoke-static {p1}, Lcom/join/mgps/service/CommonService;->g(Lcom/join/mgps/service/CommonService;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_0

    .line 69
    :cond_c
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMax_an_compatible_ver()I

    move-result v3

    if-lez v3, :cond_e

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMin_an_compatible_ver()I

    move-result v6

    if-lt v3, v6, :cond_d

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMax_an_compatible_ver()I

    move-result v6

    if-le v3, v6, :cond_e

    :cond_d
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMod_info()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 70
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$b;->c:Lcom/join/mgps/service/CommonService;

    invoke-static {p1, v2}, Lcom/join/mgps/service/CommonService;->j(Lcom/join/mgps/service/CommonService;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 71
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    iget-object v2, p0, Lcom/join/mgps/service/CommonService$b;->c:Lcom/join/mgps/service/CommonService;

    invoke-static {v2}, Lcom/join/mgps/service/CommonService;->i(Lcom/join/mgps/service/CommonService;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    iget-object v2, p0, Lcom/join/mgps/service/CommonService$b;->c:Lcom/join/mgps/service/CommonService;

    invoke-virtual {v2, p1}, Landroid/app/Service;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 74
    :cond_e
    iget-object v3, p0, Lcom/join/mgps/service/CommonService$b;->c:Lcom/join/mgps/service/CommonService;

    invoke-static {v3}, Lcom/join/mgps/service/CommonService;->g(Lcom/join/mgps/service/CommonService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getTp_down_url()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getOther_down_switch()I

    move-result v5

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCdn_down_switch()I

    move-result p1

    invoke-static {v3, v2, v4, v5, p1}, Lcom/join/mgps/Util/UtilsMy;->F0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    goto :goto_0

    .line 75
    :cond_f
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$b;->c:Lcom/join/mgps/service/CommonService;

    iget-object v2, p0, Lcom/join/mgps/service/CommonService$b;->a:Lcom/join/mgps/dto/DownloadGameArgsBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/DownloadGameArgsBean;->getGameId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v1}, Lcom/join/mgps/service/CommonService;->h(Lcom/join/mgps/service/CommonService;Ljava/lang/String;I)V

    .line 76
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$b;->c:Lcom/join/mgps/service/CommonService;

    invoke-static {p1}, Lcom/join/mgps/service/CommonService;->g(Lcom/join/mgps/service/CommonService;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 77
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 78
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$b;->c:Lcom/join/mgps/service/CommonService;

    iget-object v2, p0, Lcom/join/mgps/service/CommonService$b;->a:Lcom/join/mgps/dto/DownloadGameArgsBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/DownloadGameArgsBean;->getGameId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v1}, Lcom/join/mgps/service/CommonService;->h(Lcom/join/mgps/service/CommonService;Ljava/lang/String;I)V

    .line 79
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$b;->c:Lcom/join/mgps/service/CommonService;

    invoke-static {p1}, Lcom/join/mgps/service/CommonService;->g(Lcom/join/mgps/service/CommonService;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :cond_10
    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    invoke-virtual {p0, p1}, Lcom/join/mgps/service/CommonService$b;->b(Lcom/join/mgps/dto/ResponseModel;)V

    return-void
.end method
