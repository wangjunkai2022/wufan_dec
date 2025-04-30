.class public final Lcom/wufan/friend/chat/protocol/m$b;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ChatMessageNotification.java"

# interfaces
.implements Lcom/wufan/friend/chat/protocol/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wufan/friend/chat/protocol/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/wufan/friend/chat/protocol/m;",
        "Lcom/wufan/friend/chat/protocol/m$b;",
        ">;",
        "Lcom/wufan/friend/chat/protocol/n;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/wufan/friend/chat/protocol/m;->S2()Lcom/wufan/friend/chat/protocol/m;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wufan/friend/chat/protocol/m$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/m$b;-><init>()V

    return-void
.end method


# virtual methods
.method public S2()Lcom/wufan/friend/chat/protocol/m$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/m;

    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/m;->W2(Lcom/wufan/friend/chat/protocol/m;)V

    return-object p0
.end method

.method public T2()Lcom/wufan/friend/chat/protocol/m$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/m;

    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/m;->Y2(Lcom/wufan/friend/chat/protocol/m;)V

    return-object p0
.end method

.method public U2()Lcom/wufan/friend/chat/protocol/m$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/m;

    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/m;->b3(Lcom/wufan/friend/chat/protocol/m;)V

    return-object p0
.end method

.method public V2(Lcom/wufan/friend/chat/protocol/a;)Lcom/wufan/friend/chat/protocol/m$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/m;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/m;->V2(Lcom/wufan/friend/chat/protocol/m;Lcom/wufan/friend/chat/protocol/a;)V

    return-object p0
.end method

.method public W2(Lcom/wufan/friend/chat/protocol/a$b;)Lcom/wufan/friend/chat/protocol/m$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/m;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/m;->U2(Lcom/wufan/friend/chat/protocol/m;Lcom/wufan/friend/chat/protocol/a$b;)V

    return-object p0
.end method

.method public X2(Lcom/wufan/friend/chat/protocol/a;)Lcom/wufan/friend/chat/protocol/m$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/m;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/m;->T2(Lcom/wufan/friend/chat/protocol/m;Lcom/wufan/friend/chat/protocol/a;)V

    return-object p0
.end method

.method public Y2(Ljava/lang/String;)Lcom/wufan/friend/chat/protocol/m$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/m;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/m;->X2(Lcom/wufan/friend/chat/protocol/m;Ljava/lang/String;)V

    return-object p0
.end method

.method public Z2(Lcom/google/protobuf/ByteString;)Lcom/wufan/friend/chat/protocol/m$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/m;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/m;->Z2(Lcom/wufan/friend/chat/protocol/m;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public a3(J)Lcom/wufan/friend/chat/protocol/m$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/m;

    invoke-static {v0, p1, p2}, Lcom/wufan/friend/chat/protocol/m;->a3(Lcom/wufan/friend/chat/protocol/m;J)V

    return-object p0
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/m;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/m;->e()Z

    move-result v0

    return v0
.end method

.method public g()Lcom/wufan/friend/chat/protocol/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/m;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/m;->g()Lcom/wufan/friend/chat/protocol/a;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/m;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/m;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/m;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/m;->getMessageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/m;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/m;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method
