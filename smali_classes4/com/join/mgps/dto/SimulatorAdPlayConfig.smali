.class public Lcom/join/mgps/dto/SimulatorAdPlayConfig;
.super Lcom/join/mgps/dto/BaseBean;
.source "SimulatorAdPlayConfig.java"


# instance fields
.field private record_time:J

.field private simulator_fc_cfg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorAdPlayRecord;",
            ">;"
        }
    .end annotation
.end field

.field private simulator_gba_cfg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorAdPlayRecord;",
            ">;"
        }
    .end annotation
.end field

.field private simulator_gold_finger_cfg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorAdPlayRecord;",
            ">;"
        }
    .end annotation
.end field

.field private simulator_jj_cfg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorAdPlayRecord;",
            ">;"
        }
    .end annotation
.end field

.field private simulator_psp_cfg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorAdPlayRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/dto/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getPlayConfig(Ljava/util/List;)Lcom/join/mgps/dto/SimulatorAdPlayRecord;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorAdPlayRecord;",
            ">;)",
            "Lcom/join/mgps/dto/SimulatorAdPlayRecord;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/SimulatorAdPlayRecord;

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorAdPlayRecord;->canPlay()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getPlayConfig(Ljava/util/List;I)Lcom/join/mgps/dto/SimulatorAdPlayRecord;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorAdPlayRecord;",
            ">;I)",
            "Lcom/join/mgps/dto/SimulatorAdPlayRecord;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/SimulatorAdPlayRecord;

    .line 4
    invoke-virtual {v0, p2}, Lcom/join/mgps/dto/SimulatorAdPlayRecord;->typeOf(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getRecord_time()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/SimulatorAdPlayConfig;->record_time:J

    return-wide v0
.end method

.method public getSimulator_fc_cfg()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorAdPlayRecord;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorAdPlayConfig;->simulator_fc_cfg:Ljava/util/List;

    return-object v0
.end method

.method public getSimulator_gba_cfg()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorAdPlayRecord;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorAdPlayConfig;->simulator_gba_cfg:Ljava/util/List;

    return-object v0
.end method

.method public getSimulator_gold_finger_cfg()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorAdPlayRecord;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorAdPlayConfig;->simulator_gold_finger_cfg:Ljava/util/List;

    return-object v0
.end method

.method public getSimulator_jj_cfg()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorAdPlayRecord;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorAdPlayConfig;->simulator_jj_cfg:Ljava/util/List;

    return-object v0
.end method

.method public getSimulator_psp_cfg()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorAdPlayRecord;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorAdPlayConfig;->simulator_psp_cfg:Ljava/util/List;

    return-object v0
.end method

.method public needReset()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/SimulatorAdPlayConfig;->record_time:J

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setRecord_time(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/SimulatorAdPlayConfig;->record_time:J

    return-void
.end method

.method public setSimulator_fc_cfg(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorAdPlayRecord;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorAdPlayConfig;->simulator_fc_cfg:Ljava/util/List;

    return-void
.end method

.method public setSimulator_gba_cfg(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorAdPlayRecord;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorAdPlayConfig;->simulator_gba_cfg:Ljava/util/List;

    return-void
.end method

.method public setSimulator_gold_finger_cfg(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorAdPlayRecord;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorAdPlayConfig;->simulator_gold_finger_cfg:Ljava/util/List;

    return-void
.end method

.method public setSimulator_jj_cfg(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorAdPlayRecord;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorAdPlayConfig;->simulator_jj_cfg:Ljava/util/List;

    return-void
.end method

.method public setSimulator_psp_cfg(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorAdPlayRecord;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorAdPlayConfig;->simulator_psp_cfg:Ljava/util/List;

    return-void
.end method
