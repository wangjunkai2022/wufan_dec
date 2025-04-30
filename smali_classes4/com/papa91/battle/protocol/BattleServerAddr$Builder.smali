.class public final Lcom/papa91/battle/protocol/BattleServerAddr$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "BattleServerAddr.java"

# interfaces
.implements Lcom/papa91/battle/protocol/BattleServerAddrOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/battle/protocol/BattleServerAddr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/papa91/battle/protocol/BattleServerAddr;",
        "Lcom/papa91/battle/protocol/BattleServerAddr$Builder;",
        ">;",
        "Lcom/papa91/battle/protocol/BattleServerAddrOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/papa91/battle/protocol/BattleServerAddr;->access$000()Lcom/papa91/battle/protocol/BattleServerAddr;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/papa91/battle/protocol/BattleServerAddr$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/BattleServerAddr$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearBattleRoomId()Lcom/papa91/battle/protocol/BattleServerAddr$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/BattleServerAddr;

    invoke-static {v0}, Lcom/papa91/battle/protocol/BattleServerAddr;->access$1000(Lcom/papa91/battle/protocol/BattleServerAddr;)V

    return-object p0
.end method

.method public clearHost()Lcom/papa91/battle/protocol/BattleServerAddr$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/BattleServerAddr;

    invoke-static {v0}, Lcom/papa91/battle/protocol/BattleServerAddr;->access$200(Lcom/papa91/battle/protocol/BattleServerAddr;)V

    return-object p0
.end method

.method public clearNetType()Lcom/papa91/battle/protocol/BattleServerAddr$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/BattleServerAddr;

    invoke-static {v0}, Lcom/papa91/battle/protocol/BattleServerAddr;->access$800(Lcom/papa91/battle/protocol/BattleServerAddr;)V

    return-object p0
.end method

.method public clearPort()Lcom/papa91/battle/protocol/BattleServerAddr$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/BattleServerAddr;

    invoke-static {v0}, Lcom/papa91/battle/protocol/BattleServerAddr;->access$500(Lcom/papa91/battle/protocol/BattleServerAddr;)V

    return-object p0
.end method

.method public getBattleRoomId()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/BattleServerAddr;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/BattleServerAddr;->getBattleRoomId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/BattleServerAddr;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/BattleServerAddr;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHostBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/BattleServerAddr;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/BattleServerAddr;->getHostBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNetType()Lcom/papa91/battle/protocol/BattleServerAddr$NetType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/BattleServerAddr;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/BattleServerAddr;->getNetType()Lcom/papa91/battle/protocol/BattleServerAddr$NetType;

    move-result-object v0

    return-object v0
.end method

.method public getNetTypeValue()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/BattleServerAddr;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/BattleServerAddr;->getNetTypeValue()I

    move-result v0

    return v0
.end method

.method public getPort()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/BattleServerAddr;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/BattleServerAddr;->getPort()I

    move-result v0

    return v0
.end method

.method public setBattleRoomId(J)Lcom/papa91/battle/protocol/BattleServerAddr$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/BattleServerAddr;

    invoke-static {v0, p1, p2}, Lcom/papa91/battle/protocol/BattleServerAddr;->access$900(Lcom/papa91/battle/protocol/BattleServerAddr;J)V

    return-object p0
.end method

.method public setHost(Ljava/lang/String;)Lcom/papa91/battle/protocol/BattleServerAddr$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/BattleServerAddr;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/BattleServerAddr;->access$100(Lcom/papa91/battle/protocol/BattleServerAddr;Ljava/lang/String;)V

    return-object p0
.end method

.method public setHostBytes(Lcom/google/protobuf/ByteString;)Lcom/papa91/battle/protocol/BattleServerAddr$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/BattleServerAddr;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/BattleServerAddr;->access$300(Lcom/papa91/battle/protocol/BattleServerAddr;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setNetType(Lcom/papa91/battle/protocol/BattleServerAddr$NetType;)Lcom/papa91/battle/protocol/BattleServerAddr$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/BattleServerAddr;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/BattleServerAddr;->access$700(Lcom/papa91/battle/protocol/BattleServerAddr;Lcom/papa91/battle/protocol/BattleServerAddr$NetType;)V

    return-object p0
.end method

.method public setNetTypeValue(I)Lcom/papa91/battle/protocol/BattleServerAddr$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/BattleServerAddr;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/BattleServerAddr;->access$600(Lcom/papa91/battle/protocol/BattleServerAddr;I)V

    return-object p0
.end method

.method public setPort(I)Lcom/papa91/battle/protocol/BattleServerAddr$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/BattleServerAddr;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/BattleServerAddr;->access$400(Lcom/papa91/battle/protocol/BattleServerAddr;I)V

    return-object p0
.end method
