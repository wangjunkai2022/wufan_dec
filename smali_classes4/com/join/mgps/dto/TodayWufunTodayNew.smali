.class public Lcom/join/mgps/dto/TodayWufunTodayNew;
.super Lcom/join/mgps/dto/CollectionBeanSub;
.source "TodayWufunTodayNew.java"


# instance fields
.field private bespeak_switch:I

.field private down_count:I

.field private down_status:I

.field downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

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

.field private info:Ljava/lang/String;

.field private mod_info:Lcom/join/mgps/dto/ModInfoBean;

.field private packageName:Ljava/lang/String;

.field pay_tag_info:Lcom/join/mgps/dto/PayTagInfo;

.field private score:Ljava/lang/String;

.field private single_game_mod_info:Lcom/join/mgps/dto/SingleGameModInfoBean;

.field private size:Ljava/lang/String;

.field private sp_tag_info:Lcom/join/mgps/dto/TipNew;

.field private sp_tpl_two_position:I

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
    iget v0, p0, Lcom/join/mgps/dto/TodayWufunTodayNew;->bespeak_switch:I

    return v0
.end method

.method public getDown_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/TodayWufunTodayNew;->down_count:I

    return v0
.end method

.method public getDown_status()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/TodayWufunTodayNew;->down_status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v1, p0, Lcom/join/mgps/dto/TodayWufunTodayNew;->bespeak_switch:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x6

    :cond_0
    return v0
.end method

.method public getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TodayWufunTodayNew;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    return-object v0
.end method

.method public getDownload_original_switch()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TodayWufunTodayNew;->download_original_switch:Ljava/lang/String;

    return-object v0
.end method

.method public getDownload_outside_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TodayWufunTodayNew;->download_outside_url:Ljava/lang/String;

    return-object v0
.end method

.method public getDownload_source_switch_v1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TodayWufunTodayNew;->download_source_switch_v1:Ljava/lang/String;

    return-object v0
.end method

.method public getDownload_source_switch_v2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TodayWufunTodayNew;->download_source_switch_v2:Ljava/lang/String;

    return-object v0
.end method

.method public getDownload_source_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TodayWufunTodayNew;->download_source_url:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_down()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TodayWufunTodayNew;->game_down:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_ico()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TodayWufunTodayNew;->game_ico:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TodayWufunTodayNew;->game_id:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TodayWufunTodayNew;->game_name:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_open_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/TodayWufunTodayNew;->game_open_switch:I

    return v0
.end method

.method public getGame_plugin_num()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/TodayWufunTodayNew;->game_plugin_num:I

    return v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TodayWufunTodayNew;->info:Ljava/lang/String;

    return-object v0
.end method

.method public getMod_info()Lcom/join/mgps/dto/ModInfoBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TodayWufunTodayNew;->mod_info:Lcom/join/mgps/dto/ModInfoBean;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TodayWufunTodayNew;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TodayWufunTodayNew;->pay_tag_info:Lcom/join/mgps/dto/PayTagInfo;

    return-object v0
.end method

.method public getScore()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TodayWufunTodayNew;->score:Ljava/lang/String;

    return-object v0
.end method

.method public getSingle_game_mod_info()Lcom/join/mgps/dto/SingleGameModInfoBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TodayWufunTodayNew;->single_game_mod_info:Lcom/join/mgps/dto/SingleGameModInfoBean;

    return-object v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TodayWufunTodayNew;->size:Ljava/lang/String;

    return-object v0
.end method

.method public getSp_tag_info()Lcom/join/mgps/dto/TipNew;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TodayWufunTodayNew;->sp_tag_info:Lcom/join/mgps/dto/TipNew;

    return-object v0
.end method

.method public getSp_tpl_two_position()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/TodayWufunTodayNew;->sp_tpl_two_position:I

    return v0
.end method

.method public getTpl_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TodayWufunTodayNew;->tpl_type:Ljava/lang/String;

    return-object v0
.end method

.method public setBespeak_switch(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/TodayWufunTodayNew;->bespeak_switch:I

    return-void
.end method

.method public setDown_count(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/TodayWufunTodayNew;->down_count:I

    return-void
.end method

.method public setDown_status(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/TodayWufunTodayNew;->down_status:I

    return-void
.end method

.method public setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TodayWufunTodayNew;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    return-void
.end method

.method public setDownload_original_switch(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TodayWufunTodayNew;->download_original_switch:Ljava/lang/String;

    return-void
.end method

.method public setDownload_outside_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TodayWufunTodayNew;->download_outside_url:Ljava/lang/String;

    return-void
.end method

.method public setDownload_source_switch_v1(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TodayWufunTodayNew;->download_source_switch_v1:Ljava/lang/String;

    return-void
.end method

.method public setDownload_source_switch_v2(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TodayWufunTodayNew;->download_source_switch_v2:Ljava/lang/String;

    return-void
.end method

.method public setDownload_source_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TodayWufunTodayNew;->download_source_url:Ljava/lang/String;

    return-void
.end method

.method public setGame_down(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TodayWufunTodayNew;->game_down:Ljava/lang/String;

    return-void
.end method

.method public setGame_ico(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TodayWufunTodayNew;->game_ico:Ljava/lang/String;

    return-void
.end method

.method public setGame_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TodayWufunTodayNew;->game_id:Ljava/lang/String;

    return-void
.end method

.method public setGame_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TodayWufunTodayNew;->game_name:Ljava/lang/String;

    return-void
.end method

.method public setGame_open_switch(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/TodayWufunTodayNew;->game_open_switch:I

    return-void
.end method

.method public setGame_plugin_num(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/TodayWufunTodayNew;->game_plugin_num:I

    return-void
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TodayWufunTodayNew;->info:Ljava/lang/String;

    return-void
.end method

.method public setMod_info(Lcom/join/mgps/dto/ModInfoBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TodayWufunTodayNew;->mod_info:Lcom/join/mgps/dto/ModInfoBean;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TodayWufunTodayNew;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setPay_tag_info(Lcom/join/mgps/dto/PayTagInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TodayWufunTodayNew;->pay_tag_info:Lcom/join/mgps/dto/PayTagInfo;

    return-void
.end method

.method public setScore(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TodayWufunTodayNew;->score:Ljava/lang/String;

    return-void
.end method

.method public setSingle_game_mod_info(Lcom/join/mgps/dto/SingleGameModInfoBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TodayWufunTodayNew;->single_game_mod_info:Lcom/join/mgps/dto/SingleGameModInfoBean;

    return-void
.end method

.method public setSize(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TodayWufunTodayNew;->size:Ljava/lang/String;

    return-void
.end method

.method public setSp_tag_info(Lcom/join/mgps/dto/TipNew;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TodayWufunTodayNew;->sp_tag_info:Lcom/join/mgps/dto/TipNew;

    return-void
.end method

.method public setSp_tpl_two_position(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/TodayWufunTodayNew;->sp_tpl_two_position:I

    return-void
.end method

.method public setTpl_type(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TodayWufunTodayNew;->tpl_type:Ljava/lang/String;

    return-void
.end method
