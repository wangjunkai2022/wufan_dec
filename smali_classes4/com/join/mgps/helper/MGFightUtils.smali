.class public Lcom/join/mgps/helper/MGFightUtils;
.super Ljava/lang/Object;
.source "MGFightUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collectionToTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/join/mgps/dto/CollectionBeanSub;
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-direct {v0}, Lcom/join/mgps/dto/CollectionBeanSub;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCfg_down_url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/CollectionBeanSub;->setCfg_down_url(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCfg_ver_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/CollectionBeanSub;->setCfg_ver_name(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCfg_ver()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/CollectionBeanSub;->setCfg_ver(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/CollectionBeanSub;->setGame_id(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/CollectionBeanSub;->setGame_name(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/CollectionBeanSub;->setVer(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/CollectionBeanSub;->setVer_name(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/CollectionBeanSub;->setIco_remote(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/CollectionBeanSub;->setPackage_name(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getScreenshot_pic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/CollectionBeanSub;->setScreenshot_pic(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isIs_fight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/CollectionBeanSub;->setIs_fight(I)V

    .line 13
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFight_type()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/CollectionBeanSub;->setFight_type(I)V

    .line 14
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFight_screenshot_pic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/CollectionBeanSub;->setFight_screenshot_pic(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/CollectionBeanSub;->setPlugin_num(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isPlugin_area()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/CollectionBeanSub;->setForum_switch(I)V

    .line 17
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/CollectionBeanSub;->setPlugin_num(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_area_val()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/dto/CollectionBeanSub;->setForum_id(J)V

    .line 19
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTipBeans()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/CollectionBeanSub;->setTag_info(Ljava/util/ArrayList;)V

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/join/mgps/dto/CollectionBeanSub;->setSize(Ljava/lang/String;)V

    return-object v0
.end method

.method public static distinctItems(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 5
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-void
.end method

.method public static getLoaclData(I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lg1/f;->M(Lcom/join/mgps/enums/Dtype;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 6
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/4 v5, 0x4

    const/4 v6, 0x1

    if-ne p0, v5, :cond_2

    .line 7
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isIs_fight()I

    move-result v5

    if-ne v5, v6, :cond_0

    .line 8
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 9
    invoke-static {v4}, Lcom/join/mgps/helper/MGFightUtils;->collectionToTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/join/mgps/dto/CollectionBeanSub;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {v4}, Lcom/join/mgps/helper/MGFightUtils;->collectionToTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/join/mgps/dto/CollectionBeanSub;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFight_type()I

    move-result v5

    if-ne p0, v5, :cond_0

    .line 12
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isIs_fight()I

    move-result v5

    if-ne v5, v6, :cond_0

    .line 13
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 14
    invoke-static {v4}, Lcom/join/mgps/helper/MGFightUtils;->collectionToTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/join/mgps/dto/CollectionBeanSub;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_3
    invoke-static {v4}, Lcom/join/mgps/helper/MGFightUtils;->collectionToTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/join/mgps/dto/CollectionBeanSub;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16
    :cond_4
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 17
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method private removeLocalDbFromNetData(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;",
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 4
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 5
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public static setMatchAndLocalData(Lcom/join/mgps/db/tables/WarMatchAndLocalTable;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/join/mgps/dto/FightSubGameInfoDataBean;
    .locals 1

    .line 1
    new-instance p1, Lcom/join/mgps/dto/FightSubGameInfoDataBean;

    invoke-direct {p1}, Lcom/join/mgps/dto/FightSubGameInfoDataBean;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->setCrc_sign_id(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getFight_screenshot_pic()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->setFight_screenshot_pic(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getShowName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->setGame_name(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getPic_remote()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->setPic_remote(Ljava/lang/String;)V

    return-object p1
.end method

.method public static updateFightStatus(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;",
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 4
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    invoke-static {v2, v0}, Lcom/join/mgps/helper/MGFightUtils;->updateFightTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public static updateFightTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCfg_down_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_down_url(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCfg_ver_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver_name(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCfg_ver()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 6
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDownloadType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownloadType(I)V

    .line 7
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDtype()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDtype(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFinishTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFinishTime(J)V

    .line 9
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFight_type()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFight_type(I)V

    .line 10
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFight_screenshot_pic()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFight_screenshot_pic(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFileType(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isIs_fight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setIs_fight(I)V

    .line 13
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 14
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPortraitURL(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPackageName(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isPlugin_area()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPlugin_area(I)V

    .line 19
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPlugin_num(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_area_val()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPlugin_area_val(J)V

    .line 21
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getScreenshot_pic()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setScreenshot_pic(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSource_down_path()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSource_down_path(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSource_ver()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSource_ver(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setShowName(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRomType(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getKeyword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setKeyword(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setMimeType(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getLastCompleteSize()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setLastCompleteSize(J)V

    .line 29
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGameZipPath(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 31
    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setOpen(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setOpen(Z)V

    .line 33
    :goto_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTips()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setTips(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSize(J)V

    .line 35
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getLastTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setLastTime(J)V

    return-void
.end method

.method public static updateStatus(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/join/mgps/business/CollectionBeanSubBusiness;",
            ">;",
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    .line 2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Lcom/join/mgps/dto/ModInfoBean;->getMain_game_id()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/4 v5, 0x5

    const/4 v6, 0x0

    if-eqz v4, :cond_3

    .line 6
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v7

    if-ne v7, v5, :cond_3

    .line 7
    invoke-static {p0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v7

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, p0, v4}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    .line 8
    :goto_1
    invoke-virtual {v3}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v3, :cond_4

    .line 9
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v7

    if-ne v7, v5, :cond_4

    .line 10
    invoke-static {}, Lcom/join/mgps/va/overmind/e;->p()Lcom/join/mgps/va/overmind/e;

    move-result-object v5

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/join/mgps/va/overmind/e;->D(Ljava/lang/String;)Z

    move-result v6

    :cond_4
    if-eqz v6, :cond_5

    if-eqz v4, :cond_5

    .line 11
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 12
    invoke-virtual {v0, v2}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    :cond_5
    if-eqz v6, :cond_6

    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 14
    invoke-virtual {v0, v2}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_0

    :cond_6
    if-eqz v4, :cond_7

    .line 15
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 16
    invoke-virtual {v0, v2}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_0

    :cond_7
    const/4 v3, 0x0

    .line 17
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 18
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v3

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v3

    :cond_8
    if-nez v3, :cond_9

    .line 19
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v3

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v3

    :cond_9
    if-eqz v3, :cond_2

    .line 20
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 21
    invoke-virtual {v0, v2}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_0

    .line 22
    :cond_a
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 23
    invoke-virtual {v0, v2}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method public static warDataToTable(Lcom/join/mgps/dto/FightSubGameInfoDataBean;)Lcom/join/mgps/db/tables/WarMatchAndLocalTable;
    .locals 5

    .line 1
    new-instance v0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    invoke-direct {v0}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->getAppSize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->setAppSize(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->getCfg_down_url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->setCfg_down_url(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->getCfg_ver()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->setCfg_ver(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->getCfg_ver_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->setCfg_ver_name(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->getCdn_down_switch()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->setCdn_down_switch(I)V

    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->getDown_url_remote()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->setDown_url_remote(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->getForum_switch()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->setForum_switch(I)V

    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->getFight_screenshot_pic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->setFight_screenshot_pic(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->getFight_funv2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->setFight_fun(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->getFight_type()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->setFight_type(I)V

    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->getForum_id()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->setForum_id(I)V

    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->getGame_info_tpl_type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->setGame_info_tpl_type(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->getGame_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->setGame_name(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->getIco_remote()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->setIco_remote(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->getInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->setInfo(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 18
    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->setIs_fight(I)V

    .line 19
    invoke-virtual {p0}, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->getIs_network()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->setIs_network(I)V

    .line 20
    invoke-virtual {p0}, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->getIs_world()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->setIs_world(I)V

    .line 21
    invoke-virtual {p0}, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->getLock_sp()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->setLock_sp(I)V

    .line 22
    invoke-virtual {p0}, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->getOther_down_switch()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->setOther_down_switch(I)V

    .line 23
    invoke-virtual {p0}, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->setPackageName(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->getPlugin_lowest_ver()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->setPlugin_lowest_ver(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->getPlugin_num()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->setPlugin_num(I)V

    .line 26
    invoke-virtual {p0}, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->getPlugin_screenshot()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->setPlugin_screenshot(I)V

    .line 27
    invoke-virtual {p0}, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->getPic_remote()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->setPic_remote(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->getPlugin_lowest_ver_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->setPlugin_lowest_ver_name(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->getSource_ver()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->setSource_ver(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->getSource_down_url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->setSource_down_url(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->getSource_ver_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->setSource_ver_name(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->getSync_memory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->setSync_memory(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->getGame_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->setShowName(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->getScreenshot_pic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->setScreenshot_pic(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->getDown_status()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->setDown_status(I)V

    .line 36
    invoke-virtual {p0}, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->getTp_down_url()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    .line 37
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    const/4 v2, 0x0

    .line 38
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 39
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/DownloadUrlBean;

    .line 40
    new-instance v4, Lcom/join/mgps/db/tables/DownloadUrlTable;

    invoke-direct {v4, v3}, Lcom/join/mgps/db/tables/DownloadUrlTable;-><init>(Lcom/join/mgps/dto/DownloadUrlBean;)V

    .line 41
    invoke-virtual {v4, v0}, Lcom/join/mgps/db/tables/DownloadUrlTable;->setWarMatchAndLocalTable(Lcom/join/mgps/db/tables/WarMatchAndLocalTable;)V

    .line 42
    invoke-static {}, Ln1/l;->n()Ln1/l;

    move-result-object v3

    invoke-virtual {v3, v4}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 43
    :cond_1
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v1

    invoke-virtual {p0}, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->getTag_info()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->setTips(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->getUnzip_size()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->setUnzip_size(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->getVer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->setVer(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->getVer_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->setVer_name(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->getWorld_shop()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->setWorld_shop(I)V

    .line 48
    invoke-virtual {p0}, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->getWorld_area()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->setWorld_area(I)V

    .line 49
    invoke-virtual {p0}, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->getGift_package_switch()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->setGift_package_switch(I)V

    return-object v0
.end method

.method public static warDataToTask(Lcom/join/mgps/db/tables/WarMatchAndLocalTable;)Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 4

    .line 1
    new-instance v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getDown_status()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDown_status(I)V

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getCdn_down_switch()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCdn_down_switch(I)V

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getCfg_down_url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_down_url(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getCfg_ver_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver_name(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getCfg_ver()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDescribe(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getFight_fun()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFight_fun(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getFight_type()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFight_type(I)V

    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getFight_screenshot_pic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFight_screenshot_pic(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getGame_info_tpl_type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGame_info_tpl_type(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setIs_fight(I)V

    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getIs_network()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setIs_network(I)V

    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getIs_world()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setIs_world(I)V

    .line 16
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getLock_sp()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setLock_sp(I)V

    .line 17
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getShowName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setName(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getOther_down_switch()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setOther_down_switch(I)V

    .line 19
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPackageName(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getForum_switch()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPlugin_area(I)V

    .line 21
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getForum_id()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPlugin_area_val(J)V

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getPlugin_num()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPlugin_num(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getPlugin_screenshot()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPlugin_screenshot(I)V

    .line 24
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getIco_remote()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPortraitURL(Ljava/lang/String;)V

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getPlugin_num()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRomType(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 26
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 27
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getAppSize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setShowSize(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getScreenshot_pic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setScreenshot_pic(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getSource_down_url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSource_down_path(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getSource_ver()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSource_ver(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getShowName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setShowName(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getSync_memory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSync_memory(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getSource_ver_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSource_ver_name(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getTips()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setTips(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getPay_game_amount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPay_game_amount(I)V

    .line 36
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getTp_down_url()Lcom/j256/ormlite/dao/ForeignCollection;

    move-result-object v1

    .line 37
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 38
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 39
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 40
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/db/tables/DownloadUrlTable;

    .line 41
    invoke-virtual {v3}, Lcom/join/mgps/db/tables/DownloadUrlTable;->getDownUrlBean()Lcom/join/mgps/dto/DownloadUrlBean;

    move-result-object v3

    .line 42
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setTp_down_url(Ljava/util/List;)V

    .line 44
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getUnzip_size()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUnzip_size(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getDown_url_remote()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getVer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getVer_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getWorld_area()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setWorld_area(I)V

    .line 49
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getWorld_shop()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setWorld_shop(I)V

    .line 50
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getGift_package_switch()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGift_package_switch(I)V

    .line 51
    invoke-virtual {p0}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getGift_package_switch()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPay_game_amount(I)V

    .line 52
    invoke-virtual {v0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-object v0
.end method
