.class public final Lcom/wufan/friend/chat/protocol/f1$b;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "PlayerBannedNotification.java"

# interfaces
.implements Lcom/wufan/friend/chat/protocol/g1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wufan/friend/chat/protocol/f1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/wufan/friend/chat/protocol/f1;",
        "Lcom/wufan/friend/chat/protocol/f1$b;",
        ">;",
        "Lcom/wufan/friend/chat/protocol/g1;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/wufan/friend/chat/protocol/f1;->S2()Lcom/wufan/friend/chat/protocol/f1;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wufan/friend/chat/protocol/f1$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/f1$b;-><init>()V

    return-void
.end method


# virtual methods
.method public P2()Lcom/wufan/friend/chat/protocol/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/f1;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/f1;->P2()Lcom/wufan/friend/chat/protocol/a;

    move-result-object v0

    return-object v0
.end method

.method public S2()Lcom/wufan/friend/chat/protocol/f1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/f1;

    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/f1;->W2(Lcom/wufan/friend/chat/protocol/f1;)V

    return-object p0
.end method

.method public T2(Lcom/wufan/friend/chat/protocol/a;)Lcom/wufan/friend/chat/protocol/f1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/f1;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/f1;->V2(Lcom/wufan/friend/chat/protocol/f1;Lcom/wufan/friend/chat/protocol/a;)V

    return-object p0
.end method

.method public U2(Lcom/wufan/friend/chat/protocol/a$b;)Lcom/wufan/friend/chat/protocol/f1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/f1;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/f1;->U2(Lcom/wufan/friend/chat/protocol/f1;Lcom/wufan/friend/chat/protocol/a$b;)V

    return-object p0
.end method

.method public V2(Lcom/wufan/friend/chat/protocol/a;)Lcom/wufan/friend/chat/protocol/f1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/f1;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/f1;->T2(Lcom/wufan/friend/chat/protocol/f1;Lcom/wufan/friend/chat/protocol/a;)V

    return-object p0
.end method

.method public W()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/f1;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/f1;->W()Z

    move-result v0

    return v0
.end method
