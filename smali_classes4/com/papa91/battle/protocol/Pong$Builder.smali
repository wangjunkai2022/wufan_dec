.class public final Lcom/papa91/battle/protocol/Pong$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Pong.java"

# interfaces
.implements Lcom/papa91/battle/protocol/PongOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/battle/protocol/Pong;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/papa91/battle/protocol/Pong;",
        "Lcom/papa91/battle/protocol/Pong$Builder;",
        ">;",
        "Lcom/papa91/battle/protocol/PongOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/papa91/battle/protocol/Pong;->access$000()Lcom/papa91/battle/protocol/Pong;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/papa91/battle/protocol/Pong$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Pong$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearTimestamp()Lcom/papa91/battle/protocol/Pong$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Pong;

    invoke-static {v0}, Lcom/papa91/battle/protocol/Pong;->access$200(Lcom/papa91/battle/protocol/Pong;)V

    return-object p0
.end method

.method public getTimestamp()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Pong;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Pong;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public setTimestamp(J)Lcom/papa91/battle/protocol/Pong$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/Pong;

    invoke-static {v0, p1, p2}, Lcom/papa91/battle/protocol/Pong;->access$100(Lcom/papa91/battle/protocol/Pong;J)V

    return-object p0
.end method
