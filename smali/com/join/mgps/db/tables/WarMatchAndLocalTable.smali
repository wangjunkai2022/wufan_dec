.class public Lcom/join/mgps/db/tables/WarMatchAndLocalTable;
.super Ljava/lang/Object;
.source "WarMatchAndLocalTable.java"


# instance fields
.field private appSize:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private cdn_down_switch:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private cfg_down_url:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private cfg_ver:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private cfg_ver_name:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private crc_link_type_val:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field down_status:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private down_url_remote:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private download_original_switch:Ljava/lang/String;

.field private download_outside_url:Ljava/lang/String;

.field private download_source_switch_v1:Ljava/lang/String;

.field private download_source_switch_v2:Ljava/lang/String;

.field private download_source_url:Ljava/lang/String;

.field private fight_fun:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private fight_screenshot_pic:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private fight_type:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private forum_id:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private forum_switch:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field game_info_tpl_type:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private game_name:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field gift_package_switch:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private ico_remote:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private id:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
    .end annotation
.end field

.field private info:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private is_fight:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private is_network:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private is_world:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private lock_sp:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field main_sub_title:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field main_title:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private other_down_switch:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private packageName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field pay_game_amount:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field pic_remote:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private plugin_lowest_ver:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private plugin_lowest_ver_name:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private plugin_num:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private plugin_screenshot:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private screenshot_pic:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private showName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private source_down_url:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private source_ver:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private source_ver_name:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field sync_memory:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private tips:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field tp_down_url:Lcom/j256/ormlite/dao/ForeignCollection;
    .annotation runtime Lcom/j256/ormlite/field/ForeignCollectionField;
        eager = false
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/ForeignCollection<",
            "Lcom/join/mgps/db/tables/DownloadUrlTable;",
            ">;"
        }
    .end annotation
.end field

.field private unzip_size:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private ver:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private ver_name:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private warType:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private world_area:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private world_shop:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/join/mgps/db/tables/WarMatchAndLocalTable;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getId()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->id:I

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->crc_link_type_val:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getShowName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->showName:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getFight_screenshot_pic()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->fight_screenshot_pic:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getWarType()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->warType:I

    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getGame_name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->game_name:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getIco_remote()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->ico_remote:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->packageName:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getAppSize()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->appSize:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getTips()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->tips:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getDown_url_remote()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->down_url_remote:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getInfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->info:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getVer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->ver:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getVer_name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->ver_name:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getPlugin_num()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->plugin_num:I

    .line 18
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getIs_world()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->is_world:I

    .line 19
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getIs_network()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->is_network:I

    .line 20
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getSource_ver_name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->source_ver_name:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getSource_ver()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->source_ver:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getSource_down_url()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->source_down_url:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getPlugin_screenshot()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->plugin_screenshot:I

    .line 24
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getForum_switch()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->forum_switch:I

    .line 25
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getForum_id()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->forum_id:I

    .line 26
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getWorld_shop()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->world_shop:I

    .line 27
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getWorld_area()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->world_area:I

    .line 28
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getIs_fight()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->is_fight:I

    .line 29
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getFight_type()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->fight_type:I

    .line 30
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getFight_fun()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->fight_fun:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getPlugin_lowest_ver_name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->plugin_lowest_ver_name:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getPlugin_lowest_ver()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->plugin_lowest_ver:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getCfg_ver_name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->cfg_ver_name:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getCfg_ver()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->cfg_ver:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getCfg_down_url()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->cfg_down_url:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getScreenshot_pic()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->screenshot_pic:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getOther_down_switch()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->other_down_switch:I

    .line 38
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getCdn_down_switch()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->cdn_down_switch:I

    .line 39
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getGame_info_tpl_type()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->game_info_tpl_type:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getPic_remote()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->pic_remote:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getSync_memory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->sync_memory:Ljava/lang/String;

    .line 42
    iget v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->gift_package_switch:I

    iput v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->gift_package_switch:I

    .line 43
    iget v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->pay_game_amount:I

    iput v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->pay_game_amount:I

    .line 44
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getDownload_source_url()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->download_source_url:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getDownload_outside_url()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->download_outside_url:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getDownload_original_switch()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->download_original_switch:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAppSize()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->appSize:Ljava/lang/String;

    return-object v0
.end method

.method public getCdn_down_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->cdn_down_switch:I

    return v0
.end method

.method public getCfg_down_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->cfg_down_url:Ljava/lang/String;

    return-object v0
.end method

.method public getCfg_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->cfg_ver:Ljava/lang/String;

    return-object v0
.end method

.method public getCfg_ver_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->cfg_ver_name:Ljava/lang/String;

    return-object v0
.end method

.method public getCrc_link_type_val()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->crc_link_type_val:Ljava/lang/String;

    return-object v0
.end method

.method public getDown_status()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->down_status:I

    return v0
.end method

.method public getDown_url_remote()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->down_url_remote:Ljava/lang/String;

    return-object v0
.end method

.method public getDownload_original_switch()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->download_original_switch:Ljava/lang/String;

    return-object v0
.end method

.method public getDownload_outside_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->download_outside_url:Ljava/lang/String;

    return-object v0
.end method

.method public getDownload_source_switch_v1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->download_source_switch_v1:Ljava/lang/String;

    return-object v0
.end method

.method public getDownload_source_switch_v2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->download_source_switch_v2:Ljava/lang/String;

    return-object v0
.end method

.method public getDownload_source_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->download_source_url:Ljava/lang/String;

    return-object v0
.end method

.method public getFight_fun()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->fight_fun:Ljava/lang/String;

    return-object v0
.end method

.method public getFight_screenshot_pic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->fight_screenshot_pic:Ljava/lang/String;

    return-object v0
.end method

.method public getFight_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->fight_type:I

    return v0
.end method

.method public getForum_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->forum_id:I

    return v0
.end method

.method public getForum_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->forum_switch:I

    return v0
.end method

.method public getGame_info_tpl_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->game_info_tpl_type:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->game_name:Ljava/lang/String;

    return-object v0
.end method

.method public getGift_package_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->gift_package_switch:I

    return v0
.end method

.method public getIco_remote()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->ico_remote:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->id:I

    return v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->info:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_fight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->is_fight:I

    return v0
.end method

.method public getIs_network()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->is_network:I

    return v0
.end method

.method public getIs_world()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->is_world:I

    return v0
.end method

.method public getLock_sp()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->lock_sp:I

    return v0
.end method

.method public getMain_sub_title()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->main_sub_title:Ljava/lang/String;

    return-object v0
.end method

.method public getMain_title()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->main_title:Ljava/lang/String;

    return-object v0
.end method

.method public getOther_down_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->other_down_switch:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPay_game_amount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->pay_game_amount:I

    return v0
.end method

.method public getPic_remote()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->pic_remote:Ljava/lang/String;

    return-object v0
.end method

.method public getPlugin_lowest_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->plugin_lowest_ver:Ljava/lang/String;

    return-object v0
.end method

.method public getPlugin_lowest_ver_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->plugin_lowest_ver_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPlugin_num()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->plugin_num:I

    return v0
.end method

.method public getPlugin_screenshot()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->plugin_screenshot:I

    return v0
.end method

.method public getScreenshot_pic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->screenshot_pic:Ljava/lang/String;

    return-object v0
.end method

.method public getShowName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->showName:Ljava/lang/String;

    return-object v0
.end method

.method public getSource_down_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->source_down_url:Ljava/lang/String;

    return-object v0
.end method

.method public getSource_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->source_ver:Ljava/lang/String;

    return-object v0
.end method

.method public getSource_ver_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->source_ver_name:Ljava/lang/String;

    return-object v0
.end method

.method public getSync_memory()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->sync_memory:Ljava/lang/String;

    return-object v0
.end method

.method public getTips()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->tips:Ljava/lang/String;

    return-object v0
.end method

.method public getTp_down_url()Lcom/j256/ormlite/dao/ForeignCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/ForeignCollection<",
            "Lcom/join/mgps/db/tables/DownloadUrlTable;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->tp_down_url:Lcom/j256/ormlite/dao/ForeignCollection;

    return-object v0
.end method

.method public getUnzip_size()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->unzip_size:Ljava/lang/String;

    return-object v0
.end method

.method public getVer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->ver:Ljava/lang/String;

    return-object v0
.end method

.method public getVer_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->ver_name:Ljava/lang/String;

    return-object v0
.end method

.method public getWarType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->warType:I

    return v0
.end method

.method public getWorld_area()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->world_area:I

    return v0
.end method

.method public getWorld_shop()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->world_shop:I

    return v0
.end method

.method public setAppSize(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->appSize:Ljava/lang/String;

    return-void
.end method

.method public setCdn_down_switch(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->cdn_down_switch:I

    return-void
.end method

.method public setCfg_down_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->cfg_down_url:Ljava/lang/String;

    return-void
.end method

.method public setCfg_ver(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->cfg_ver:Ljava/lang/String;

    return-void
.end method

.method public setCfg_ver_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->cfg_ver_name:Ljava/lang/String;

    return-void
.end method

.method public setCrc_link_type_val(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->crc_link_type_val:Ljava/lang/String;

    return-void
.end method

.method public setDown_status(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->down_status:I

    return-void
.end method

.method public setDown_url_remote(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->down_url_remote:Ljava/lang/String;

    return-void
.end method

.method public setDownload_original_switch(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->download_original_switch:Ljava/lang/String;

    return-void
.end method

.method public setDownload_outside_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->download_outside_url:Ljava/lang/String;

    return-void
.end method

.method public setDownload_source_switch_v1(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->download_source_switch_v1:Ljava/lang/String;

    return-void
.end method

.method public setDownload_source_switch_v2(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->download_source_switch_v2:Ljava/lang/String;

    return-void
.end method

.method public setDownload_source_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->download_source_url:Ljava/lang/String;

    return-void
.end method

.method public setFight_fun(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->fight_fun:Ljava/lang/String;

    return-void
.end method

.method public setFight_screenshot_pic(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->fight_screenshot_pic:Ljava/lang/String;

    return-void
.end method

.method public setFight_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->fight_type:I

    return-void
.end method

.method public setForum_id(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->forum_id:I

    return-void
.end method

.method public setForum_switch(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->forum_switch:I

    return-void
.end method

.method public setGame_info_tpl_type(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->game_info_tpl_type:Ljava/lang/String;

    return-void
.end method

.method public setGame_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->game_name:Ljava/lang/String;

    return-void
.end method

.method public setGift_package_switch(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->gift_package_switch:I

    return-void
.end method

.method public setIco_remote(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->ico_remote:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->id:I

    return-void
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->info:Ljava/lang/String;

    return-void
.end method

.method public setIs_fight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->is_fight:I

    return-void
.end method

.method public setIs_network(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->is_network:I

    return-void
.end method

.method public setIs_world(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->is_world:I

    return-void
.end method

.method public setLock_sp(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->lock_sp:I

    return-void
.end method

.method public setMain_sub_title(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->main_sub_title:Ljava/lang/String;

    return-void
.end method

.method public setMain_title(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->main_title:Ljava/lang/String;

    return-void
.end method

.method public setOther_down_switch(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->other_down_switch:I

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setPay_game_amount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->pay_game_amount:I

    return-void
.end method

.method public setPic_remote(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->pic_remote:Ljava/lang/String;

    return-void
.end method

.method public setPlugin_lowest_ver(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->plugin_lowest_ver:Ljava/lang/String;

    return-void
.end method

.method public setPlugin_lowest_ver_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->plugin_lowest_ver_name:Ljava/lang/String;

    return-void
.end method

.method public setPlugin_num(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->plugin_num:I

    return-void
.end method

.method public setPlugin_screenshot(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->plugin_screenshot:I

    return-void
.end method

.method public setScreenshot_pic(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->screenshot_pic:Ljava/lang/String;

    return-void
.end method

.method public setShowName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->showName:Ljava/lang/String;

    return-void
.end method

.method public setSource_down_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->source_down_url:Ljava/lang/String;

    return-void
.end method

.method public setSource_ver(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->source_ver:Ljava/lang/String;

    return-void
.end method

.method public setSource_ver_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->source_ver_name:Ljava/lang/String;

    return-void
.end method

.method public setSync_memory(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->sync_memory:Ljava/lang/String;

    return-void
.end method

.method public setTips(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->tips:Ljava/lang/String;

    return-void
.end method

.method public setTp_down_url(Lcom/j256/ormlite/dao/ForeignCollection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/ForeignCollection<",
            "Lcom/join/mgps/db/tables/DownloadUrlTable;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->tp_down_url:Lcom/j256/ormlite/dao/ForeignCollection;

    return-void
.end method

.method public setUnzip_size(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->unzip_size:Ljava/lang/String;

    return-void
.end method

.method public setVer(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->ver:Ljava/lang/String;

    return-void
.end method

.method public setVer_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->ver_name:Ljava/lang/String;

    return-void
.end method

.method public setWarType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->warType:I

    return-void
.end method

.method public setWorld_area(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->world_area:I

    return-void
.end method

.method public setWorld_shop(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->world_shop:I

    return-void
.end method
