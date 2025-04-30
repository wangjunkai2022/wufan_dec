.class public Lcom/join/mgps/dto/CollectionBeanSub;
.super Lcom/join/mgps/dto/DownloadPointBase;
.source "CollectionBeanSub.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dto/CollectionBeanSub$GameTagInfoBean;,
        Lcom/join/mgps/dto/CollectionBeanSub$GameTagInfo;
    }
.end annotation


# instance fields
.field private actual_size:J

.field private allow_start_up_ad:Ljava/lang/String;

.field private appSize:Ljava/lang/String;

.field private battle_upload_pic:Ljava/lang/String;

.field private bespeak_switch:I

.field private cdn_down_switch:I

.field private cfg_down_url:Ljava/lang/String;

.field private cfg_lowest_ver:Ljava/lang/String;

.field private cfg_ver:Ljava/lang/String;

.field private cfg_ver_name:Ljava/lang/String;

.field private collection_game_describe:Ljava/lang/String;

.field private crc_sign_id:Ljava/lang/String;

.field private customer_info:Ljava/lang/String;

.field private down_count:I

.field private down_status:I

.field private down_url_remote:Ljava/lang/String;

.field private downloadType:I

.field private download_original_switch:Ljava/lang/String;

.field private download_outside_url:Ljava/lang/String;

.field private download_source_switch_v1:Ljava/lang/String;

.field private download_source_switch_v2:Ljava/lang/String;

.field private download_source_url:Ljava/lang/String;

.field private edit_recommend:Ljava/lang/String;

.field private fight_funv2:Ljava/lang/String;

.field private fight_screenshot_pic:Ljava/lang/String;

.field private fight_type:I

.field private first_hot_comment:Ljava/lang/String;

.field private forum_id:J

.field private forum_switch:I

.field private game_dimension:Ljava/lang/String;

.field private game_id:Ljava/lang/String;

.field private game_info_top_pic:Ljava/lang/String;

.field private game_info_top_video_url:Ljava/lang/String;

.field private game_info_tpl_type:Ljava/lang/String;

.field private game_name:Ljava/lang/String;

.field private game_open_time:Ljava/lang/String;

.field private gif_ico_remote:Ljava/lang/String;

.field private gift_package_switch:I

.field private ico_remote:Ljava/lang/String;

.field private index:I

.field private info:Ljava/lang/String;

.field private isAd:Z

.field private is_fight:I

.field private is_network:I

.field private is_world:I

.field private lock_sp:I

.field private max_an_compatible_ver:I

.field private min_an_compatible_ver:I

.field private mod_info:Lcom/join/mgps/dto/ModInfoBean;

.field private other_down_switch:I

.field private packageName:Ljava/lang/String;

.field private package_name:Ljava/lang/String;

.field private papa_explain:Ljava/lang/String;

.field pay_tag_info:Lcom/join/mgps/dto/PayTagInfo;

.field private pic_info:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DetialShowImageBean;",
            ">;"
        }
    .end annotation
.end field

.field private pic_position:I

.field private plugin_lowest_ver:Ljava/lang/String;

.field private plugin_lowest_ver_name:Ljava/lang/String;

.field private plugin_num:Ljava/lang/String;

.field private plugin_screenshot:I

.field private rec_game_tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecGameTagBean;",
            ">;"
        }
    .end annotation
.end field

.field private recommend_game_big_gif:Ljava/lang/String;

.field private recommend_game_big_pic:Ljava/lang/String;

.field private resourceSize:J

.field private resourceUrl:Ljava/lang/String;

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

.field private vedio_cover_pic:Ljava/lang/String;

.field private vedio_url:Ljava/lang/String;

.field private ver:Ljava/lang/String;

.field private ver_name:Ljava/lang/String;

.field private viewType:I

.field private world_area:I

.field private world_shop:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/dto/DownloadPointBase;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->plugin_num:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/join/mgps/dto/CollectionBeanSub;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/dto/DownloadPointBase;-><init>()V

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->plugin_num:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->game_id:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->crc_sign_id:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->game_name:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCfg_ver_name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->cfg_ver_name:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCfg_ver()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->cfg_ver:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCfg_down_url()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->cfg_down_url:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCustomer_info()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->customer_info:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getScreenshot_pic()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->screenshot_pic:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->ico_remote:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackage_name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->package_name:Ljava/lang/String;

    .line 15
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->package_name:Ljava/lang/String;

    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_url_remote()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->down_url_remote:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getInfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->info:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getSize()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->size:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer_name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->ver_name:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->ver:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->plugin_num:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getIs_world()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->is_world:I

    .line 24
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getIs_network()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->is_network:I

    .line 25
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getSource_ver_name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->source_ver_name:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getSource_ver()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->source_ver:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getSource_down_url()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->source_down_url:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPlugin_screenshot()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->plugin_screenshot:I

    .line 29
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getForum_switch()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->forum_switch:I

    .line 30
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getForum_id()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->forum_id:J

    .line 31
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getWorld_shop()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->world_shop:I

    .line 32
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getWorld_area()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->world_area:I

    .line 33
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getIs_fight()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->is_fight:I

    .line 34
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getFight_type()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->fight_type:I

    .line 35
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getFight_funv2()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->fight_funv2:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPlugin_lowest_ver_name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->plugin_lowest_ver_name:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPlugin_lowest_ver()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->plugin_lowest_ver:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getFight_screenshot_pic()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->fight_screenshot_pic:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getRom_lowest_ver()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->rom_lowest_ver:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getSource_lowest_ver()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->source_lowest_ver:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCfg_lowest_ver()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->cfg_lowest_ver:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_info_tpl_type()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->game_info_tpl_type:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPapa_explain()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->papa_explain:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getEdit_recommend()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->edit_recommend:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCdn_down_switch()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->cdn_down_switch:I

    .line 46
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getOther_down_switch()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->other_down_switch:I

    .line 47
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getLock_sp()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->lock_sp:I

    .line 48
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getUnzip_size()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->unzip_size:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->tag_info:Ljava/util/ArrayList;

    .line 50
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getTp_down_url()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->tp_down_url:Ljava/util/List;

    .line 51
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getSync_memory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->sync_memory:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGift_package_switch()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->gift_package_switch:I

    .line 53
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_status()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->down_status:I

    .line 54
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_open_time()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->game_open_time:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getActual_size()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->actual_size:J

    .line 56
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tpl_two_position()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->sp_tpl_two_position:I

    .line 57
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_count()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->down_count:I

    .line 58
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->sp_tag_info:Lcom/join/mgps/dto/TipNew;

    .line 59
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_info_top_pic()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->game_info_top_pic:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_info_top_video_url()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->game_info_top_video_url:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCollection_game_describe()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->collection_game_describe:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getScore()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->score:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->pay_tag_info:Lcom/join/mgps/dto/PayTagInfo;

    .line 64
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->pic_info:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->pic_info:Ljava/util/List;

    .line 65
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPic_info()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 66
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->pic_info:Ljava/util/List;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPic_info()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 67
    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPic_position()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->pic_position:I

    .line 68
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getVedio_url()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->vedio_url:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getVedio_cover_pic()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->vedio_cover_pic:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getViewType()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->viewType:I

    .line 71
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getDownload_source_url()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->download_source_url:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getDownload_outside_url()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->download_outside_url:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getDownload_original_switch()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->download_original_switch:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getDownload_source_switch_v1()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->download_source_switch_v1:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getDownload_source_switch_v2()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->download_source_switch_v2:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getAllow_start_up_ad()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->allow_start_up_ad:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getMin_an_compatible_ver()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->min_an_compatible_ver:I

    .line 78
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getMax_an_compatible_ver()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->max_an_compatible_ver:I

    .line 79
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->mod_info:Lcom/join/mgps/dto/ModInfoBean;

    .line 80
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getIndex()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->index:I

    .line 81
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getSingle_game_mod_info()Lcom/join/mgps/dto/SingleGameModInfoBean;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->single_game_mod_info:Lcom/join/mgps/dto/SingleGameModInfoBean;

    .line 82
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_dimension()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->game_dimension:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGif_ico_remote()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->gif_ico_remote:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->get_from()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 85
    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 86
    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->getReMarks()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/dto/DownloadPointBase;->setReMarks(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->getNodeId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/dto/DownloadPointBase;->setNodeId(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getRec_game_tags()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/dto/CollectionBeanSub;->setRec_game_tags(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getActual_size()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->actual_size:J

    return-wide v0
.end method

.method public getAllow_start_up_ad()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->allow_start_up_ad:Ljava/lang/String;

    return-object v0
.end method

.method public getAppSize()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->appSize:Ljava/lang/String;

    return-object v0
.end method

.method public getBattle_upload_pic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->battle_upload_pic:Ljava/lang/String;

    return-object v0
.end method

.method public getBespeak_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->bespeak_switch:I

    return v0
.end method

.method public getCdn_down_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->cdn_down_switch:I

    return v0
.end method

.method public getCfg_down_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->cfg_down_url:Ljava/lang/String;

    return-object v0
.end method

.method public getCfg_lowest_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->cfg_lowest_ver:Ljava/lang/String;

    return-object v0
.end method

.method public getCfg_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->cfg_ver:Ljava/lang/String;

    return-object v0
.end method

.method public getCfg_ver_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->cfg_ver_name:Ljava/lang/String;

    return-object v0
.end method

.method public getCollection_game_describe()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->collection_game_describe:Ljava/lang/String;

    return-object v0
.end method

.method public getCrc_sign_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->crc_sign_id:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->game_id:Ljava/lang/String;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->crc_sign_id:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomer_info()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->customer_info:Ljava/lang/String;

    return-object v0
.end method

.method public getDown_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->down_count:I

    return v0
.end method

.method public getDown_status()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->down_status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->bespeak_switch:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x6

    :cond_0
    return v0
.end method

.method public getDown_url_remote()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->down_url_remote:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->downloadType:I

    return v0
.end method

.method public getDownload_original_switch()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->download_original_switch:Ljava/lang/String;

    return-object v0
.end method

.method public getDownload_outside_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->download_outside_url:Ljava/lang/String;

    return-object v0
.end method

.method public getDownload_source_switch_v1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->download_source_switch_v1:Ljava/lang/String;

    return-object v0
.end method

.method public getDownload_source_switch_v2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->download_source_switch_v2:Ljava/lang/String;

    return-object v0
.end method

.method public getDownload_source_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->download_source_url:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 4

    .line 1
    new-instance v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;-><init>()V

    .line 2
    iget v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->down_status:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->bespeak_switch:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v1, 0x6

    .line 3
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDown_status(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDown_status(I)V

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->package_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPackageName(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->ico_remote:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPortraitURL(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->game_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setShowName(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->down_url_remote:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->tag_info:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setTipBeans(Ljava/util/ArrayList;)V

    .line 10
    iget-object v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->game_id:Ljava/lang/String;

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    iget-object v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->game_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCrc_link_type_val(Ljava/lang/String;)V

    goto :goto_1

    .line 12
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->crc_sign_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 13
    :goto_1
    iget-object v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->ver:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 14
    iget-object v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->ver_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 15
    iget-object v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->plugin_num:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRomType(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 17
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->info:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDescribe(Ljava/lang/String;)V

    .line 18
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->size:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setShowSize(Ljava/lang/String;)V

    .line 19
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->cfg_ver:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver(Ljava/lang/String;)V

    .line 20
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->cfg_ver_name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver_name(Ljava/lang/String;)V

    .line 21
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->cfg_down_url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_down_url(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownloadType(I)V

    .line 23
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->screenshot_pic:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setScreenshot_pic(Ljava/lang/String;)V

    .line 24
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->plugin_num:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPlugin_num(Ljava/lang/String;)V

    .line 25
    iget v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->is_world:I

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setIs_world(I)V

    .line 26
    iget v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->is_network:I

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setIs_network(I)V

    .line 27
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->source_ver:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSource_ver(Ljava/lang/String;)V

    .line 28
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->source_ver_name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSource_ver_name(Ljava/lang/String;)V

    .line 29
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->source_down_url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSource_down_url(Ljava/lang/String;)V

    .line 30
    iget v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->plugin_screenshot:I

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPlugin_screenshot(I)V

    .line 31
    iget v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->forum_switch:I

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPlugin_area(I)V

    .line 32
    iget-wide v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->forum_id:J

    invoke-virtual {v0, v2, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPlugin_area_val(J)V

    .line 33
    iget v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->world_shop:I

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setWorld_shop(I)V

    .line 34
    iget v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->world_area:I

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setWorld_area(I)V

    .line 35
    iget v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->is_fight:I

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setIs_fight(I)V

    .line 36
    iget v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->fight_type:I

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFight_type(I)V

    .line 37
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->fight_funv2:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFight_fun(Ljava/lang/String;)V

    .line 38
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->fight_screenshot_pic:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFight_screenshot_pic(Ljava/lang/String;)V

    .line 39
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->game_info_tpl_type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGame_info_tpl_type(Ljava/lang/String;)V

    .line 40
    iget v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->lock_sp:I

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setLock_sp(I)V

    .line 41
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->unzip_size:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUnzip_size(Ljava/lang/String;)V

    .line 42
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->sync_memory:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSync_memory(Ljava/lang/String;)V

    .line 43
    iget v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->gift_package_switch:I

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGift_package_switch(I)V

    .line 44
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->battle_upload_pic:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setBattle_upload_pic(Ljava/lang/String;)V

    .line 45
    iget-wide v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->actual_size:J

    invoke-virtual {v0, v2, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setActual_size(J)V

    .line 46
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->game_info_top_pic:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGame_info_top_pic(Ljava/lang/String;)V

    .line 47
    iget v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->sp_tpl_two_position:I

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSp_tpl_two_position(I)V

    .line 48
    iget v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->down_count:I

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDown_count(I)V

    .line 49
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->sp_tag_info:Lcom/join/mgps/dto/TipNew;

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSp_tag_info(Lcom/join/mgps/dto/TipNew;)V

    .line 50
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->score:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setScore(Ljava/lang/String;)V

    .line 51
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->pay_tag_info:Lcom/join/mgps/dto/PayTagInfo;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/join/mgps/dto/PayTagInfo;->getPay_game_amount()I

    move-result v1

    :cond_2
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPay_game_amount(I)V

    .line 52
    iget-object v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->download_source_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_source_url(Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->download_outside_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_outside_url(Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->download_original_switch:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_original_switch(Ljava/lang/String;)V

    .line 55
    iget-object v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->download_source_switch_v1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_source_switch_v1(Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->download_source_switch_v2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_source_switch_v2(Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->allow_start_up_ad:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setAllow_start_up_ad(Ljava/lang/String;)V

    .line 58
    iget-wide v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->resourceSize:J

    invoke-virtual {v0, v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRes_actual_size(J)V

    .line 59
    iget-object v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->resourceUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 60
    iget-object v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->resourceUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setResource_url_remote(Ljava/lang/String;)V

    goto :goto_2

    .line 61
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->cfg_down_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setResource_url_remote(Ljava/lang/String;)V

    .line 62
    :goto_2
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->get_from()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from(I)V

    .line 63
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from_type(I)V

    .line 64
    iget v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->min_an_compatible_ver:I

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setMin_an_compatible_ver(I)V

    .line 65
    iget v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->max_an_compatible_ver:I

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setMax_an_compatible_ver(I)V

    .line 66
    iget-wide v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->actual_size:J

    invoke-virtual {v0, v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setActual_size(J)V

    .line 67
    iget-object v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->mod_info:Lcom/join/mgps/dto/ModInfoBean;

    if-eqz v1, :cond_5

    .line 68
    invoke-virtual {v1}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->crc_sign_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 69
    iget-object v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->mod_info:Lcom/join/mgps/dto/ModInfoBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ModInfoBean;->getDown_url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setResource_url_remote(Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->mod_info:Lcom/join/mgps/dto/ModInfoBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ModInfoBean;->getMain_game_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRef_crc_sign_id(Ljava/lang/String;)V

    goto :goto_3

    .line 71
    :cond_4
    iget-object v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->mod_info:Lcom/join/mgps/dto/ModInfoBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRef_crc_sign_id(Ljava/lang/String;)V

    .line 72
    :goto_3
    iget-object v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->mod_info:Lcom/join/mgps/dto/ModInfoBean;

    invoke-static {v1}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setMod_info(Ljava/lang/String;)V

    .line 73
    :cond_5
    iget-object v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->single_game_mod_info:Lcom/join/mgps/dto/SingleGameModInfoBean;

    if-eqz v1, :cond_6

    .line 74
    invoke-virtual {v1}, Lcom/join/mgps/dto/SingleGameModInfoBean;->getDownUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setResource_url_remote(Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->single_game_mod_info:Lcom/join/mgps/dto/SingleGameModInfoBean;

    invoke-static {v1}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSingle_game_mod_info(Ljava/lang/String;)V

    .line 76
    :cond_6
    new-instance v1, Lcom/join/mgps/dto/ExtBean;

    invoke-direct {v1}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->get_from()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->set_from_type(I)Lcom/join/mgps/dto/ExtBean;

    .line 79
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->getRecPosition()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setRecPosition(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 80
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->getReMarks()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setReMarks(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 81
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->getNodeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setNodeId(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->getPosition_path()Lcom/psk/eventmodule/StatFactory$VolcanoOther;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->getPosition_path()Lcom/psk/eventmodule/StatFactory$VolcanoOther;

    move-result-object v2

    invoke-static {v2}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :cond_7
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/ExtBean;->setVolcanoOther(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 83
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->tag_info:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/join/mgps/Util/UtilsMy;->F1(Ljava/util/List;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setOnlineGame(Z)Lcom/join/mgps/dto/ExtBean;

    .line 84
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->getReMarks()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setReMarks(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 85
    invoke-static {v1}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setExt(Ljava/lang/String;)V

    return-object v0
.end method

.method public getEdit_recommend()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->edit_recommend:Ljava/lang/String;

    return-object v0
.end method

.method public getFight_funv2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->fight_funv2:Ljava/lang/String;

    return-object v0
.end method

.method public getFight_screenshot_pic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->fight_screenshot_pic:Ljava/lang/String;

    return-object v0
.end method

.method public getFight_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->fight_type:I

    return v0
.end method

.method public getFirst_hot_comment()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->first_hot_comment:Ljava/lang/String;

    return-object v0
.end method

.method public getForum_id()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->forum_id:J

    return-wide v0
.end method

.method public getForum_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->forum_switch:I

    return v0
.end method

.method public getGame_dimension()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->game_dimension:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->game_id:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->crc_sign_id:Ljava/lang/String;

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->game_id:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_info_top_pic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->game_info_top_pic:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_info_top_video_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->game_info_top_video_url:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_info_tpl_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->game_info_tpl_type:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->game_name:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_open_time()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->game_open_time:Ljava/lang/String;

    return-object v0
.end method

.method public getGif_ico_remote()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->gif_ico_remote:Ljava/lang/String;

    return-object v0
.end method

.method public getGift_package_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->gift_package_switch:I

    return v0
.end method

.method public getIco_remote()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->ico_remote:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->index:I

    return v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->info:Ljava/lang/String;

    return-object v0
.end method

.method public getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->game_info_tpl_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->game_id:Ljava/lang/String;

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->game_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->crc_sign_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 7
    :goto_0
    iget v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->sp_tpl_two_position:I

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setJump_type(I)V

    .line 8
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

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->getPosition_path()Lcom/psk/eventmodule/StatFactory$VolcanoOther;

    move-result-object v2

    invoke-static {v2}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-string v2, ""

    :goto_1
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setVolcanoOther(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->tag_info:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/join/mgps/Util/UtilsMy;->F1(Ljava/util/List;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setOnlineGame(Z)Lcom/join/mgps/dto/ExtBean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 9
    new-instance v1, Lcom/join/mgps/Util/IntentToDetialBean;

    invoke-direct {v1}, Lcom/join/mgps/Util/IntentToDetialBean;-><init>()V

    .line 10
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->game_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentToDetialBean;->f(Ljava/lang/String;)V

    .line 11
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->game_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentToDetialBean;->g(Ljava/lang/String;)V

    .line 12
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->ico_remote:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentToDetialBean;->i(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 13
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentToDetialBean;->h(I)V

    .line 14
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setObject(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getIs_fight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->is_fight:I

    return v0
.end method

.method public getIs_network()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->is_network:I

    return v0
.end method

.method public getIs_world()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->is_world:I

    return v0
.end method

.method public getLock_sp()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->lock_sp:I

    return v0
.end method

.method public getMax_an_compatible_ver()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->max_an_compatible_ver:I

    return v0
.end method

.method public getMin_an_compatible_ver()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->min_an_compatible_ver:I

    return v0
.end method

.method public getMod_info()Lcom/join/mgps/dto/ModInfoBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->mod_info:Lcom/join/mgps/dto/ModInfoBean;

    return-object v0
.end method

.method public getOther_down_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->other_down_switch:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackage_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->package_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPapa_explain()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->papa_explain:Ljava/lang/String;

    return-object v0
.end method

.method public getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->pay_tag_info:Lcom/join/mgps/dto/PayTagInfo;

    return-object v0
.end method

.method public getPic_info()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DetialShowImageBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->pic_info:Ljava/util/List;

    return-object v0
.end method

.method public getPic_position()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->pic_position:I

    return v0
.end method

.method public getPlugin_lowest_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->plugin_lowest_ver:Ljava/lang/String;

    return-object v0
.end method

.method public getPlugin_lowest_ver_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->plugin_lowest_ver_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPlugin_num()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->plugin_num:Ljava/lang/String;

    return-object v0
.end method

.method public getPlugin_screenshot()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->plugin_screenshot:I

    return v0
.end method

.method public getRec_game_tags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecGameTagBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->rec_game_tags:Ljava/util/List;

    return-object v0
.end method

.method public getRecommend_game_big_gif()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->recommend_game_big_gif:Ljava/lang/String;

    return-object v0
.end method

.method public getRecommend_game_big_pic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->recommend_game_big_pic:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->resourceSize:J

    return-wide v0
.end method

.method public getResourceUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->resourceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRom_lowest_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->rom_lowest_ver:Ljava/lang/String;

    return-object v0
.end method

.method public getScore()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->score:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenshot_pic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->screenshot_pic:Ljava/lang/String;

    return-object v0
.end method

.method public getSingle_game_mod_info()Lcom/join/mgps/dto/SingleGameModInfoBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->single_game_mod_info:Lcom/join/mgps/dto/SingleGameModInfoBean;

    return-object v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->size:Ljava/lang/String;

    return-object v0
.end method

.method public getSource_down_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->source_down_url:Ljava/lang/String;

    return-object v0
.end method

.method public getSource_lowest_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->source_lowest_ver:Ljava/lang/String;

    return-object v0
.end method

.method public getSource_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->source_ver:Ljava/lang/String;

    return-object v0
.end method

.method public getSource_ver_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->source_ver_name:Ljava/lang/String;

    return-object v0
.end method

.method public getSp_tag_info()Lcom/join/mgps/dto/TipNew;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->sp_tag_info:Lcom/join/mgps/dto/TipNew;

    return-object v0
.end method

.method public getSp_tpl_two_position()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->sp_tpl_two_position:I

    return v0
.end method

.method public getSync_memory()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->sync_memory:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->tag_info:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->tp_down_url:Ljava/util/List;

    return-object v0
.end method

.method public getUnzip_size()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->unzip_size:Ljava/lang/String;

    return-object v0
.end method

.method public getVedio_cover_pic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->vedio_cover_pic:Ljava/lang/String;

    return-object v0
.end method

.method public getVedio_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->vedio_url:Ljava/lang/String;

    return-object v0
.end method

.method public getVer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->ver:Ljava/lang/String;

    return-object v0
.end method

.method public getVer_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->ver_name:Ljava/lang/String;

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->viewType:I

    return v0
.end method

.method public getWorld_area()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->world_area:I

    return v0
.end method

.method public getWorld_shop()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->world_shop:I

    return v0
.end method

.method public isAd()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->isAd:Z

    return v0
.end method

.method public setActual_size(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->actual_size:J

    return-void
.end method

.method public setAd(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->isAd:Z

    return-void
.end method

.method public setAllow_start_up_ad(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->allow_start_up_ad:Ljava/lang/String;

    return-void
.end method

.method public setAppSize(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->appSize:Ljava/lang/String;

    return-void
.end method

.method public setBattle_upload_pic(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->battle_upload_pic:Ljava/lang/String;

    return-void
.end method

.method public setBespeak_switch(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->bespeak_switch:I

    return-void
.end method

.method public setCdn_down_switch(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->cdn_down_switch:I

    return-void
.end method

.method public setCfg_down_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->cfg_down_url:Ljava/lang/String;

    return-void
.end method

.method public setCfg_lowest_ver(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->cfg_lowest_ver:Ljava/lang/String;

    return-void
.end method

.method public setCfg_ver(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->cfg_ver:Ljava/lang/String;

    return-void
.end method

.method public setCfg_ver_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->cfg_ver_name:Ljava/lang/String;

    return-void
.end method

.method public setCollection_game_describe(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->collection_game_describe:Ljava/lang/String;

    return-void
.end method

.method public setCrc_sign_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->crc_sign_id:Ljava/lang/String;

    return-void
.end method

.method public setCustomer_info(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->customer_info:Ljava/lang/String;

    return-void
.end method

.method public setDown_count(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->down_count:I

    return-void
.end method

.method public setDown_status(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->down_status:I

    return-void
.end method

.method public setDown_url_remote(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->down_url_remote:Ljava/lang/String;

    return-void
.end method

.method public setDownloadType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->downloadType:I

    return-void
.end method

.method public setDownload_original_switch(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->download_original_switch:Ljava/lang/String;

    return-void
.end method

.method public setDownload_outside_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->download_outside_url:Ljava/lang/String;

    return-void
.end method

.method public setDownload_source_switch_v1(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->download_source_switch_v1:Ljava/lang/String;

    return-void
.end method

.method public setDownload_source_switch_v2(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->download_source_switch_v2:Ljava/lang/String;

    return-void
.end method

.method public setDownload_source_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->download_source_url:Ljava/lang/String;

    return-void
.end method

.method public setEdit_recommend(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->edit_recommend:Ljava/lang/String;

    return-void
.end method

.method public setFight_funv2(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->fight_funv2:Ljava/lang/String;

    return-void
.end method

.method public setFight_screenshot_pic(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->fight_screenshot_pic:Ljava/lang/String;

    return-void
.end method

.method public setFight_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->fight_type:I

    return-void
.end method

.method public setFirst_hot_comment(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->first_hot_comment:Ljava/lang/String;

    return-void
.end method

.method public setForum_id(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->forum_id:J

    return-void
.end method

.method public setForum_switch(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->forum_switch:I

    return-void
.end method

.method public setGame_dimension(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->game_dimension:Ljava/lang/String;

    return-void
.end method

.method public setGame_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->game_id:Ljava/lang/String;

    return-void
.end method

.method public setGame_info_top_pic(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->game_info_top_pic:Ljava/lang/String;

    return-void
.end method

.method public setGame_info_top_video_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->game_info_top_video_url:Ljava/lang/String;

    return-void
.end method

.method public setGame_info_tpl_type(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->game_info_tpl_type:Ljava/lang/String;

    return-void
.end method

.method public setGame_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->game_name:Ljava/lang/String;

    return-void
.end method

.method public setGame_open_time(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->game_open_time:Ljava/lang/String;

    return-void
.end method

.method public setGif_ico_remote(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->gif_ico_remote:Ljava/lang/String;

    return-void
.end method

.method public setGift_package_switch(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->gift_package_switch:I

    return-void
.end method

.method public setIco_remote(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->ico_remote:Ljava/lang/String;

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->index:I

    return-void
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->info:Ljava/lang/String;

    return-void
.end method

.method public setIs_fight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->is_fight:I

    return-void
.end method

.method public setIs_network(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->is_network:I

    return-void
.end method

.method public setIs_world(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->is_world:I

    return-void
.end method

.method public setLock_sp(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->lock_sp:I

    return-void
.end method

.method public setMax_an_compatible_ver(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->max_an_compatible_ver:I

    return-void
.end method

.method public setMin_an_compatible_ver(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->min_an_compatible_ver:I

    return-void
.end method

.method public setMod_info(Lcom/join/mgps/dto/ModInfoBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->mod_info:Lcom/join/mgps/dto/ModInfoBean;

    return-void
.end method

.method public setOther_down_switch(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->other_down_switch:I

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setPackage_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->package_name:Ljava/lang/String;

    return-void
.end method

.method public setPapa_explain(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->papa_explain:Ljava/lang/String;

    return-void
.end method

.method public setPay_tag_info(Lcom/join/mgps/dto/PayTagInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->pay_tag_info:Lcom/join/mgps/dto/PayTagInfo;

    return-void
.end method

.method public setPic_info(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DetialShowImageBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->pic_info:Ljava/util/List;

    return-void
.end method

.method public setPic_position(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->pic_position:I

    return-void
.end method

.method public setPlugin_lowest_ver(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->plugin_lowest_ver:Ljava/lang/String;

    return-void
.end method

.method public setPlugin_lowest_ver_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->plugin_lowest_ver_name:Ljava/lang/String;

    return-void
.end method

.method public setPlugin_num(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->plugin_num:Ljava/lang/String;

    return-void
.end method

.method public setPlugin_screenshot(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->plugin_screenshot:I

    return-void
.end method

.method public setRec_game_tags(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecGameTagBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->rec_game_tags:Ljava/util/List;

    return-void
.end method

.method public setRecommend_game_big_gif(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->recommend_game_big_gif:Ljava/lang/String;

    return-void
.end method

.method public setRecommend_game_big_pic(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->recommend_game_big_pic:Ljava/lang/String;

    return-void
.end method

.method public setResourceSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->resourceSize:J

    return-void
.end method

.method public setResourceUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->resourceUrl:Ljava/lang/String;

    return-void
.end method

.method public setRom_lowest_ver(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->rom_lowest_ver:Ljava/lang/String;

    return-void
.end method

.method public setScore(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->score:Ljava/lang/String;

    return-void
.end method

.method public setScreenshot_pic(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->screenshot_pic:Ljava/lang/String;

    return-void
.end method

.method public setSingle_game_mod_info(Lcom/join/mgps/dto/SingleGameModInfoBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->single_game_mod_info:Lcom/join/mgps/dto/SingleGameModInfoBean;

    return-void
.end method

.method public setSize(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->size:Ljava/lang/String;

    return-void
.end method

.method public setSource_down_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->source_down_url:Ljava/lang/String;

    return-void
.end method

.method public setSource_lowest_ver(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->source_lowest_ver:Ljava/lang/String;

    return-void
.end method

.method public setSource_ver(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->source_ver:Ljava/lang/String;

    return-void
.end method

.method public setSource_ver_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->source_ver_name:Ljava/lang/String;

    return-void
.end method

.method public setSp_tag_info(Lcom/join/mgps/dto/TipNew;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->sp_tag_info:Lcom/join/mgps/dto/TipNew;

    return-void
.end method

.method public setSp_tpl_two_position(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->sp_tpl_two_position:I

    return-void
.end method

.method public setSync_memory(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->sync_memory:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->tag_info:Ljava/util/ArrayList;

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
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->tp_down_url:Ljava/util/List;

    return-void
.end method

.method public setUnzip_size(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->unzip_size:Ljava/lang/String;

    return-void
.end method

.method public setVedio_cover_pic(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->vedio_cover_pic:Ljava/lang/String;

    return-void
.end method

.method public setVedio_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->vedio_url:Ljava/lang/String;

    return-void
.end method

.method public setVer(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->ver:Ljava/lang/String;

    return-void
.end method

.method public setVer_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->ver_name:Ljava/lang/String;

    return-void
.end method

.method public setViewType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->viewType:I

    return-void
.end method

.method public setWorld_area(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->world_area:I

    return-void
.end method

.method public setWorld_shop(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->world_shop:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CollectionBeanSub{game_id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->game_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", crc_sign_id=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->crc_sign_id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", game_name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->game_name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", cfg_ver_name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->cfg_ver_name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", cfg_ver=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->cfg_ver:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", cfg_down_url=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->cfg_down_url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", screenshot_pic=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->screenshot_pic:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", ico_remote=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->ico_remote:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", package_name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->package_name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", down_url_remote=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->down_url_remote:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", info=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->info:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", size=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->size:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", actual_size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->actual_size:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", ver_name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->ver_name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", ver=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->ver:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", plugin_num=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->plugin_num:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", is_world="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->is_world:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", is_network="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->is_network:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", source_ver_name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->source_ver_name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", source_ver=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->source_ver:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", source_down_url=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->source_down_url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", plugin_screenshot="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->plugin_screenshot:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", forum_switch="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->forum_switch:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", forum_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->forum_id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", world_shop="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->world_shop:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", world_area="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->world_area:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", is_fight="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->is_fight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", fight_type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->fight_type:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", fight_funv2=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->fight_funv2:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", plugin_lowest_ver_name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->plugin_lowest_ver_name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", plugin_lowest_ver=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->plugin_lowest_ver:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", fight_screenshot_pic=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->fight_screenshot_pic:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", rom_lowest_ver=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->rom_lowest_ver:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", source_lowest_ver=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->source_lowest_ver:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", cfg_lowest_ver=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->cfg_lowest_ver:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", game_info_tpl_type=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->game_info_tpl_type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", papa_explain=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->papa_explain:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", edit_recommend=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->edit_recommend:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", cdn_down_switch="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->cdn_down_switch:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", other_down_switch="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->other_down_switch:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", lock_sp="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->lock_sp:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", sp_tpl_two_position="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->sp_tpl_two_position:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", unzip_size=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->unzip_size:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", tag_info="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->tag_info:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", sp_tag_info="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->sp_tag_info:Lcom/join/mgps/dto/TipNew;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", tp_down_url="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->tp_down_url:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", sync_memory=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->sync_memory:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", gift_package_switch="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->gift_package_switch:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", down_status="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->down_status:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", battle_upload_pic=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->battle_upload_pic:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", game_open_time=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->game_open_time:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", down_count="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->down_count:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", collection_game_describe=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->collection_game_describe:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", game_info_top_video_url=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->game_info_top_video_url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", game_info_top_pic=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->game_info_top_pic:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", score=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->score:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", pay_tag_info="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->pay_tag_info:Lcom/join/mgps/dto/PayTagInfo;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", pic_position="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->pic_position:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", vedio_url=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->vedio_url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", vedio_cover_pic=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->vedio_cover_pic:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", pic_info="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->pic_info:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", viewType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->viewType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isAd="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->isAd:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", allow_start_up_ad=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->allow_start_up_ad:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", download_source_url=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->download_source_url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", download_outside_url=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->download_outside_url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", download_original_switch=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->download_original_switch:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", download_source_switch_v1=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->download_source_switch_v1:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", download_source_switch_v2=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->download_source_switch_v2:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
