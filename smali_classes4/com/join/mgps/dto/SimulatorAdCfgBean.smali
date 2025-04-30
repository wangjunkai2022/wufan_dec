.class public Lcom/join/mgps/dto/SimulatorAdCfgBean;
.super Lcom/join/mgps/dto/BaseBean;
.source "SimulatorAdCfgBean.java"


# instance fields
.field private daily_times:I

.field private id:I

.field private interval_times:I

.field private open_cfg:Lcom/join/mgps/dto/SimulatorGoldAdCfgBean;

.field private play_cfg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PlayCfgBean;",
            ">;"
        }
    .end annotation
.end field

.field private show_times:I

.field private switch_state:I

.field private un_open_cfg:Lcom/join/mgps/dto/SimulatorGoldAdCfgBean;

.field private un_play_cfg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PlayCfgBean;",
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
.method public findCanPlayRecord(Ljava/util/List;)Lcom/join/mgps/dto/SimulatorAdPlayRecord;
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
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorAdPlayRecord;->canPlay()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public findCanPlayRecord(Ljava/util/List;I)Lcom/join/mgps/dto/SimulatorAdPlayRecord;
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
    invoke-virtual {v0, p2}, Lcom/join/mgps/dto/SimulatorAdPlayRecord;->typeOf(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getDaily_times()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SimulatorAdCfgBean;->daily_times:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SimulatorAdCfgBean;->id:I

    return v0
.end method

.method public getInterval_times()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SimulatorAdCfgBean;->interval_times:I

    return v0
.end method

.method public getOpen_cfg()Lcom/join/mgps/dto/SimulatorGoldAdCfgBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorAdCfgBean;->open_cfg:Lcom/join/mgps/dto/SimulatorGoldAdCfgBean;

    return-object v0
.end method

.method public getPlayCfgBean(Ljava/util/List;)Lcom/join/mgps/dto/PlayCfgBean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PlayCfgBean;",
            ">;)",
            "Lcom/join/mgps/dto/PlayCfgBean;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 9
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/PlayCfgBean;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getPlayCfgBean(Ljava/util/List;I)Lcom/join/mgps/dto/PlayCfgBean;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PlayCfgBean;",
            ">;I)",
            "Lcom/join/mgps/dto/PlayCfgBean;"
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

    check-cast v0, Lcom/join/mgps/dto/PlayCfgBean;

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_type()I

    move-result v1

    if-ne v1, p2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getPlayCfgBean(Ljava/util/List;Ljava/util/List;)Lcom/join/mgps/dto/PlayCfgBean;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PlayCfgBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorAdPlayRecord;",
            ">;)",
            "Lcom/join/mgps/dto/PlayCfgBean;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 3
    invoke-virtual {p0, p2}, Lcom/join/mgps/dto/SimulatorAdCfgBean;->findCanPlayRecord(Ljava/util/List;)Lcom/join/mgps/dto/SimulatorAdPlayRecord;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/PlayCfgBean;

    .line 5
    invoke-virtual {p2}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_type()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/SimulatorAdPlayRecord;->typeOf(I)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, p2

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/PlayCfgBean;

    .line 7
    invoke-virtual {v1}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_type()I

    move-result v2

    invoke-virtual {p0, p2, v2}, Lcom/join/mgps/dto/SimulatorAdCfgBean;->findCanPlayRecord(Ljava/util/List;I)Lcom/join/mgps/dto/SimulatorAdPlayRecord;

    move-result-object v2

    if-nez v2, :cond_2

    move-object v0, v1

    :cond_3
    :goto_0
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
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorAdCfgBean;->play_cfg:Ljava/util/List;

    return-object v0
.end method

.method public getShow_times()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SimulatorAdCfgBean;->show_times:I

    return v0
.end method

.method public getSwitch_state()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SimulatorAdCfgBean;->switch_state:I

    return v0
.end method

.method public getUn_open_cfg()Lcom/join/mgps/dto/SimulatorGoldAdCfgBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorAdCfgBean;->un_open_cfg:Lcom/join/mgps/dto/SimulatorGoldAdCfgBean;

    return-object v0
.end method

.method public getUn_play_cfg()Ljava/util/List;
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
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorAdCfgBean;->un_play_cfg:Ljava/util/List;

    return-object v0
.end method

.method public setDaily_times(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/join/mgps/dto/SimulatorAdCfgBean;->daily_times:I

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/SimulatorAdCfgBean;->id:I

    return-void
.end method

.method public setInterval_times(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/SimulatorAdCfgBean;->interval_times:I

    return-void
.end method

.method public setOpen_cfg(Lcom/join/mgps/dto/SimulatorGoldAdCfgBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorAdCfgBean;->open_cfg:Lcom/join/mgps/dto/SimulatorGoldAdCfgBean;

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
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorAdCfgBean;->play_cfg:Ljava/util/List;

    return-void
.end method

.method public setShow_times(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/SimulatorAdCfgBean;->show_times:I

    return-void
.end method

.method public setSwitch_state(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/SimulatorAdCfgBean;->switch_state:I

    return-void
.end method

.method public setUn_open_cfg(Lcom/join/mgps/dto/SimulatorGoldAdCfgBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorAdCfgBean;->un_open_cfg:Lcom/join/mgps/dto/SimulatorGoldAdCfgBean;

    return-void
.end method

.method public setUn_play_cfg(Ljava/util/List;)V
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
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorAdCfgBean;->un_play_cfg:Ljava/util/List;

    return-void
.end method
