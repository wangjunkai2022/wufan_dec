.class public final Lcom/wufan/friend/chat/protocol/l0$b;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "KickNotification.java"

# interfaces
.implements Lcom/wufan/friend/chat/protocol/m0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wufan/friend/chat/protocol/l0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/wufan/friend/chat/protocol/l0;",
        "Lcom/wufan/friend/chat/protocol/l0$b;",
        ">;",
        "Lcom/wufan/friend/chat/protocol/m0;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/wufan/friend/chat/protocol/l0;->S2()Lcom/wufan/friend/chat/protocol/l0;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wufan/friend/chat/protocol/l0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/l0$b;-><init>()V

    return-void
.end method


# virtual methods
.method public L1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/l0;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/l0;->L1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public S2()Lcom/wufan/friend/chat/protocol/l0$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/l0;

    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/l0;->U2(Lcom/wufan/friend/chat/protocol/l0;)V

    return-object p0
.end method

.method public T2(Ljava/lang/String;)Lcom/wufan/friend/chat/protocol/l0$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/l0;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/l0;->T2(Lcom/wufan/friend/chat/protocol/l0;Ljava/lang/String;)V

    return-object p0
.end method

.method public U2(Lcom/google/protobuf/ByteString;)Lcom/wufan/friend/chat/protocol/l0$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/l0;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/l0;->V2(Lcom/wufan/friend/chat/protocol/l0;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public b2()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/l0;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/l0;->b2()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
