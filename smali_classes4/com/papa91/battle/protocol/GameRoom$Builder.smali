.class public final Lcom/papa91/battle/protocol/GameRoom$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "GameRoom.java"

# interfaces
.implements Lcom/papa91/battle/protocol/GameRoomOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/battle/protocol/GameRoom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/papa91/battle/protocol/GameRoom;",
        "Lcom/papa91/battle/protocol/GameRoom$Builder;",
        ">;",
        "Lcom/papa91/battle/protocol/GameRoomOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/papa91/battle/protocol/GameRoom;->access$000()Lcom/papa91/battle/protocol/GameRoom;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/papa91/battle/protocol/GameRoom$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/GameRoom$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAllowPCJoin()Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0}, Lcom/papa91/battle/protocol/GameRoom;->access$7300(Lcom/papa91/battle/protocol/GameRoom;)V

    return-object p0
.end method

.method public clearAllowPeripheralJoin()Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0}, Lcom/papa91/battle/protocol/GameRoom;->access$1300(Lcom/papa91/battle/protocol/GameRoom;)V

    return-object p0
.end method

.method public clearAllowSpectatorJoin()Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0}, Lcom/papa91/battle/protocol/GameRoom;->access$1100(Lcom/papa91/battle/protocol/GameRoom;)V

    return-object p0
.end method

.method public clearBattleArea()Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0}, Lcom/papa91/battle/protocol/GameRoom;->access$6600(Lcom/papa91/battle/protocol/GameRoom;)V

    return-object p0
.end method

.method public clearBattleServerAddr()Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0}, Lcom/papa91/battle/protocol/GameRoom;->access$5400(Lcom/papa91/battle/protocol/GameRoom;)V

    return-object p0
.end method

.method public clearChallengeCoins()Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0}, Lcom/papa91/battle/protocol/GameRoom;->access$3300(Lcom/papa91/battle/protocol/GameRoom;)V

    return-object p0
.end method

.method public clearChatRoomId()Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0}, Lcom/papa91/battle/protocol/GameRoom;->access$8100(Lcom/papa91/battle/protocol/GameRoom;)V

    return-object p0
.end method

.method public clearCollectionId()Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0}, Lcom/papa91/battle/protocol/GameRoom;->access$7100(Lcom/papa91/battle/protocol/GameRoom;)V

    return-object p0
.end method

.method public clearCreateAt()Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0}, Lcom/papa91/battle/protocol/GameRoom;->access$5600(Lcom/papa91/battle/protocol/GameRoom;)V

    return-object p0
.end method

.method public clearCreateByUser()Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0}, Lcom/papa91/battle/protocol/GameRoom;->access$7900(Lcom/papa91/battle/protocol/GameRoom;)V

    return-object p0
.end method

.method public clearDisableMobileJoin()Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0}, Lcom/papa91/battle/protocol/GameRoom;->access$7700(Lcom/papa91/battle/protocol/GameRoom;)V

    return-object p0
.end method

.method public clearElite()Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0}, Lcom/papa91/battle/protocol/GameRoom;->access$4600(Lcom/papa91/battle/protocol/GameRoom;)V

    return-object p0
.end method

.method public clearFastMode()Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0}, Lcom/papa91/battle/protocol/GameRoom;->access$4800(Lcom/papa91/battle/protocol/GameRoom;)V

    return-object p0
.end method

.method public clearFightId()Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0}, Lcom/papa91/battle/protocol/GameRoom;->access$5000(Lcom/papa91/battle/protocol/GameRoom;)V

    return-object p0
.end method

.method public clearGameId()Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0}, Lcom/papa91/battle/protocol/GameRoom;->access$400(Lcom/papa91/battle/protocol/GameRoom;)V

    return-object p0
.end method

.method public clearGameName()Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0}, Lcom/papa91/battle/protocol/GameRoom;->access$6800(Lcom/papa91/battle/protocol/GameRoom;)V

    return-object p0
.end method

.method public clearGameType()Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0}, Lcom/papa91/battle/protocol/GameRoom;->access$6300(Lcom/papa91/battle/protocol/GameRoom;)V

    return-object p0
.end method

.method public clearHasJoinPassword()Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0}, Lcom/papa91/battle/protocol/GameRoom;->access$900(Lcom/papa91/battle/protocol/GameRoom;)V

    return-object p0
.end method

.method public clearLeader()Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0}, Lcom/papa91/battle/protocol/GameRoom;->access$4200(Lcom/papa91/battle/protocol/GameRoom;)V

    return-object p0
.end method

.method public clearOpenFastModeBtn()Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0}, Lcom/papa91/battle/protocol/GameRoom;->access$7500(Lcom/papa91/battle/protocol/GameRoom;)V

    return-object p0
.end method

.method public clearP1()Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0}, Lcom/papa91/battle/protocol/GameRoom;->access$1900(Lcom/papa91/battle/protocol/GameRoom;)V

    return-object p0
.end method

.method public clearP2()Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0}, Lcom/papa91/battle/protocol/GameRoom;->access$2300(Lcom/papa91/battle/protocol/GameRoom;)V

    return-object p0
.end method

.method public clearP3()Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0}, Lcom/papa91/battle/protocol/GameRoom;->access$2700(Lcom/papa91/battle/protocol/GameRoom;)V

    return-object p0
.end method

.method public clearP4()Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0}, Lcom/papa91/battle/protocol/GameRoom;->access$3100(Lcom/papa91/battle/protocol/GameRoom;)V

    return-object p0
.end method

.method public clearPassword()Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0}, Lcom/papa91/battle/protocol/GameRoom;->access$600(Lcom/papa91/battle/protocol/GameRoom;)V

    return-object p0
.end method

.method public clearPlayTimestamp()Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0}, Lcom/papa91/battle/protocol/GameRoom;->access$6000(Lcom/papa91/battle/protocol/GameRoom;)V

    return-object p0
.end method

.method public clearPlayerNumber()Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0}, Lcom/papa91/battle/protocol/GameRoom;->access$3500(Lcom/papa91/battle/protocol/GameRoom;)V

    return-object p0
.end method

.method public clearPlayerSeconds()Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0}, Lcom/papa91/battle/protocol/GameRoom;->access$4400(Lcom/papa91/battle/protocol/GameRoom;)V

    return-object p0
.end method

.method public clearRoomCategory()Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0}, Lcom/papa91/battle/protocol/GameRoom;->access$8500(Lcom/papa91/battle/protocol/GameRoom;)V

    return-object p0
.end method

.method public clearRoomId()Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0}, Lcom/papa91/battle/protocol/GameRoom;->access$200(Lcom/papa91/battle/protocol/GameRoom;)V

    return-object p0
.end method

.method public clearSeatsNumber()Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0}, Lcom/papa91/battle/protocol/GameRoom;->access$3700(Lcom/papa91/battle/protocol/GameRoom;)V

    return-object p0
.end method

.method public clearSilent()Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0}, Lcom/papa91/battle/protocol/GameRoom;->access$5800(Lcom/papa91/battle/protocol/GameRoom;)V

    return-object p0
.end method

.method public clearSpectatorNumber()Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0}, Lcom/papa91/battle/protocol/GameRoom;->access$1500(Lcom/papa91/battle/protocol/GameRoom;)V

    return-object p0
.end method

.method public clearState()Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0}, Lcom/papa91/battle/protocol/GameRoom;->access$4000(Lcom/papa91/battle/protocol/GameRoom;)V

    return-object p0
.end method

.method public getAllowPCJoin()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getAllowPCJoin()Z

    move-result v0

    return v0
.end method

.method public getAllowPeripheralJoin()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getAllowPeripheralJoin()Z

    move-result v0

    return v0
.end method

.method public getAllowSpectatorJoin()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getAllowSpectatorJoin()Z

    move-result v0

    return v0
.end method

.method public getBattleArea()Lcom/papa91/battle/protocol/BattleArea;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getBattleArea()Lcom/papa91/battle/protocol/BattleArea;

    move-result-object v0

    return-object v0
.end method

.method public getBattleAreaValue()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getBattleAreaValue()I

    move-result v0

    return v0
.end method

.method public getBattleServerAddr()Lcom/papa91/battle/protocol/BattleServerAddr;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getBattleServerAddr()Lcom/papa91/battle/protocol/BattleServerAddr;

    move-result-object v0

    return-object v0
.end method

.method public getChallengeCoins()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getChallengeCoins()I

    move-result v0

    return v0
.end method

.method public getChatRoomId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getChatRoomId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChatRoomIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getChatRoomIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getCollectionId()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getCollectionId()I

    move-result v0

    return v0
.end method

.method public getCreateAt()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getCreateAt()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCreateByUser()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getCreateByUser()I

    move-result v0

    return v0
.end method

.method public getDisableMobileJoin()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getDisableMobileJoin()Z

    move-result v0

    return v0
.end method

.method public getElite()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getElite()Z

    move-result v0

    return v0
.end method

.method public getFastMode()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getFastMode()Z

    move-result v0

    return v0
.end method

.method public getFightId()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getFightId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getGameId()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getGameName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getGameName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGameNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getGameNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getGameType()Lcom/papa91/battle/protocol/GameRoom$GameType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getGameType()Lcom/papa91/battle/protocol/GameRoom$GameType;

    move-result-object v0

    return-object v0
.end method

.method public getGameTypeValue()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getGameTypeValue()I

    move-result v0

    return v0
.end method

.method public getHasJoinPassword()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getHasJoinPassword()Z

    move-result v0

    return v0
.end method

.method public getLeader()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getLeader()I

    move-result v0

    return v0
.end method

.method public getOpenFastModeBtn()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getOpenFastModeBtn()Z

    move-result v0

    return v0
.end method

.method public getP1()Lcom/papa91/battle/protocol/RoomPosition;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getP1()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v0

    return-object v0
.end method

.method public getP2()Lcom/papa91/battle/protocol/RoomPosition;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getP2()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v0

    return-object v0
.end method

.method public getP3()Lcom/papa91/battle/protocol/RoomPosition;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getP3()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v0

    return-object v0
.end method

.method public getP4()Lcom/papa91/battle/protocol/RoomPosition;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getP4()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v0

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getPassword()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPasswordBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getPasswordBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPlayTimestamp()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getPlayTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPlayerNumber()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getPlayerNumber()I

    move-result v0

    return v0
.end method

.method public getPlayerSeconds()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getPlayerSeconds()I

    move-result v0

    return v0
.end method

.method public getRoomCategory()Lcom/papa91/battle/protocol/RoomCategory;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getRoomCategory()Lcom/papa91/battle/protocol/RoomCategory;

    move-result-object v0

    return-object v0
.end method

.method public getRoomCategoryValue()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getRoomCategoryValue()I

    move-result v0

    return v0
.end method

.method public getRoomId()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    move-result v0

    return v0
.end method

.method public getSeatsNumber()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getSeatsNumber()I

    move-result v0

    return v0
.end method

.method public getSilent()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getSilent()Z

    move-result v0

    return v0
.end method

.method public getSpectatorNumber()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getSpectatorNumber()I

    move-result v0

    return v0
.end method

.method public getState()Lcom/papa91/battle/protocol/RoomState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getState()Lcom/papa91/battle/protocol/RoomState;

    move-result-object v0

    return-object v0
.end method

.method public getStateValue()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getStateValue()I

    move-result v0

    return v0
.end method

.method public hasBattleServerAddr()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->hasBattleServerAddr()Z

    move-result v0

    return v0
.end method

.method public hasP1()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->hasP1()Z

    move-result v0

    return v0
.end method

.method public hasP2()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->hasP2()Z

    move-result v0

    return v0
.end method

.method public hasP3()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->hasP3()Z

    move-result v0

    return v0
.end method

.method public hasP4()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->hasP4()Z

    move-result v0

    return v0
.end method

.method public mergeBattleServerAddr(Lcom/papa91/battle/protocol/BattleServerAddr;)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/GameRoom;->access$5300(Lcom/papa91/battle/protocol/GameRoom;Lcom/papa91/battle/protocol/BattleServerAddr;)V

    return-object p0
.end method

.method public mergeP1(Lcom/papa91/battle/protocol/RoomPosition;)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/GameRoom;->access$1800(Lcom/papa91/battle/protocol/GameRoom;Lcom/papa91/battle/protocol/RoomPosition;)V

    return-object p0
.end method

.method public mergeP2(Lcom/papa91/battle/protocol/RoomPosition;)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/GameRoom;->access$2200(Lcom/papa91/battle/protocol/GameRoom;Lcom/papa91/battle/protocol/RoomPosition;)V

    return-object p0
.end method

.method public mergeP3(Lcom/papa91/battle/protocol/RoomPosition;)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/GameRoom;->access$2600(Lcom/papa91/battle/protocol/GameRoom;Lcom/papa91/battle/protocol/RoomPosition;)V

    return-object p0
.end method

.method public mergeP4(Lcom/papa91/battle/protocol/RoomPosition;)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/GameRoom;->access$3000(Lcom/papa91/battle/protocol/GameRoom;Lcom/papa91/battle/protocol/RoomPosition;)V

    return-object p0
.end method

.method public setAllowPCJoin(Z)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/GameRoom;->access$7200(Lcom/papa91/battle/protocol/GameRoom;Z)V

    return-object p0
.end method

.method public setAllowPeripheralJoin(Z)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/GameRoom;->access$1200(Lcom/papa91/battle/protocol/GameRoom;Z)V

    return-object p0
.end method

.method public setAllowSpectatorJoin(Z)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/GameRoom;->access$1000(Lcom/papa91/battle/protocol/GameRoom;Z)V

    return-object p0
.end method

.method public setBattleArea(Lcom/papa91/battle/protocol/BattleArea;)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/GameRoom;->access$6500(Lcom/papa91/battle/protocol/GameRoom;Lcom/papa91/battle/protocol/BattleArea;)V

    return-object p0
.end method

.method public setBattleAreaValue(I)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/GameRoom;->access$6400(Lcom/papa91/battle/protocol/GameRoom;I)V

    return-object p0
.end method

.method public setBattleServerAddr(Lcom/papa91/battle/protocol/BattleServerAddr$Builder;)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/GameRoom;->access$5200(Lcom/papa91/battle/protocol/GameRoom;Lcom/papa91/battle/protocol/BattleServerAddr$Builder;)V

    return-object p0
.end method

.method public setBattleServerAddr(Lcom/papa91/battle/protocol/BattleServerAddr;)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/GameRoom;->access$5100(Lcom/papa91/battle/protocol/GameRoom;Lcom/papa91/battle/protocol/BattleServerAddr;)V

    return-object p0
.end method

.method public setChallengeCoins(I)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/GameRoom;->access$3200(Lcom/papa91/battle/protocol/GameRoom;I)V

    return-object p0
.end method

.method public setChatRoomId(Ljava/lang/String;)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/GameRoom;->access$8000(Lcom/papa91/battle/protocol/GameRoom;Ljava/lang/String;)V

    return-object p0
.end method

.method public setChatRoomIdBytes(Lcom/google/protobuf/ByteString;)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/GameRoom;->access$8200(Lcom/papa91/battle/protocol/GameRoom;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setCollectionId(I)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/GameRoom;->access$7000(Lcom/papa91/battle/protocol/GameRoom;I)V

    return-object p0
.end method

.method public setCreateAt(J)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0, p1, p2}, Lcom/papa91/battle/protocol/GameRoom;->access$5500(Lcom/papa91/battle/protocol/GameRoom;J)V

    return-object p0
.end method

.method public setCreateByUser(I)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/GameRoom;->access$7800(Lcom/papa91/battle/protocol/GameRoom;I)V

    return-object p0
.end method

.method public setDisableMobileJoin(Z)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/GameRoom;->access$7600(Lcom/papa91/battle/protocol/GameRoom;Z)V

    return-object p0
.end method

.method public setElite(Z)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/GameRoom;->access$4500(Lcom/papa91/battle/protocol/GameRoom;Z)V

    return-object p0
.end method

.method public setFastMode(Z)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/GameRoom;->access$4700(Lcom/papa91/battle/protocol/GameRoom;Z)V

    return-object p0
.end method

.method public setFightId(J)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0, p1, p2}, Lcom/papa91/battle/protocol/GameRoom;->access$4900(Lcom/papa91/battle/protocol/GameRoom;J)V

    return-object p0
.end method

.method public setGameId(J)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0, p1, p2}, Lcom/papa91/battle/protocol/GameRoom;->access$300(Lcom/papa91/battle/protocol/GameRoom;J)V

    return-object p0
.end method

.method public setGameName(Ljava/lang/String;)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/GameRoom;->access$6700(Lcom/papa91/battle/protocol/GameRoom;Ljava/lang/String;)V

    return-object p0
.end method

.method public setGameNameBytes(Lcom/google/protobuf/ByteString;)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/GameRoom;->access$6900(Lcom/papa91/battle/protocol/GameRoom;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setGameType(Lcom/papa91/battle/protocol/GameRoom$GameType;)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/GameRoom;->access$6200(Lcom/papa91/battle/protocol/GameRoom;Lcom/papa91/battle/protocol/GameRoom$GameType;)V

    return-object p0
.end method

.method public setGameTypeValue(I)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/GameRoom;->access$6100(Lcom/papa91/battle/protocol/GameRoom;I)V

    return-object p0
.end method

.method public setHasJoinPassword(Z)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/GameRoom;->access$800(Lcom/papa91/battle/protocol/GameRoom;Z)V

    return-object p0
.end method

.method public setLeader(I)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/GameRoom;->access$4100(Lcom/papa91/battle/protocol/GameRoom;I)V

    return-object p0
.end method

.method public setOpenFastModeBtn(Z)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/GameRoom;->access$7400(Lcom/papa91/battle/protocol/GameRoom;Z)V

    return-object p0
.end method

.method public setP1(Lcom/papa91/battle/protocol/RoomPosition$Builder;)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/GameRoom;->access$1700(Lcom/papa91/battle/protocol/GameRoom;Lcom/papa91/battle/protocol/RoomPosition$Builder;)V

    return-object p0
.end method

.method public setP1(Lcom/papa91/battle/protocol/RoomPosition;)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/GameRoom;->access$1600(Lcom/papa91/battle/protocol/GameRoom;Lcom/papa91/battle/protocol/RoomPosition;)V

    return-object p0
.end method

.method public setP2(Lcom/papa91/battle/protocol/RoomPosition$Builder;)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/GameRoom;->access$2100(Lcom/papa91/battle/protocol/GameRoom;Lcom/papa91/battle/protocol/RoomPosition$Builder;)V

    return-object p0
.end method

.method public setP2(Lcom/papa91/battle/protocol/RoomPosition;)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/GameRoom;->access$2000(Lcom/papa91/battle/protocol/GameRoom;Lcom/papa91/battle/protocol/RoomPosition;)V

    return-object p0
.end method

.method public setP3(Lcom/papa91/battle/protocol/RoomPosition$Builder;)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/GameRoom;->access$2500(Lcom/papa91/battle/protocol/GameRoom;Lcom/papa91/battle/protocol/RoomPosition$Builder;)V

    return-object p0
.end method

.method public setP3(Lcom/papa91/battle/protocol/RoomPosition;)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/GameRoom;->access$2400(Lcom/papa91/battle/protocol/GameRoom;Lcom/papa91/battle/protocol/RoomPosition;)V

    return-object p0
.end method

.method public setP4(Lcom/papa91/battle/protocol/RoomPosition$Builder;)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/GameRoom;->access$2900(Lcom/papa91/battle/protocol/GameRoom;Lcom/papa91/battle/protocol/RoomPosition$Builder;)V

    return-object p0
.end method

.method public setP4(Lcom/papa91/battle/protocol/RoomPosition;)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/GameRoom;->access$2800(Lcom/papa91/battle/protocol/GameRoom;Lcom/papa91/battle/protocol/RoomPosition;)V

    return-object p0
.end method

.method public setPassword(Ljava/lang/String;)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/GameRoom;->access$500(Lcom/papa91/battle/protocol/GameRoom;Ljava/lang/String;)V

    return-object p0
.end method

.method public setPasswordBytes(Lcom/google/protobuf/ByteString;)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/GameRoom;->access$700(Lcom/papa91/battle/protocol/GameRoom;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPlayTimestamp(J)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0, p1, p2}, Lcom/papa91/battle/protocol/GameRoom;->access$5900(Lcom/papa91/battle/protocol/GameRoom;J)V

    return-object p0
.end method

.method public setPlayerNumber(I)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/GameRoom;->access$3400(Lcom/papa91/battle/protocol/GameRoom;I)V

    return-object p0
.end method

.method public setPlayerSeconds(I)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/GameRoom;->access$4300(Lcom/papa91/battle/protocol/GameRoom;I)V

    return-object p0
.end method

.method public setRoomCategory(Lcom/papa91/battle/protocol/RoomCategory;)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/GameRoom;->access$8400(Lcom/papa91/battle/protocol/GameRoom;Lcom/papa91/battle/protocol/RoomCategory;)V

    return-object p0
.end method

.method public setRoomCategoryValue(I)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/GameRoom;->access$8300(Lcom/papa91/battle/protocol/GameRoom;I)V

    return-object p0
.end method

.method public setRoomId(I)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/GameRoom;->access$100(Lcom/papa91/battle/protocol/GameRoom;I)V

    return-object p0
.end method

.method public setSeatsNumber(I)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/GameRoom;->access$3600(Lcom/papa91/battle/protocol/GameRoom;I)V

    return-object p0
.end method

.method public setSilent(Z)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/GameRoom;->access$5700(Lcom/papa91/battle/protocol/GameRoom;Z)V

    return-object p0
.end method

.method public setSpectatorNumber(I)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/GameRoom;->access$1400(Lcom/papa91/battle/protocol/GameRoom;I)V

    return-object p0
.end method

.method public setState(Lcom/papa91/battle/protocol/RoomState;)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/GameRoom;->access$3900(Lcom/papa91/battle/protocol/GameRoom;Lcom/papa91/battle/protocol/RoomState;)V

    return-object p0
.end method

.method public setStateValue(I)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/GameRoom;->access$3800(Lcom/papa91/battle/protocol/GameRoom;I)V

    return-object p0
.end method
