.class public Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;
.super Ljava/lang/Object;
.source "PAPAHomeBeanV7.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/PAPAHomeBeanV7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HomeBeanDTO"
.end annotation


# instance fields
.field private _from:I

.field private _from_type:I

.field private ad_switch:Ljava/lang/Integer;

.field private big_pic:Ljava/lang/String;

.field private downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field private g_info:Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

.field private gameBean:Lcom/join/mgps/dto/CollectionBeanSub;

.field private hasExposure:Z

.field private isRequesting:Z

.field private jp_info:Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;

.field private position:Ljava/lang/String;

.field private quit_switch:Ljava/lang/Integer;

.field private sub_title:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private v_url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAd_switch()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->ad_switch:Ljava/lang/Integer;

    return-object v0
.end method

.method public getBig_pic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->big_pic:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    return-object v0
.end method

.method public getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->g_info:Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    return-object v0
.end method

.method public getGameBean()Lcom/join/mgps/dto/CollectionBeanSub;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->gameBean:Lcom/join/mgps/dto/CollectionBeanSub;

    return-object v0
.end method

.method public getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->jp_info:Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;->getJump_type()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setJump_type(I)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->jp_info:Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;

    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;->getLink_type()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 5
    iget-object v1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->jp_info:Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;

    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;->getLink_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->jp_info:Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;

    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;->getLink_type()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->g_info:Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getGame_info_tpl_type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->jp_info:Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;

    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;->getTpl_type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 9
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->jp_info:Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;

    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->title:Ljava/lang/String;

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    iget-object v1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setObject(Ljava/lang/Object;)V

    .line 12
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->title:Ljava/lang/String;

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->sub_title:Ljava/lang/String;

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 13
    iget-object v1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->sub_title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setObject(Ljava/lang/Object;)V

    .line 14
    :cond_2
    invoke-virtual {v0}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    move-result-object v1

    if-nez v1, :cond_3

    .line 15
    new-instance v1, Lcom/join/mgps/dto/ExtBean;

    invoke-direct {v1}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 16
    :cond_3
    invoke-virtual {v0}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    move-result-object v1

    iget v2, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->_from:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    move-result-object v1

    iget v2, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->_from_type:I

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->set_from_type(I)Lcom/join/mgps/dto/ExtBean;

    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->g_info:Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v2

    iget-object v3, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->g_info:Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    invoke-virtual {v3}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getPosition_path()Lcom/psk/eventmodule/StatFactory$VolcanoOther;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setVolcanoOther(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 19
    invoke-virtual {v0}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    move-result-object v1

    invoke-virtual {p0}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getPosition()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setRecPosition(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    return-object v0
.end method

.method public getJp_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->jp_info:Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;

    return-object v0
.end method

.method public getPosition()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->position:Ljava/lang/String;

    return-object v0
.end method

.method public getQuit_switch()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->quit_switch:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSub_title()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->sub_title:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getV_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->v_url:Ljava/lang/String;

    return-object v0
.end method

.method public get_from()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->_from:I

    return v0
.end method

.method public get_from_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->_from_type:I

    return v0
.end method

.method public isHasExposure()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->hasExposure:Z

    return v0
.end method

.method public isRequesting()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->isRequesting:Z

    return v0
.end method

.method public setAd_switch(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->ad_switch:Ljava/lang/Integer;

    return-void
.end method

.method public setBig_pic(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->big_pic:Ljava/lang/String;

    return-void
.end method

.method public setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    return-void
.end method

.method public setG_info(Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->g_info:Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    return-void
.end method

.method public setGameBean(Lcom/join/mgps/dto/CollectionBeanSub;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->gameBean:Lcom/join/mgps/dto/CollectionBeanSub;

    return-void
.end method

.method public setHasExposure(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->hasExposure:Z

    return-void
.end method

.method public setJp_info(Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->jp_info:Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;

    return-void
.end method

.method public setPosition(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->position:Ljava/lang/String;

    return-void
.end method

.method public setQuit_switch(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->quit_switch:Ljava/lang/Integer;

    return-void
.end method

.method public setRequesting(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->isRequesting:Z

    return-void
.end method

.method public setSub_title(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->sub_title:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->title:Ljava/lang/String;

    return-void
.end method

.method public setV_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->v_url:Ljava/lang/String;

    return-void
.end method

.method public set_from(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->_from:I

    return-void
.end method

.method public set_from_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->_from_type:I

    return-void
.end method
