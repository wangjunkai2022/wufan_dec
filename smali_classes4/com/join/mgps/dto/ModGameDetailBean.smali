.class public Lcom/join/mgps/dto/ModGameDetailBean;
.super Ljava/lang/Object;
.source "ModGameDetailBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private ad_info:Lcom/join/mgps/dto/RecomDatabean;

.field private cloud_archive_cfg:Lcom/join/mgps/dto/CloudArchiveCfg;

.field private cloud_archive_local_path:Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

.field private general_cfg:Lcom/join/mgps/dto/GeneralCfgBean;

.field private gold_finger:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GoldFingerBean;",
            ">;"
        }
    .end annotation
.end field

.field private main_game_info:Lcom/join/mgps/dto/GamedetialModleFourBean;

.field private mod_game_info:Lcom/join/mgps/dto/GamedetialModleFourBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAd_info()Lcom/join/mgps/dto/RecomDatabean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ModGameDetailBean;->ad_info:Lcom/join/mgps/dto/RecomDatabean;

    return-object v0
.end method

.method public getCloud_archive_cfg()Lcom/join/mgps/dto/CloudArchiveCfg;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ModGameDetailBean;->cloud_archive_cfg:Lcom/join/mgps/dto/CloudArchiveCfg;

    return-object v0
.end method

.method public getCloud_archive_local_path()Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ModGameDetailBean;->cloud_archive_local_path:Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    return-object v0
.end method

.method public getGeneral_cfg()Lcom/join/mgps/dto/GeneralCfgBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ModGameDetailBean;->general_cfg:Lcom/join/mgps/dto/GeneralCfgBean;

    return-object v0
.end method

.method public getGold_finger()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GoldFingerBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ModGameDetailBean;->gold_finger:Ljava/util/List;

    return-object v0
.end method

.method public getMain_game_info()Lcom/join/mgps/dto/GamedetialModleFourBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ModGameDetailBean;->main_game_info:Lcom/join/mgps/dto/GamedetialModleFourBean;

    return-object v0
.end method

.method public getMod_game_info()Lcom/join/mgps/dto/GamedetialModleFourBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ModGameDetailBean;->mod_game_info:Lcom/join/mgps/dto/GamedetialModleFourBean;

    return-object v0
.end method

.method public setAd_info(Lcom/join/mgps/dto/RecomDatabean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ModGameDetailBean;->ad_info:Lcom/join/mgps/dto/RecomDatabean;

    return-void
.end method

.method public setCloud_archive_cfg(Lcom/join/mgps/dto/CloudArchiveCfg;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ModGameDetailBean;->cloud_archive_cfg:Lcom/join/mgps/dto/CloudArchiveCfg;

    return-void
.end method

.method public setCloud_archive_local_path(Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ModGameDetailBean;->cloud_archive_local_path:Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    return-void
.end method

.method public setGeneral_cfg(Lcom/join/mgps/dto/GeneralCfgBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ModGameDetailBean;->general_cfg:Lcom/join/mgps/dto/GeneralCfgBean;

    return-void
.end method

.method public setGold_finger(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GoldFingerBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ModGameDetailBean;->gold_finger:Ljava/util/List;

    return-void
.end method

.method public setMain_game_info(Lcom/join/mgps/dto/GamedetialModleFourBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ModGameDetailBean;->main_game_info:Lcom/join/mgps/dto/GamedetialModleFourBean;

    return-void
.end method

.method public setMod_game_info(Lcom/join/mgps/dto/GamedetialModleFourBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ModGameDetailBean;->mod_game_info:Lcom/join/mgps/dto/GamedetialModleFourBean;

    return-void
.end method
