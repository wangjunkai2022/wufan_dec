.class public final Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "RecommendPlayerArgs.java"

# interfaces
.implements Lcom/wufan/friend/chat/protocol/k1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;",
        "Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;",
        ">;",
        "Lcom/wufan/friend/chat/protocol/k1;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->S2()Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;-><init>()V

    return-void
.end method


# virtual methods
.method public E0()Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$FriendLocationPageType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->E0()Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$FriendLocationPageType;

    move-result-object v0

    return-object v0
.end method

.method public S2(Ljava/lang/Iterable;)Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->b3(Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public T2(J)Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    invoke-static {v0, p1, p2}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->a3(Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;J)V

    return-object p0
.end method

.method public U2()Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->W2(Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;)V

    return-object p0
.end method

.method public V2()Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->e3(Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;)V

    return-object p0
.end method

.method public W2()Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->c3(Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;)V

    return-object p0
.end method

.method public X2()Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->Y2(Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;)V

    return-object p0
.end method

.method public Y2(J)Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    invoke-static {v0, p1, p2}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->V2(Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;J)V

    return-object p0
.end method

.method public Z2(Ljava/lang/String;)Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->d3(Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;Ljava/lang/String;)V

    return-object p0
.end method

.method public a1()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->a1()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public a3(Lcom/google/protobuf/ByteString;)Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->U2(Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public b3(IJ)Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    invoke-static {v0, p1, p2, p3}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->Z2(Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;IJ)V

    return-object p0
.end method

.method public c3(Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$FriendLocationPageType;)Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->X2(Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$FriendLocationPageType;)V

    return-object p0
.end method

.method public d3(I)Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->T2(Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;I)V

    return-object p0
.end method

.method public getGameId()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->getGameId()J

    move-result-wide v0

    return-wide v0
.end method

.method public j0()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->j0()I

    move-result v0

    return v0
.end method

.method public o1()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->o1()I

    move-result v0

    return v0
.end method

.method public s1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    .line 2
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->s1()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public v0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->v0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public z0(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    invoke-virtual {v0, p1}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->z0(I)J

    move-result-wide v0

    return-wide v0
.end method
