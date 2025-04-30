.class public final Lcom/wufan/friend/chat/protocol/c0$b;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "GameInfo.java"

# interfaces
.implements Lcom/wufan/friend/chat/protocol/d0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wufan/friend/chat/protocol/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/wufan/friend/chat/protocol/c0;",
        "Lcom/wufan/friend/chat/protocol/c0$b;",
        ">;",
        "Lcom/wufan/friend/chat/protocol/d0;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/wufan/friend/chat/protocol/c0;->S2()Lcom/wufan/friend/chat/protocol/c0;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wufan/friend/chat/protocol/c0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/c0$b;-><init>()V

    return-void
.end method


# virtual methods
.method public R0()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/c0;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/c0;->R0()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public S2()Lcom/wufan/friend/chat/protocol/c0$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/c0;

    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/c0;->U2(Lcom/wufan/friend/chat/protocol/c0;)V

    return-object p0
.end method

.method public T2()Lcom/wufan/friend/chat/protocol/c0$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/c0;

    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/c0;->W2(Lcom/wufan/friend/chat/protocol/c0;)V

    return-object p0
.end method

.method public U2(J)Lcom/wufan/friend/chat/protocol/c0$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/c0;

    invoke-static {v0, p1, p2}, Lcom/wufan/friend/chat/protocol/c0;->T2(Lcom/wufan/friend/chat/protocol/c0;J)V

    return-object p0
.end method

.method public V2(Ljava/lang/String;)Lcom/wufan/friend/chat/protocol/c0$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/c0;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/c0;->V2(Lcom/wufan/friend/chat/protocol/c0;Ljava/lang/String;)V

    return-object p0
.end method

.method public W2(Lcom/google/protobuf/ByteString;)Lcom/wufan/friend/chat/protocol/c0$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/c0;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/c0;->X2(Lcom/wufan/friend/chat/protocol/c0;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/c0;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/c0;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k1()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/c0;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/c0;->k1()J

    move-result-wide v0

    return-wide v0
.end method
