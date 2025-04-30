.class public final Lcom/wufan/friend/chat/protocol/i$b;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ChatMessageArgs.java"

# interfaces
.implements Lcom/wufan/friend/chat/protocol/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wufan/friend/chat/protocol/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/wufan/friend/chat/protocol/i;",
        "Lcom/wufan/friend/chat/protocol/i$b;",
        ">;",
        "Lcom/wufan/friend/chat/protocol/j;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/wufan/friend/chat/protocol/i;->S2()Lcom/wufan/friend/chat/protocol/i;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wufan/friend/chat/protocol/i$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/i$b;-><init>()V

    return-void
.end method


# virtual methods
.method public S2()Lcom/wufan/friend/chat/protocol/i$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/i;

    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/i;->U2(Lcom/wufan/friend/chat/protocol/i;)V

    return-object p0
.end method

.method public T2(Ljava/lang/String;)Lcom/wufan/friend/chat/protocol/i$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/i;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/i;->T2(Lcom/wufan/friend/chat/protocol/i;Ljava/lang/String;)V

    return-object p0
.end method

.method public U2(Lcom/google/protobuf/ByteString;)Lcom/wufan/friend/chat/protocol/i$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/i;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/i;->V2(Lcom/wufan/friend/chat/protocol/i;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/i;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/i;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/i;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/i;->getMessageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
