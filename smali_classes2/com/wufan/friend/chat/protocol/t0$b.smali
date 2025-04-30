.class public final Lcom/wufan/friend/chat/protocol/t0$b;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LoginArgs.java"

# interfaces
.implements Lcom/wufan/friend/chat/protocol/u0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wufan/friend/chat/protocol/t0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/wufan/friend/chat/protocol/t0;",
        "Lcom/wufan/friend/chat/protocol/t0$b;",
        ">;",
        "Lcom/wufan/friend/chat/protocol/u0;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/wufan/friend/chat/protocol/t0;->S2()Lcom/wufan/friend/chat/protocol/t0;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wufan/friend/chat/protocol/t0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/t0$b;-><init>()V

    return-void
.end method


# virtual methods
.method public S2()Lcom/wufan/friend/chat/protocol/t0$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t0;

    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/t0;->U2(Lcom/wufan/friend/chat/protocol/t0;)V

    return-object p0
.end method

.method public T2()Lcom/wufan/friend/chat/protocol/t0$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t0;

    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/t0;->W2(Lcom/wufan/friend/chat/protocol/t0;)V

    return-object p0
.end method

.method public U2()Lcom/wufan/friend/chat/protocol/t0$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t0;

    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/t0;->Z2(Lcom/wufan/friend/chat/protocol/t0;)V

    return-object p0
.end method

.method public V2(I)Lcom/wufan/friend/chat/protocol/t0$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t0;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/t0;->T2(Lcom/wufan/friend/chat/protocol/t0;I)V

    return-object p0
.end method

.method public W2(Ljava/lang/String;)Lcom/wufan/friend/chat/protocol/t0$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t0;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/t0;->V2(Lcom/wufan/friend/chat/protocol/t0;Ljava/lang/String;)V

    return-object p0
.end method

.method public X2(Lcom/google/protobuf/ByteString;)Lcom/wufan/friend/chat/protocol/t0$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t0;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/t0;->X2(Lcom/wufan/friend/chat/protocol/t0;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public Y2(Ljava/lang/String;)Lcom/wufan/friend/chat/protocol/t0$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t0;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/t0;->Y2(Lcom/wufan/friend/chat/protocol/t0;Ljava/lang/String;)V

    return-object p0
.end method

.method public Z2(Lcom/google/protobuf/ByteString;)Lcom/wufan/friend/chat/protocol/t0$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t0;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/t0;->a3(Lcom/wufan/friend/chat/protocol/t0;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public d()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t0;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/t0;->d()I

    move-result v0

    return v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t0;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/t0;->getNickname()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNicknameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t0;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/t0;->getNicknameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t0;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/t0;->getToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t0;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/t0;->getTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
