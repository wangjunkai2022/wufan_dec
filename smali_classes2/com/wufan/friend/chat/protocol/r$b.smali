.class public final Lcom/wufan/friend/chat/protocol/r$b;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Friend.java"

# interfaces
.implements Lcom/wufan/friend/chat/protocol/b0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wufan/friend/chat/protocol/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/wufan/friend/chat/protocol/r;",
        "Lcom/wufan/friend/chat/protocol/r$b;",
        ">;",
        "Lcom/wufan/friend/chat/protocol/b0;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/wufan/friend/chat/protocol/r;->S2()Lcom/wufan/friend/chat/protocol/r;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wufan/friend/chat/protocol/r$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/r$b;-><init>()V

    return-void
.end method


# virtual methods
.method public Q()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/r;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/r;->Q()Z

    move-result v0

    return v0
.end method

.method public S2()Lcom/wufan/friend/chat/protocol/r$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/r;

    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/r;->W2(Lcom/wufan/friend/chat/protocol/r;)V

    return-object p0
.end method

.method public T2()Lcom/wufan/friend/chat/protocol/r$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/r;

    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/r;->a3(Lcom/wufan/friend/chat/protocol/r;)V

    return-object p0
.end method

.method public U2(Lcom/wufan/friend/chat/protocol/a;)Lcom/wufan/friend/chat/protocol/r$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/r;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/r;->V2(Lcom/wufan/friend/chat/protocol/r;Lcom/wufan/friend/chat/protocol/a;)V

    return-object p0
.end method

.method public V2(Lcom/wufan/friend/chat/protocol/d1;)Lcom/wufan/friend/chat/protocol/r$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/r;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/r;->Z2(Lcom/wufan/friend/chat/protocol/r;Lcom/wufan/friend/chat/protocol/d1;)V

    return-object p0
.end method

.method public W2(Lcom/wufan/friend/chat/protocol/a$b;)Lcom/wufan/friend/chat/protocol/r$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/r;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/r;->U2(Lcom/wufan/friend/chat/protocol/r;Lcom/wufan/friend/chat/protocol/a$b;)V

    return-object p0
.end method

.method public X2(Lcom/wufan/friend/chat/protocol/a;)Lcom/wufan/friend/chat/protocol/r$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/r;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/r;->T2(Lcom/wufan/friend/chat/protocol/r;Lcom/wufan/friend/chat/protocol/a;)V

    return-object p0
.end method

.method public Y2(Lcom/wufan/friend/chat/protocol/d1$b;)Lcom/wufan/friend/chat/protocol/r$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/r;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/r;->Y2(Lcom/wufan/friend/chat/protocol/r;Lcom/wufan/friend/chat/protocol/d1$b;)V

    return-object p0
.end method

.method public Z2(Lcom/wufan/friend/chat/protocol/d1;)Lcom/wufan/friend/chat/protocol/r$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/r;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/r;->X2(Lcom/wufan/friend/chat/protocol/r;Lcom/wufan/friend/chat/protocol/d1;)V

    return-object p0
.end method

.method public getAccount()Lcom/wufan/friend/chat/protocol/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/r;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/r;->getAccount()Lcom/wufan/friend/chat/protocol/a;

    move-result-object v0

    return-object v0
.end method

.method public getState()Lcom/wufan/friend/chat/protocol/d1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/r;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/r;->getState()Lcom/wufan/friend/chat/protocol/d1;

    move-result-object v0

    return-object v0
.end method

.method public hasAccount()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/r;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/r;->hasAccount()Z

    move-result v0

    return v0
.end method
