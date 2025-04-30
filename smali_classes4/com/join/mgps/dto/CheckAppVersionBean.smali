.class public Lcom/join/mgps/dto/CheckAppVersionBean;
.super Ljava/lang/Object;
.source "CheckAppVersionBean.java"


# instance fields
.field private actual_size:J

.field private allow_start_up_ad:Ljava/lang/String;

.field private cfg_down_url:Ljava/lang/String;

.field private cfg_lowest_ver:Ljava/lang/String;

.field private cfg_ver:Ljava/lang/String;

.field private cfg_ver_name:Ljava/lang/String;

.field private crc_sign_id:Ljava/lang/String;

.field private down_count:I

.field private down_status:I

.field private down_type:I

.field private down_url_remote:Ljava/lang/String;

.field private fight_funv2:Ljava/lang/String;

.field private fight_type:I

.field private forum_id:J

.field private forum_switch:I

.field private game_upgrade_state:I

.field private is_boot_commented:I

.field private is_fight:I

.field private is_network:I

.field private is_world:I

.field private lock_sp:I

.field private pay_tag_info:Lcom/join/mgps/dto/PayTagInfo;

.field private plugin_lowest_ver:Ljava/lang/String;

.field private plugin_lowest_ver_name:Ljava/lang/String;

.field private plugin_screenshot:I

.field private resource_url_remote:Ljava/lang/String;

.field private rom_lowest_ver:Ljava/lang/String;

.field private screenshot_pic:Ljava/lang/String;

.field private source_down_url:Ljava/lang/String;

.field private source_lowest_ver:Ljava/lang/String;

.field private source_ver:Ljava/lang/String;

.field private source_ver_name:Ljava/lang/String;

.field private sp_tag_info:Lcom/join/mgps/dto/TipNew;

.field private sp_tpl_two_position:I

.field private sync_memory:Ljava/lang/String;

.field private tipBeans:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;"
        }
    .end annotation
.end field

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
    iget-wide v0, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->actual_size:J

    return-wide v0
.end method

.method public getAllow_start_up_ad()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->allow_start_up_ad:Ljava/lang/String;

    return-object v0
.end method

.method public getCfg_down_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->cfg_down_url:Ljava/lang/String;

    return-object v0
.end method

.method public getCfg_lowest_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->cfg_lowest_ver:Ljava/lang/String;

    return-object v0
.end method

.method public getCfg_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->cfg_ver:Ljava/lang/String;

    return-object v0
.end method

.method public getCfg_ver_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->cfg_ver_name:Ljava/lang/String;

    return-object v0
.end method

.method public getCrc_sign_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->crc_sign_id:Ljava/lang/String;

    return-object v0
.end method

.method public getDown_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->down_count:I

    return v0
.end method

.method public getDown_status()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->down_status:I

    return v0
.end method

.method public getDown_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->down_type:I

    return v0
.end method

.method public getDown_url_remote()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->down_url_remote:Ljava/lang/String;

    return-object v0
.end method

.method public getFight_funv2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->fight_funv2:Ljava/lang/String;

    return-object v0
.end method

.method public getFight_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->fight_type:I

    return v0
.end method

.method public getForum_id()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->forum_id:J

    return-wide v0
.end method

.method public getForum_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->forum_switch:I

    return v0
.end method

.method public getGame_upgrade_state()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->game_upgrade_state:I

    return v0
.end method

.method public getIs_boot_commented()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->is_boot_commented:I

    return v0
.end method

.method public getIs_fight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->is_fight:I

    return v0
.end method

.method public getIs_network()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->is_network:I

    return v0
.end method

.method public getIs_world()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->is_world:I

    return v0
.end method

.method public getLock_sp()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->lock_sp:I

    return v0
.end method

.method public getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->pay_tag_info:Lcom/join/mgps/dto/PayTagInfo;

    return-object v0
.end method

.method public getPlugin_lowest_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->plugin_lowest_ver:Ljava/lang/String;

    return-object v0
.end method

.method public getPlugin_lowest_ver_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->plugin_lowest_ver_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPlugin_screenshot()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->plugin_screenshot:I

    return v0
.end method

.method public getResource_url_remote()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->resource_url_remote:Ljava/lang/String;

    return-object v0
.end method

.method public getRom_lowest_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->rom_lowest_ver:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenshot_pic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->screenshot_pic:Ljava/lang/String;

    return-object v0
.end method

.method public getSource_down_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->source_down_url:Ljava/lang/String;

    return-object v0
.end method

.method public getSource_lowest_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->source_lowest_ver:Ljava/lang/String;

    return-object v0
.end method

.method public getSource_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->source_ver:Ljava/lang/String;

    return-object v0
.end method

.method public getSource_ver_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->source_ver_name:Ljava/lang/String;

    return-object v0
.end method

.method public getSp_tag_info()Lcom/join/mgps/dto/TipNew;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->sp_tag_info:Lcom/join/mgps/dto/TipNew;

    return-object v0
.end method

.method public getSp_tpl_two_position()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->sp_tpl_two_position:I

    return v0
.end method

.method public getSync_memory()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->sync_memory:Ljava/lang/String;

    return-object v0
.end method

.method public getTipBeans()Ljava/util/ArrayList;
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
    iget-object v0, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->tipBeans:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getVer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->ver:Ljava/lang/String;

    return-object v0
.end method

.method public getVer_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->ver_name:Ljava/lang/String;

    return-object v0
.end method

.method public getWorld_area()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->world_area:I

    return v0
.end method

.method public getWorld_shop()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->world_shop:I

    return v0
.end method

.method public setActual_size(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->actual_size:J

    return-void
.end method

.method public setAllow_start_up_ad(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->allow_start_up_ad:Ljava/lang/String;

    return-void
.end method

.method public setCfg_down_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->cfg_down_url:Ljava/lang/String;

    return-void
.end method

.method public setCfg_lowest_ver(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->cfg_lowest_ver:Ljava/lang/String;

    return-void
.end method

.method public setCfg_ver(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->cfg_ver:Ljava/lang/String;

    return-void
.end method

.method public setCfg_ver_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->cfg_ver_name:Ljava/lang/String;

    return-void
.end method

.method public setCrc_sign_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->crc_sign_id:Ljava/lang/String;

    return-void
.end method

.method public setDown_count(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->down_count:I

    return-void
.end method

.method public setDown_status(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->down_status:I

    return-void
.end method

.method public setDown_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->down_type:I

    return-void
.end method

.method public setDown_url_remote(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->down_url_remote:Ljava/lang/String;

    return-void
.end method

.method public setFight_funv2(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->fight_funv2:Ljava/lang/String;

    return-void
.end method

.method public setFight_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->fight_type:I

    return-void
.end method

.method public setForum_id(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->forum_id:J

    return-void
.end method

.method public setForum_switch(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->forum_switch:I

    return-void
.end method

.method public setGame_upgrade_state(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->game_upgrade_state:I

    return-void
.end method

.method public setIs_boot_commented(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->is_boot_commented:I

    return-void
.end method

.method public setIs_fight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->is_fight:I

    return-void
.end method

.method public setIs_network(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->is_network:I

    return-void
.end method

.method public setIs_world(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->is_world:I

    return-void
.end method

.method public setLock_sp(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->lock_sp:I

    return-void
.end method

.method public setPay_tag_info(Lcom/join/mgps/dto/PayTagInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->pay_tag_info:Lcom/join/mgps/dto/PayTagInfo;

    return-void
.end method

.method public setPlugin_lowest_ver(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->plugin_lowest_ver:Ljava/lang/String;

    return-void
.end method

.method public setPlugin_lowest_ver_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->plugin_lowest_ver_name:Ljava/lang/String;

    return-void
.end method

.method public setPlugin_screenshot(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->plugin_screenshot:I

    return-void
.end method

.method public setResource_url_remote(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->resource_url_remote:Ljava/lang/String;

    return-void
.end method

.method public setRom_lowest_ver(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->rom_lowest_ver:Ljava/lang/String;

    return-void
.end method

.method public setScreenshot_pic(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->screenshot_pic:Ljava/lang/String;

    return-void
.end method

.method public setSource_down_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->source_down_url:Ljava/lang/String;

    return-void
.end method

.method public setSource_lowest_ver(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->source_lowest_ver:Ljava/lang/String;

    return-void
.end method

.method public setSource_ver(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->source_ver:Ljava/lang/String;

    return-void
.end method

.method public setSource_ver_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->source_ver_name:Ljava/lang/String;

    return-void
.end method

.method public setSp_tag_info(Lcom/join/mgps/dto/TipNew;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->sp_tag_info:Lcom/join/mgps/dto/TipNew;

    return-void
.end method

.method public setSp_tpl_two_position(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->sp_tpl_two_position:I

    return-void
.end method

.method public setSync_memory(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->sync_memory:Ljava/lang/String;

    return-void
.end method

.method public setTipBeans(Ljava/util/ArrayList;)V
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
    iput-object p1, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->tipBeans:Ljava/util/ArrayList;

    return-void
.end method

.method public setVer(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->ver:Ljava/lang/String;

    return-void
.end method

.method public setVer_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->ver_name:Ljava/lang/String;

    return-void
.end method

.method public setWorld_area(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->world_area:I

    return-void
.end method

.method public setWorld_shop(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CheckAppVersionBean;->world_shop:I

    return-void
.end method
