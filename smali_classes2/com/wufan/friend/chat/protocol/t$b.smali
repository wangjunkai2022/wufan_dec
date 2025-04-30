.class public final Lcom/wufan/friend/chat/protocol/t$b;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "FriendAddSuccessNotification.java"

# interfaces
.implements Lcom/wufan/friend/chat/protocol/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wufan/friend/chat/protocol/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/wufan/friend/chat/protocol/t;",
        "Lcom/wufan/friend/chat/protocol/t$b;",
        ">;",
        "Lcom/wufan/friend/chat/protocol/u;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/wufan/friend/chat/protocol/t;->S2()Lcom/wufan/friend/chat/protocol/t;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wufan/friend/chat/protocol/t$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/t$b;-><init>()V

    return-void
.end method


# virtual methods
.method public S2()Lcom/wufan/friend/chat/protocol/t$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t;

    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/t;->Y2(Lcom/wufan/friend/chat/protocol/t;)V

    return-object p0
.end method

.method public T0()Lcom/wufan/friend/chat/protocol/OnlineState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/t;->T0()Lcom/wufan/friend/chat/protocol/OnlineState;

    move-result-object v0

    return-object v0
.end method

.method public T2()Lcom/wufan/friend/chat/protocol/t$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t;

    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/t;->V2(Lcom/wufan/friend/chat/protocol/t;)V

    return-object p0
.end method

.method public U2()Lcom/wufan/friend/chat/protocol/t$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t;

    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/t;->c3(Lcom/wufan/friend/chat/protocol/t;)V

    return-object p0
.end method

.method public V()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/t;->V()I

    move-result v0

    return v0
.end method

.method public V2(Lcom/wufan/friend/chat/protocol/a;)Lcom/wufan/friend/chat/protocol/t$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/t;->X2(Lcom/wufan/friend/chat/protocol/t;Lcom/wufan/friend/chat/protocol/a;)V

    return-object p0
.end method

.method public W2(Lcom/wufan/friend/chat/protocol/d1;)Lcom/wufan/friend/chat/protocol/t$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/t;->b3(Lcom/wufan/friend/chat/protocol/t;Lcom/wufan/friend/chat/protocol/d1;)V

    return-object p0
.end method

.method public X2(Lcom/wufan/friend/chat/protocol/a$b;)Lcom/wufan/friend/chat/protocol/t$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/t;->W2(Lcom/wufan/friend/chat/protocol/t;Lcom/wufan/friend/chat/protocol/a$b;)V

    return-object p0
.end method

.method public Y2(Lcom/wufan/friend/chat/protocol/a;)Lcom/wufan/friend/chat/protocol/t$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/t;->T2(Lcom/wufan/friend/chat/protocol/t;Lcom/wufan/friend/chat/protocol/a;)V

    return-object p0
.end method

.method public Z2(Lcom/wufan/friend/chat/protocol/OnlineState;)Lcom/wufan/friend/chat/protocol/t$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/t;->U2(Lcom/wufan/friend/chat/protocol/t;Lcom/wufan/friend/chat/protocol/OnlineState;)V

    return-object p0
.end method

.method public a3(I)Lcom/wufan/friend/chat/protocol/t$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/t;->d3(Lcom/wufan/friend/chat/protocol/t;I)V

    return-object p0
.end method

.method public b3(Lcom/wufan/friend/chat/protocol/d1$b;)Lcom/wufan/friend/chat/protocol/t$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/t;->a3(Lcom/wufan/friend/chat/protocol/t;Lcom/wufan/friend/chat/protocol/d1$b;)V

    return-object p0
.end method

.method public c3(Lcom/wufan/friend/chat/protocol/d1;)Lcom/wufan/friend/chat/protocol/t$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/t;->Z2(Lcom/wufan/friend/chat/protocol/t;Lcom/wufan/friend/chat/protocol/d1;)V

    return-object p0
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/t;->e()Z

    move-result v0

    return v0
.end method

.method public g()Lcom/wufan/friend/chat/protocol/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/t;->g()Lcom/wufan/friend/chat/protocol/a;

    move-result-object v0

    return-object v0
.end method

.method public n()Lcom/wufan/friend/chat/protocol/d1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/t;->n()Lcom/wufan/friend/chat/protocol/d1;

    move-result-object v0

    return-object v0
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/t;->o()Z

    move-result v0

    return v0
.end method
