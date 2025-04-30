.class public final Lcom/papa91/battle/protocol/Params$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Params.java"

# interfaces
.implements Lcom/papa91/battle/protocol/ParamsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/battle/protocol/Params;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/papa91/battle/protocol/Params;",
        "Lcom/papa91/battle/protocol/Params$Builder;",
        ">;",
        "Lcom/papa91/battle/protocol/ParamsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/papa91/battle/protocol/Params;->access$000()Lcom/papa91/battle/protocol/Params;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/papa91/battle/protocol/Params$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Params$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAllowPCJoin()Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-static {v0}, Lcom/papa91/battle/protocol/Params;->access$5300(Lcom/papa91/battle/protocol/Params;)V

    return-object p0
.end method

.method public clearAllowPeripheralJoin()Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-static {v0}, Lcom/papa91/battle/protocol/Params;->access$1800(Lcom/papa91/battle/protocol/Params;)V

    return-object p0
.end method

.method public clearAllowSpectatorJoin()Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-static {v0}, Lcom/papa91/battle/protocol/Params;->access$1600(Lcom/papa91/battle/protocol/Params;)V

    return-object p0
.end method

.method public clearBattleArea()Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-static {v0}, Lcom/papa91/battle/protocol/Params;->access$4100(Lcom/papa91/battle/protocol/Params;)V

    return-object p0
.end method

.method public clearChallengeCoins()Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-static {v0}, Lcom/papa91/battle/protocol/Params;->access$1100(Lcom/papa91/battle/protocol/Params;)V

    return-object p0
.end method

.method public clearChannelType()Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-static {v0}, Lcom/papa91/battle/protocol/Params;->access$4400(Lcom/papa91/battle/protocol/Params;)V

    return-object p0
.end method

.method public clearClosePosition()Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-static {v0}, Lcom/papa91/battle/protocol/Params;->access$2000(Lcom/papa91/battle/protocol/Params;)V

    return-object p0
.end method

.method public clearCollectionId()Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-static {v0}, Lcom/papa91/battle/protocol/Params;->access$4600(Lcom/papa91/battle/protocol/Params;)V

    return-object p0
.end method

.method public clearDeviceId()Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-static {v0}, Lcom/papa91/battle/protocol/Params;->access$3700(Lcom/papa91/battle/protocol/Params;)V

    return-object p0
.end method

.method public clearDisableMobileJoin()Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-static {v0}, Lcom/papa91/battle/protocol/Params;->access$5500(Lcom/papa91/battle/protocol/Params;)V

    return-object p0
.end method

.method public clearFightId()Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-static {v0}, Lcom/papa91/battle/protocol/Params;->access$3100(Lcom/papa91/battle/protocol/Params;)V

    return-object p0
.end method

.method public clearFromLive()Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-static {v0}, Lcom/papa91/battle/protocol/Params;->access$4800(Lcom/papa91/battle/protocol/Params;)V

    return-object p0
.end method

.method public clearGameId()Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-static {v0}, Lcom/papa91/battle/protocol/Params;->access$700(Lcom/papa91/battle/protocol/Params;)V

    return-object p0
.end method

.method public clearMergeMessageChannel()Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-static {v0}, Lcom/papa91/battle/protocol/Params;->access$5700(Lcom/papa91/battle/protocol/Params;)V

    return-object p0
.end method

.method public clearPassword()Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-static {v0}, Lcom/papa91/battle/protocol/Params;->access$1300(Lcom/papa91/battle/protocol/Params;)V

    return-object p0
.end method

.method public clearPingVal()Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-static {v0}, Lcom/papa91/battle/protocol/Params;->access$3300(Lcom/papa91/battle/protocol/Params;)V

    return-object p0
.end method

.method public clearPlayMode()Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-static {v0}, Lcom/papa91/battle/protocol/Params;->access$5100(Lcom/papa91/battle/protocol/Params;)V

    return-object p0
.end method

.method public clearRoomId()Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-static {v0}, Lcom/papa91/battle/protocol/Params;->access$900(Lcom/papa91/battle/protocol/Params;)V

    return-object p0
.end method

.method public clearRoomPositionIndex()Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-static {v0}, Lcom/papa91/battle/protocol/Params;->access$2200(Lcom/papa91/battle/protocol/Params;)V

    return-object p0
.end method

.method public clearRoomType()Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-static {v0}, Lcom/papa91/battle/protocol/Params;->access$2500(Lcom/papa91/battle/protocol/Params;)V

    return-object p0
.end method

.method public clearSilent()Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-static {v0}, Lcom/papa91/battle/protocol/Params;->access$2700(Lcom/papa91/battle/protocol/Params;)V

    return-object p0
.end method

.method public clearTimestamp()Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-static {v0}, Lcom/papa91/battle/protocol/Params;->access$3500(Lcom/papa91/battle/protocol/Params;)V

    return-object p0
.end method

.method public clearToken()Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-static {v0}, Lcom/papa91/battle/protocol/Params;->access$400(Lcom/papa91/battle/protocol/Params;)V

    return-object p0
.end method

.method public clearUid()Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-static {v0}, Lcom/papa91/battle/protocol/Params;->access$200(Lcom/papa91/battle/protocol/Params;)V

    return-object p0
.end method

.method public clearUsePeripheral()Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-static {v0}, Lcom/papa91/battle/protocol/Params;->access$2900(Lcom/papa91/battle/protocol/Params;)V

    return-object p0
.end method

.method public getAllowPCJoin()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Params;->getAllowPCJoin()Z

    move-result v0

    return v0
.end method

.method public getAllowPeripheralJoin()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Params;->getAllowPeripheralJoin()Z

    move-result v0

    return v0
.end method

.method public getAllowSpectatorJoin()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Params;->getAllowSpectatorJoin()Z

    move-result v0

    return v0
.end method

.method public getBattleArea()Lcom/papa91/battle/protocol/BattleArea;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Params;->getBattleArea()Lcom/papa91/battle/protocol/BattleArea;

    move-result-object v0

    return-object v0
.end method

.method public getBattleAreaValue()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Params;->getBattleAreaValue()I

    move-result v0

    return v0
.end method

.method public getChallengeCoins()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Params;->getChallengeCoins()I

    move-result v0

    return v0
.end method

.method public getChannelType()Lcom/papa91/battle/protocol/Params$ChannelType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Params;->getChannelType()Lcom/papa91/battle/protocol/Params$ChannelType;

    move-result-object v0

    return-object v0
.end method

.method public getChannelTypeValue()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Params;->getChannelTypeValue()I

    move-result v0

    return v0
.end method

.method public getClosePosition()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Params;->getClosePosition()Z

    move-result v0

    return v0
.end method

.method public getCollectionId()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Params;->getCollectionId()I

    move-result v0

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Params;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Params;->getDeviceIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDisableMobileJoin()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Params;->getDisableMobileJoin()Z

    move-result v0

    return v0
.end method

.method public getFightId()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Params;->getFightId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFromLive()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Params;->getFromLive()Z

    move-result v0

    return v0
.end method

.method public getGameId()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Params;->getGameId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMergeMessageChannel()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Params;->getMergeMessageChannel()Z

    move-result v0

    return v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Params;->getPassword()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPasswordBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Params;->getPasswordBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPingVal()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Params;->getPingVal()I

    move-result v0

    return v0
.end method

.method public getPlayMode()Lcom/papa91/battle/protocol/Params$ServerPlayMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Params;->getPlayMode()Lcom/papa91/battle/protocol/Params$ServerPlayMode;

    move-result-object v0

    return-object v0
.end method

.method public getPlayModeValue()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Params;->getPlayModeValue()I

    move-result v0

    return v0
.end method

.method public getRoomId()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Params;->getRoomId()I

    move-result v0

    return v0
.end method

.method public getRoomPositionIndex()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Params;->getRoomPositionIndex()I

    move-result v0

    return v0
.end method

.method public getRoomType()Lcom/papa91/battle/protocol/Params$RoomType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Params;->getRoomType()Lcom/papa91/battle/protocol/Params$RoomType;

    move-result-object v0

    return-object v0
.end method

.method public getRoomTypeValue()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Params;->getRoomTypeValue()I

    move-result v0

    return v0
.end method

.method public getSilent()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Params;->getSilent()Z

    move-result v0

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Params;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Params;->getToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Params;->getTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Params;->getUid()I

    move-result v0

    return v0
.end method

.method public getUsePeripheral()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Params;->getUsePeripheral()Z

    move-result v0

    return v0
.end method

.method public setAllowPCJoin(Z)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Params;->access$5200(Lcom/papa91/battle/protocol/Params;Z)V

    return-object p0
.end method

.method public setAllowPeripheralJoin(Z)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Params;->access$1700(Lcom/papa91/battle/protocol/Params;Z)V

    return-object p0
.end method

.method public setAllowSpectatorJoin(Z)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Params;->access$1500(Lcom/papa91/battle/protocol/Params;Z)V

    return-object p0
.end method

.method public setBattleArea(Lcom/papa91/battle/protocol/BattleArea;)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Params;->access$4000(Lcom/papa91/battle/protocol/Params;Lcom/papa91/battle/protocol/BattleArea;)V

    return-object p0
.end method

.method public setBattleAreaValue(I)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Params;->access$3900(Lcom/papa91/battle/protocol/Params;I)V

    return-object p0
.end method

.method public setChallengeCoins(I)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Params;->access$1000(Lcom/papa91/battle/protocol/Params;I)V

    return-object p0
.end method

.method public setChannelType(Lcom/papa91/battle/protocol/Params$ChannelType;)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Params;->access$4300(Lcom/papa91/battle/protocol/Params;Lcom/papa91/battle/protocol/Params$ChannelType;)V

    return-object p0
.end method

.method public setChannelTypeValue(I)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Params;->access$4200(Lcom/papa91/battle/protocol/Params;I)V

    return-object p0
.end method

.method public setClosePosition(Z)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Params;->access$1900(Lcom/papa91/battle/protocol/Params;Z)V

    return-object p0
.end method

.method public setCollectionId(I)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Params;->access$4500(Lcom/papa91/battle/protocol/Params;I)V

    return-object p0
.end method

.method public setDeviceId(Ljava/lang/String;)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Params;->access$3600(Lcom/papa91/battle/protocol/Params;Ljava/lang/String;)V

    return-object p0
.end method

.method public setDeviceIdBytes(Lcom/google/protobuf/ByteString;)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Params;->access$3800(Lcom/papa91/battle/protocol/Params;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setDisableMobileJoin(Z)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Params;->access$5400(Lcom/papa91/battle/protocol/Params;Z)V

    return-object p0
.end method

.method public setFightId(J)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-static {v0, p1, p2}, Lcom/papa91/battle/protocol/Params;->access$3000(Lcom/papa91/battle/protocol/Params;J)V

    return-object p0
.end method

.method public setFromLive(Z)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Params;->access$4700(Lcom/papa91/battle/protocol/Params;Z)V

    return-object p0
.end method

.method public setGameId(J)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-static {v0, p1, p2}, Lcom/papa91/battle/protocol/Params;->access$600(Lcom/papa91/battle/protocol/Params;J)V

    return-object p0
.end method

.method public setMergeMessageChannel(Z)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Params;->access$5600(Lcom/papa91/battle/protocol/Params;Z)V

    return-object p0
.end method

.method public setPassword(Ljava/lang/String;)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Params;->access$1200(Lcom/papa91/battle/protocol/Params;Ljava/lang/String;)V

    return-object p0
.end method

.method public setPasswordBytes(Lcom/google/protobuf/ByteString;)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Params;->access$1400(Lcom/papa91/battle/protocol/Params;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPingVal(I)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Params;->access$3200(Lcom/papa91/battle/protocol/Params;I)V

    return-object p0
.end method

.method public setPlayMode(Lcom/papa91/battle/protocol/Params$ServerPlayMode;)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Params;->access$5000(Lcom/papa91/battle/protocol/Params;Lcom/papa91/battle/protocol/Params$ServerPlayMode;)V

    return-object p0
.end method

.method public setPlayModeValue(I)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Params;->access$4900(Lcom/papa91/battle/protocol/Params;I)V

    return-object p0
.end method

.method public setRoomId(I)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Params;->access$800(Lcom/papa91/battle/protocol/Params;I)V

    return-object p0
.end method

.method public setRoomPositionIndex(I)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Params;->access$2100(Lcom/papa91/battle/protocol/Params;I)V

    return-object p0
.end method

.method public setRoomType(Lcom/papa91/battle/protocol/Params$RoomType;)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Params;->access$2400(Lcom/papa91/battle/protocol/Params;Lcom/papa91/battle/protocol/Params$RoomType;)V

    return-object p0
.end method

.method public setRoomTypeValue(I)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Params;->access$2300(Lcom/papa91/battle/protocol/Params;I)V

    return-object p0
.end method

.method public setSilent(Z)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Params;->access$2600(Lcom/papa91/battle/protocol/Params;Z)V

    return-object p0
.end method

.method public setTimestamp(J)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-static {v0, p1, p2}, Lcom/papa91/battle/protocol/Params;->access$3400(Lcom/papa91/battle/protocol/Params;J)V

    return-object p0
.end method

.method public setToken(Ljava/lang/String;)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Params;->access$300(Lcom/papa91/battle/protocol/Params;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTokenBytes(Lcom/google/protobuf/ByteString;)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Params;->access$500(Lcom/papa91/battle/protocol/Params;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setUid(I)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Params;->access$100(Lcom/papa91/battle/protocol/Params;I)V

    return-object p0
.end method

.method public setUsePeripheral(Z)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Params;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Params;->access$2800(Lcom/papa91/battle/protocol/Params;Z)V

    return-object p0
.end method
