.class public Lcom/join/mgps/dto/CommonGameInfoBean;
.super Lcom/join/mgps/dto/DownloadPointBase;
.source "CommonGameInfoBean.java"

# interfaces
.implements Lj1/b;


# instance fields
.field private ad_switch:I

.field private bg_color:Ljava/lang/String;

.field private big_pic:Ljava/lang/String;

.field private downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field private ext:Ljava/lang/String;

.field private ext1:Ljava/lang/String;

.field private ext2:Ljava/lang/String;

.field private ext3:Ljava/lang/String;

.field private ext4:Ljava/lang/String;

.field private g_info:Lcom/join/mgps/dto/GInfoBean;

.field private hasExposure:Z

.field private isAdInfo:Z

.field private jp_info:Lcom/join/mgps/dto/JpInfoBean;

.field private keyword:Ljava/lang/String;

.field private position:I

.field private quit_switch:I

.field private requestStatus:I

.field private sub_title:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private v_url:Ljava/lang/String;

.field protected viewType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/dto/DownloadPointBase;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/mgps/dto/CommonGameInfoBean;->requestStatus:I

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/dto/CommonGameInfoBean;->isAdInfo:Z

    return-void
.end method


# virtual methods
.method public getAd_switch()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CommonGameInfoBean;->ad_switch:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getBg_color()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommonGameInfoBean;->bg_color:Ljava/lang/String;

    return-object v0
.end method

.method public getBig_pic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommonGameInfoBean;->big_pic:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommonGameInfoBean;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    return-object v0
.end method

.method public getExt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommonGameInfoBean;->ext:Ljava/lang/String;

    return-object v0
.end method

.method public getExt1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommonGameInfoBean;->ext1:Ljava/lang/String;

    return-object v0
.end method

.method public getExt2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommonGameInfoBean;->ext2:Ljava/lang/String;

    return-object v0
.end method

.method public getExt3()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommonGameInfoBean;->ext3:Ljava/lang/String;

    return-object v0
.end method

.method public getExt4()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommonGameInfoBean;->ext4:Ljava/lang/String;

    return-object v0
.end method

.method public getG_info()Lcom/join/mgps/dto/GInfoBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommonGameInfoBean;->g_info:Lcom/join/mgps/dto/GInfoBean;

    return-object v0
.end method

.method public getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/join/mgps/dto/CommonGameInfoBean;->g_info:Lcom/join/mgps/dto/GInfoBean;

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Lcom/join/mgps/Util/IntentToDetialBean;

    invoke-direct {v1}, Lcom/join/mgps/Util/IntentToDetialBean;-><init>()V

    .line 4
    iget-object v2, p0, Lcom/join/mgps/dto/CommonGameInfoBean;->g_info:Lcom/join/mgps/dto/GInfoBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentToDetialBean;->f(Ljava/lang/String;)V

    .line 5
    iget-object v2, p0, Lcom/join/mgps/dto/CommonGameInfoBean;->g_info:Lcom/join/mgps/dto/GInfoBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GInfoBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentToDetialBean;->g(Ljava/lang/String;)V

    .line 6
    iget-object v2, p0, Lcom/join/mgps/dto/CommonGameInfoBean;->g_info:Lcom/join/mgps/dto/GInfoBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GInfoBean;->getIco()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentToDetialBean;->i(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 7
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentToDetialBean;->h(I)V

    .line 8
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setObject(Ljava/lang/Object;)V

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/dto/CommonGameInfoBean;->ext1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setExt1(Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/join/mgps/dto/CommonGameInfoBean;->ext2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setExt2(Ljava/lang/String;)V

    .line 11
    iget-object v1, p0, Lcom/join/mgps/dto/CommonGameInfoBean;->ext3:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setExt3(Ljava/lang/String;)V

    .line 12
    iget-object v1, p0, Lcom/join/mgps/dto/CommonGameInfoBean;->ext4:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setExt4(Ljava/lang/String;)V

    .line 13
    iget-object v1, p0, Lcom/join/mgps/dto/CommonGameInfoBean;->jp_info:Lcom/join/mgps/dto/JpInfoBean;

    if-eqz v1, :cond_1

    .line 14
    invoke-virtual {v1}, Lcom/join/mgps/dto/JpInfoBean;->getJump_type()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setJump_type(I)V

    .line 15
    iget-object v1, p0, Lcom/join/mgps/dto/CommonGameInfoBean;->jp_info:Lcom/join/mgps/dto/JpInfoBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/JpInfoBean;->getLink_type()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 16
    iget-object v1, p0, Lcom/join/mgps/dto/CommonGameInfoBean;->jp_info:Lcom/join/mgps/dto/JpInfoBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/JpInfoBean;->getLink_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 17
    iget-object v1, p0, Lcom/join/mgps/dto/CommonGameInfoBean;->jp_info:Lcom/join/mgps/dto/JpInfoBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/JpInfoBean;->getTpl_type()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 18
    iget-object v1, p0, Lcom/join/mgps/dto/CommonGameInfoBean;->jp_info:Lcom/join/mgps/dto/JpInfoBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/JpInfoBean;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 19
    :cond_1
    invoke-virtual {v0}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    move-result-object v1

    if-nez v1, :cond_4

    .line 20
    new-instance v1, Lcom/join/mgps/dto/ExtBean;

    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/join/mgps/dto/ExtBean;-><init>(I)V

    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->getRecPosition()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setRecPosition(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v1

    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->getReMarks()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setReMarks(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v1

    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->getPosition_path()Lcom/psk/eventmodule/StatFactory$VolcanoOther;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->getPosition_path()Lcom/psk/eventmodule/StatFactory$VolcanoOther;

    move-result-object v2

    invoke-static {v2}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setVolcanoOther(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/dto/CommonGameInfoBean;->g_info:Lcom/join/mgps/dto/GInfoBean;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/join/mgps/dto/GInfoBean;->getTag_info()Ljava/util/List;

    move-result-object v2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Lcom/join/mgps/Util/UtilsMy;->F1(Ljava/util/List;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setOnlineGame(Z)Lcom/join/mgps/dto/ExtBean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    goto :goto_2

    .line 21
    :cond_4
    invoke-virtual {v0}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    move-result-object v1

    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->get_from()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    move-result-object v1

    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->set_from_type(I)Lcom/join/mgps/dto/ExtBean;

    :goto_2
    return-object v0
.end method

.method public getIntentDataBeanWithFromType(I)Lcom/join/mgps/Util/IntentDateBean;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/dto/CommonGameInfoBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    move-result-object p1

    return-object p1
.end method

.method public getItemType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CommonGameInfoBean;->viewType:I

    return v0
.end method

.method public getJp_info()Lcom/join/mgps/dto/JpInfoBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommonGameInfoBean;->jp_info:Lcom/join/mgps/dto/JpInfoBean;

    return-object v0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommonGameInfoBean;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CommonGameInfoBean;->position:I

    return v0
.end method

.method public getQuit_switch()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CommonGameInfoBean;->quit_switch:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getRequestStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CommonGameInfoBean;->requestStatus:I

    return v0
.end method

.method public getSub_title()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommonGameInfoBean;->sub_title:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommonGameInfoBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getV_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommonGameInfoBean;->v_url:Ljava/lang/String;

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CommonGameInfoBean;->viewType:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/join/mgps/dto/CommonGameInfoBean;->title:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/join/mgps/dto/CommonGameInfoBean;->sub_title:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/join/mgps/dto/CommonGameInfoBean;->big_pic:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/join/mgps/dto/CommonGameInfoBean;->v_url:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/join/mgps/dto/CommonGameInfoBean;->g_info:Lcom/join/mgps/dto/GInfoBean;

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public is64Bit()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommonGameInfoBean;->g_info:Lcom/join/mgps/dto/GInfoBean;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getArm64()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isAdInfo()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/CommonGameInfoBean;->isAdInfo:Z

    return v0
.end method

.method public isBtGame()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommonGameInfoBean;->g_info:Lcom/join/mgps/dto/GInfoBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->isBtGame()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGame()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommonGameInfoBean;->jp_info:Lcom/join/mgps/dto/JpInfoBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/join/mgps/dto/JpInfoBean;->isGame()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGameVm()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/dto/CommonGameInfoBean;->isModGameVm()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/join/mgps/dto/CommonGameInfoBean;->isSingleGameVm()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/join/mgps/dto/CommonGameInfoBean;->isNetGameVm()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isHasExposure()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/CommonGameInfoBean;->hasExposure:Z

    return v0
.end method

.method public isMiniGame()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommonGameInfoBean;->g_info:Lcom/join/mgps/dto/GInfoBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->isMiniGame()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isModGameVm()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommonGameInfoBean;->g_info:Lcom/join/mgps/dto/GInfoBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->isModGameVm()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNetGameVm()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommonGameInfoBean;->g_info:Lcom/join/mgps/dto/GInfoBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->isNetGameVm()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSingleGameVm()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommonGameInfoBean;->g_info:Lcom/join/mgps/dto/GInfoBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->isSingleGameVm()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAdInfo(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/CommonGameInfoBean;->isAdInfo:Z

    return-void
.end method

.method public setAd_switch(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/join/mgps/dto/CommonGameInfoBean;->ad_switch:I

    return-void
.end method

.method public setAd_switch(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/join/mgps/dto/CommonGameInfoBean;->ad_switch:I

    return-void
.end method

.method public setBg_color(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommonGameInfoBean;->bg_color:Ljava/lang/String;

    return-void
.end method

.method public setBig_pic(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommonGameInfoBean;->big_pic:Ljava/lang/String;

    return-void
.end method

.method public setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommonGameInfoBean;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    return-void
.end method

.method public setExt(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommonGameInfoBean;->ext:Ljava/lang/String;

    return-void
.end method

.method public setExt1(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommonGameInfoBean;->ext1:Ljava/lang/String;

    return-void
.end method

.method public setExt2(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommonGameInfoBean;->ext2:Ljava/lang/String;

    return-void
.end method

.method public setExt3(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommonGameInfoBean;->ext3:Ljava/lang/String;

    return-void
.end method

.method public setExt4(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommonGameInfoBean;->ext4:Ljava/lang/String;

    return-void
.end method

.method public setG_info(Lcom/join/mgps/dto/GInfoBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommonGameInfoBean;->g_info:Lcom/join/mgps/dto/GInfoBean;

    return-void
.end method

.method public setHasExposure(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/CommonGameInfoBean;->hasExposure:Z

    return-void
.end method

.method public setJp_info(Lcom/join/mgps/dto/JpInfoBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommonGameInfoBean;->jp_info:Lcom/join/mgps/dto/JpInfoBean;

    return-void
.end method

.method public setKeyword(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommonGameInfoBean;->keyword:Ljava/lang/String;

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CommonGameInfoBean;->position:I

    return-void
.end method

.method public setQuit_switch(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/join/mgps/dto/CommonGameInfoBean;->quit_switch:I

    return-void
.end method

.method public setQuit_switch(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/join/mgps/dto/CommonGameInfoBean;->quit_switch:I

    return-void
.end method

.method public setRequestStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CommonGameInfoBean;->requestStatus:I

    return-void
.end method

.method public setSub_title(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommonGameInfoBean;->sub_title:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommonGameInfoBean;->title:Ljava/lang/String;

    return-void
.end method

.method public setV_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommonGameInfoBean;->v_url:Ljava/lang/String;

    return-void
.end method

.method public setViewType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CommonGameInfoBean;->viewType:I

    return-void
.end method
