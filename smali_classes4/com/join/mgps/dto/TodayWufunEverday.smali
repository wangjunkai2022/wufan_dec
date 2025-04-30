.class public Lcom/join/mgps/dto/TodayWufunEverday;
.super Lcom/join/mgps/dto/CollectionBeanSub;
.source "TodayWufunEverday.java"


# instance fields
.field private bespeak_switch:I

.field private discover_pic:Ljava/lang/String;

.field private down_status:I

.field private downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field private download_original_switch:Ljava/lang/String;

.field private download_outside_url:Ljava/lang/String;

.field private download_source_switch_v1:Ljava/lang/String;

.field private download_source_switch_v2:Ljava/lang/String;

.field private download_source_url:Ljava/lang/String;

.field private game_down:Ljava/lang/String;

.field private game_ico:Ljava/lang/String;

.field private game_id:Ljava/lang/String;

.field private game_name:Ljava/lang/String;

.field private game_open_switch:I

.field private game_open_time:J

.field private game_plugin_num:I

.field private mod_info:Lcom/join/mgps/dto/ModInfoBean;

.field pay_tag_info:Lcom/join/mgps/dto/PayTagInfo;

.field private single_game_mod_info:Lcom/join/mgps/dto/SingleGameModInfoBean;

.field private sp_tag_info:Lcom/join/mgps/dto/TipNew;

.field private sp_tpl_two_position:I

.field private title:Ljava/lang/String;

.field private tpl_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/dto/CollectionBeanSub;-><init>()V

    return-void
.end method


# virtual methods
.method public getBespeak_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/TodayWufunEverday;->bespeak_switch:I

    return v0
.end method

.method public getDiscover_pic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TodayWufunEverday;->discover_pic:Ljava/lang/String;

    return-object v0
.end method

.method public getDown_status()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/TodayWufunEverday;->down_status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v1, p0, Lcom/join/mgps/dto/TodayWufunEverday;->bespeak_switch:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x6

    :cond_0
    return v0
.end method

.method public getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TodayWufunEverday;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    return-object v0
.end method

.method public getDownload_original_switch()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TodayWufunEverday;->download_original_switch:Ljava/lang/String;

    return-object v0
.end method

.method public getDownload_outside_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TodayWufunEverday;->download_outside_url:Ljava/lang/String;

    return-object v0
.end method

.method public getDownload_source_switch_v1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TodayWufunEverday;->download_source_switch_v1:Ljava/lang/String;

    return-object v0
.end method

.method public getDownload_source_switch_v2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TodayWufunEverday;->download_source_switch_v2:Ljava/lang/String;

    return-object v0
.end method

.method public getDownload_source_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TodayWufunEverday;->download_source_url:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_down()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TodayWufunEverday;->game_down:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_ico()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TodayWufunEverday;->game_ico:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TodayWufunEverday;->game_id:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TodayWufunEverday;->game_name:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_open_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/TodayWufunEverday;->game_open_switch:I

    return v0
.end method

.method public getGame_plugin_num()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/TodayWufunEverday;->game_plugin_num:I

    return v0
.end method

.method public getMod_info()Lcom/join/mgps/dto/ModInfoBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TodayWufunEverday;->mod_info:Lcom/join/mgps/dto/ModInfoBean;

    return-object v0
.end method

.method public getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TodayWufunEverday;->pay_tag_info:Lcom/join/mgps/dto/PayTagInfo;

    return-object v0
.end method

.method public getSingle_game_mod_info()Lcom/join/mgps/dto/SingleGameModInfoBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TodayWufunEverday;->single_game_mod_info:Lcom/join/mgps/dto/SingleGameModInfoBean;

    return-object v0
.end method

.method public getSp_tag_info()Lcom/join/mgps/dto/TipNew;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TodayWufunEverday;->sp_tag_info:Lcom/join/mgps/dto/TipNew;

    return-object v0
.end method

.method public getSp_tpl_two_position()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/TodayWufunEverday;->sp_tpl_two_position:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TodayWufunEverday;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTpl_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TodayWufunEverday;->tpl_type:Ljava/lang/String;

    return-object v0
.end method

.method public setBespeak_switch(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/TodayWufunEverday;->bespeak_switch:I

    return-void
.end method

.method public setDiscover_pic(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TodayWufunEverday;->discover_pic:Ljava/lang/String;

    return-void
.end method

.method public setDown_status(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/TodayWufunEverday;->down_status:I

    return-void
.end method

.method public setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TodayWufunEverday;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    return-void
.end method

.method public setDownload_original_switch(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TodayWufunEverday;->download_original_switch:Ljava/lang/String;

    return-void
.end method

.method public setDownload_outside_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TodayWufunEverday;->download_outside_url:Ljava/lang/String;

    return-void
.end method

.method public setDownload_source_switch_v1(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TodayWufunEverday;->download_source_switch_v1:Ljava/lang/String;

    return-void
.end method

.method public setDownload_source_switch_v2(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TodayWufunEverday;->download_source_switch_v2:Ljava/lang/String;

    return-void
.end method

.method public setDownload_source_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TodayWufunEverday;->download_source_url:Ljava/lang/String;

    return-void
.end method

.method public setGame_down(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TodayWufunEverday;->game_down:Ljava/lang/String;

    return-void
.end method

.method public setGame_ico(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TodayWufunEverday;->game_ico:Ljava/lang/String;

    return-void
.end method

.method public setGame_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TodayWufunEverday;->game_id:Ljava/lang/String;

    return-void
.end method

.method public setGame_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TodayWufunEverday;->game_name:Ljava/lang/String;

    return-void
.end method

.method public setGame_open_switch(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/TodayWufunEverday;->game_open_switch:I

    return-void
.end method

.method public setGame_plugin_num(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/TodayWufunEverday;->game_plugin_num:I

    return-void
.end method

.method public setMod_info(Lcom/join/mgps/dto/ModInfoBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TodayWufunEverday;->mod_info:Lcom/join/mgps/dto/ModInfoBean;

    return-void
.end method

.method public setPay_tag_info(Lcom/join/mgps/dto/PayTagInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TodayWufunEverday;->pay_tag_info:Lcom/join/mgps/dto/PayTagInfo;

    return-void
.end method

.method public setSingle_game_mod_info(Lcom/join/mgps/dto/SingleGameModInfoBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TodayWufunEverday;->single_game_mod_info:Lcom/join/mgps/dto/SingleGameModInfoBean;

    return-void
.end method

.method public setSp_tag_info(Lcom/join/mgps/dto/TipNew;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TodayWufunEverday;->sp_tag_info:Lcom/join/mgps/dto/TipNew;

    return-void
.end method

.method public setSp_tpl_two_position(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/TodayWufunEverday;->sp_tpl_two_position:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TodayWufunEverday;->title:Ljava/lang/String;

    return-void
.end method

.method public setTpl_type(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TodayWufunEverday;->tpl_type:Ljava/lang/String;

    return-void
.end method
