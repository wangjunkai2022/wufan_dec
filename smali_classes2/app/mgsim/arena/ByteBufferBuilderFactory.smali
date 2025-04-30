.class public Lapp/mgsim/arena/ByteBufferBuilderFactory;
.super Ljava/lang/Object;
.source "ByteBufferBuilderFactory.java"


# static fields
.field private static final version:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelSubscribeGameRoom(J)Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Request;->newBuilder()Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/papa91/battle/protocol/Request$ProtoType;->CANCEL_SUBSCRIBE_GAME_COLLECTION:Lcom/papa91/battle/protocol/Request$ProtoType;

    invoke-virtual {v0, v1}, Lcom/papa91/battle/protocol/Request$Builder;->setType(Lcom/papa91/battle/protocol/Request$ProtoType;)Lcom/papa91/battle/protocol/Request$Builder;

    .line 3
    invoke-static {}, Lcom/papa91/battle/protocol/Params;->newBuilder()Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/papa91/battle/protocol/Params;

    invoke-virtual {v0, v1}, Lcom/papa91/battle/protocol/Request$Builder;->setParams(Lcom/papa91/battle/protocol/Params;)Lcom/papa91/battle/protocol/Request$Builder;

    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1}, Lcom/papa91/battle/protocol/Request$Builder;->setVersion(I)Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/papa91/battle/protocol/Request$Builder;->setRequestId(J)Lcom/papa91/battle/protocol/Request$Builder;

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Request;

    invoke-static {p0}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->createByteBufferByBattleRequest(Lcom/papa91/battle/protocol/Request;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static closeRoomPosition(IIZJ)Ljava/nio/ByteBuffer;
    .locals 3

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Request;->newBuilder()Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq p1, v1, :cond_3

    if-eq p1, v2, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object p1, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_CLOSE_P4_POSITION:Lcom/papa91/battle/protocol/Request$ProtoType;

    invoke-virtual {v0, p1}, Lcom/papa91/battle/protocol/Request$Builder;->setType(Lcom/papa91/battle/protocol/Request$ProtoType;)Lcom/papa91/battle/protocol/Request$Builder;

    goto :goto_0

    .line 3
    :cond_1
    sget-object p1, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_CLOSE_P3_POSITION:Lcom/papa91/battle/protocol/Request$ProtoType;

    invoke-virtual {v0, p1}, Lcom/papa91/battle/protocol/Request$Builder;->setType(Lcom/papa91/battle/protocol/Request$ProtoType;)Lcom/papa91/battle/protocol/Request$Builder;

    goto :goto_0

    .line 4
    :cond_2
    sget-object p1, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_CLOSE_P2_POSITION:Lcom/papa91/battle/protocol/Request$ProtoType;

    invoke-virtual {v0, p1}, Lcom/papa91/battle/protocol/Request$Builder;->setType(Lcom/papa91/battle/protocol/Request$ProtoType;)Lcom/papa91/battle/protocol/Request$Builder;

    goto :goto_0

    .line 5
    :cond_3
    sget-object p1, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_CLOSE_P1_POSITION:Lcom/papa91/battle/protocol/Request$ProtoType;

    invoke-virtual {v0, p1}, Lcom/papa91/battle/protocol/Request$Builder;->setType(Lcom/papa91/battle/protocol/Request$ProtoType;)Lcom/papa91/battle/protocol/Request$Builder;

    .line 6
    :goto_0
    invoke-static {}, Lcom/papa91/battle/protocol/Params;->newBuilder()Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/papa91/battle/protocol/Params$Builder;->setRoomId(I)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/papa91/battle/protocol/Params$Builder;->setClosePosition(Z)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Params;

    invoke-virtual {v0, p0}, Lcom/papa91/battle/protocol/Request$Builder;->setParams(Lcom/papa91/battle/protocol/Params;)Lcom/papa91/battle/protocol/Request$Builder;

    .line 7
    invoke-virtual {v0, v2}, Lcom/papa91/battle/protocol/Request$Builder;->setVersion(I)Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object p0

    invoke-virtual {p0, p3, p4}, Lcom/papa91/battle/protocol/Request$Builder;->setRequestId(J)Lcom/papa91/battle/protocol/Request$Builder;

    .line 8
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Request;

    invoke-static {p0}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->createByteBufferByBattleRequest(Lcom/papa91/battle/protocol/Request;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method private static createByteBufferByBattleRequest(Lcom/papa91/battle/protocol/Request;)Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object p0

    .line 2
    array-length v0, p0

    add-int/lit8 v1, v0, 0x4

    .line 3
    invoke-static {v1}, Lapp/mgsim/arena/SocketUtils;->createBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 4
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5
    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v1
.end method

.method public static createRoom(IJJIIZZZZZ)Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Request;->newBuilder()Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object v0

    sget-object v1, Lcom/papa91/battle/protocol/Request$ProtoType;->CREATE_GAME_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

    invoke-virtual {v0, v1}, Lcom/papa91/battle/protocol/Request$Builder;->setType(Lcom/papa91/battle/protocol/Request$ProtoType;)Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/papa91/battle/protocol/Params;->newBuilder()Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object v1

    invoke-virtual {v1, p5}, Lcom/papa91/battle/protocol/Params$Builder;->setPingVal(I)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p5

    invoke-virtual {p5, p10}, Lcom/papa91/battle/protocol/Params$Builder;->setUsePeripheral(Z)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p5

    invoke-virtual {p5, p0}, Lcom/papa91/battle/protocol/Params$Builder;->setUid(I)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p0

    invoke-virtual {p0, p6}, Lcom/papa91/battle/protocol/Params$Builder;->setChallengeCoins(I)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p0

    invoke-virtual {p0, p7}, Lcom/papa91/battle/protocol/Params$Builder;->setAllowPeripheralJoin(Z)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p0

    invoke-virtual {p0, p8}, Lcom/papa91/battle/protocol/Params$Builder;->setAllowPCJoin(Z)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p0

    invoke-virtual {p0, p9}, Lcom/papa91/battle/protocol/Params$Builder;->setAllowSpectatorJoin(Z)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/papa91/battle/protocol/Params$Builder;->setGameId(J)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p0

    invoke-virtual {p0, p11}, Lcom/papa91/battle/protocol/Params$Builder;->setFromLive(Z)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Params;

    invoke-virtual {v0, p0}, Lcom/papa91/battle/protocol/Request$Builder;->setParams(Lcom/papa91/battle/protocol/Params;)Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object p0

    const/4 p1, 0x2

    .line 3
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/Request$Builder;->setVersion(I)Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object p0

    .line 4
    invoke-virtual {p0, p3, p4}, Lcom/papa91/battle/protocol/Request$Builder;->setRequestId(J)Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Request;

    .line 5
    invoke-static {p0}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->createByteBufferByBattleRequest(Lcom/papa91/battle/protocol/Request;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static fastJoinRoom(JIIZJ)Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Request;->newBuilder()Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/papa91/battle/protocol/Request$ProtoType;->QUICK_JOIN_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

    invoke-virtual {v0, v1}, Lcom/papa91/battle/protocol/Request$Builder;->setType(Lcom/papa91/battle/protocol/Request$ProtoType;)Lcom/papa91/battle/protocol/Request$Builder;

    .line 3
    invoke-static {}, Lcom/papa91/battle/protocol/Params;->newBuilder()Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/papa91/battle/protocol/Params$Builder;->setGameId(J)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/papa91/battle/protocol/Params$Builder;->setUsePeripheral(Z)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/papa91/battle/protocol/Params$Builder;->setPingVal(I)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/papa91/battle/protocol/Params$Builder;->setCollectionId(I)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Params;

    invoke-virtual {v0, p0}, Lcom/papa91/battle/protocol/Request$Builder;->setParams(Lcom/papa91/battle/protocol/Params;)Lcom/papa91/battle/protocol/Request$Builder;

    const/4 p0, 0x2

    .line 4
    invoke-virtual {v0, p0}, Lcom/papa91/battle/protocol/Request$Builder;->setVersion(I)Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object p0

    invoke-virtual {p0, p5, p6}, Lcom/papa91/battle/protocol/Request$Builder;->setRequestId(J)Lcom/papa91/battle/protocol/Request$Builder;

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Request;

    invoke-static {p0}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->createByteBufferByBattleRequest(Lcom/papa91/battle/protocol/Request;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static getFrameForwardServer(IJ)Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Request;->newBuilder()Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/papa91/battle/protocol/Request$ProtoType;->GET_UDP_FRAME_SERVER:Lcom/papa91/battle/protocol/Request$ProtoType;

    invoke-virtual {v0, v1}, Lcom/papa91/battle/protocol/Request$Builder;->setType(Lcom/papa91/battle/protocol/Request$ProtoType;)Lcom/papa91/battle/protocol/Request$Builder;

    .line 3
    invoke-static {}, Lcom/papa91/battle/protocol/Params;->newBuilder()Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/papa91/battle/protocol/Params$Builder;->setRoomId(I)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Params;

    invoke-virtual {v0, p0}, Lcom/papa91/battle/protocol/Request$Builder;->setParams(Lcom/papa91/battle/protocol/Params;)Lcom/papa91/battle/protocol/Request$Builder;

    const/4 p0, 0x2

    .line 4
    invoke-virtual {v0, p0}, Lcom/papa91/battle/protocol/Request$Builder;->setVersion(I)Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/papa91/battle/protocol/Request$Builder;->setRequestId(J)Lcom/papa91/battle/protocol/Request$Builder;

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Request;

    invoke-static {p0}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->createByteBufferByBattleRequest(Lcom/papa91/battle/protocol/Request;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static getKickPlayerInfo(IIIJ)Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Request;->newBuilder()Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/papa91/battle/protocol/Request$ProtoType;->GET_KICK_OUT_ROOM_POSITION_INFO:Lcom/papa91/battle/protocol/Request$ProtoType;

    invoke-virtual {v0, v1}, Lcom/papa91/battle/protocol/Request$Builder;->setType(Lcom/papa91/battle/protocol/Request$ProtoType;)Lcom/papa91/battle/protocol/Request$Builder;

    .line 3
    invoke-static {}, Lcom/papa91/battle/protocol/Params;->newBuilder()Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/papa91/battle/protocol/Params$Builder;->setRoomPositionIndex(I)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/papa91/battle/protocol/Params$Builder;->setRoomId(I)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/papa91/battle/protocol/Params$Builder;->setPingVal(I)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Params;

    invoke-virtual {v0, p0}, Lcom/papa91/battle/protocol/Request$Builder;->setParams(Lcom/papa91/battle/protocol/Params;)Lcom/papa91/battle/protocol/Request$Builder;

    const/4 p0, 0x2

    .line 4
    invoke-virtual {v0, p0}, Lcom/papa91/battle/protocol/Request$Builder;->setVersion(I)Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object p0

    invoke-virtual {p0, p3, p4}, Lcom/papa91/battle/protocol/Request$Builder;->setRequestId(J)Lcom/papa91/battle/protocol/Request$Builder;

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Request;

    invoke-static {p0}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->createByteBufferByBattleRequest(Lcom/papa91/battle/protocol/Request;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static joinBattleArea(Lcom/papa91/battle/protocol/BattleArea;J)Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Request;->newBuilder()Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/papa91/battle/protocol/Request$ProtoType;->JOIN_BATTLE_AREA:Lcom/papa91/battle/protocol/Request$ProtoType;

    invoke-virtual {v0, v1}, Lcom/papa91/battle/protocol/Request$Builder;->setType(Lcom/papa91/battle/protocol/Request$ProtoType;)Lcom/papa91/battle/protocol/Request$Builder;

    .line 3
    invoke-static {}, Lcom/papa91/battle/protocol/Params;->newBuilder()Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/papa91/battle/protocol/Params$Builder;->setBattleArea(Lcom/papa91/battle/protocol/BattleArea;)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Params;

    invoke-virtual {v0, p0}, Lcom/papa91/battle/protocol/Request$Builder;->setParams(Lcom/papa91/battle/protocol/Params;)Lcom/papa91/battle/protocol/Request$Builder;

    const/4 p0, 0x2

    .line 4
    invoke-virtual {v0, p0}, Lcom/papa91/battle/protocol/Request$Builder;->setVersion(I)Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/papa91/battle/protocol/Request$Builder;->setRequestId(J)Lcom/papa91/battle/protocol/Request$Builder;

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Request;

    invoke-static {p0}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->createByteBufferByBattleRequest(Lcom/papa91/battle/protocol/Request;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static joinRoom(ILjava/lang/String;ZIJ)Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/papa91/battle/protocol/Params;->newBuilder()Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/papa91/battle/protocol/Params$Builder;->setPingVal(I)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/papa91/battle/protocol/Params$Builder;->setUsePeripheral(Z)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/papa91/battle/protocol/Params$Builder;->setRoomId(I)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Params;

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/papa91/battle/protocol/Params;->newBuilder()Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/papa91/battle/protocol/Params$Builder;->setPingVal(I)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/papa91/battle/protocol/Params$Builder;->setUsePeripheral(Z)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/papa91/battle/protocol/Params$Builder;->setPassword(Ljava/lang/String;)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/papa91/battle/protocol/Params$Builder;->setRoomId(I)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Params;

    .line 4
    :goto_0
    invoke-static {}, Lcom/papa91/battle/protocol/Request;->newBuilder()Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object p1

    sget-object p2, Lcom/papa91/battle/protocol/Request$ProtoType;->JOIN_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

    invoke-virtual {p1, p2}, Lcom/papa91/battle/protocol/Request$Builder;->setType(Lcom/papa91/battle/protocol/Request$ProtoType;)Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object p1

    .line 5
    invoke-virtual {p1, p0}, Lcom/papa91/battle/protocol/Request$Builder;->setParams(Lcom/papa91/battle/protocol/Params;)Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object p0

    const/4 p1, 0x2

    .line 6
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/Request$Builder;->setVersion(I)Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object p0

    .line 7
    invoke-virtual {p0, p4, p5}, Lcom/papa91/battle/protocol/Request$Builder;->setRequestId(J)Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Request;

    .line 8
    invoke-static {p0}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->createByteBufferByBattleRequest(Lcom/papa91/battle/protocol/Request;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static kickOutRoomPosition(IIJ)Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Request;->newBuilder()Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/papa91/battle/protocol/Request$ProtoType;->KICK_OUT_ROOM_POSITION:Lcom/papa91/battle/protocol/Request$ProtoType;

    invoke-virtual {v0, v1}, Lcom/papa91/battle/protocol/Request$Builder;->setType(Lcom/papa91/battle/protocol/Request$ProtoType;)Lcom/papa91/battle/protocol/Request$Builder;

    .line 3
    invoke-static {}, Lcom/papa91/battle/protocol/Params;->newBuilder()Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/papa91/battle/protocol/Params$Builder;->setRoomId(I)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/Params$Builder;->setRoomPositionIndex(I)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Params;

    invoke-virtual {v0, p0}, Lcom/papa91/battle/protocol/Request$Builder;->setParams(Lcom/papa91/battle/protocol/Params;)Lcom/papa91/battle/protocol/Request$Builder;

    const/4 p0, 0x2

    .line 4
    invoke-virtual {v0, p0}, Lcom/papa91/battle/protocol/Request$Builder;->setVersion(I)Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/papa91/battle/protocol/Request$Builder;->setRequestId(J)Lcom/papa91/battle/protocol/Request$Builder;

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Request;

    invoke-static {p0}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->createByteBufferByBattleRequest(Lcom/papa91/battle/protocol/Request;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static leaveRoom(IJ)Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Request;->newBuilder()Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object v0

    sget-object v1, Lcom/papa91/battle/protocol/Request$ProtoType;->LEAVE_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

    invoke-virtual {v0, v1}, Lcom/papa91/battle/protocol/Request$Builder;->setType(Lcom/papa91/battle/protocol/Request$ProtoType;)Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/papa91/battle/protocol/Params;->newBuilder()Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/papa91/battle/protocol/Params$Builder;->setRoomId(I)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Params;

    invoke-virtual {v0, p0}, Lcom/papa91/battle/protocol/Request$Builder;->setParams(Lcom/papa91/battle/protocol/Params;)Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object p0

    const/4 v0, 0x2

    .line 3
    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/Request$Builder;->setVersion(I)Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object p0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/papa91/battle/protocol/Request$Builder;->setRequestId(J)Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Request;

    .line 5
    invoke-static {p0}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->createByteBufferByBattleRequest(Lcom/papa91/battle/protocol/Request;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static lobbyStartGame(IJ)Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Request;->newBuilder()Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/papa91/battle/protocol/Request$ProtoType;->LOBBY_START_GAME:Lcom/papa91/battle/protocol/Request$ProtoType;

    invoke-virtual {v0, v1}, Lcom/papa91/battle/protocol/Request$Builder;->setType(Lcom/papa91/battle/protocol/Request$ProtoType;)Lcom/papa91/battle/protocol/Request$Builder;

    .line 3
    invoke-static {}, Lcom/papa91/battle/protocol/Params;->newBuilder()Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/papa91/battle/protocol/Params$Builder;->setRoomId(I)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Params;

    invoke-virtual {v0, p0}, Lcom/papa91/battle/protocol/Request$Builder;->setParams(Lcom/papa91/battle/protocol/Params;)Lcom/papa91/battle/protocol/Request$Builder;

    const/4 p0, 0x2

    .line 4
    invoke-virtual {v0, p0}, Lcom/papa91/battle/protocol/Request$Builder;->setVersion(I)Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/papa91/battle/protocol/Request$Builder;->setRequestId(J)Lcom/papa91/battle/protocol/Request$Builder;

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Request;

    invoke-static {p0}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->createByteBufferByBattleRequest(Lcom/papa91/battle/protocol/Request;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static login(Ljava/lang/String;ILjava/lang/String;J)Ljava/nio/ByteBuffer;
    .locals 3

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Request;->newBuilder()Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object v0

    sget-object v1, Lcom/papa91/battle/protocol/Request$ProtoType;->LOGIN:Lcom/papa91/battle/protocol/Request$ProtoType;

    .line 2
    invoke-virtual {v0, v1}, Lcom/papa91/battle/protocol/Request$Builder;->setType(Lcom/papa91/battle/protocol/Request$ProtoType;)Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/papa91/battle/protocol/Params;->newBuilder()Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object v1

    sget-object v2, Lcom/papa91/battle/protocol/Params$ChannelType;->ANDROID:Lcom/papa91/battle/protocol/Params$ChannelType;

    invoke-virtual {v1, v2}, Lcom/papa91/battle/protocol/Params$Builder;->setChannelType(Lcom/papa91/battle/protocol/Params$ChannelType;)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/papa91/battle/protocol/Params$Builder;->setDeviceId(Ljava/lang/String;)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/papa91/battle/protocol/Params$Builder;->setUid(I)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/papa91/battle/protocol/Params$Builder;->setToken(Ljava/lang/String;)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Params;

    invoke-virtual {v0, p0}, Lcom/papa91/battle/protocol/Request$Builder;->setParams(Lcom/papa91/battle/protocol/Params;)Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object p0

    .line 4
    invoke-virtual {p0, p3, p4}, Lcom/papa91/battle/protocol/Request$Builder;->setRequestId(J)Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object p0

    const/4 p1, 0x2

    .line 5
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/Request$Builder;->setVersion(I)Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Request;

    .line 7
    invoke-static {p0}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->createByteBufferByBattleRequest(Lcom/papa91/battle/protocol/Request;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static ping(J)Ljava/nio/ByteBuffer;
    .locals 4

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Request;->newBuilder()Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object v0

    sget-object v1, Lcom/papa91/battle/protocol/Request$ProtoType;->PING:Lcom/papa91/battle/protocol/Request$ProtoType;

    invoke-virtual {v0, v1}, Lcom/papa91/battle/protocol/Request$Builder;->setType(Lcom/papa91/battle/protocol/Request$ProtoType;)Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/papa91/battle/protocol/Params;->newBuilder()Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/papa91/battle/protocol/Params$Builder;->setTimestamp(J)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa91/battle/protocol/Request$Builder;->setParams(Lcom/papa91/battle/protocol/Params$Builder;)Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object v0

    const/4 v1, 0x2

    .line 3
    invoke-virtual {v0, v1}, Lcom/papa91/battle/protocol/Request$Builder;->setVersion(I)Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p0, p1}, Lcom/papa91/battle/protocol/Request$Builder;->setRequestId(J)Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Request;

    .line 5
    invoke-static {p0}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->createByteBufferByBattleRequest(Lcom/papa91/battle/protocol/Request;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static playerReadyGame(IJ)Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Request;->newBuilder()Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/papa91/battle/protocol/Request$ProtoType;->PLAYER_READY_GAME:Lcom/papa91/battle/protocol/Request$ProtoType;

    invoke-virtual {v0, v1}, Lcom/papa91/battle/protocol/Request$Builder;->setType(Lcom/papa91/battle/protocol/Request$ProtoType;)Lcom/papa91/battle/protocol/Request$Builder;

    .line 3
    invoke-static {}, Lcom/papa91/battle/protocol/Params;->newBuilder()Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/papa91/battle/protocol/Params$Builder;->setRoomId(I)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Params;

    invoke-virtual {v0, p0}, Lcom/papa91/battle/protocol/Request$Builder;->setParams(Lcom/papa91/battle/protocol/Params;)Lcom/papa91/battle/protocol/Request$Builder;

    const/4 p0, 0x2

    .line 4
    invoke-virtual {v0, p0}, Lcom/papa91/battle/protocol/Request$Builder;->setVersion(I)Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/papa91/battle/protocol/Request$Builder;->setRequestId(J)Lcom/papa91/battle/protocol/Request$Builder;

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Request;

    invoke-static {p0}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->createByteBufferByBattleRequest(Lcom/papa91/battle/protocol/Request;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static searchRoomByID(IJ)Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Request;->newBuilder()Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/papa91/battle/protocol/Request$ProtoType;->SEARCH_ROOM_BY_ID:Lcom/papa91/battle/protocol/Request$ProtoType;

    invoke-virtual {v0, v1}, Lcom/papa91/battle/protocol/Request$Builder;->setType(Lcom/papa91/battle/protocol/Request$ProtoType;)Lcom/papa91/battle/protocol/Request$Builder;

    .line 3
    invoke-static {}, Lcom/papa91/battle/protocol/Params;->newBuilder()Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/papa91/battle/protocol/Params$Builder;->setRoomId(I)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Params;

    invoke-virtual {v0, p0}, Lcom/papa91/battle/protocol/Request$Builder;->setParams(Lcom/papa91/battle/protocol/Params;)Lcom/papa91/battle/protocol/Request$Builder;

    const/4 p0, 0x2

    .line 4
    invoke-virtual {v0, p0}, Lcom/papa91/battle/protocol/Request$Builder;->setVersion(I)Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/papa91/battle/protocol/Request$Builder;->setRequestId(J)Lcom/papa91/battle/protocol/Request$Builder;

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Request;

    invoke-static {p0}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->createByteBufferByBattleRequest(Lcom/papa91/battle/protocol/Request;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static setAllowPcJoin(IZJ)Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Request;->newBuilder()Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object v0

    sget-object v1, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_ALLOW_PC_JOIN:Lcom/papa91/battle/protocol/Request$ProtoType;

    invoke-virtual {v0, v1}, Lcom/papa91/battle/protocol/Request$Builder;->setType(Lcom/papa91/battle/protocol/Request$ProtoType;)Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/papa91/battle/protocol/Params;->newBuilder()Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/papa91/battle/protocol/Params$Builder;->setAllowPCJoin(Z)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/papa91/battle/protocol/Params$Builder;->setRoomId(I)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Params;

    invoke-virtual {v0, p0}, Lcom/papa91/battle/protocol/Request$Builder;->setParams(Lcom/papa91/battle/protocol/Params;)Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object p0

    const/4 p1, 0x2

    .line 3
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/Request$Builder;->setVersion(I)Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object p0

    .line 4
    invoke-virtual {p0, p2, p3}, Lcom/papa91/battle/protocol/Request$Builder;->setRequestId(J)Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Request;

    .line 5
    invoke-static {p0}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->createByteBufferByBattleRequest(Lcom/papa91/battle/protocol/Request;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static setAllowPeripheralJoin(IZJ)Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Request;->newBuilder()Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object v0

    sget-object v1, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_PERIPHERAL_JOIN_ATTR:Lcom/papa91/battle/protocol/Request$ProtoType;

    invoke-virtual {v0, v1}, Lcom/papa91/battle/protocol/Request$Builder;->setType(Lcom/papa91/battle/protocol/Request$ProtoType;)Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/papa91/battle/protocol/Params;->newBuilder()Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/papa91/battle/protocol/Params$Builder;->setAllowPeripheralJoin(Z)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/papa91/battle/protocol/Params$Builder;->setRoomId(I)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Params;

    invoke-virtual {v0, p0}, Lcom/papa91/battle/protocol/Request$Builder;->setParams(Lcom/papa91/battle/protocol/Params;)Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object p0

    const/4 p1, 0x2

    .line 3
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/Request$Builder;->setVersion(I)Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object p0

    .line 4
    invoke-virtual {p0, p2, p3}, Lcom/papa91/battle/protocol/Request$Builder;->setRequestId(J)Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Request;

    .line 5
    invoke-static {p0}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->createByteBufferByBattleRequest(Lcom/papa91/battle/protocol/Request;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static setAllowSpectatorJoin(IZJ)Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Request;->newBuilder()Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object v0

    sget-object v1, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_SPECTATOR_JOIN_ATTR:Lcom/papa91/battle/protocol/Request$ProtoType;

    invoke-virtual {v0, v1}, Lcom/papa91/battle/protocol/Request$Builder;->setType(Lcom/papa91/battle/protocol/Request$ProtoType;)Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/papa91/battle/protocol/Params;->newBuilder()Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/papa91/battle/protocol/Params$Builder;->setAllowSpectatorJoin(Z)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/papa91/battle/protocol/Params$Builder;->setRoomId(I)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Params;

    invoke-virtual {v0, p0}, Lcom/papa91/battle/protocol/Request$Builder;->setParams(Lcom/papa91/battle/protocol/Params;)Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object p0

    const/4 p1, 0x2

    .line 3
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/Request$Builder;->setVersion(I)Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object p0

    .line 4
    invoke-virtual {p0, p2, p3}, Lcom/papa91/battle/protocol/Request$Builder;->setRequestId(J)Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Request;

    .line 5
    invoke-static {p0}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->createByteBufferByBattleRequest(Lcom/papa91/battle/protocol/Request;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static setChallengeCoins(IIJ)Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Request;->newBuilder()Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object v0

    sget-object v1, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_CHALLENGE_COINS_ATTR:Lcom/papa91/battle/protocol/Request$ProtoType;

    invoke-virtual {v0, v1}, Lcom/papa91/battle/protocol/Request$Builder;->setType(Lcom/papa91/battle/protocol/Request$ProtoType;)Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/papa91/battle/protocol/Params;->newBuilder()Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/papa91/battle/protocol/Params$Builder;->setChallengeCoins(I)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/papa91/battle/protocol/Params$Builder;->setRoomId(I)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Params;

    invoke-virtual {v0, p0}, Lcom/papa91/battle/protocol/Request$Builder;->setParams(Lcom/papa91/battle/protocol/Params;)Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object p0

    const/4 p1, 0x2

    .line 3
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/Request$Builder;->setVersion(I)Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object p0

    .line 4
    invoke-virtual {p0, p2, p3}, Lcom/papa91/battle/protocol/Request$Builder;->setRequestId(J)Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Request;

    .line 5
    invoke-static {p0}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->createByteBufferByBattleRequest(Lcom/papa91/battle/protocol/Request;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static setRoomPassword(ILjava/lang/String;J)Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Request;->newBuilder()Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object v0

    sget-object v1, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_PASSWORD_ATTR:Lcom/papa91/battle/protocol/Request$ProtoType;

    invoke-virtual {v0, v1}, Lcom/papa91/battle/protocol/Request$Builder;->setType(Lcom/papa91/battle/protocol/Request$ProtoType;)Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/papa91/battle/protocol/Params;->newBuilder()Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/papa91/battle/protocol/Params$Builder;->setPassword(Ljava/lang/String;)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/papa91/battle/protocol/Params$Builder;->setRoomId(I)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Params;

    invoke-virtual {v0, p0}, Lcom/papa91/battle/protocol/Request$Builder;->setParams(Lcom/papa91/battle/protocol/Params;)Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object p0

    const/4 p1, 0x2

    .line 3
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/Request$Builder;->setVersion(I)Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object p0

    .line 4
    invoke-virtual {p0, p2, p3}, Lcom/papa91/battle/protocol/Request$Builder;->setRequestId(J)Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Request;

    .line 5
    invoke-static {p0}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->createByteBufferByBattleRequest(Lcom/papa91/battle/protocol/Request;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static setRoomServerPlayMode(IIJ)Ljava/nio/ByteBuffer;
    .locals 3

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Request;->newBuilder()Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object v0

    sget-object v1, Lcom/papa91/battle/protocol/Request$ProtoType;->SET_ROOM_SERVER_PLAY_MODE:Lcom/papa91/battle/protocol/Request$ProtoType;

    invoke-virtual {v0, v1}, Lcom/papa91/battle/protocol/Request$Builder;->setType(Lcom/papa91/battle/protocol/Request$ProtoType;)Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/papa91/battle/protocol/Params;->newBuilder()Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object v1

    const/4 v2, 0x1

    if-ne p0, v2, :cond_0

    .line 3
    sget-object p0, Lcom/papa91/battle/protocol/Params$ServerPlayMode;->FAST:Lcom/papa91/battle/protocol/Params$ServerPlayMode;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/papa91/battle/protocol/Params$ServerPlayMode;->ZONE:Lcom/papa91/battle/protocol/Params$ServerPlayMode;

    :goto_0
    invoke-virtual {v1, p0}, Lcom/papa91/battle/protocol/Params$Builder;->setPlayMode(Lcom/papa91/battle/protocol/Params$ServerPlayMode;)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p0

    .line 4
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/Params$Builder;->setRoomId(I)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Params;

    .line 6
    invoke-virtual {v0, p0}, Lcom/papa91/battle/protocol/Request$Builder;->setParams(Lcom/papa91/battle/protocol/Params;)Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object p0

    const/4 p1, 0x2

    .line 7
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/Request$Builder;->setVersion(I)Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object p0

    .line 8
    invoke-virtual {p0, p2, p3}, Lcom/papa91/battle/protocol/Request$Builder;->setRequestId(J)Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Request;

    .line 9
    invoke-static {p0}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->createByteBufferByBattleRequest(Lcom/papa91/battle/protocol/Request;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static shareJoinRoom(JIJLjava/lang/String;IZJ)Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/papa91/battle/protocol/Params;->newBuilder()Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p5

    invoke-virtual {p5, p0, p1}, Lcom/papa91/battle/protocol/Params$Builder;->setGameId(J)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p0

    invoke-virtual {p0, p6}, Lcom/papa91/battle/protocol/Params$Builder;->setPingVal(I)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p0

    invoke-virtual {p0, p3, p4}, Lcom/papa91/battle/protocol/Params$Builder;->setFightId(J)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p0

    invoke-virtual {p0, p7}, Lcom/papa91/battle/protocol/Params$Builder;->setUsePeripheral(Z)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/papa91/battle/protocol/Params$Builder;->setRoomId(I)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Params;

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/papa91/battle/protocol/Params;->newBuilder()Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/papa91/battle/protocol/Params$Builder;->setPassword(Ljava/lang/String;)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p5

    invoke-virtual {p5, p6}, Lcom/papa91/battle/protocol/Params$Builder;->setPingVal(I)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p5

    invoke-virtual {p5, p0, p1}, Lcom/papa91/battle/protocol/Params$Builder;->setGameId(J)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p0

    invoke-virtual {p0, p3, p4}, Lcom/papa91/battle/protocol/Params$Builder;->setFightId(J)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p0

    invoke-virtual {p0, p7}, Lcom/papa91/battle/protocol/Params$Builder;->setUsePeripheral(Z)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/papa91/battle/protocol/Params$Builder;->setRoomId(I)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Params;

    .line 4
    :goto_0
    invoke-static {}, Lcom/papa91/battle/protocol/Request;->newBuilder()Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object p1

    .line 5
    sget-object p2, Lcom/papa91/battle/protocol/Request$ProtoType;->SHARE_JOIN_ROOM:Lcom/papa91/battle/protocol/Request$ProtoType;

    invoke-virtual {p1, p2}, Lcom/papa91/battle/protocol/Request$Builder;->setType(Lcom/papa91/battle/protocol/Request$ProtoType;)Lcom/papa91/battle/protocol/Request$Builder;

    .line 6
    invoke-virtual {p1, p0}, Lcom/papa91/battle/protocol/Request$Builder;->setParams(Lcom/papa91/battle/protocol/Params;)Lcom/papa91/battle/protocol/Request$Builder;

    const/4 p0, 0x2

    .line 7
    invoke-virtual {p1, p0}, Lcom/papa91/battle/protocol/Request$Builder;->setVersion(I)Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object p0

    invoke-virtual {p0, p8, p9}, Lcom/papa91/battle/protocol/Request$Builder;->setRequestId(J)Lcom/papa91/battle/protocol/Request$Builder;

    .line 8
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Request;

    invoke-static {p0}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->createByteBufferByBattleRequest(Lcom/papa91/battle/protocol/Request;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static spectatorSit(IIIJ)Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Request;->newBuilder()Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/papa91/battle/protocol/Request$ProtoType;->ROOM_SPECTATOR_SIT:Lcom/papa91/battle/protocol/Request$ProtoType;

    invoke-virtual {v0, v1}, Lcom/papa91/battle/protocol/Request$Builder;->setType(Lcom/papa91/battle/protocol/Request$ProtoType;)Lcom/papa91/battle/protocol/Request$Builder;

    .line 3
    invoke-static {}, Lcom/papa91/battle/protocol/Params;->newBuilder()Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/papa91/battle/protocol/Params$Builder;->setRoomPositionIndex(I)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/papa91/battle/protocol/Params$Builder;->setRoomId(I)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/papa91/battle/protocol/Params$Builder;->setPingVal(I)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Params;

    invoke-virtual {v0, p0}, Lcom/papa91/battle/protocol/Request$Builder;->setParams(Lcom/papa91/battle/protocol/Params;)Lcom/papa91/battle/protocol/Request$Builder;

    const/4 p0, 0x2

    .line 4
    invoke-virtual {v0, p0}, Lcom/papa91/battle/protocol/Request$Builder;->setVersion(I)Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object p0

    invoke-virtual {p0, p3, p4}, Lcom/papa91/battle/protocol/Request$Builder;->setRequestId(J)Lcom/papa91/battle/protocol/Request$Builder;

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Request;

    invoke-static {p0}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->createByteBufferByBattleRequest(Lcom/papa91/battle/protocol/Request;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static subscribeGameRoom(ILcom/papa91/battle/protocol/Params$RoomType;J)Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Request;->newBuilder()Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object v0

    sget-object v1, Lcom/papa91/battle/protocol/Request$ProtoType;->SUBSCRIBE_GAME_COLLECTION:Lcom/papa91/battle/protocol/Request$ProtoType;

    invoke-virtual {v0, v1}, Lcom/papa91/battle/protocol/Request$Builder;->setType(Lcom/papa91/battle/protocol/Request$ProtoType;)Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/papa91/battle/protocol/Params;->newBuilder()Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/papa91/battle/protocol/Params$Builder;->setRoomType(Lcom/papa91/battle/protocol/Params$RoomType;)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/papa91/battle/protocol/Params$Builder;->setCollectionId(I)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Params;

    invoke-virtual {v0, p0}, Lcom/papa91/battle/protocol/Request$Builder;->setParams(Lcom/papa91/battle/protocol/Params;)Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object p0

    const/4 p1, 0x2

    .line 3
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/Request$Builder;->setVersion(I)Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object p0

    .line 4
    invoke-virtual {p0, p2, p3}, Lcom/papa91/battle/protocol/Request$Builder;->setRequestId(J)Lcom/papa91/battle/protocol/Request$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Request;

    .line 5
    invoke-static {p0}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->createByteBufferByBattleRequest(Lcom/papa91/battle/protocol/Request;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method
