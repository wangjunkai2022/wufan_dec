.class public Lcom/papa/sim/statistic/StatDataCenterReq;
.super Ljava/lang/Object;
.source "StatDataCenterReq.java"


# instance fields
.field private adv_id:Ljava/lang/String;

.field private app_version:Ljava/lang/String;

.field private carrier:Ljava/lang/String;

.field private did:Ljava/lang/String;

.field private event:Ljava/lang/String;

.field private game_id:J

.field private game_time:J

.field private game_type:Ljava/lang/String;

.field private is_test:I

.field private is_visitors:I

.field private joystick_mac:Ljava/lang/String;

.field private joystick_name:Ljava/lang/String;

.field private mfr:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private nettype:Ljava/lang/String;

.field private node_id:I

.field private os:Ljava/lang/String;

.field private papa_allow_spectators:I

.field private papa_has_slot:I

.field private papa_joy_type:I

.field private phone:Ljava/lang/String;

.field private plug_id:I

.field private plug_version:Ljava/lang/String;

.field private res:Ljava/lang/String;

.field private uid:Ljava/lang/String;

.field private zone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/papa/sim/statistic/StatDataCenterReq;->node_id:I

    const-string v0, "0"

    .line 3
    iput-object v0, p0, Lcom/papa/sim/statistic/StatDataCenterReq;->carrier:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAdv_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/StatDataCenterReq;->adv_id:Ljava/lang/String;

    return-object v0
.end method

.method public getApp_version()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/StatDataCenterReq;->app_version:Ljava/lang/String;

    return-object v0
.end method

.method public getCarrier()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/StatDataCenterReq;->carrier:Ljava/lang/String;

    return-object v0
.end method

.method public getDid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/StatDataCenterReq;->did:Ljava/lang/String;

    return-object v0
.end method

.method public getEvent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/StatDataCenterReq;->event:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_id()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/papa/sim/statistic/StatDataCenterReq;->game_id:J

    return-wide v0
.end method

.method public getGame_time()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/papa/sim/statistic/StatDataCenterReq;->game_time:J

    return-wide v0
.end method

.method public getGame_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/StatDataCenterReq;->game_type:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_test()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/sim/statistic/StatDataCenterReq;->is_test:I

    return v0
.end method

.method public getIs_visitors()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/sim/statistic/StatDataCenterReq;->is_visitors:I

    return v0
.end method

.method public getJoystick_mac()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/StatDataCenterReq;->joystick_mac:Ljava/lang/String;

    return-object v0
.end method

.method public getJoystick_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/StatDataCenterReq;->joystick_name:Ljava/lang/String;

    return-object v0
.end method

.method public getMfr()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/StatDataCenterReq;->mfr:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/StatDataCenterReq;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getNettype()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/StatDataCenterReq;->nettype:Ljava/lang/String;

    return-object v0
.end method

.method public getNode_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/sim/statistic/StatDataCenterReq;->node_id:I

    return v0
.end method

.method public getOs()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/StatDataCenterReq;->os:Ljava/lang/String;

    return-object v0
.end method

.method public getPapa_allow_spectators()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/sim/statistic/StatDataCenterReq;->papa_allow_spectators:I

    return v0
.end method

.method public getPapa_has_slot()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/sim/statistic/StatDataCenterReq;->papa_has_slot:I

    return v0
.end method

.method public getPapa_joy_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/sim/statistic/StatDataCenterReq;->papa_joy_type:I

    return v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/StatDataCenterReq;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getPlug_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/sim/statistic/StatDataCenterReq;->plug_id:I

    return v0
.end method

.method public getPlug_version()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/StatDataCenterReq;->plug_version:Ljava/lang/String;

    return-object v0
.end method

.method public getRes()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/StatDataCenterReq;->res:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/StatDataCenterReq;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getZone()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/StatDataCenterReq;->zone:Ljava/lang/String;

    return-object v0
.end method

.method public setAdv_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/StatDataCenterReq;->adv_id:Ljava/lang/String;

    return-void
.end method

.method public setApp_version(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/StatDataCenterReq;->app_version:Ljava/lang/String;

    return-void
.end method

.method public setCarrier(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/StatDataCenterReq;->carrier:Ljava/lang/String;

    return-void
.end method

.method public setDid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/StatDataCenterReq;->did:Ljava/lang/String;

    return-void
.end method

.method public setEvent(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/StatDataCenterReq;->event:Ljava/lang/String;

    return-void
.end method

.method public setGame_id(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/papa/sim/statistic/StatDataCenterReq;->game_id:J

    return-void
.end method

.method public setGame_time(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/papa/sim/statistic/StatDataCenterReq;->game_time:J

    return-void
.end method

.method public setGame_type(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/StatDataCenterReq;->game_type:Ljava/lang/String;

    return-void
.end method

.method public setIs_test(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/sim/statistic/StatDataCenterReq;->is_test:I

    return-void
.end method

.method public setIs_visitors(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/sim/statistic/StatDataCenterReq;->is_visitors:I

    return-void
.end method

.method public setJoystick_mac(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/StatDataCenterReq;->joystick_mac:Ljava/lang/String;

    return-void
.end method

.method public setJoystick_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/StatDataCenterReq;->joystick_name:Ljava/lang/String;

    return-void
.end method

.method public setMfr(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/StatDataCenterReq;->mfr:Ljava/lang/String;

    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/StatDataCenterReq;->model:Ljava/lang/String;

    return-void
.end method

.method public setNettype(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/StatDataCenterReq;->nettype:Ljava/lang/String;

    return-void
.end method

.method public setNode_id(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/sim/statistic/StatDataCenterReq;->node_id:I

    return-void
.end method

.method public setOs(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/StatDataCenterReq;->os:Ljava/lang/String;

    return-void
.end method

.method public setPapa_allow_spectators(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/sim/statistic/StatDataCenterReq;->papa_allow_spectators:I

    return-void
.end method

.method public setPapa_has_slot(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/sim/statistic/StatDataCenterReq;->papa_has_slot:I

    return-void
.end method

.method public setPapa_joy_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/sim/statistic/StatDataCenterReq;->papa_joy_type:I

    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/StatDataCenterReq;->phone:Ljava/lang/String;

    return-void
.end method

.method public setPlug_id(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/sim/statistic/StatDataCenterReq;->plug_id:I

    return-void
.end method

.method public setPlug_version(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/StatDataCenterReq;->plug_version:Ljava/lang/String;

    return-void
.end method

.method public setRes(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/StatDataCenterReq;->res:Ljava/lang/String;

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/StatDataCenterReq;->uid:Ljava/lang/String;

    return-void
.end method

.method public setZone(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/StatDataCenterReq;->zone:Ljava/lang/String;

    return-void
.end method
