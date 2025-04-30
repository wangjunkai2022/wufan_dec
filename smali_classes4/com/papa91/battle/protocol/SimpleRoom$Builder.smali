.class public final Lcom/papa91/battle/protocol/SimpleRoom$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SimpleRoom.java"

# interfaces
.implements Lcom/papa91/battle/protocol/SimpleRoomOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/battle/protocol/SimpleRoom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/papa91/battle/protocol/SimpleRoom;",
        "Lcom/papa91/battle/protocol/SimpleRoom$Builder;",
        ">;",
        "Lcom/papa91/battle/protocol/SimpleRoomOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/papa91/battle/protocol/SimpleRoom;->access$000()Lcom/papa91/battle/protocol/SimpleRoom;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/papa91/battle/protocol/SimpleRoom$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllPlayerList(Ljava/lang/Iterable;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/papa91/battle/protocol/RoomPosition;",
            ">;)",
            "Lcom/papa91/battle/protocol/SimpleRoom$Builder;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$6800(Lcom/papa91/battle/protocol/SimpleRoom;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addPlayerList(ILcom/papa91/battle/protocol/RoomPosition$Builder;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0, p1, p2}, Lcom/papa91/battle/protocol/SimpleRoom;->access$6700(Lcom/papa91/battle/protocol/SimpleRoom;ILcom/papa91/battle/protocol/RoomPosition$Builder;)V

    return-object p0
.end method

.method public addPlayerList(ILcom/papa91/battle/protocol/RoomPosition;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0, p1, p2}, Lcom/papa91/battle/protocol/SimpleRoom;->access$6500(Lcom/papa91/battle/protocol/SimpleRoom;ILcom/papa91/battle/protocol/RoomPosition;)V

    return-object p0
.end method

.method public addPlayerList(Lcom/papa91/battle/protocol/RoomPosition$Builder;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$6600(Lcom/papa91/battle/protocol/SimpleRoom;Lcom/papa91/battle/protocol/RoomPosition$Builder;)V

    return-object p0
.end method

.method public addPlayerList(Lcom/papa91/battle/protocol/RoomPosition;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$6400(Lcom/papa91/battle/protocol/SimpleRoom;Lcom/papa91/battle/protocol/RoomPosition;)V

    return-object p0
.end method

.method public clearAllowPCJoin()Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->access$6100(Lcom/papa91/battle/protocol/SimpleRoom;)V

    return-object p0
.end method

.method public clearAllowPeripheralJoin()Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->access$2100(Lcom/papa91/battle/protocol/SimpleRoom;)V

    return-object p0
.end method

.method public clearAllowSpectatorJoin()Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->access$1900(Lcom/papa91/battle/protocol/SimpleRoom;)V

    return-object p0
.end method

.method public clearAvatar()Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->access$5800(Lcom/papa91/battle/protocol/SimpleRoom;)V

    return-object p0
.end method

.method public clearBattleArea()Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->access$4900(Lcom/papa91/battle/protocol/SimpleRoom;)V

    return-object p0
.end method

.method public clearBattleTitle()Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->access$4000(Lcom/papa91/battle/protocol/SimpleRoom;)V

    return-object p0
.end method

.method public clearBattleTitleColor()Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->access$4300(Lcom/papa91/battle/protocol/SimpleRoom;)V

    return-object p0
.end method

.method public clearChallengeCoins()Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->access$2300(Lcom/papa91/battle/protocol/SimpleRoom;)V

    return-object p0
.end method

.method public clearCollectionId()Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->access$5400(Lcom/papa91/battle/protocol/SimpleRoom;)V

    return-object p0
.end method

.method public clearCopper()Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->access$3600(Lcom/papa91/battle/protocol/SimpleRoom;)V

    return-object p0
.end method

.method public clearCreateAt()Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->access$1100(Lcom/papa91/battle/protocol/SimpleRoom;)V

    return-object p0
.end method

.method public clearElite()Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->access$3400(Lcom/papa91/battle/protocol/SimpleRoom;)V

    return-object p0
.end method

.method public clearGameId()Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->access$400(Lcom/papa91/battle/protocol/SimpleRoom;)V

    return-object p0
.end method

.method public clearGameName()Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->access$5100(Lcom/papa91/battle/protocol/SimpleRoom;)V

    return-object p0
.end method

.method public clearHasJoinPassword()Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->access$1700(Lcom/papa91/battle/protocol/SimpleRoom;)V

    return-object p0
.end method

.method public clearHasPeripheralPlayer()Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->access$3800(Lcom/papa91/battle/protocol/SimpleRoom;)V

    return-object p0
.end method

.method public clearLeaderId()Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->access$7200(Lcom/papa91/battle/protocol/SimpleRoom;)V

    return-object p0
.end method

.method public clearNickname()Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->access$600(Lcom/papa91/battle/protocol/SimpleRoom;)V

    return-object p0
.end method

.method public clearPlaySeconds()Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->access$2800(Lcom/papa91/battle/protocol/SimpleRoom;)V

    return-object p0
.end method

.method public clearPlayTimestamp()Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->access$4600(Lcom/papa91/battle/protocol/SimpleRoom;)V

    return-object p0
.end method

.method public clearPlayerList()Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->access$6900(Lcom/papa91/battle/protocol/SimpleRoom;)V

    return-object p0
.end method

.method public clearRoomCategory()Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->access$7500(Lcom/papa91/battle/protocol/SimpleRoom;)V

    return-object p0
.end method

.method public clearRoomId()Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->access$200(Lcom/papa91/battle/protocol/SimpleRoom;)V

    return-object p0
.end method

.method public clearSeatsNumber()Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->access$1300(Lcom/papa91/battle/protocol/SimpleRoom;)V

    return-object p0
.end method

.method public clearSitDownloadNumber()Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->access$1500(Lcom/papa91/battle/protocol/SimpleRoom;)V

    return-object p0
.end method

.method public clearSpectatorNumber()Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->access$5600(Lcom/papa91/battle/protocol/SimpleRoom;)V

    return-object p0
.end method

.method public clearState()Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->access$2600(Lcom/papa91/battle/protocol/SimpleRoom;)V

    return-object p0
.end method

.method public clearTitle()Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->access$3200(Lcom/papa91/battle/protocol/SimpleRoom;)V

    return-object p0
.end method

.method public clearVip()Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->access$900(Lcom/papa91/battle/protocol/SimpleRoom;)V

    return-object p0
.end method

.method public getAllowPCJoin()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getAllowPCJoin()Z

    move-result v0

    return v0
.end method

.method public getAllowPeripheralJoin()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getAllowPeripheralJoin()Z

    move-result v0

    return v0
.end method

.method public getAllowSpectatorJoin()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getAllowSpectatorJoin()Z

    move-result v0

    return v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getAvatar()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAvatarBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getAvatarBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getBattleArea()Lcom/papa91/battle/protocol/BattleArea;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getBattleArea()Lcom/papa91/battle/protocol/BattleArea;

    move-result-object v0

    return-object v0
.end method

.method public getBattleAreaValue()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getBattleAreaValue()I

    move-result v0

    return v0
.end method

.method public getBattleTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getBattleTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBattleTitleBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getBattleTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getBattleTitleColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getBattleTitleColor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBattleTitleColorBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getBattleTitleColorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getChallengeCoins()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getChallengeCoins()I

    move-result v0

    return v0
.end method

.method public getCollectionId()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getCollectionId()I

    move-result v0

    return v0
.end method

.method public getCopper()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getCopper()I

    move-result v0

    return v0
.end method

.method public getCreateAt()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getCreateAt()J

    move-result-wide v0

    return-wide v0
.end method

.method public getElite()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getElite()Z

    move-result v0

    return v0
.end method

.method public getGameId()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getGameId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getGameName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getGameName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGameNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getGameNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getHasJoinPassword()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getHasJoinPassword()Z

    move-result v0

    return v0
.end method

.method public getHasPeripheralPlayer()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getHasPeripheralPlayer()Z

    move-result v0

    return v0
.end method

.method public getLeaderId()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getLeaderId()I

    move-result v0

    return v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getNickname()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNicknameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getNicknameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPlaySeconds()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getPlaySeconds()I

    move-result v0

    return v0
.end method

.method public getPlayTimestamp()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getPlayTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPlayerList(I)Lcom/papa91/battle/protocol/RoomPosition;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-virtual {v0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getPlayerList(I)Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object p1

    return-object p1
.end method

.method public getPlayerListCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getPlayerListCount()I

    move-result v0

    return v0
.end method

.method public getPlayerListList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/papa91/battle/protocol/RoomPosition;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    .line 2
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getPlayerListList()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRoomCategory()Lcom/papa91/battle/protocol/RoomCategory;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getRoomCategory()Lcom/papa91/battle/protocol/RoomCategory;

    move-result-object v0

    return-object v0
.end method

.method public getRoomCategoryValue()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getRoomCategoryValue()I

    move-result v0

    return v0
.end method

.method public getRoomId()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getRoomId()I

    move-result v0

    return v0
.end method

.method public getSeatsNumber()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getSeatsNumber()I

    move-result v0

    return v0
.end method

.method public getSitDownloadNumber()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getSitDownloadNumber()I

    move-result v0

    return v0
.end method

.method public getSpectatorNumber()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getSpectatorNumber()I

    move-result v0

    return v0
.end method

.method public getState()Lcom/papa91/battle/protocol/RoomState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getState()Lcom/papa91/battle/protocol/RoomState;

    move-result-object v0

    return-object v0
.end method

.method public getStateValue()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getStateValue()I

    move-result v0

    return v0
.end method

.method public getTitle()Lcom/papa91/battle/protocol/BattleTitle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getTitle()Lcom/papa91/battle/protocol/BattleTitle;

    move-result-object v0

    return-object v0
.end method

.method public getVip()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getVip()Z

    move-result v0

    return v0
.end method

.method public hasTitle()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->hasTitle()Z

    move-result v0

    return v0
.end method

.method public mergeTitle(Lcom/papa91/battle/protocol/BattleTitle;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$3100(Lcom/papa91/battle/protocol/SimpleRoom;Lcom/papa91/battle/protocol/BattleTitle;)V

    return-object p0
.end method

.method public removePlayerList(I)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$7000(Lcom/papa91/battle/protocol/SimpleRoom;I)V

    return-object p0
.end method

.method public setAllowPCJoin(Z)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$6000(Lcom/papa91/battle/protocol/SimpleRoom;Z)V

    return-object p0
.end method

.method public setAllowPeripheralJoin(Z)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$2000(Lcom/papa91/battle/protocol/SimpleRoom;Z)V

    return-object p0
.end method

.method public setAllowSpectatorJoin(Z)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$1800(Lcom/papa91/battle/protocol/SimpleRoom;Z)V

    return-object p0
.end method

.method public setAvatar(Ljava/lang/String;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$5700(Lcom/papa91/battle/protocol/SimpleRoom;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAvatarBytes(Lcom/google/protobuf/ByteString;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$5900(Lcom/papa91/battle/protocol/SimpleRoom;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setBattleArea(Lcom/papa91/battle/protocol/BattleArea;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$4800(Lcom/papa91/battle/protocol/SimpleRoom;Lcom/papa91/battle/protocol/BattleArea;)V

    return-object p0
.end method

.method public setBattleAreaValue(I)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$4700(Lcom/papa91/battle/protocol/SimpleRoom;I)V

    return-object p0
.end method

.method public setBattleTitle(Ljava/lang/String;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$3900(Lcom/papa91/battle/protocol/SimpleRoom;Ljava/lang/String;)V

    return-object p0
.end method

.method public setBattleTitleBytes(Lcom/google/protobuf/ByteString;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$4100(Lcom/papa91/battle/protocol/SimpleRoom;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setBattleTitleColor(Ljava/lang/String;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$4200(Lcom/papa91/battle/protocol/SimpleRoom;Ljava/lang/String;)V

    return-object p0
.end method

.method public setBattleTitleColorBytes(Lcom/google/protobuf/ByteString;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$4400(Lcom/papa91/battle/protocol/SimpleRoom;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setChallengeCoins(I)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$2200(Lcom/papa91/battle/protocol/SimpleRoom;I)V

    return-object p0
.end method

.method public setCollectionId(I)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$5300(Lcom/papa91/battle/protocol/SimpleRoom;I)V

    return-object p0
.end method

.method public setCopper(I)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$3500(Lcom/papa91/battle/protocol/SimpleRoom;I)V

    return-object p0
.end method

.method public setCreateAt(J)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0, p1, p2}, Lcom/papa91/battle/protocol/SimpleRoom;->access$1000(Lcom/papa91/battle/protocol/SimpleRoom;J)V

    return-object p0
.end method

.method public setElite(Z)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$3300(Lcom/papa91/battle/protocol/SimpleRoom;Z)V

    return-object p0
.end method

.method public setGameId(J)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0, p1, p2}, Lcom/papa91/battle/protocol/SimpleRoom;->access$300(Lcom/papa91/battle/protocol/SimpleRoom;J)V

    return-object p0
.end method

.method public setGameName(Ljava/lang/String;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$5000(Lcom/papa91/battle/protocol/SimpleRoom;Ljava/lang/String;)V

    return-object p0
.end method

.method public setGameNameBytes(Lcom/google/protobuf/ByteString;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$5200(Lcom/papa91/battle/protocol/SimpleRoom;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setHasJoinPassword(Z)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$1600(Lcom/papa91/battle/protocol/SimpleRoom;Z)V

    return-object p0
.end method

.method public setHasPeripheralPlayer(Z)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$3700(Lcom/papa91/battle/protocol/SimpleRoom;Z)V

    return-object p0
.end method

.method public setLeaderId(I)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$7100(Lcom/papa91/battle/protocol/SimpleRoom;I)V

    return-object p0
.end method

.method public setNickname(Ljava/lang/String;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$500(Lcom/papa91/battle/protocol/SimpleRoom;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNicknameBytes(Lcom/google/protobuf/ByteString;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$700(Lcom/papa91/battle/protocol/SimpleRoom;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPlaySeconds(I)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$2700(Lcom/papa91/battle/protocol/SimpleRoom;I)V

    return-object p0
.end method

.method public setPlayTimestamp(J)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0, p1, p2}, Lcom/papa91/battle/protocol/SimpleRoom;->access$4500(Lcom/papa91/battle/protocol/SimpleRoom;J)V

    return-object p0
.end method

.method public setPlayerList(ILcom/papa91/battle/protocol/RoomPosition$Builder;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0, p1, p2}, Lcom/papa91/battle/protocol/SimpleRoom;->access$6300(Lcom/papa91/battle/protocol/SimpleRoom;ILcom/papa91/battle/protocol/RoomPosition$Builder;)V

    return-object p0
.end method

.method public setPlayerList(ILcom/papa91/battle/protocol/RoomPosition;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0, p1, p2}, Lcom/papa91/battle/protocol/SimpleRoom;->access$6200(Lcom/papa91/battle/protocol/SimpleRoom;ILcom/papa91/battle/protocol/RoomPosition;)V

    return-object p0
.end method

.method public setRoomCategory(Lcom/papa91/battle/protocol/RoomCategory;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$7400(Lcom/papa91/battle/protocol/SimpleRoom;Lcom/papa91/battle/protocol/RoomCategory;)V

    return-object p0
.end method

.method public setRoomCategoryValue(I)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$7300(Lcom/papa91/battle/protocol/SimpleRoom;I)V

    return-object p0
.end method

.method public setRoomId(I)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$100(Lcom/papa91/battle/protocol/SimpleRoom;I)V

    return-object p0
.end method

.method public setSeatsNumber(I)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$1200(Lcom/papa91/battle/protocol/SimpleRoom;I)V

    return-object p0
.end method

.method public setSitDownloadNumber(I)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$1400(Lcom/papa91/battle/protocol/SimpleRoom;I)V

    return-object p0
.end method

.method public setSpectatorNumber(I)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$5500(Lcom/papa91/battle/protocol/SimpleRoom;I)V

    return-object p0
.end method

.method public setState(Lcom/papa91/battle/protocol/RoomState;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$2500(Lcom/papa91/battle/protocol/SimpleRoom;Lcom/papa91/battle/protocol/RoomState;)V

    return-object p0
.end method

.method public setStateValue(I)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$2400(Lcom/papa91/battle/protocol/SimpleRoom;I)V

    return-object p0
.end method

.method public setTitle(Lcom/papa91/battle/protocol/BattleTitle$Builder;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$3000(Lcom/papa91/battle/protocol/SimpleRoom;Lcom/papa91/battle/protocol/BattleTitle$Builder;)V

    return-object p0
.end method

.method public setTitle(Lcom/papa91/battle/protocol/BattleTitle;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$2900(Lcom/papa91/battle/protocol/SimpleRoom;Lcom/papa91/battle/protocol/BattleTitle;)V

    return-object p0
.end method

.method public setVip(Z)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$800(Lcom/papa91/battle/protocol/SimpleRoom;Z)V

    return-object p0
.end method
