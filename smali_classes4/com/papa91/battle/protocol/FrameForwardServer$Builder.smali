.class public final Lcom/papa91/battle/protocol/FrameForwardServer$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "FrameForwardServer.java"

# interfaces
.implements Lcom/papa91/battle/protocol/FrameForwardServerOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/battle/protocol/FrameForwardServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/papa91/battle/protocol/FrameForwardServer;",
        "Lcom/papa91/battle/protocol/FrameForwardServer$Builder;",
        ">;",
        "Lcom/papa91/battle/protocol/FrameForwardServerOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/papa91/battle/protocol/FrameForwardServer;->access$000()Lcom/papa91/battle/protocol/FrameForwardServer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/papa91/battle/protocol/FrameForwardServer$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/FrameForwardServer$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearHost()Lcom/papa91/battle/protocol/FrameForwardServer$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/FrameForwardServer;

    invoke-static {v0}, Lcom/papa91/battle/protocol/FrameForwardServer;->access$200(Lcom/papa91/battle/protocol/FrameForwardServer;)V

    return-object p0
.end method

.method public clearPort()Lcom/papa91/battle/protocol/FrameForwardServer$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/FrameForwardServer;

    invoke-static {v0}, Lcom/papa91/battle/protocol/FrameForwardServer;->access$500(Lcom/papa91/battle/protocol/FrameForwardServer;)V

    return-object p0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/FrameForwardServer;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/FrameForwardServer;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHostBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/FrameForwardServer;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/FrameForwardServer;->getHostBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/FrameForwardServer;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/FrameForwardServer;->getPort()I

    move-result v0

    return v0
.end method

.method public setHost(Ljava/lang/String;)Lcom/papa91/battle/protocol/FrameForwardServer$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/FrameForwardServer;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/FrameForwardServer;->access$100(Lcom/papa91/battle/protocol/FrameForwardServer;Ljava/lang/String;)V

    return-object p0
.end method

.method public setHostBytes(Lcom/google/protobuf/ByteString;)Lcom/papa91/battle/protocol/FrameForwardServer$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/FrameForwardServer;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/FrameForwardServer;->access$300(Lcom/papa91/battle/protocol/FrameForwardServer;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPort(I)Lcom/papa91/battle/protocol/FrameForwardServer$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/papa91/battle/protocol/FrameForwardServer;

    invoke-static {v0, p1}, Lcom/papa91/battle/protocol/FrameForwardServer;->access$400(Lcom/papa91/battle/protocol/FrameForwardServer;I)V

    return-object p0
.end method
