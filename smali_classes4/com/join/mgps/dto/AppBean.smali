.class public Lcom/join/mgps/dto/AppBean;
.super Lcom/join/mgps/dto/DownloadPointBase;
.source "AppBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private allow_start_up_ad:Ljava/lang/String;

.field private appSize:Ljava/lang/String;

.field private bespeak_count:Ljava/lang/String;

.field private bespeak_switch:I

.field private bespeak_time:J

.field private butnShowType:I

.field private cdn_down_switch:I

.field private cfg_down_url:Ljava/lang/String;

.field private cfg_lowest_ver:Ljava/lang/String;

.field private cfg_ver:Ljava/lang/String;

.field private cfg_ver_name:Ljava/lang/String;

.field private company_name:Ljava/lang/String;

.field private crc_sign_id:Ljava/lang/String;

.field private down_count:I

.field private down_status:I

.field private down_type:I

.field private down_url_remote:Ljava/lang/String;

.field private downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation
.end field

.field private downloadType:I

.field private download_original_switch:Ljava/lang/String;

.field private download_outside_url:Ljava/lang/String;

.field private download_source_switch_v1:Ljava/lang/String;

.field private download_source_switch_v2:Ljava/lang/String;

.field private download_source_url:Ljava/lang/String;

.field private edit_recommend:Ljava/lang/String;

.field private fight_funv2:Ljava/lang/String;

.field private fight_type:I

.field private forum_id:J

.field private forum_switch:I

.field private game_id:Ljava/lang/String;

.field private game_info_top_pic:Ljava/lang/String;

.field private game_info_tpl_type:Ljava/lang/String;

.field private game_name:Ljava/lang/String;

.field private game_open_time:Ljava/lang/String;

.field private gif_ico_remote:Ljava/lang/String;

.field private gift_package_switch:I

.field private ico_remote:Ljava/lang/String;

.field private info:Ljava/lang/String;

.field private is_bespeak:I

.field private is_boot_commented:I

.field private is_fight:I

.field private is_network:I

.field private is_world:I

.field private lock_sp:I

.field private max_an_compatible_ver:I

.field private min_an_compatible_ver:I

.field private mod_info:Lcom/join/mgps/dto/ModInfoBean;

.field private other_down_switch:I

.field private packageName:Ljava/lang/String;

.field private papa_explain:Ljava/lang/String;

.field pay_tag_info:Lcom/join/mgps/dto/PayTagInfo;

.field private plugin_lowest_ver:Ljava/lang/String;

.field private plugin_lowest_ver_name:Ljava/lang/String;

.field private plugin_num:Ljava/lang/String;

.field private plugin_screenshot:I

.field private residual_time:Ljava/lang/String;

.field private rom_lowest_ver:Ljava/lang/String;

.field private score:Ljava/lang/String;

.field private screenshot_pic:Ljava/lang/String;

.field private single_game_mod_info:Lcom/join/mgps/dto/SingleGameModInfoBean;

.field private size:Ljava/lang/String;

.field private source_down_url:Ljava/lang/String;

.field private source_lowest_ver:Ljava/lang/String;

.field private source_ver:Ljava/lang/String;

.field private source_ver_name:Ljava/lang/String;

.field private sp_tag_info:Lcom/join/mgps/dto/TipNew;

.field private sp_tpl_two_position:I

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
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/dto/DownloadPointBase;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/join/mgps/dto/AppBean;->plugin_num:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3

    move-object v0, p0

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/dto/DownloadPointBase;-><init>()V

    const-string v1, ""

    .line 4
    iput-object v1, v0, Lcom/join/mgps/dto/AppBean;->plugin_num:Ljava/lang/String;

    move-object v1, p1

    .line 5
    iput-object v1, v0, Lcom/join/mgps/dto/AppBean;->crc_sign_id:Ljava/lang/String;

    move-object v1, p2

    .line 6
    iput-object v1, v0, Lcom/join/mgps/dto/AppBean;->game_name:Ljava/lang/String;

    move-object v1, p3

    .line 7
    iput-object v1, v0, Lcom/join/mgps/dto/AppBean;->ico_remote:Ljava/lang/String;

    move-object v1, p4

    .line 8
    iput-object v1, v0, Lcom/join/mgps/dto/AppBean;->packageName:Ljava/lang/String;

    move-object v1, p5

    .line 9
    iput-object v1, v0, Lcom/join/mgps/dto/AppBean;->appSize:Ljava/lang/String;

    move-object v1, p6

    .line 10
    iput-object v1, v0, Lcom/join/mgps/dto/AppBean;->down_url_remote:Ljava/lang/String;

    move-object v1, p7

    .line 11
    iput-object v1, v0, Lcom/join/mgps/dto/AppBean;->info:Ljava/lang/String;

    move-object v1, p8

    .line 12
    iput-object v1, v0, Lcom/join/mgps/dto/AppBean;->ver:Ljava/lang/String;

    move-object v1, p9

    .line 13
    iput-object v1, v0, Lcom/join/mgps/dto/AppBean;->ver_name:Ljava/lang/String;

    move-object v1, p10

    .line 14
    iput-object v1, v0, Lcom/join/mgps/dto/AppBean;->cfg_down_url:Ljava/lang/String;

    move-object v1, p11

    .line 15
    iput-object v1, v0, Lcom/join/mgps/dto/AppBean;->cfg_ver:Ljava/lang/String;

    move-object v1, p12

    .line 16
    iput-object v1, v0, Lcom/join/mgps/dto/AppBean;->cfg_ver_name:Ljava/lang/String;

    move-object/from16 v1, p13

    .line 17
    iput-object v1, v0, Lcom/join/mgps/dto/AppBean;->screenshot_pic:Ljava/lang/String;

    move/from16 v1, p14

    .line 18
    iput v1, v0, Lcom/join/mgps/dto/AppBean;->butnShowType:I

    move/from16 v1, p15

    .line 19
    iput v1, v0, Lcom/join/mgps/dto/AppBean;->downloadType:I

    move-object/from16 v1, p16

    .line 20
    iput-object v1, v0, Lcom/join/mgps/dto/AppBean;->plugin_num:Ljava/lang/String;

    move/from16 v1, p17

    .line 21
    iput v1, v0, Lcom/join/mgps/dto/AppBean;->is_world:I

    move/from16 v1, p18

    .line 22
    iput v1, v0, Lcom/join/mgps/dto/AppBean;->is_network:I

    move-object/from16 v1, p19

    .line 23
    iput-object v1, v0, Lcom/join/mgps/dto/AppBean;->source_ver_name:Ljava/lang/String;

    move-object/from16 v1, p20

    .line 24
    iput-object v1, v0, Lcom/join/mgps/dto/AppBean;->source_ver:Ljava/lang/String;

    move-object/from16 v1, p21

    .line 25
    iput-object v1, v0, Lcom/join/mgps/dto/AppBean;->source_down_url:Ljava/lang/String;

    move/from16 v1, p22

    .line 26
    iput v1, v0, Lcom/join/mgps/dto/AppBean;->plugin_screenshot:I

    move/from16 v1, p23

    .line 27
    iput v1, v0, Lcom/join/mgps/dto/AppBean;->forum_switch:I

    move-wide/from16 v1, p24

    .line 28
    iput-wide v1, v0, Lcom/join/mgps/dto/AppBean;->forum_id:J

    move/from16 v1, p26

    .line 29
    iput v1, v0, Lcom/join/mgps/dto/AppBean;->world_shop:I

    move/from16 v1, p27

    .line 30
    iput v1, v0, Lcom/join/mgps/dto/AppBean;->world_area:I

    move/from16 v1, p28

    .line 31
    iput v1, v0, Lcom/join/mgps/dto/AppBean;->is_fight:I

    move/from16 v1, p29

    .line 32
    iput v1, v0, Lcom/join/mgps/dto/AppBean;->fight_type:I

    move-object/from16 v1, p30

    .line 33
    iput-object v1, v0, Lcom/join/mgps/dto/AppBean;->fight_funv2:Ljava/lang/String;

    move-object/from16 v1, p31

    .line 34
    iput-object v1, v0, Lcom/join/mgps/dto/AppBean;->plugin_lowest_ver_name:Ljava/lang/String;

    move-object/from16 v1, p32

    .line 35
    iput-object v1, v0, Lcom/join/mgps/dto/AppBean;->plugin_lowest_ver:Ljava/lang/String;

    move-object/from16 v1, p33

    .line 36
    iput-object v1, v0, Lcom/join/mgps/dto/AppBean;->rom_lowest_ver:Ljava/lang/String;

    move-object/from16 v1, p34

    .line 37
    iput-object v1, v0, Lcom/join/mgps/dto/AppBean;->source_lowest_ver:Ljava/lang/String;

    move-object/from16 v1, p35

    .line 38
    iput-object v1, v0, Lcom/join/mgps/dto/AppBean;->cfg_lowest_ver:Ljava/lang/String;

    move-object/from16 v1, p36

    .line 39
    iput-object v1, v0, Lcom/join/mgps/dto/AppBean;->game_info_tpl_type:Ljava/lang/String;

    move-object/from16 v1, p37

    .line 40
    iput-object v1, v0, Lcom/join/mgps/dto/AppBean;->company_name:Ljava/lang/String;

    move/from16 v1, p38

    .line 41
    iput v1, v0, Lcom/join/mgps/dto/AppBean;->cdn_down_switch:I

    move/from16 v1, p39

    .line 42
    iput v1, v0, Lcom/join/mgps/dto/AppBean;->other_down_switch:I

    move-object/from16 v1, p40

    .line 43
    iput-object v1, v0, Lcom/join/mgps/dto/AppBean;->game_info_top_pic:Ljava/lang/String;

    move-object/from16 v1, p41

    .line 44
    iput-object v1, v0, Lcom/join/mgps/dto/AppBean;->papa_explain:Ljava/lang/String;

    move-object/from16 v1, p42

    .line 45
    iput-object v1, v0, Lcom/join/mgps/dto/AppBean;->edit_recommend:Ljava/lang/String;

    move-object/from16 v1, p43

    .line 46
    iput-object v1, v0, Lcom/join/mgps/dto/AppBean;->sync_memory:Ljava/lang/String;

    move/from16 v1, p44

    .line 47
    iput v1, v0, Lcom/join/mgps/dto/AppBean;->gift_package_switch:I

    move/from16 v1, p45

    .line 48
    iput v1, v0, Lcom/join/mgps/dto/AppBean;->down_status:I

    return-void
.end method


# virtual methods
.method public getAllow_start_up_ad()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->allow_start_up_ad:Ljava/lang/String;

    return-object v0
.end method

.method public getAppSize()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->appSize:Ljava/lang/String;

    return-object v0
.end method

.method public getBespeak_count()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->bespeak_count:Ljava/lang/String;

    return-object v0
.end method

.method public getBespeak_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AppBean;->bespeak_switch:I

    return v0
.end method

.method public getBespeak_time()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/AppBean;->bespeak_time:J

    return-wide v0
.end method

.method public getButnShowType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AppBean;->butnShowType:I

    return v0
.end method

.method public getCdn_down_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AppBean;->cdn_down_switch:I

    return v0
.end method

.method public getCfg_down_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->cfg_down_url:Ljava/lang/String;

    return-object v0
.end method

.method public getCfg_lowest_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->cfg_lowest_ver:Ljava/lang/String;

    return-object v0
.end method

.method public getCfg_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->cfg_ver:Ljava/lang/String;

    return-object v0
.end method

.method public getCfg_ver_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->cfg_ver_name:Ljava/lang/String;

    return-object v0
.end method

.method public getCompany_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->company_name:Ljava/lang/String;

    return-object v0
.end method

.method public getCrc_sign_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->crc_sign_id:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->game_id:Ljava/lang/String;

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->crc_sign_id:Ljava/lang/String;

    return-object v0
.end method

.method public getDown_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AppBean;->down_count:I

    return v0
.end method

.method public getDown_status()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AppBean;->down_status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v1, p0, Lcom/join/mgps/dto/AppBean;->bespeak_switch:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x6

    :cond_0
    return v0
.end method

.method public getDown_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AppBean;->down_type:I

    return v0
.end method

.method public getDown_url_remote()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->down_url_remote:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    return-object v0
.end method

.method public getDownloadType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AppBean;->downloadType:I

    return v0
.end method

.method public getDownload_original_switch()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->download_original_switch:Ljava/lang/String;

    return-object v0
.end method

.method public getDownload_outside_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->download_outside_url:Ljava/lang/String;

    return-object v0
.end method

.method public getDownload_source_switch_v1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->download_source_switch_v1:Ljava/lang/String;

    return-object v0
.end method

.method public getDownload_source_switch_v2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->download_source_switch_v2:Ljava/lang/String;

    return-object v0
.end method

.method public getDownload_source_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->download_source_url:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 4
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .line 1
    new-instance v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/join/mgps/dto/AppBean;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPackageName(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/dto/AppBean;->ico_remote:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPortraitURL(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/dto/AppBean;->game_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setShowName(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/join/mgps/dto/AppBean;->down_url_remote:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/dto/AppBean;->tag_info:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setTipBeans(Ljava/util/ArrayList;)V

    .line 7
    iget-object v1, p0, Lcom/join/mgps/dto/AppBean;->crc_sign_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/join/mgps/dto/AppBean;->ver:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/join/mgps/dto/AppBean;->ver_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/join/mgps/dto/AppBean;->plugin_num:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRomType(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 12
    iget-object v2, p0, Lcom/join/mgps/dto/AppBean;->info:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDescribe(Ljava/lang/String;)V

    .line 13
    iget-object v2, p0, Lcom/join/mgps/dto/AppBean;->size:Ljava/lang/String;

    invoke-static {v2}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 14
    iget-object v2, p0, Lcom/join/mgps/dto/AppBean;->appSize:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setShowSize(Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/dto/AppBean;->size:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setShowSize(Ljava/lang/String;)V

    .line 16
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/dto/AppBean;->cfg_ver:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver(Ljava/lang/String;)V

    .line 17
    iget-object v2, p0, Lcom/join/mgps/dto/AppBean;->cfg_ver_name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver_name(Ljava/lang/String;)V

    .line 18
    iget-object v2, p0, Lcom/join/mgps/dto/AppBean;->cfg_down_url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_down_url(Ljava/lang/String;)V

    .line 19
    iget v2, p0, Lcom/join/mgps/dto/AppBean;->downloadType:I

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownloadType(I)V

    .line 20
    iget-object v2, p0, Lcom/join/mgps/dto/AppBean;->screenshot_pic:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setScreenshot_pic(Ljava/lang/String;)V

    .line 21
    iget-object v2, p0, Lcom/join/mgps/dto/AppBean;->plugin_num:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPlugin_num(Ljava/lang/String;)V

    .line 22
    iget v2, p0, Lcom/join/mgps/dto/AppBean;->is_world:I

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setIs_world(I)V

    .line 23
    iget v2, p0, Lcom/join/mgps/dto/AppBean;->is_network:I

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setIs_network(I)V

    .line 24
    iget-object v2, p0, Lcom/join/mgps/dto/AppBean;->source_ver:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSource_ver(Ljava/lang/String;)V

    .line 25
    iget-object v2, p0, Lcom/join/mgps/dto/AppBean;->source_ver_name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSource_ver_name(Ljava/lang/String;)V

    .line 26
    iget-object v2, p0, Lcom/join/mgps/dto/AppBean;->source_down_url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSource_down_url(Ljava/lang/String;)V

    .line 27
    iget v2, p0, Lcom/join/mgps/dto/AppBean;->plugin_screenshot:I

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPlugin_screenshot(I)V

    .line 28
    iget v2, p0, Lcom/join/mgps/dto/AppBean;->forum_switch:I

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPlugin_area(I)V

    .line 29
    iget-wide v2, p0, Lcom/join/mgps/dto/AppBean;->forum_id:J

    invoke-virtual {v0, v2, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPlugin_area_val(J)V

    .line 30
    iget v2, p0, Lcom/join/mgps/dto/AppBean;->world_shop:I

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setWorld_shop(I)V

    .line 31
    iget v2, p0, Lcom/join/mgps/dto/AppBean;->world_area:I

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setWorld_area(I)V

    .line 32
    iget v2, p0, Lcom/join/mgps/dto/AppBean;->is_fight:I

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setIs_fight(I)V

    .line 33
    iget v2, p0, Lcom/join/mgps/dto/AppBean;->fight_type:I

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFight_type(I)V

    .line 34
    iget-object v2, p0, Lcom/join/mgps/dto/AppBean;->fight_funv2:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFight_fun(Ljava/lang/String;)V

    .line 35
    iget-object v2, p0, Lcom/join/mgps/dto/AppBean;->game_info_tpl_type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGame_info_tpl_type(Ljava/lang/String;)V

    .line 36
    iget v2, p0, Lcom/join/mgps/dto/AppBean;->sp_tpl_two_position:I

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSp_tpl_two_position(I)V

    .line 37
    iget v2, p0, Lcom/join/mgps/dto/AppBean;->lock_sp:I

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setLock_sp(I)V

    .line 38
    iget-object v2, p0, Lcom/join/mgps/dto/AppBean;->unzip_size:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUnzip_size(Ljava/lang/String;)V

    .line 39
    iget-object v2, p0, Lcom/join/mgps/dto/AppBean;->sync_memory:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSync_memory(Ljava/lang/String;)V

    .line 40
    iget v2, p0, Lcom/join/mgps/dto/AppBean;->gift_package_switch:I

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGift_package_switch(I)V

    .line 41
    iget v2, p0, Lcom/join/mgps/dto/AppBean;->down_count:I

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDown_count(I)V

    .line 42
    iget-object v2, p0, Lcom/join/mgps/dto/AppBean;->sp_tag_info:Lcom/join/mgps/dto/TipNew;

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSp_tag_info(Lcom/join/mgps/dto/TipNew;)V

    .line 43
    iget-object v2, p0, Lcom/join/mgps/dto/AppBean;->score:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setScore(Ljava/lang/String;)V

    .line 44
    iget-object v2, p0, Lcom/join/mgps/dto/AppBean;->pay_tag_info:Lcom/join/mgps/dto/PayTagInfo;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/join/mgps/dto/PayTagInfo;->getPay_game_amount()I

    move-result v1

    :cond_1
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPay_game_amount(I)V

    .line 45
    iget v1, p0, Lcom/join/mgps/dto/AppBean;->down_status:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget v2, p0, Lcom/join/mgps/dto/AppBean;->bespeak_switch:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const/4 v1, 0x6

    .line 46
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDown_status(I)V

    goto :goto_1

    .line 47
    :cond_2
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDown_status(I)V

    .line 48
    :goto_1
    iget-object v1, p0, Lcom/join/mgps/dto/AppBean;->download_source_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_source_url(Ljava/lang/String;)V

    .line 49
    iget-object v1, p0, Lcom/join/mgps/dto/AppBean;->download_outside_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_outside_url(Ljava/lang/String;)V

    .line 50
    iget-object v1, p0, Lcom/join/mgps/dto/AppBean;->download_original_switch:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_original_switch(Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Lcom/join/mgps/dto/AppBean;->download_source_switch_v1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_source_switch_v1(Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Lcom/join/mgps/dto/AppBean;->download_source_switch_v2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_source_switch_v2(Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lcom/join/mgps/dto/AppBean;->allow_start_up_ad:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setAllow_start_up_ad(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->get_from()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from(I)V

    .line 55
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from_type(I)V

    .line 56
    iget v1, p0, Lcom/join/mgps/dto/AppBean;->min_an_compatible_ver:I

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setMin_an_compatible_ver(I)V

    .line 57
    iget v1, p0, Lcom/join/mgps/dto/AppBean;->max_an_compatible_ver:I

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setMax_an_compatible_ver(I)V

    .line 58
    iget-object v1, p0, Lcom/join/mgps/dto/AppBean;->cfg_down_url:Ljava/lang/String;

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 59
    iget-object v1, p0, Lcom/join/mgps/dto/AppBean;->cfg_down_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setResource_url_remote(Ljava/lang/String;)V

    .line 60
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/dto/AppBean;->mod_info:Lcom/join/mgps/dto/ModInfoBean;

    if-eqz v1, :cond_5

    .line 61
    invoke-virtual {v1}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/dto/AppBean;->crc_sign_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 62
    iget-object v1, p0, Lcom/join/mgps/dto/AppBean;->mod_info:Lcom/join/mgps/dto/ModInfoBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ModInfoBean;->getDown_url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setResource_url_remote(Ljava/lang/String;)V

    .line 63
    iget-object v1, p0, Lcom/join/mgps/dto/AppBean;->mod_info:Lcom/join/mgps/dto/ModInfoBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ModInfoBean;->getMain_game_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRef_crc_sign_id(Ljava/lang/String;)V

    goto :goto_2

    .line 64
    :cond_4
    iget-object v1, p0, Lcom/join/mgps/dto/AppBean;->mod_info:Lcom/join/mgps/dto/ModInfoBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRef_crc_sign_id(Ljava/lang/String;)V

    .line 65
    :goto_2
    iget-object v1, p0, Lcom/join/mgps/dto/AppBean;->mod_info:Lcom/join/mgps/dto/ModInfoBean;

    invoke-static {v1}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setMod_info(Ljava/lang/String;)V

    .line 66
    :cond_5
    iget-object v1, p0, Lcom/join/mgps/dto/AppBean;->single_game_mod_info:Lcom/join/mgps/dto/SingleGameModInfoBean;

    if-eqz v1, :cond_6

    .line 67
    invoke-virtual {v1}, Lcom/join/mgps/dto/SingleGameModInfoBean;->getDownUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setResource_url_remote(Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/join/mgps/dto/AppBean;->single_game_mod_info:Lcom/join/mgps/dto/SingleGameModInfoBean;

    invoke-static {v1}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSingle_game_mod_info(Ljava/lang/String;)V

    :cond_6
    return-object v0
.end method

.method public getEdit_recommend()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->edit_recommend:Ljava/lang/String;

    return-object v0
.end method

.method public getFight_funv2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->fight_funv2:Ljava/lang/String;

    return-object v0
.end method

.method public getFight_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AppBean;->fight_type:I

    return v0
.end method

.method public getForum_id()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/AppBean;->forum_id:J

    return-wide v0
.end method

.method public getForum_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AppBean;->forum_switch:I

    return v0
.end method

.method public getGame_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->game_id:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_info_top_pic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->game_info_top_pic:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_info_tpl_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->game_info_tpl_type:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->game_name:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_open_time()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->game_open_time:Ljava/lang/String;

    return-object v0
.end method

.method public getGif_ico_remote()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->gif_ico_remote:Ljava/lang/String;

    return-object v0
.end method

.method public getGift_package_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AppBean;->gift_package_switch:I

    return v0
.end method

.method public getIco_remote()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->ico_remote:Ljava/lang/String;

    return-object v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->info:Ljava/lang/String;

    return-object v0
.end method

.method public getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;
    .locals 4
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/dto/AppBean;->game_info_tpl_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/dto/AppBean;->crc_sign_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 5
    iget v1, p0, Lcom/join/mgps/dto/AppBean;->sp_tpl_two_position:I

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setJump_type(I)V

    .line 6
    new-instance v1, Lcom/join/mgps/Util/IntentToDetialBean;

    invoke-direct {v1}, Lcom/join/mgps/Util/IntentToDetialBean;-><init>()V

    .line 7
    iget-object v2, p0, Lcom/join/mgps/dto/AppBean;->crc_sign_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentToDetialBean;->f(Ljava/lang/String;)V

    .line 8
    iget-object v2, p0, Lcom/join/mgps/dto/AppBean;->game_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentToDetialBean;->g(Ljava/lang/String;)V

    .line 9
    iget-object v2, p0, Lcom/join/mgps/dto/AppBean;->ico_remote:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentToDetialBean;->i(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 10
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentToDetialBean;->h(I)V

    .line 11
    new-instance v2, Lcom/join/mgps/dto/ExtBean;

    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/join/mgps/dto/ExtBean;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 12
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setObject(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getIs_bespeak()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AppBean;->is_bespeak:I

    return v0
.end method

.method public getIs_boot_commented()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AppBean;->is_boot_commented:I

    return v0
.end method

.method public getIs_fight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AppBean;->is_fight:I

    return v0
.end method

.method public getIs_network()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AppBean;->is_network:I

    return v0
.end method

.method public getIs_world()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AppBean;->is_world:I

    return v0
.end method

.method public getLock_sp()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AppBean;->lock_sp:I

    return v0
.end method

.method public getMax_an_compatible_ver()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AppBean;->max_an_compatible_ver:I

    return v0
.end method

.method public getMin_an_compatible_ver()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AppBean;->min_an_compatible_ver:I

    return v0
.end method

.method public getMod_info()Lcom/join/mgps/dto/ModInfoBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->mod_info:Lcom/join/mgps/dto/ModInfoBean;

    return-object v0
.end method

.method public getOther_down_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AppBean;->other_down_switch:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPapa_explain()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->papa_explain:Ljava/lang/String;

    return-object v0
.end method

.method public getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->pay_tag_info:Lcom/join/mgps/dto/PayTagInfo;

    return-object v0
.end method

.method public getPlugin_lowest_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->plugin_lowest_ver:Ljava/lang/String;

    return-object v0
.end method

.method public getPlugin_lowest_ver_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->plugin_lowest_ver_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPlugin_num()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->plugin_num:Ljava/lang/String;

    return-object v0
.end method

.method public getPlugin_screenshot()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AppBean;->plugin_screenshot:I

    return v0
.end method

.method public getResidual_time()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->residual_time:Ljava/lang/String;

    return-object v0
.end method

.method public getRom_lowest_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->rom_lowest_ver:Ljava/lang/String;

    return-object v0
.end method

.method public getScore()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->score:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenshot_pic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->screenshot_pic:Ljava/lang/String;

    return-object v0
.end method

.method public getSingle_game_mod_info()Lcom/join/mgps/dto/SingleGameModInfoBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->single_game_mod_info:Lcom/join/mgps/dto/SingleGameModInfoBean;

    return-object v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->size:Ljava/lang/String;

    return-object v0
.end method

.method public getSource_down_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->source_down_url:Ljava/lang/String;

    return-object v0
.end method

.method public getSource_lowest_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->source_lowest_ver:Ljava/lang/String;

    return-object v0
.end method

.method public getSource_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->source_ver:Ljava/lang/String;

    return-object v0
.end method

.method public getSource_ver_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->source_ver_name:Ljava/lang/String;

    return-object v0
.end method

.method public getSp_tag_info()Lcom/join/mgps/dto/TipNew;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->sp_tag_info:Lcom/join/mgps/dto/TipNew;

    return-object v0
.end method

.method public getSp_tpl_two_position()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AppBean;->sp_tpl_two_position:I

    return v0
.end method

.method public getSync_memory()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->sync_memory:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->tag_info:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->tp_down_url:Ljava/util/List;

    return-object v0
.end method

.method public getUnzip_size()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->unzip_size:Ljava/lang/String;

    return-object v0
.end method

.method public getVer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->ver:Ljava/lang/String;

    return-object v0
.end method

.method public getVer_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->ver_name:Ljava/lang/String;

    return-object v0
.end method

.method public getWorld_area()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AppBean;->world_area:I

    return v0
.end method

.method public getWorld_shop()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AppBean;->world_shop:I

    return v0
.end method

.method public setAllow_start_up_ad(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->allow_start_up_ad:Ljava/lang/String;

    return-void
.end method

.method public setAppSize(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->appSize:Ljava/lang/String;

    return-void
.end method

.method public setBespeak_count(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->bespeak_count:Ljava/lang/String;

    return-void
.end method

.method public setBespeak_switch(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AppBean;->bespeak_switch:I

    return-void
.end method

.method public setBespeak_time(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/AppBean;->bespeak_time:J

    return-void
.end method

.method public setButnShowType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AppBean;->butnShowType:I

    return-void
.end method

.method public setCdn_down_switch(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AppBean;->cdn_down_switch:I

    return-void
.end method

.method public setCfg_down_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->cfg_down_url:Ljava/lang/String;

    return-void
.end method

.method public setCfg_lowest_ver(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->cfg_lowest_ver:Ljava/lang/String;

    return-void
.end method

.method public setCfg_ver(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->cfg_ver:Ljava/lang/String;

    return-void
.end method

.method public setCfg_ver_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->cfg_ver_name:Ljava/lang/String;

    return-void
.end method

.method public setCompany_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->company_name:Ljava/lang/String;

    return-void
.end method

.method public setCrc_sign_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->crc_sign_id:Ljava/lang/String;

    return-void
.end method

.method public setDown_count(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AppBean;->down_count:I

    return-void
.end method

.method public setDown_status(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AppBean;->down_status:I

    return-void
.end method

.method public setDown_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AppBean;->down_type:I

    return-void
.end method

.method public setDown_url_remote(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->down_url_remote:Ljava/lang/String;

    return-void
.end method

.method public setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    return-void
.end method

.method public setDownloadType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AppBean;->downloadType:I

    return-void
.end method

.method public setDownload_original_switch(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->download_original_switch:Ljava/lang/String;

    return-void
.end method

.method public setDownload_outside_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->download_outside_url:Ljava/lang/String;

    return-void
.end method

.method public setDownload_source_switch_v1(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->download_source_switch_v1:Ljava/lang/String;

    return-void
.end method

.method public setDownload_source_switch_v2(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->download_source_switch_v2:Ljava/lang/String;

    return-void
.end method

.method public setDownload_source_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->download_source_url:Ljava/lang/String;

    return-void
.end method

.method public setEdit_recommend(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->edit_recommend:Ljava/lang/String;

    return-void
.end method

.method public setFight_funv2(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->fight_funv2:Ljava/lang/String;

    return-void
.end method

.method public setFight_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AppBean;->fight_type:I

    return-void
.end method

.method public setForum_id(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/AppBean;->forum_id:J

    return-void
.end method

.method public setForum_switch(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AppBean;->forum_switch:I

    return-void
.end method

.method public setGame_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->game_id:Ljava/lang/String;

    return-void
.end method

.method public setGame_info_top_pic(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->game_info_top_pic:Ljava/lang/String;

    return-void
.end method

.method public setGame_info_tpl_type(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->game_info_tpl_type:Ljava/lang/String;

    return-void
.end method

.method public setGame_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->game_name:Ljava/lang/String;

    return-void
.end method

.method public setGame_open_time(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->game_open_time:Ljava/lang/String;

    return-void
.end method

.method public setGif_ico_remote(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->gif_ico_remote:Ljava/lang/String;

    return-void
.end method

.method public setGift_package_switch(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AppBean;->gift_package_switch:I

    return-void
.end method

.method public setIco_remote(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->ico_remote:Ljava/lang/String;

    return-void
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->info:Ljava/lang/String;

    return-void
.end method

.method public setIs_bespeak(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AppBean;->is_bespeak:I

    return-void
.end method

.method public setIs_boot_commented(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AppBean;->is_boot_commented:I

    return-void
.end method

.method public setIs_fight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AppBean;->is_fight:I

    return-void
.end method

.method public setIs_network(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AppBean;->is_network:I

    return-void
.end method

.method public setIs_world(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AppBean;->is_world:I

    return-void
.end method

.method public setLock_sp(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AppBean;->lock_sp:I

    return-void
.end method

.method public setMax_an_compatible_ver(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AppBean;->max_an_compatible_ver:I

    return-void
.end method

.method public setMin_an_compatible_ver(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AppBean;->min_an_compatible_ver:I

    return-void
.end method

.method public setMod_info(Lcom/join/mgps/dto/ModInfoBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->mod_info:Lcom/join/mgps/dto/ModInfoBean;

    return-void
.end method

.method public setOther_down_switch(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AppBean;->other_down_switch:I

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setPapa_explain(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->papa_explain:Ljava/lang/String;

    return-void
.end method

.method public setPay_tag_info(Lcom/join/mgps/dto/PayTagInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->pay_tag_info:Lcom/join/mgps/dto/PayTagInfo;

    return-void
.end method

.method public setPlugin_lowest_ver(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->plugin_lowest_ver:Ljava/lang/String;

    return-void
.end method

.method public setPlugin_lowest_ver_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->plugin_lowest_ver_name:Ljava/lang/String;

    return-void
.end method

.method public setPlugin_num(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->plugin_num:Ljava/lang/String;

    return-void
.end method

.method public setPlugin_screenshot(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AppBean;->plugin_screenshot:I

    return-void
.end method

.method public setResidual_time(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->residual_time:Ljava/lang/String;

    return-void
.end method

.method public setRom_lowest_ver(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->rom_lowest_ver:Ljava/lang/String;

    return-void
.end method

.method public setScore(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->score:Ljava/lang/String;

    return-void
.end method

.method public setScreenshot_pic(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->screenshot_pic:Ljava/lang/String;

    return-void
.end method

.method public setSingle_game_mod_info(Lcom/join/mgps/dto/SingleGameModInfoBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->single_game_mod_info:Lcom/join/mgps/dto/SingleGameModInfoBean;

    return-void
.end method

.method public setSize(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->size:Ljava/lang/String;

    return-void
.end method

.method public setSource_down_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->source_down_url:Ljava/lang/String;

    return-void
.end method

.method public setSource_lowest_ver(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->source_lowest_ver:Ljava/lang/String;

    return-void
.end method

.method public setSource_ver(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->source_ver:Ljava/lang/String;

    return-void
.end method

.method public setSource_ver_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->source_ver_name:Ljava/lang/String;

    return-void
.end method

.method public setSp_tag_info(Lcom/join/mgps/dto/TipNew;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->sp_tag_info:Lcom/join/mgps/dto/TipNew;

    return-void
.end method

.method public setSp_tpl_two_position(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AppBean;->sp_tpl_two_position:I

    return-void
.end method

.method public setSync_memory(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->sync_memory:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->tag_info:Ljava/util/ArrayList;

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
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->tp_down_url:Ljava/util/List;

    return-void
.end method

.method public setUnzip_size(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->unzip_size:Ljava/lang/String;

    return-void
.end method

.method public setVer(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->ver:Ljava/lang/String;

    return-void
.end method

.method public setVer_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->ver_name:Ljava/lang/String;

    return-void
.end method

.method public setWorld_area(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AppBean;->world_area:I

    return-void
.end method

.method public setWorld_shop(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AppBean;->world_shop:I

    return-void
.end method
