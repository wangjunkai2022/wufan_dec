.class public final Lcom/wufan/friend/chat/protocol/g$b;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "AllOnlineFriendNotification.java"

# interfaces
.implements Lcom/wufan/friend/chat/protocol/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wufan/friend/chat/protocol/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/wufan/friend/chat/protocol/g;",
        "Lcom/wufan/friend/chat/protocol/g$b;",
        ">;",
        "Lcom/wufan/friend/chat/protocol/h;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/wufan/friend/chat/protocol/g;->S2()Lcom/wufan/friend/chat/protocol/g;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wufan/friend/chat/protocol/g$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/g$b;-><init>()V

    return-void
.end method


# virtual methods
.method public F1()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/g;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/g;->F1()I

    move-result v0

    return v0
.end method

.method public N()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/g;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/g;->N()I

    move-result v0

    return v0
.end method

.method public N0()Ljava/util/List;
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

    check-cast v0, Lcom/wufan/friend/chat/protocol/g;

    .line 2
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/g;->N0()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public P1(I)Lcom/wufan/friend/chat/protocol/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/g;

    invoke-virtual {v0, p1}, Lcom/wufan/friend/chat/protocol/g;->P1(I)Lcom/wufan/friend/chat/protocol/r;

    move-result-object p1

    return-object p1
.end method

.method public S2(Ljava/lang/Iterable;)Lcom/wufan/friend/chat/protocol/g$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/wufan/friend/chat/protocol/r;",
            ">;)",
            "Lcom/wufan/friend/chat/protocol/g$b;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/g;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/g;->b3(Lcom/wufan/friend/chat/protocol/g;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public T2(ILcom/wufan/friend/chat/protocol/r$b;)Lcom/wufan/friend/chat/protocol/g$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/g;

    invoke-static {v0, p1, p2}, Lcom/wufan/friend/chat/protocol/g;->a3(Lcom/wufan/friend/chat/protocol/g;ILcom/wufan/friend/chat/protocol/r$b;)V

    return-object p0
.end method

.method public U2(ILcom/wufan/friend/chat/protocol/r;)Lcom/wufan/friend/chat/protocol/g$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/g;

    invoke-static {v0, p1, p2}, Lcom/wufan/friend/chat/protocol/g;->Y2(Lcom/wufan/friend/chat/protocol/g;ILcom/wufan/friend/chat/protocol/r;)V

    return-object p0
.end method

.method public V2(Lcom/wufan/friend/chat/protocol/r$b;)Lcom/wufan/friend/chat/protocol/g$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/g;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/g;->Z2(Lcom/wufan/friend/chat/protocol/g;Lcom/wufan/friend/chat/protocol/r$b;)V

    return-object p0
.end method

.method public W2(Lcom/wufan/friend/chat/protocol/r;)Lcom/wufan/friend/chat/protocol/g$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/g;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/g;->X2(Lcom/wufan/friend/chat/protocol/g;Lcom/wufan/friend/chat/protocol/r;)V

    return-object p0
.end method

.method public X2()Lcom/wufan/friend/chat/protocol/g$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/g;

    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/g;->V2(Lcom/wufan/friend/chat/protocol/g;)V

    return-object p0
.end method

.method public Y2()Lcom/wufan/friend/chat/protocol/g$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/g;

    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/g;->c3(Lcom/wufan/friend/chat/protocol/g;)V

    return-object p0
.end method

.method public Z2(I)Lcom/wufan/friend/chat/protocol/g$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/g;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/g;->d3(Lcom/wufan/friend/chat/protocol/g;I)V

    return-object p0
.end method

.method public a3(I)Lcom/wufan/friend/chat/protocol/g$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/g;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/g;->U2(Lcom/wufan/friend/chat/protocol/g;I)V

    return-object p0
.end method

.method public b3(ILcom/wufan/friend/chat/protocol/r$b;)Lcom/wufan/friend/chat/protocol/g$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/g;

    invoke-static {v0, p1, p2}, Lcom/wufan/friend/chat/protocol/g;->W2(Lcom/wufan/friend/chat/protocol/g;ILcom/wufan/friend/chat/protocol/r$b;)V

    return-object p0
.end method

.method public c3(ILcom/wufan/friend/chat/protocol/r;)Lcom/wufan/friend/chat/protocol/g$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/g;

    invoke-static {v0, p1, p2}, Lcom/wufan/friend/chat/protocol/g;->T2(Lcom/wufan/friend/chat/protocol/g;ILcom/wufan/friend/chat/protocol/r;)V

    return-object p0
.end method
