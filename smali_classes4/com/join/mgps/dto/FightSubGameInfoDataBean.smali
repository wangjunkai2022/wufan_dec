.class public Lcom/join/mgps/dto/FightSubGameInfoDataBean;
.super Ljava/lang/Object;
.source "FightSubGameInfoDataBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private actual_size:J

.field private appSize:Ljava/lang/String;

.field private cdn_down_switch:I

.field private cfg_down_url:Ljava/lang/String;

.field private cfg_lowest_ver:Ljava/lang/String;

.field private cfg_ver:Ljava/lang/String;

.field private cfg_ver_name:Ljava/lang/String;

.field private company_name:Ljava/lang/String;

.field private crc_sign_id:Ljava/lang/String;

.field private down_status:I

.field private down_url_remote:Ljava/lang/String;

.field private edit_recommend:Ljava/lang/String;

.field private fight_funv2:Ljava/lang/String;

.field private fight_screenshot_pic:Ljava/lang/String;

.field private fight_type:I

.field private forum_id:I

.field private forum_switch:I

.field private game_info_top_pic:Ljava/lang/String;

.field private game_info_tpl_type:Ljava/lang/String;

.field private game_name:Ljava/lang/String;

.field private gift_package_switch:I

.field private ico_remote:Ljava/lang/String;

.field private info:Ljava/lang/String;

.field private is_fight:I

.field private is_network:I

.field private is_world:I

.field private lock_sp:I

.field private other_down_switch:I

.field private packageName:Ljava/lang/String;

.field private papa_explain:Ljava/lang/String;

.field pay_tag_info:Lcom/join/mgps/dto/PayTagInfo;

.field private pic_remote:Ljava/lang/String;

.field private plugin_lowest_ver:Ljava/lang/String;

.field private plugin_lowest_ver_name:Ljava/lang/String;

.field private plugin_num:I

.field private plugin_screenshot:I

.field private rom_lowest_ver:Ljava/lang/String;

.field private screenshot_pic:Ljava/lang/String;

.field private source_down_url:Ljava/lang/String;

.field private source_lowest_ver:Ljava/lang/String;

.field private source_ver:Ljava/lang/String;

.field private source_ver_name:Ljava/lang/String;

.field private sp_tag_info:Lcom/join/mgps/dto/TipNew;

.field private sync_memory:Ljava/lang/String;

.field private tag_info:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;"
        }
    .end annotation
.end field

.field private tp_down_url:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DownloadUrlBean;",
            ">;"
        }
    .end annotation
.end field

.field private unzip_size:Ljava/lang/String;

.field private ver:Ljava/lang/String;

.field private ver_name:Ljava/lang/String;

.field private world_area:I

.field private world_shop:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActual_size()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->actual_size:J

    return-wide v0
.end method

.method public getAppSize()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->appSize:Ljava/lang/String;

    return-object v0
.end method

.method public getCdn_down_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->cdn_down_switch:I

    return v0
.end method

.method public getCfg_down_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->cfg_down_url:Ljava/lang/String;

    return-object v0
.end method

.method public getCfg_lowest_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->cfg_lowest_ver:Ljava/lang/String;

    return-object v0
.end method

.method public getCfg_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->cfg_ver:Ljava/lang/String;

    return-object v0
.end method

.method public getCfg_ver_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->cfg_ver_name:Ljava/lang/String;

    return-object v0
.end method

.method public getCompany_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->company_name:Ljava/lang/String;

    return-object v0
.end method

.method public getCrc_sign_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->crc_sign_id:Ljava/lang/String;

    return-object v0
.end method

.method public getDown_status()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->down_status:I

    return v0
.end method

.method public getDown_url_remote()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->down_url_remote:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 4

    .line 1
    new-instance v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;-><init>()V

    .line 2
    iget v1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->down_status:I

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDown_status(I)V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPackageName(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->ico_remote:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPortraitURL(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->game_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setShowName(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->down_url_remote:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->tag_info:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setTipBeans(Ljava/util/ArrayList;)V

    .line 8
    iget-object v1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->ver:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->ver_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->plugin_num:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPlugin_num(Ljava/lang/String;)V

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->plugin_num:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRomType(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 13
    iget-object v1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->info:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDescribe(Ljava/lang/String;)V

    .line 14
    iget-object v1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->appSize:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setShowSize(Ljava/lang/String;)V

    .line 15
    iget-object v1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->cfg_ver:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver(Ljava/lang/String;)V

    .line 16
    iget-object v1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->cfg_ver_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver_name(Ljava/lang/String;)V

    .line 17
    iget-object v1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->cfg_down_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_down_url(Ljava/lang/String;)V

    .line 18
    iget-object v1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->screenshot_pic:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setScreenshot_pic(Ljava/lang/String;)V

    .line 19
    iget v1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->is_fight:I

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setIs_world(I)V

    .line 20
    iget v1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->is_network:I

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setIs_network(I)V

    .line 21
    iget-object v1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->source_ver:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSource_ver(Ljava/lang/String;)V

    .line 22
    iget-object v1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->source_ver_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSource_ver_name(Ljava/lang/String;)V

    .line 23
    iget-object v1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->source_down_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSource_down_url(Ljava/lang/String;)V

    .line 24
    iget v1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->plugin_screenshot:I

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPlugin_screenshot(I)V

    .line 25
    iget v1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->forum_switch:I

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPlugin_area(I)V

    .line 26
    iget v1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->forum_id:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPlugin_area_val(J)V

    .line 27
    iget v1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->world_shop:I

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setWorld_shop(I)V

    .line 28
    iget v1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->world_area:I

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setWorld_area(I)V

    .line 29
    iget v1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->fight_type:I

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFight_type(I)V

    .line 30
    iget v1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->is_fight:I

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setIs_fight(I)V

    .line 31
    iget-object v1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->fight_funv2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFight_fun(Ljava/lang/String;)V

    .line 32
    iget-object v1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->fight_screenshot_pic:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFight_screenshot_pic(Ljava/lang/String;)V

    .line 33
    iget v1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->cdn_down_switch:I

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCdn_down_switch(I)V

    .line 34
    iget v1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->other_down_switch:I

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setOther_down_switch(I)V

    .line 35
    iget-object v1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->tp_down_url:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setTp_down_url(Ljava/util/List;)V

    .line 36
    iget-object v1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->game_info_tpl_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGame_info_tpl_type(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 38
    iget v1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->lock_sp:I

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setLock_sp(I)V

    .line 39
    iget-object v1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->unzip_size:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUnzip_size(Ljava/lang/String;)V

    .line 40
    iget-object v1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->sync_memory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSync_memory(Ljava/lang/String;)V

    .line 41
    iget v1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->gift_package_switch:I

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGift_package_switch(I)V

    .line 42
    iget-wide v1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->actual_size:J

    invoke-virtual {v0, v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setActual_size(J)V

    .line 43
    iget-object v1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->sp_tag_info:Lcom/join/mgps/dto/TipNew;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSp_tag_info(Lcom/join/mgps/dto/TipNew;)V

    return-object v0
.end method

.method public getEdit_recommend()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->edit_recommend:Ljava/lang/String;

    return-object v0
.end method

.method public getFight_funv2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->fight_funv2:Ljava/lang/String;

    return-object v0
.end method

.method public getFight_screenshot_pic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->fight_screenshot_pic:Ljava/lang/String;

    return-object v0
.end method

.method public getFight_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->fight_type:I

    return v0
.end method

.method public getForum_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->forum_id:I

    return v0
.end method

.method public getForum_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->forum_switch:I

    return v0
.end method

.method public getGame_info_top_pic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->game_info_top_pic:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_info_tpl_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->game_info_tpl_type:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->game_name:Ljava/lang/String;

    return-object v0
.end method

.method public getGift_package_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->gift_package_switch:I

    return v0
.end method

.method public getIco_remote()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->ico_remote:Ljava/lang/String;

    return-object v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->info:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_fight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->is_fight:I

    return v0
.end method

.method public getIs_network()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->is_network:I

    return v0
.end method

.method public getIs_world()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->is_world:I

    return v0
.end method

.method public getLock_sp()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->lock_sp:I

    return v0
.end method

.method public getOther_down_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->other_down_switch:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPapa_explain()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->papa_explain:Ljava/lang/String;

    return-object v0
.end method

.method public getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->pay_tag_info:Lcom/join/mgps/dto/PayTagInfo;

    return-object v0
.end method

.method public getPic_remote()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->pic_remote:Ljava/lang/String;

    return-object v0
.end method

.method public getPlugin_lowest_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->plugin_lowest_ver:Ljava/lang/String;

    return-object v0
.end method

.method public getPlugin_lowest_ver_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->plugin_lowest_ver_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPlugin_num()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->plugin_num:I

    return v0
.end method

.method public getPlugin_screenshot()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->plugin_screenshot:I

    return v0
.end method

.method public getRom_lowest_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->rom_lowest_ver:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenshot_pic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->screenshot_pic:Ljava/lang/String;

    return-object v0
.end method

.method public getSource_down_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->source_down_url:Ljava/lang/String;

    return-object v0
.end method

.method public getSource_lowest_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->source_lowest_ver:Ljava/lang/String;

    return-object v0
.end method

.method public getSource_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->source_ver:Ljava/lang/String;

    return-object v0
.end method

.method public getSource_ver_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->source_ver_name:Ljava/lang/String;

    return-object v0
.end method

.method public getSp_tag_info()Lcom/join/mgps/dto/TipNew;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->sp_tag_info:Lcom/join/mgps/dto/TipNew;

    return-object v0
.end method

.method public getSync_memory()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->sync_memory:Ljava/lang/String;

    return-object v0
.end method

.method public getTag_info()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->tag_info:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTp_down_url()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DownloadUrlBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->tp_down_url:Ljava/util/List;

    return-object v0
.end method

.method public getUnzip_size()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->unzip_size:Ljava/lang/String;

    return-object v0
.end method

.method public getVer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->ver:Ljava/lang/String;

    return-object v0
.end method

.method public getVer_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->ver_name:Ljava/lang/String;

    return-object v0
.end method

.method public getWorld_area()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->world_area:I

    return v0
.end method

.method public getWorld_shop()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->world_shop:I

    return v0
.end method

.method public setActual_size(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->actual_size:J

    return-void
.end method

.method public setAppSize(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->appSize:Ljava/lang/String;

    return-void
.end method

.method public setCdn_down_switch(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->cdn_down_switch:I

    return-void
.end method

.method public setCfg_down_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->cfg_down_url:Ljava/lang/String;

    return-void
.end method

.method public setCfg_lowest_ver(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->cfg_lowest_ver:Ljava/lang/String;

    return-void
.end method

.method public setCfg_ver(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->cfg_ver:Ljava/lang/String;

    return-void
.end method

.method public setCfg_ver_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->cfg_ver_name:Ljava/lang/String;

    return-void
.end method

.method public setCompany_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->company_name:Ljava/lang/String;

    return-void
.end method

.method public setCrc_sign_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->crc_sign_id:Ljava/lang/String;

    return-void
.end method

.method public setDown_status(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->down_status:I

    return-void
.end method

.method public setDown_url_remote(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->down_url_remote:Ljava/lang/String;

    return-void
.end method

.method public setEdit_recommend(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->edit_recommend:Ljava/lang/String;

    return-void
.end method

.method public setFight_funv2(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->fight_funv2:Ljava/lang/String;

    return-void
.end method

.method public setFight_screenshot_pic(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->fight_screenshot_pic:Ljava/lang/String;

    return-void
.end method

.method public setFight_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->fight_type:I

    return-void
.end method

.method public setForum_id(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->forum_id:I

    return-void
.end method

.method public setForum_switch(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->forum_switch:I

    return-void
.end method

.method public setGame_info_top_pic(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->game_info_top_pic:Ljava/lang/String;

    return-void
.end method

.method public setGame_info_tpl_type(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->game_info_tpl_type:Ljava/lang/String;

    return-void
.end method

.method public setGame_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->game_name:Ljava/lang/String;

    return-void
.end method

.method public setGift_package_switch(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->gift_package_switch:I

    return-void
.end method

.method public setIco_remote(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->ico_remote:Ljava/lang/String;

    return-void
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->info:Ljava/lang/String;

    return-void
.end method

.method public setIs_fight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->is_fight:I

    return-void
.end method

.method public setIs_network(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->is_network:I

    return-void
.end method

.method public setIs_world(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->is_world:I

    return-void
.end method

.method public setLock_sp(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->lock_sp:I

    return-void
.end method

.method public setOther_down_switch(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->other_down_switch:I

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setPapa_explain(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->papa_explain:Ljava/lang/String;

    return-void
.end method

.method public setPay_tag_info(Lcom/join/mgps/dto/PayTagInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->pay_tag_info:Lcom/join/mgps/dto/PayTagInfo;

    return-void
.end method

.method public setPic_remote(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->pic_remote:Ljava/lang/String;

    return-void
.end method

.method public setPlugin_lowest_ver(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->plugin_lowest_ver:Ljava/lang/String;

    return-void
.end method

.method public setPlugin_lowest_ver_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->plugin_lowest_ver_name:Ljava/lang/String;

    return-void
.end method

.method public setPlugin_num(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->plugin_num:I

    return-void
.end method

.method public setPlugin_screenshot(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->plugin_screenshot:I

    return-void
.end method

.method public setRom_lowest_ver(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->rom_lowest_ver:Ljava/lang/String;

    return-void
.end method

.method public setScreenshot_pic(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->screenshot_pic:Ljava/lang/String;

    return-void
.end method

.method public setSource_down_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->source_down_url:Ljava/lang/String;

    return-void
.end method

.method public setSource_lowest_ver(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->source_lowest_ver:Ljava/lang/String;

    return-void
.end method

.method public setSource_ver(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->source_ver:Ljava/lang/String;

    return-void
.end method

.method public setSource_ver_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->source_ver_name:Ljava/lang/String;

    return-void
.end method

.method public setSp_tag_info(Lcom/join/mgps/dto/TipNew;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->sp_tag_info:Lcom/join/mgps/dto/TipNew;

    return-void
.end method

.method public setSync_memory(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->sync_memory:Ljava/lang/String;

    return-void
.end method

.method public setTag_info(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->tag_info:Ljava/util/ArrayList;

    return-void
.end method

.method public setTp_down_url(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DownloadUrlBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->tp_down_url:Ljava/util/List;

    return-void
.end method

.method public setUnzip_size(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->unzip_size:Ljava/lang/String;

    return-void
.end method

.method public setVer(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->ver:Ljava/lang/String;

    return-void
.end method

.method public setVer_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->ver_name:Ljava/lang/String;

    return-void
.end method

.method public setWorld_area(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->world_area:I

    return-void
.end method

.method public setWorld_shop(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->world_shop:I

    return-void
.end method
