.class public final Lcom/wufan/friend/chat/protocol/e$b;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "AllFriendNotification.java"

# interfaces
.implements Lcom/wufan/friend/chat/protocol/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wufan/friend/chat/protocol/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/wufan/friend/chat/protocol/e;",
        "Lcom/wufan/friend/chat/protocol/e$b;",
        ">;",
        "Lcom/wufan/friend/chat/protocol/f;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/wufan/friend/chat/protocol/e;->S2()Lcom/wufan/friend/chat/protocol/e;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wufan/friend/chat/protocol/e$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/e$b;-><init>()V

    return-void
.end method


# virtual methods
.method public C1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wufan/friend/chat/protocol/r;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/e;

    .line 2
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/e;->C1()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public N()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/e;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/e;->N()I

    move-result v0

    return v0
.end method

.method public Q0(I)Lcom/wufan/friend/chat/protocol/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/e;

    invoke-virtual {v0, p1}, Lcom/wufan/friend/chat/protocol/e;->Q0(I)Lcom/wufan/friend/chat/protocol/r;

    move-result-object p1

    return-object p1
.end method

.method public S0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wufan/friend/chat/protocol/r;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/e;

    .line 2
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/e;->S0()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public S2(Ljava/lang/Iterable;)Lcom/wufan/friend/chat/protocol/e$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/wufan/friend/chat/protocol/r;",
            ">;)",
            "Lcom/wufan/friend/chat/protocol/e$b;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/e;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/e;->a3(Lcom/wufan/friend/chat/protocol/e;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public T2(Ljava/lang/Iterable;)Lcom/wufan/friend/chat/protocol/e$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/wufan/friend/chat/protocol/r;",
            ">;)",
            "Lcom/wufan/friend/chat/protocol/e$b;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/e;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/e;->k3(Lcom/wufan/friend/chat/protocol/e;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public U2(ILcom/wufan/friend/chat/protocol/r$b;)Lcom/wufan/friend/chat/protocol/e$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/e;

    invoke-static {v0, p1, p2}, Lcom/wufan/friend/chat/protocol/e;->Z2(Lcom/wufan/friend/chat/protocol/e;ILcom/wufan/friend/chat/protocol/r$b;)V

    return-object p0
.end method

.method public V2(ILcom/wufan/friend/chat/protocol/r;)Lcom/wufan/friend/chat/protocol/e$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/e;

    invoke-static {v0, p1, p2}, Lcom/wufan/friend/chat/protocol/e;->X2(Lcom/wufan/friend/chat/protocol/e;ILcom/wufan/friend/chat/protocol/r;)V

    return-object p0
.end method

.method public W2(Lcom/wufan/friend/chat/protocol/r$b;)Lcom/wufan/friend/chat/protocol/e$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/e;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/e;->Y2(Lcom/wufan/friend/chat/protocol/e;Lcom/wufan/friend/chat/protocol/r$b;)V

    return-object p0
.end method

.method public X2(Lcom/wufan/friend/chat/protocol/r;)Lcom/wufan/friend/chat/protocol/e$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/e;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/e;->W2(Lcom/wufan/friend/chat/protocol/e;Lcom/wufan/friend/chat/protocol/r;)V

    return-object p0
.end method

.method public Y2(ILcom/wufan/friend/chat/protocol/r$b;)Lcom/wufan/friend/chat/protocol/e$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/e;

    invoke-static {v0, p1, p2}, Lcom/wufan/friend/chat/protocol/e;->j3(Lcom/wufan/friend/chat/protocol/e;ILcom/wufan/friend/chat/protocol/r$b;)V

    return-object p0
.end method

.method public Z1(I)Lcom/wufan/friend/chat/protocol/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/e;

    invoke-virtual {v0, p1}, Lcom/wufan/friend/chat/protocol/e;->Z1(I)Lcom/wufan/friend/chat/protocol/r;

    move-result-object p1

    return-object p1
.end method

.method public Z2(ILcom/wufan/friend/chat/protocol/r;)Lcom/wufan/friend/chat/protocol/e$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/e;

    invoke-static {v0, p1, p2}, Lcom/wufan/friend/chat/protocol/e;->h3(Lcom/wufan/friend/chat/protocol/e;ILcom/wufan/friend/chat/protocol/r;)V

    return-object p0
.end method

.method public a3(Lcom/wufan/friend/chat/protocol/r$b;)Lcom/wufan/friend/chat/protocol/e$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/e;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/e;->i3(Lcom/wufan/friend/chat/protocol/e;Lcom/wufan/friend/chat/protocol/r$b;)V

    return-object p0
.end method

.method public b3(Lcom/wufan/friend/chat/protocol/r;)Lcom/wufan/friend/chat/protocol/e$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/e;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/e;->g3(Lcom/wufan/friend/chat/protocol/e;Lcom/wufan/friend/chat/protocol/r;)V

    return-object p0
.end method

.method public c3()Lcom/wufan/friend/chat/protocol/e$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/e;

    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/e;->f3(Lcom/wufan/friend/chat/protocol/e;)V

    return-object p0
.end method

.method public d3()Lcom/wufan/friend/chat/protocol/e$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/e;

    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/e;->b3(Lcom/wufan/friend/chat/protocol/e;)V

    return-object p0
.end method

.method public e3()Lcom/wufan/friend/chat/protocol/e$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/e;

    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/e;->l3(Lcom/wufan/friend/chat/protocol/e;)V

    return-object p0
.end method

.method public f3(I)Lcom/wufan/friend/chat/protocol/e$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/e;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/e;->c3(Lcom/wufan/friend/chat/protocol/e;I)V

    return-object p0
.end method

.method public g3(I)Lcom/wufan/friend/chat/protocol/e$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/e;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/e;->m3(Lcom/wufan/friend/chat/protocol/e;I)V

    return-object p0
.end method

.method public h3(I)Lcom/wufan/friend/chat/protocol/e$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/e;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/e;->d3(Lcom/wufan/friend/chat/protocol/e;I)V

    return-object p0
.end method

.method public i3(ILcom/wufan/friend/chat/protocol/r$b;)Lcom/wufan/friend/chat/protocol/e$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/e;

    invoke-static {v0, p1, p2}, Lcom/wufan/friend/chat/protocol/e;->V2(Lcom/wufan/friend/chat/protocol/e;ILcom/wufan/friend/chat/protocol/r$b;)V

    return-object p0
.end method

.method public j3(ILcom/wufan/friend/chat/protocol/r;)Lcom/wufan/friend/chat/protocol/e$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/e;

    invoke-static {v0, p1, p2}, Lcom/wufan/friend/chat/protocol/e;->U2(Lcom/wufan/friend/chat/protocol/e;ILcom/wufan/friend/chat/protocol/r;)V

    return-object p0
.end method

.method public k3(ILcom/wufan/friend/chat/protocol/r$b;)Lcom/wufan/friend/chat/protocol/e$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/e;

    invoke-static {v0, p1, p2}, Lcom/wufan/friend/chat/protocol/e;->e3(Lcom/wufan/friend/chat/protocol/e;ILcom/wufan/friend/chat/protocol/r$b;)V

    return-object p0
.end method

.method public l3(ILcom/wufan/friend/chat/protocol/r;)Lcom/wufan/friend/chat/protocol/e$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/e;

    invoke-static {v0, p1, p2}, Lcom/wufan/friend/chat/protocol/e;->T2(Lcom/wufan/friend/chat/protocol/e;ILcom/wufan/friend/chat/protocol/r;)V

    return-object p0
.end method

.method public u0()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/e;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/e;->u0()I

    move-result v0

    return v0
.end method

.method public u2()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/e;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/e;->u2()I

    move-result v0

    return v0
.end method
