.class public Lcom/join/mgps/db/tables/EMUUpdateTable;
.super Ljava/lang/Object;
.source "EMUUpdateTable.java"


# instance fields
.field private cfg_down_url:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private cfg_lowest_ver:Ljava/lang/String;
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

.field private crc_sign_id:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private down_type:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private down_url_remote:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private fight_fun:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private fight_type:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private forum_id:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private forum_switch:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private id:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
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

.field private plugin_lowest_ver:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private plugin_lowest_ver_name:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private plugin_screenshot:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private remark:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private rom_lowest_ver:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private screenshot_pic:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private source_down_url:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private source_lowest_ver:Ljava/lang/String;
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

.field private sync_memory:Ljava/lang/String;

.field private ver:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private ver_name:Ljava/lang/String;
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

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIJIIIILjava/lang/String;)V
    .locals 3

    move-object v0, p0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 63
    iput v1, v0, Lcom/join/mgps/db/tables/EMUUpdateTable;->id:I

    move-object v1, p2

    .line 64
    iput-object v1, v0, Lcom/join/mgps/db/tables/EMUUpdateTable;->ver_name:Ljava/lang/String;

    move-object v1, p3

    .line 65
    iput-object v1, v0, Lcom/join/mgps/db/tables/EMUUpdateTable;->ver:Ljava/lang/String;

    move-object v1, p4

    .line 66
    iput-object v1, v0, Lcom/join/mgps/db/tables/EMUUpdateTable;->plugin_lowest_ver_name:Ljava/lang/String;

    move-object v1, p5

    .line 67
    iput-object v1, v0, Lcom/join/mgps/db/tables/EMUUpdateTable;->plugin_lowest_ver:Ljava/lang/String;

    move-object v1, p6

    .line 68
    iput-object v1, v0, Lcom/join/mgps/db/tables/EMUUpdateTable;->crc_sign_id:Ljava/lang/String;

    move-object v1, p7

    .line 69
    iput-object v1, v0, Lcom/join/mgps/db/tables/EMUUpdateTable;->down_url_remote:Ljava/lang/String;

    move-object v1, p8

    .line 70
    iput-object v1, v0, Lcom/join/mgps/db/tables/EMUUpdateTable;->cfg_ver_name:Ljava/lang/String;

    move-object v1, p9

    .line 71
    iput-object v1, v0, Lcom/join/mgps/db/tables/EMUUpdateTable;->cfg_ver:Ljava/lang/String;

    move-object v1, p10

    .line 72
    iput-object v1, v0, Lcom/join/mgps/db/tables/EMUUpdateTable;->cfg_down_url:Ljava/lang/String;

    move-object v1, p11

    .line 73
    iput-object v1, v0, Lcom/join/mgps/db/tables/EMUUpdateTable;->source_ver_name:Ljava/lang/String;

    move-object v1, p12

    .line 74
    iput-object v1, v0, Lcom/join/mgps/db/tables/EMUUpdateTable;->source_ver:Ljava/lang/String;

    move-object/from16 v1, p13

    .line 75
    iput-object v1, v0, Lcom/join/mgps/db/tables/EMUUpdateTable;->source_down_url:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 76
    iput-object v1, v0, Lcom/join/mgps/db/tables/EMUUpdateTable;->screenshot_pic:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 77
    iput-object v1, v0, Lcom/join/mgps/db/tables/EMUUpdateTable;->rom_lowest_ver:Ljava/lang/String;

    move-object/from16 v1, p16

    .line 78
    iput-object v1, v0, Lcom/join/mgps/db/tables/EMUUpdateTable;->source_lowest_ver:Ljava/lang/String;

    move-object/from16 v1, p17

    .line 79
    iput-object v1, v0, Lcom/join/mgps/db/tables/EMUUpdateTable;->cfg_lowest_ver:Ljava/lang/String;

    move/from16 v1, p18

    .line 80
    iput v1, v0, Lcom/join/mgps/db/tables/EMUUpdateTable;->is_world:I

    move/from16 v1, p19

    .line 81
    iput v1, v0, Lcom/join/mgps/db/tables/EMUUpdateTable;->is_network:I

    move/from16 v1, p20

    .line 82
    iput v1, v0, Lcom/join/mgps/db/tables/EMUUpdateTable;->plugin_screenshot:I

    move-wide/from16 v1, p22

    .line 83
    iput-wide v1, v0, Lcom/join/mgps/db/tables/EMUUpdateTable;->forum_id:J

    move/from16 v1, p21

    .line 84
    iput v1, v0, Lcom/join/mgps/db/tables/EMUUpdateTable;->forum_switch:I

    move/from16 v1, p24

    .line 85
    iput v1, v0, Lcom/join/mgps/db/tables/EMUUpdateTable;->world_shop:I

    move/from16 v1, p25

    .line 86
    iput v1, v0, Lcom/join/mgps/db/tables/EMUUpdateTable;->world_area:I

    move/from16 v1, p26

    .line 87
    iput v1, v0, Lcom/join/mgps/db/tables/EMUUpdateTable;->is_fight:I

    move/from16 v1, p27

    .line 88
    iput v1, v0, Lcom/join/mgps/db/tables/EMUUpdateTable;->fight_type:I

    move-object/from16 v1, p28

    .line 89
    iput-object v1, v0, Lcom/join/mgps/db/tables/EMUUpdateTable;->fight_fun:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/join/mgps/dto/CheckAppVersionBean;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/CheckAppVersionBean;->getVer_name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->ver_name:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/CheckAppVersionBean;->getVer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->ver:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/CheckAppVersionBean;->getPlugin_lowest_ver_name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->plugin_lowest_ver_name:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/CheckAppVersionBean;->getPlugin_lowest_ver()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->plugin_lowest_ver:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/CheckAppVersionBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->crc_sign_id:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/dto/CheckAppVersionBean;->getDown_url_remote()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->down_url_remote:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/CheckAppVersionBean;->getCfg_ver_name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->cfg_ver_name:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/dto/CheckAppVersionBean;->getCfg_ver()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->cfg_ver:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/CheckAppVersionBean;->getCfg_down_url()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->cfg_down_url:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Lcom/join/mgps/dto/CheckAppVersionBean;->getSource_ver_name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->source_ver_name:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/dto/CheckAppVersionBean;->getSource_ver()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->source_ver:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/dto/CheckAppVersionBean;->getSource_down_url()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->source_down_url:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/CheckAppVersionBean;->getScreenshot_pic()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->screenshot_pic:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/dto/CheckAppVersionBean;->getRom_lowest_ver()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->rom_lowest_ver:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Lcom/join/mgps/dto/CheckAppVersionBean;->getSource_lowest_ver()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->source_lowest_ver:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Lcom/join/mgps/dto/CheckAppVersionBean;->getCfg_lowest_ver()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->cfg_lowest_ver:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Lcom/join/mgps/dto/CheckAppVersionBean;->getIs_world()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->is_world:I

    .line 20
    invoke-virtual {p1}, Lcom/join/mgps/dto/CheckAppVersionBean;->getIs_network()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->is_network:I

    .line 21
    invoke-virtual {p1}, Lcom/join/mgps/dto/CheckAppVersionBean;->getPlugin_screenshot()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->plugin_screenshot:I

    .line 22
    invoke-virtual {p1}, Lcom/join/mgps/dto/CheckAppVersionBean;->getForum_switch()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->forum_switch:I

    .line 23
    invoke-virtual {p1}, Lcom/join/mgps/dto/CheckAppVersionBean;->getForum_id()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->forum_id:J

    .line 24
    invoke-virtual {p1}, Lcom/join/mgps/dto/CheckAppVersionBean;->getWorld_shop()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->world_shop:I

    .line 25
    invoke-virtual {p1}, Lcom/join/mgps/dto/CheckAppVersionBean;->getWorld_area()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->world_area:I

    .line 26
    invoke-virtual {p1}, Lcom/join/mgps/dto/CheckAppVersionBean;->getIs_fight()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->is_fight:I

    .line 27
    invoke-virtual {p1}, Lcom/join/mgps/dto/CheckAppVersionBean;->getFight_type()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->fight_type:I

    .line 28
    invoke-virtual {p1}, Lcom/join/mgps/dto/CheckAppVersionBean;->getFight_funv2()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->fight_fun:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Lcom/join/mgps/dto/CheckAppVersionBean;->getLock_sp()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->lock_sp:I

    .line 30
    invoke-virtual {p1}, Lcom/join/mgps/dto/CheckAppVersionBean;->getSync_memory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->sync_memory:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Lcom/join/mgps/dto/CheckAppVersionBean;->getDown_type()I

    move-result p1

    iput p1, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->down_type:I

    return-void
.end method

.method public constructor <init>(Lcom/join/mgps/dto/CheckGameVersionResponseData$VersionInfo;)V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getVer_name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->ver_name:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getVer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->ver:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getPlugin_lowest_ver_name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->plugin_lowest_ver_name:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getPlugin_lowest_ver()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->plugin_lowest_ver:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->crc_sign_id:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getDown_url_remote()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->down_url_remote:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getCfg_ver_name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->cfg_ver_name:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getCfg_ver()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->cfg_ver:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getCfg_down_url()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->cfg_down_url:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getSource_ver_name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->source_ver_name:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getSource_ver()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->source_ver:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getSource_down_url()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->source_down_url:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getScreenshot_pic()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->screenshot_pic:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getRom_lowest_ver()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->rom_lowest_ver:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getSource_lowest_ver()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->source_lowest_ver:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getCfg_lowest_ver()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->cfg_lowest_ver:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getIs_world()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->is_world:I

    .line 50
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getIs_network()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->is_network:I

    .line 51
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getPlugin_screenshot()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->plugin_screenshot:I

    .line 52
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getForum_switch()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->forum_switch:I

    .line 53
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getForum_id()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->forum_id:J

    .line 54
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getWorld_shop()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->world_shop:I

    .line 55
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getWorld_area()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->world_area:I

    .line 56
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getIs_fight()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->is_fight:I

    .line 57
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getFight_type()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->fight_type:I

    .line 58
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getFight_funv2()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->fight_fun:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getLock_sp()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->lock_sp:I

    .line 60
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getSync_memory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->sync_memory:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getDown_type()I

    move-result p1

    iput p1, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->down_type:I

    return-void
.end method


# virtual methods
.method public getCfg_down_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->cfg_down_url:Ljava/lang/String;

    return-object v0
.end method

.method public getCfg_lowest_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->cfg_lowest_ver:Ljava/lang/String;

    return-object v0
.end method

.method public getCfg_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->cfg_ver:Ljava/lang/String;

    return-object v0
.end method

.method public getCfg_ver_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->cfg_ver_name:Ljava/lang/String;

    return-object v0
.end method

.method public getCrc_sign_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->crc_sign_id:Ljava/lang/String;

    return-object v0
.end method

.method public getDown_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->down_type:I

    return v0
.end method

.method public getDown_url_remote()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->down_url_remote:Ljava/lang/String;

    return-object v0
.end method

.method public getFight_fun()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->fight_fun:Ljava/lang/String;

    return-object v0
.end method

.method public getFight_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->fight_type:I

    return v0
.end method

.method public getForum_id()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->forum_id:J

    return-wide v0
.end method

.method public getForum_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->forum_switch:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->id:I

    return v0
.end method

.method public getIs_fight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->is_fight:I

    return v0
.end method

.method public getIs_network()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->is_network:I

    return v0
.end method

.method public getIs_world()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->is_world:I

    return v0
.end method

.method public getLock_sp()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->lock_sp:I

    return v0
.end method

.method public getPlugin_lowest_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->plugin_lowest_ver:Ljava/lang/String;

    return-object v0
.end method

.method public getPlugin_lowest_ver_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->plugin_lowest_ver_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPlugin_screenshot()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->plugin_screenshot:I

    return v0
.end method

.method public getRemark()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->remark:Ljava/lang/String;

    return-object v0
.end method

.method public getRom_lowest_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->rom_lowest_ver:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenshot_pic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->screenshot_pic:Ljava/lang/String;

    return-object v0
.end method

.method public getSource_down_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->source_down_url:Ljava/lang/String;

    return-object v0
.end method

.method public getSource_lowest_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->source_lowest_ver:Ljava/lang/String;

    return-object v0
.end method

.method public getSource_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->source_ver:Ljava/lang/String;

    return-object v0
.end method

.method public getSource_ver_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->source_ver_name:Ljava/lang/String;

    return-object v0
.end method

.method public getSync_memory()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->sync_memory:Ljava/lang/String;

    return-object v0
.end method

.method public getVer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->ver:Ljava/lang/String;

    return-object v0
.end method

.method public getVer_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->ver_name:Ljava/lang/String;

    return-object v0
.end method

.method public getWorld_area()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->world_area:I

    return v0
.end method

.method public getWorld_shop()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->world_shop:I

    return v0
.end method

.method public setCfg_down_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->cfg_down_url:Ljava/lang/String;

    return-void
.end method

.method public setCfg_lowest_ver(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->cfg_lowest_ver:Ljava/lang/String;

    return-void
.end method

.method public setCfg_ver(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->cfg_ver:Ljava/lang/String;

    return-void
.end method

.method public setCfg_ver_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->cfg_ver_name:Ljava/lang/String;

    return-void
.end method

.method public setCrc_sign_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->crc_sign_id:Ljava/lang/String;

    return-void
.end method

.method public setDown_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->down_type:I

    return-void
.end method

.method public setDown_url_remote(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->down_url_remote:Ljava/lang/String;

    return-void
.end method

.method public setFight_fun(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->fight_fun:Ljava/lang/String;

    return-void
.end method

.method public setFight_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->fight_type:I

    return-void
.end method

.method public setForum_id(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->forum_id:J

    return-void
.end method

.method public setForum_switch(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->forum_switch:I

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->id:I

    return-void
.end method

.method public setIs_fight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->is_fight:I

    return-void
.end method

.method public setIs_network(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->is_network:I

    return-void
.end method

.method public setIs_world(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->is_world:I

    return-void
.end method

.method public setLock_sp(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->lock_sp:I

    return-void
.end method

.method public setPlugin_lowest_ver(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->plugin_lowest_ver:Ljava/lang/String;

    return-void
.end method

.method public setPlugin_lowest_ver_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->plugin_lowest_ver_name:Ljava/lang/String;

    return-void
.end method

.method public setPlugin_screenshot(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->plugin_screenshot:I

    return-void
.end method

.method public setRemark(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->remark:Ljava/lang/String;

    return-void
.end method

.method public setRom_lowest_ver(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->rom_lowest_ver:Ljava/lang/String;

    return-void
.end method

.method public setScreenshot_pic(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->screenshot_pic:Ljava/lang/String;

    return-void
.end method

.method public setSource_down_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->source_down_url:Ljava/lang/String;

    return-void
.end method

.method public setSource_lowest_ver(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->source_lowest_ver:Ljava/lang/String;

    return-void
.end method

.method public setSource_ver(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->source_ver:Ljava/lang/String;

    return-void
.end method

.method public setSource_ver_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->source_ver_name:Ljava/lang/String;

    return-void
.end method

.method public setSync_memory(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->sync_memory:Ljava/lang/String;

    return-void
.end method

.method public setVer(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->ver:Ljava/lang/String;

    return-void
.end method

.method public setVer_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->ver_name:Ljava/lang/String;

    return-void
.end method

.method public setWorld_area(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->world_area:I

    return-void
.end method

.method public setWorld_shop(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/EMUUpdateTable;->world_shop:I

    return-void
.end method
