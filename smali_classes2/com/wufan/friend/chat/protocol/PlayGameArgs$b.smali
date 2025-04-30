.class public final Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "PlayGameArgs.java"

# interfaces
.implements Lcom/wufan/friend/chat/protocol/c1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wufan/friend/chat/protocol/PlayGameArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/wufan/friend/chat/protocol/PlayGameArgs;",
        "Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;",
        ">;",
        "Lcom/wufan/friend/chat/protocol/c1;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->S2()Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wufan/friend/chat/protocol/PlayGameArgs$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;-><init>()V

    return-void
.end method


# virtual methods
.method public B()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->B()Z

    move-result v0

    return v0
.end method

.method public O1()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->O1()I

    move-result v0

    return v0
.end method

.method public O2()Ljava/util/List;
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

    check-cast v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    .line 2
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->O2()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public S2(Ljava/lang/Iterable;)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->b3(Lcom/wufan/friend/chat/protocol/PlayGameArgs;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public T2(J)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    invoke-static {v0, p1, p2}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->a3(Lcom/wufan/friend/chat/protocol/PlayGameArgs;J)V

    return-object p0
.end method

.method public U2()Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->W2(Lcom/wufan/friend/chat/protocol/PlayGameArgs;)V

    return-object p0
.end method

.method public V2()Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->g3(Lcom/wufan/friend/chat/protocol/PlayGameArgs;)V

    return-object p0
.end method

.method public W2()Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->U2(Lcom/wufan/friend/chat/protocol/PlayGameArgs;)V

    return-object p0
.end method

.method public X2()Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->c3(Lcom/wufan/friend/chat/protocol/PlayGameArgs;)V

    return-object p0
.end method

.method public Y2()Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->e3(Lcom/wufan/friend/chat/protocol/PlayGameArgs;)V

    return-object p0
.end method

.method public Z2()Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->j3(Lcom/wufan/friend/chat/protocol/PlayGameArgs;)V

    return-object p0
.end method

.method public a3()Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->Y2(Lcom/wufan/friend/chat/protocol/PlayGameArgs;)V

    return-object p0
.end method

.method public b3(I)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->V2(Lcom/wufan/friend/chat/protocol/PlayGameArgs;I)V

    return-object p0
.end method

.method public c2(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    invoke-virtual {v0, p1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->c2(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public c3(J)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    invoke-static {v0, p1, p2}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->f3(Lcom/wufan/friend/chat/protocol/PlayGameArgs;J)V

    return-object p0
.end method

.method public d()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->d()I

    move-result v0

    return v0
.end method

.method public d3(J)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    invoke-static {v0, p1, p2}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->k3(Lcom/wufan/friend/chat/protocol/PlayGameArgs;J)V

    return-object p0
.end method

.method public e3(IJ)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    invoke-static {v0, p1, p2, p3}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->Z2(Lcom/wufan/friend/chat/protocol/PlayGameArgs;IJ)V

    return-object p0
.end method

.method public f()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method public f3(Lcom/wufan/friend/chat/protocol/PlayGameArgs$State;)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->d3(Lcom/wufan/friend/chat/protocol/PlayGameArgs;Lcom/wufan/friend/chat/protocol/PlayGameArgs$State;)V

    return-object p0
.end method

.method public g3(I)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->T2(Lcom/wufan/friend/chat/protocol/PlayGameArgs;I)V

    return-object p0
.end method

.method public getGameId()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->getGameId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getState()Lcom/wufan/friend/chat/protocol/PlayGameArgs$State;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->getState()Lcom/wufan/friend/chat/protocol/PlayGameArgs$State;

    move-result-object v0

    return-object v0
.end method

.method public getStateValue()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->getStateValue()I

    move-result v0

    return v0
.end method

.method public getType()Lcom/wufan/friend/chat/protocol/PlayType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->getType()Lcom/wufan/friend/chat/protocol/PlayType;

    move-result-object v0

    return-object v0
.end method

.method public getTypeValue()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->getTypeValue()I

    move-result v0

    return v0
.end method

.method public h3(Lcom/wufan/friend/chat/protocol/PlayType;)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->i3(Lcom/wufan/friend/chat/protocol/PlayGameArgs;Lcom/wufan/friend/chat/protocol/PlayType;)V

    return-object p0
.end method

.method public i3(I)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->h3(Lcom/wufan/friend/chat/protocol/PlayGameArgs;I)V

    return-object p0
.end method

.method public j3(Z)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->X2(Lcom/wufan/friend/chat/protocol/PlayGameArgs;Z)V

    return-object p0
.end method
