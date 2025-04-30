.class public Lcom/join/mgps/dto/SimulatorPathCfgBean;
.super Lcom/join/mgps/dto/BaseBean;
.source "SimulatorPathCfgBean.java"


# instance fields
.field private id:Ljava/lang/Integer;

.field private play_cfg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PlayCfgBean;",
            ">;"
        }
    .end annotation
.end field

.field private switch_state:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/dto/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorPathCfgBean;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPlay_cfg()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PlayCfgBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorPathCfgBean;->play_cfg:Ljava/util/List;

    return-object v0
.end method

.method public getSwitch_state()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorPathCfgBean;->switch_state:Ljava/lang/Integer;

    return-object v0
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorPathCfgBean;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setPlay_cfg(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PlayCfgBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorPathCfgBean;->play_cfg:Ljava/util/List;

    return-void
.end method

.method public setSwitch_state(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorPathCfgBean;->switch_state:Ljava/lang/Integer;

    return-void
.end method
