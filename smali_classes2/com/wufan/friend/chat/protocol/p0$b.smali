.class public final Lcom/wufan/friend/chat/protocol/p0$b;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LocalBattleGameData.java"

# interfaces
.implements Lcom/wufan/friend/chat/protocol/q0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wufan/friend/chat/protocol/p0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/wufan/friend/chat/protocol/p0;",
        "Lcom/wufan/friend/chat/protocol/p0$b;",
        ">;",
        "Lcom/wufan/friend/chat/protocol/q0;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/wufan/friend/chat/protocol/p0;->S2()Lcom/wufan/friend/chat/protocol/p0;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wufan/friend/chat/protocol/p0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/p0$b;-><init>()V

    return-void
.end method


# virtual methods
.method public J2(I)Lcom/wufan/friend/chat/protocol/r0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/p0;

    invoke-virtual {v0, p1}, Lcom/wufan/friend/chat/protocol/p0;->J2(I)Lcom/wufan/friend/chat/protocol/r0;

    move-result-object p1

    return-object p1
.end method

.method public S2(Ljava/lang/Iterable;)Lcom/wufan/friend/chat/protocol/p0$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/wufan/friend/chat/protocol/r0;",
            ">;)",
            "Lcom/wufan/friend/chat/protocol/p0$b;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/p0;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/p0;->Z2(Lcom/wufan/friend/chat/protocol/p0;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public T2(ILcom/wufan/friend/chat/protocol/r0$b;)Lcom/wufan/friend/chat/protocol/p0$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/p0;

    invoke-static {v0, p1, p2}, Lcom/wufan/friend/chat/protocol/p0;->Y2(Lcom/wufan/friend/chat/protocol/p0;ILcom/wufan/friend/chat/protocol/r0$b;)V

    return-object p0
.end method

.method public U2(ILcom/wufan/friend/chat/protocol/r0;)Lcom/wufan/friend/chat/protocol/p0$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/p0;

    invoke-static {v0, p1, p2}, Lcom/wufan/friend/chat/protocol/p0;->W2(Lcom/wufan/friend/chat/protocol/p0;ILcom/wufan/friend/chat/protocol/r0;)V

    return-object p0
.end method

.method public V2(Lcom/wufan/friend/chat/protocol/r0$b;)Lcom/wufan/friend/chat/protocol/p0$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/p0;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/p0;->X2(Lcom/wufan/friend/chat/protocol/p0;Lcom/wufan/friend/chat/protocol/r0$b;)V

    return-object p0
.end method

.method public W2(Lcom/wufan/friend/chat/protocol/r0;)Lcom/wufan/friend/chat/protocol/p0$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/p0;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/p0;->V2(Lcom/wufan/friend/chat/protocol/p0;Lcom/wufan/friend/chat/protocol/r0;)V

    return-object p0
.end method

.method public X2()Lcom/wufan/friend/chat/protocol/p0$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/p0;

    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/p0;->a3(Lcom/wufan/friend/chat/protocol/p0;)V

    return-object p0
.end method

.method public Y2(I)Lcom/wufan/friend/chat/protocol/p0$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/p0;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/p0;->b3(Lcom/wufan/friend/chat/protocol/p0;I)V

    return-object p0
.end method

.method public Z0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wufan/friend/chat/protocol/r0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/p0;

    .line 2
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/p0;->Z0()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public Z2(ILcom/wufan/friend/chat/protocol/r0$b;)Lcom/wufan/friend/chat/protocol/p0$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/p0;

    invoke-static {v0, p1, p2}, Lcom/wufan/friend/chat/protocol/p0;->U2(Lcom/wufan/friend/chat/protocol/p0;ILcom/wufan/friend/chat/protocol/r0$b;)V

    return-object p0
.end method

.method public a3(ILcom/wufan/friend/chat/protocol/r0;)Lcom/wufan/friend/chat/protocol/p0$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/p0;

    invoke-static {v0, p1, p2}, Lcom/wufan/friend/chat/protocol/p0;->T2(Lcom/wufan/friend/chat/protocol/p0;ILcom/wufan/friend/chat/protocol/r0;)V

    return-object p0
.end method

.method public d1()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/p0;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/p0;->d1()I

    move-result v0

    return v0
.end method
