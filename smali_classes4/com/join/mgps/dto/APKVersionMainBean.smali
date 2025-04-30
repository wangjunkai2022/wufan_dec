.class public Lcom/join/mgps/dto/APKVersionMainBean;
.super Ljava/lang/Object;
.source "APKVersionMainBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private app:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ApkVersionbean;",
            ">;"
        }
    .end annotation
.end field

.field private cfg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/HomeViewSwich;",
            ">;"
        }
    .end annotation
.end field

.field private download_speedup_cfg:Lcom/join/mgps/dto/DownloadSpeedupCfgBean;

.field private mod_enhance_ad_cfg:Lcom/join/mgps/dto/SingleGameAdCfgBean;

.field private mod_normal_ad_cfg:Lcom/join/mgps/dto/SingleGameAdCfgBean;

.field private play_game_time_lv_cfg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameTimeLevel;",
            ">;"
        }
    .end annotation
.end field

.field private plugin:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ApkVersionbean;",
            ">;"
        }
    .end annotation
.end field

.field private psp_game_ad_cfg:Lcom/join/mgps/dto/PspGameAdCfgBean;

.field private public_video_cfg:Lcom/join/mgps/dto/PublicVideoCfgBean;

.field private simulator_run_ad_text_cfg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorRunAdTextCfgBean;",
            ">;"
        }
    .end annotation
.end field

.field private single_game_ad_cfg:Lcom/join/mgps/dto/SingleGameAdCfgBean;

.field private single_game_run_ad_text_cfg:Lcom/join/mgps/dto/SingleGameRunAdTextCfgBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ApkVersionbean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ApkVersionbean;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dto/APKVersionMainBean;->app:Ljava/util/List;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dto/APKVersionMainBean;->plugin:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getApp()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ApkVersionbean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/APKVersionMainBean;->app:Ljava/util/List;

    return-object v0
.end method

.method public getCfg()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/HomeViewSwich;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/APKVersionMainBean;->cfg:Ljava/util/List;

    return-object v0
.end method

.method public getDownload_speedup_cfg()Lcom/join/mgps/dto/DownloadSpeedupCfgBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/APKVersionMainBean;->download_speedup_cfg:Lcom/join/mgps/dto/DownloadSpeedupCfgBean;

    return-object v0
.end method

.method public getMod_enhance_ad_cfg()Lcom/join/mgps/dto/SingleGameAdCfgBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/APKVersionMainBean;->mod_enhance_ad_cfg:Lcom/join/mgps/dto/SingleGameAdCfgBean;

    return-object v0
.end method

.method public getMod_normal_ad_cfg()Lcom/join/mgps/dto/SingleGameAdCfgBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/APKVersionMainBean;->mod_normal_ad_cfg:Lcom/join/mgps/dto/SingleGameAdCfgBean;

    return-object v0
.end method

.method public getPlay_game_time_lv_cfg()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameTimeLevel;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/APKVersionMainBean;->play_game_time_lv_cfg:Ljava/util/List;

    return-object v0
.end method

.method public getPlugin()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ApkVersionbean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/APKVersionMainBean;->plugin:Ljava/util/List;

    return-object v0
.end method

.method public getPsp_game_ad_cfg()Lcom/join/mgps/dto/PspGameAdCfgBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/APKVersionMainBean;->psp_game_ad_cfg:Lcom/join/mgps/dto/PspGameAdCfgBean;

    return-object v0
.end method

.method public getPublic_video_cfg()Lcom/join/mgps/dto/PublicVideoCfgBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/APKVersionMainBean;->public_video_cfg:Lcom/join/mgps/dto/PublicVideoCfgBean;

    return-object v0
.end method

.method public getSimulator_run_ad_text_cfg()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorRunAdTextCfgBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/APKVersionMainBean;->simulator_run_ad_text_cfg:Ljava/util/List;

    return-object v0
.end method

.method public getSingle_game_ad_cfg()Lcom/join/mgps/dto/SingleGameAdCfgBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/APKVersionMainBean;->single_game_ad_cfg:Lcom/join/mgps/dto/SingleGameAdCfgBean;

    return-object v0
.end method

.method public getSingle_game_run_ad_text_cfg()Lcom/join/mgps/dto/SingleGameRunAdTextCfgBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/APKVersionMainBean;->single_game_run_ad_text_cfg:Lcom/join/mgps/dto/SingleGameRunAdTextCfgBean;

    return-object v0
.end method

.method public setApp(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ApkVersionbean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/APKVersionMainBean;->app:Ljava/util/List;

    return-void
.end method

.method public setCfg(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/HomeViewSwich;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/APKVersionMainBean;->cfg:Ljava/util/List;

    return-void
.end method

.method public setDownload_speedup_cfg(Lcom/join/mgps/dto/DownloadSpeedupCfgBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/APKVersionMainBean;->download_speedup_cfg:Lcom/join/mgps/dto/DownloadSpeedupCfgBean;

    return-void
.end method

.method public setMod_enhance_ad_cfg(Lcom/join/mgps/dto/SingleGameAdCfgBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/APKVersionMainBean;->mod_enhance_ad_cfg:Lcom/join/mgps/dto/SingleGameAdCfgBean;

    return-void
.end method

.method public setMod_normal_ad_cfg(Lcom/join/mgps/dto/SingleGameAdCfgBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/APKVersionMainBean;->mod_normal_ad_cfg:Lcom/join/mgps/dto/SingleGameAdCfgBean;

    return-void
.end method

.method public setPlay_game_time_lv_cfg(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameTimeLevel;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/APKVersionMainBean;->play_game_time_lv_cfg:Ljava/util/List;

    return-void
.end method

.method public setPlugin(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ApkVersionbean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/APKVersionMainBean;->plugin:Ljava/util/List;

    return-void
.end method

.method public setPsp_game_ad_cfg(Lcom/join/mgps/dto/PspGameAdCfgBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/APKVersionMainBean;->psp_game_ad_cfg:Lcom/join/mgps/dto/PspGameAdCfgBean;

    return-void
.end method

.method public setPublic_video_cfg(Lcom/join/mgps/dto/PublicVideoCfgBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/APKVersionMainBean;->public_video_cfg:Lcom/join/mgps/dto/PublicVideoCfgBean;

    return-void
.end method

.method public setSimulator_run_ad_text_cfg(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorRunAdTextCfgBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/APKVersionMainBean;->simulator_run_ad_text_cfg:Ljava/util/List;

    return-void
.end method

.method public setSingle_game_ad_cfg(Lcom/join/mgps/dto/SingleGameAdCfgBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/APKVersionMainBean;->single_game_ad_cfg:Lcom/join/mgps/dto/SingleGameAdCfgBean;

    return-void
.end method

.method public setSingle_game_run_ad_text_cfg(Lcom/join/mgps/dto/SingleGameRunAdTextCfgBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/APKVersionMainBean;->single_game_run_ad_text_cfg:Lcom/join/mgps/dto/SingleGameRunAdTextCfgBean;

    return-void
.end method
