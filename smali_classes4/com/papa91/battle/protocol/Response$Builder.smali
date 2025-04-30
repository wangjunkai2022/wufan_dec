.class public final Lcom/papa91/battle/protocol/Response$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Response.java"

# interfaces
.implements Lcom/papa91/battle/protocol/ResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/battle/protocol/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/papa91/battle/protocol/Response;",
        "Lcom/papa91/battle/protocol/Response$Builder;",
        ">;",
        "Lcom/papa91/battle/protocol/ResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/papa91/battle/protocol/Response;->access$000()Lcom/papa91/battle/protocol/Response;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/papa91/battle/protocol/Response$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Response$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllBroadcastUsers(Ljava/lang/Iterable;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/papa91/battle/protocol/Response$Builder;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Response;->access$1900(Lcom/papa91/battle/protocol/Response;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllSimpleRoom(Ljava/lang/Iterable;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/papa91/battle/protocol/SimpleRoom;",
            ">;)",
            "Lcom/papa91/battle/protocol/Response$Builder;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Response;->access$3000(Lcom/papa91/battle/protocol/Response;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addBroadcastUsers(I)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Response;->access$1800(Lcom/papa91/battle/protocol/Response;I)V

    return-object p0
.end method

.method public addSimpleRoom(ILcom/papa91/battle/protocol/SimpleRoom$Builder;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-static {v0, p1, p2}, Lcom/papa91/battle/protocol/Response;->access$2900(Lcom/papa91/battle/protocol/Response;ILcom/papa91/battle/protocol/SimpleRoom$Builder;)V

    return-object p0
.end method

.method public addSimpleRoom(ILcom/papa91/battle/protocol/SimpleRoom;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-static {v0, p1, p2}, Lcom/papa91/battle/protocol/Response;->access$2700(Lcom/papa91/battle/protocol/Response;ILcom/papa91/battle/protocol/SimpleRoom;)V

    return-object p0
.end method

.method public addSimpleRoom(Lcom/papa91/battle/protocol/SimpleRoom$Builder;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Response;->access$2800(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/SimpleRoom$Builder;)V

    return-object p0
.end method

.method public addSimpleRoom(Lcom/papa91/battle/protocol/SimpleRoom;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Response;->access$2600(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/SimpleRoom;)V

    return-object p0
.end method

.method public clearAreaOnlinePeopleCount()Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-static {v0}, Lcom/papa91/battle/protocol/Response;->access$6500(Lcom/papa91/battle/protocol/Response;)V

    return-object p0
.end method

.method public clearBroadcastChannel()Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-static {v0}, Lcom/papa91/battle/protocol/Response;->access$6100(Lcom/papa91/battle/protocol/Response;)V

    return-object p0
.end method

.method public clearBroadcastUsers()Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-static {v0}, Lcom/papa91/battle/protocol/Response;->access$2000(Lcom/papa91/battle/protocol/Response;)V

    return-object p0
.end method

.method public clearEndDelimiter()Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-static {v0}, Lcom/papa91/battle/protocol/Response;->access$7100(Lcom/papa91/battle/protocol/Response;)V

    return-object p0
.end method

.method public clearError()Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-static {v0}, Lcom/papa91/battle/protocol/Response;->access$2200(Lcom/papa91/battle/protocol/Response;)V

    return-object p0
.end method

.method public clearFrameForwardServer()Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-static {v0}, Lcom/papa91/battle/protocol/Response;->access$5800(Lcom/papa91/battle/protocol/Response;)V

    return-object p0
.end method

.method public clearJoinSpectatorReason()Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-static {v0}, Lcom/papa91/battle/protocol/Response;->access$3700(Lcom/papa91/battle/protocol/Response;)V

    return-object p0
.end method

.method public clearKickInfo()Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-static {v0}, Lcom/papa91/battle/protocol/Response;->access$5000(Lcom/papa91/battle/protocol/Response;)V

    return-object p0
.end method

.method public clearLogicErrorCode()Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-static {v0}, Lcom/papa91/battle/protocol/Response;->access$3500(Lcom/papa91/battle/protocol/Response;)V

    return-object p0
.end method

.method public clearNotification()Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-static {v0}, Lcom/papa91/battle/protocol/Response;->access$5400(Lcom/papa91/battle/protocol/Response;)V

    return-object p0
.end method

.method public clearPong()Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-static {v0}, Lcom/papa91/battle/protocol/Response;->access$4200(Lcom/papa91/battle/protocol/Response;)V

    return-object p0
.end method

.method public clearRequestId()Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-static {v0}, Lcom/papa91/battle/protocol/Response;->access$500(Lcom/papa91/battle/protocol/Response;)V

    return-object p0
.end method

.method public clearResponse()Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-static {v0}, Lcom/papa91/battle/protocol/Response;->access$1600(Lcom/papa91/battle/protocol/Response;)V

    return-object p0
.end method

.method public clearRoom()Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-static {v0}, Lcom/papa91/battle/protocol/Response;->access$1200(Lcom/papa91/battle/protocol/Response;)V

    return-object p0
.end method

.method public clearRoomCounter()Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-static {v0}, Lcom/papa91/battle/protocol/Response;->access$4600(Lcom/papa91/battle/protocol/Response;)V

    return-object p0
.end method

.method public clearSimpleRoom()Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-static {v0}, Lcom/papa91/battle/protocol/Response;->access$3100(Lcom/papa91/battle/protocol/Response;)V

    return-object p0
.end method

.method public clearStatusCode()Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-static {v0}, Lcom/papa91/battle/protocol/Response;->access$300(Lcom/papa91/battle/protocol/Response;)V

    return-object p0
.end method

.method public clearType()Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-static {v0}, Lcom/papa91/battle/protocol/Response;->access$800(Lcom/papa91/battle/protocol/Response;)V

    return-object p0
.end method

.method public clearUserProfile()Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-static {v0}, Lcom/papa91/battle/protocol/Response;->access$6900(Lcom/papa91/battle/protocol/Response;)V

    return-object p0
.end method

.method public getAreaOnlinePeopleCount()Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Response;->getAreaOnlinePeopleCount()Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

    move-result-object v0

    return-object v0
.end method

.method public getBroadcastChannel()Lcom/papa91/battle/protocol/Response$BroadcastChannel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Response;->getBroadcastChannel()Lcom/papa91/battle/protocol/Response$BroadcastChannel;

    move-result-object v0

    return-object v0
.end method

.method public getBroadcastChannelValue()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Response;->getBroadcastChannelValue()I

    move-result v0

    return v0
.end method

.method public getBroadcastUsers(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-virtual {v0, p1}, Lcom/papa91/battle/protocol/Response;->getBroadcastUsers(I)I

    move-result p1

    return p1
.end method

.method public getBroadcastUsersCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Response;->getBroadcastUsersCount()I

    move-result v0

    return v0
.end method

.method public getBroadcastUsersList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    .line 2
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Response;->getBroadcastUsersList()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEndDelimiter()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Response;->getEndDelimiter()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEndDelimiterBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Response;->getEndDelimiterBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getError()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Response;->getError()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Response;->getErrorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getFrameForwardServer()Lcom/papa91/battle/protocol/FrameForwardServer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Response;->getFrameForwardServer()Lcom/papa91/battle/protocol/FrameForwardServer;

    move-result-object v0

    return-object v0
.end method

.method public getJoinSpectatorReason()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Response;->getJoinSpectatorReason()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJoinSpectatorReasonBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Response;->getJoinSpectatorReasonBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getKickInfo()Lcom/papa91/battle/protocol/KickInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Response;->getKickInfo()Lcom/papa91/battle/protocol/KickInfo;

    move-result-object v0

    return-object v0
.end method

.method public getLogicErrorCode()Lcom/papa91/battle/protocol/Response$LogicErrorCode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Response;->getLogicErrorCode()Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    move-result-object v0

    return-object v0
.end method

.method public getLogicErrorCodeValue()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Response;->getLogicErrorCodeValue()I

    move-result v0

    return v0
.end method

.method public getNotification()Lcom/papa91/battle/protocol/Notification;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Response;->getNotification()Lcom/papa91/battle/protocol/Notification;

    move-result-object v0

    return-object v0
.end method

.method public getPong()Lcom/papa91/battle/protocol/Pong;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Response;->getPong()Lcom/papa91/battle/protocol/Pong;

    move-result-object v0

    return-object v0
.end method

.method public getRequestId()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Response;->getRequestId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getResponse()Lcom/papa91/battle/protocol/Response;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Response;->getResponse()Lcom/papa91/battle/protocol/Response;

    move-result-object v0

    return-object v0
.end method

.method public getRoom()Lcom/papa91/battle/protocol/GameRoom;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Response;->getRoom()Lcom/papa91/battle/protocol/GameRoom;

    move-result-object v0

    return-object v0
.end method

.method public getRoomCounter()Lcom/papa91/battle/protocol/RoomCounter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Response;->getRoomCounter()Lcom/papa91/battle/protocol/RoomCounter;

    move-result-object v0

    return-object v0
.end method

.method public getSimpleRoom(I)Lcom/papa91/battle/protocol/SimpleRoom;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-virtual {v0, p1}, Lcom/papa91/battle/protocol/Response;->getSimpleRoom(I)Lcom/papa91/battle/protocol/SimpleRoom;

    move-result-object p1

    return-object p1
.end method

.method public getSimpleRoomCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Response;->getSimpleRoomCount()I

    move-result v0

    return v0
.end method

.method public getSimpleRoomList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/papa91/battle/protocol/SimpleRoom;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    .line 2
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Response;->getSimpleRoomList()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStatusCode()Lcom/papa91/battle/protocol/Response$StatusCode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Response;->getStatusCode()Lcom/papa91/battle/protocol/Response$StatusCode;

    move-result-object v0

    return-object v0
.end method

.method public getStatusCodeValue()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Response;->getStatusCodeValue()I

    move-result v0

    return v0
.end method

.method public getType()Lcom/papa91/battle/protocol/Response$ProtoType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Response;->getType()Lcom/papa91/battle/protocol/Response$ProtoType;

    move-result-object v0

    return-object v0
.end method

.method public getTypeValue()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Response;->getTypeValue()I

    move-result v0

    return v0
.end method

.method public getUserProfile()Lcom/papa91/battle/protocol/UserProfile;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Response;->getUserProfile()Lcom/papa91/battle/protocol/UserProfile;

    move-result-object v0

    return-object v0
.end method

.method public hasAreaOnlinePeopleCount()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Response;->hasAreaOnlinePeopleCount()Z

    move-result v0

    return v0
.end method

.method public hasFrameForwardServer()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Response;->hasFrameForwardServer()Z

    move-result v0

    return v0
.end method

.method public hasKickInfo()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Response;->hasKickInfo()Z

    move-result v0

    return v0
.end method

.method public hasNotification()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Response;->hasNotification()Z

    move-result v0

    return v0
.end method

.method public hasPong()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Response;->hasPong()Z

    move-result v0

    return v0
.end method

.method public hasResponse()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Response;->hasResponse()Z

    move-result v0

    return v0
.end method

.method public hasRoom()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Response;->hasRoom()Z

    move-result v0

    return v0
.end method

.method public hasRoomCounter()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Response;->hasRoomCounter()Z

    move-result v0

    return v0
.end method

.method public hasUserProfile()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Response;->hasUserProfile()Z

    move-result v0

    return v0
.end method

.method public mergeAreaOnlinePeopleCount(Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Response;->access$6400(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;)V

    return-object p0
.end method

.method public mergeFrameForwardServer(Lcom/papa91/battle/protocol/FrameForwardServer;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Response;->access$5700(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/FrameForwardServer;)V

    return-object p0
.end method

.method public mergeKickInfo(Lcom/papa91/battle/protocol/KickInfo;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Response;->access$4900(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/KickInfo;)V

    return-object p0
.end method

.method public mergeNotification(Lcom/papa91/battle/protocol/Notification;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Response;->access$5300(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/Notification;)V

    return-object p0
.end method

.method public mergePong(Lcom/papa91/battle/protocol/Pong;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Response;->access$4100(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/Pong;)V

    return-object p0
.end method

.method public mergeResponse(Lcom/papa91/battle/protocol/Response;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Response;->access$1500(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/Response;)V

    return-object p0
.end method

.method public mergeRoom(Lcom/papa91/battle/protocol/GameRoom;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Response;->access$1100(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/GameRoom;)V

    return-object p0
.end method

.method public mergeRoomCounter(Lcom/papa91/battle/protocol/RoomCounter;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Response;->access$4500(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/RoomCounter;)V

    return-object p0
.end method

.method public mergeUserProfile(Lcom/papa91/battle/protocol/UserProfile;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Response;->access$6800(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/UserProfile;)V

    return-object p0
.end method

.method public removeSimpleRoom(I)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Response;->access$3200(Lcom/papa91/battle/protocol/Response;I)V

    return-object p0
.end method

.method public setAreaOnlinePeopleCount(Lcom/papa91/battle/protocol/AreaOnlinePeopleCount$Builder;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Response;->access$6300(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/AreaOnlinePeopleCount$Builder;)V

    return-object p0
.end method

.method public setAreaOnlinePeopleCount(Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Response;->access$6200(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;)V

    return-object p0
.end method

.method public setBroadcastChannel(Lcom/papa91/battle/protocol/Response$BroadcastChannel;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Response;->access$6000(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/Response$BroadcastChannel;)V

    return-object p0
.end method

.method public setBroadcastChannelValue(I)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Response;->access$5900(Lcom/papa91/battle/protocol/Response;I)V

    return-object p0
.end method

.method public setBroadcastUsers(II)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-static {v0, p1, p2}, Lcom/papa91/battle/protocol/Response;->access$1700(Lcom/papa91/battle/protocol/Response;II)V

    return-object p0
.end method

.method public setEndDelimiter(Ljava/lang/String;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Response;->access$7000(Lcom/papa91/battle/protocol/Response;Ljava/lang/String;)V

    return-object p0
.end method

.method public setEndDelimiterBytes(Lcom/google/protobuf/ByteString;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Response;->access$7200(Lcom/papa91/battle/protocol/Response;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setError(Ljava/lang/String;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Response;->access$2100(Lcom/papa91/battle/protocol/Response;Ljava/lang/String;)V

    return-object p0
.end method

.method public setErrorBytes(Lcom/google/protobuf/ByteString;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Response;->access$2300(Lcom/papa91/battle/protocol/Response;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setFrameForwardServer(Lcom/papa91/battle/protocol/FrameForwardServer$Builder;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Response;->access$5600(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/FrameForwardServer$Builder;)V

    return-object p0
.end method

.method public setFrameForwardServer(Lcom/papa91/battle/protocol/FrameForwardServer;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Response;->access$5500(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/FrameForwardServer;)V

    return-object p0
.end method

.method public setJoinSpectatorReason(Ljava/lang/String;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Response;->access$3600(Lcom/papa91/battle/protocol/Response;Ljava/lang/String;)V

    return-object p0
.end method

.method public setJoinSpectatorReasonBytes(Lcom/google/protobuf/ByteString;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Response;->access$3800(Lcom/papa91/battle/protocol/Response;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setKickInfo(Lcom/papa91/battle/protocol/KickInfo$Builder;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Response;->access$4800(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/KickInfo$Builder;)V

    return-object p0
.end method

.method public setKickInfo(Lcom/papa91/battle/protocol/KickInfo;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Response;->access$4700(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/KickInfo;)V

    return-object p0
.end method

.method public setLogicErrorCode(Lcom/papa91/battle/protocol/Response$LogicErrorCode;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Response;->access$3400(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/Response$LogicErrorCode;)V

    return-object p0
.end method

.method public setLogicErrorCodeValue(I)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Response;->access$3300(Lcom/papa91/battle/protocol/Response;I)V

    return-object p0
.end method

.method public setNotification(Lcom/papa91/battle/protocol/Notification$Builder;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Response;->access$5200(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/Notification$Builder;)V

    return-object p0
.end method

.method public setNotification(Lcom/papa91/battle/protocol/Notification;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Response;->access$5100(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/Notification;)V

    return-object p0
.end method

.method public setPong(Lcom/papa91/battle/protocol/Pong$Builder;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Response;->access$4000(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/Pong$Builder;)V

    return-object p0
.end method

.method public setPong(Lcom/papa91/battle/protocol/Pong;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Response;->access$3900(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/Pong;)V

    return-object p0
.end method

.method public setRequestId(J)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-static {v0, p1, p2}, Lcom/papa91/battle/protocol/Response;->access$400(Lcom/papa91/battle/protocol/Response;J)V

    return-object p0
.end method

.method public setResponse(Lcom/papa91/battle/protocol/Response$Builder;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Response;->access$1400(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/Response$Builder;)V

    return-object p0
.end method

.method public setResponse(Lcom/papa91/battle/protocol/Response;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Response;->access$1300(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/Response;)V

    return-object p0
.end method

.method public setRoom(Lcom/papa91/battle/protocol/GameRoom$Builder;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Response;->access$1000(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/GameRoom$Builder;)V

    return-object p0
.end method

.method public setRoom(Lcom/papa91/battle/protocol/GameRoom;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Response;->access$900(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/GameRoom;)V

    return-object p0
.end method

.method public setRoomCounter(Lcom/papa91/battle/protocol/RoomCounter$Builder;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Response;->access$4400(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/RoomCounter$Builder;)V

    return-object p0
.end method

.method public setRoomCounter(Lcom/papa91/battle/protocol/RoomCounter;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Response;->access$4300(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/RoomCounter;)V

    return-object p0
.end method

.method public setSimpleRoom(ILcom/papa91/battle/protocol/SimpleRoom$Builder;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-static {v0, p1, p2}, Lcom/papa91/battle/protocol/Response;->access$2500(Lcom/papa91/battle/protocol/Response;ILcom/papa91/battle/protocol/SimpleRoom$Builder;)V

    return-object p0
.end method

.method public setSimpleRoom(ILcom/papa91/battle/protocol/SimpleRoom;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-static {v0, p1, p2}, Lcom/papa91/battle/protocol/Response;->access$2400(Lcom/papa91/battle/protocol/Response;ILcom/papa91/battle/protocol/SimpleRoom;)V

    return-object p0
.end method

.method public setStatusCode(Lcom/papa91/battle/protocol/Response$StatusCode;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Response;->access$200(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/Response$StatusCode;)V

    return-object p0
.end method

.method public setStatusCodeValue(I)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Response;->access$100(Lcom/papa91/battle/protocol/Response;I)V

    return-object p0
.end method

.method public setType(Lcom/papa91/battle/protocol/Response$ProtoType;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Response;->access$700(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/Response$ProtoType;)V

    return-object p0
.end method

.method public setTypeValue(I)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Response;->access$600(Lcom/papa91/battle/protocol/Response;I)V

    return-object p0
.end method

.method public setUserProfile(Lcom/papa91/battle/protocol/UserProfile$Builder;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Response;->access$6700(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/UserProfile$Builder;)V

    return-object p0
.end method

.method public setUserProfile(Lcom/papa91/battle/protocol/UserProfile;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Response;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/Response;->access$6600(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/UserProfile;)V

    return-object p0
.end method
