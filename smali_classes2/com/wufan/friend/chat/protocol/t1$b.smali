.class public final Lcom/wufan/friend/chat/protocol/t1$b;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "RequestArgs.java"

# interfaces
.implements Lcom/wufan/friend/chat/protocol/u1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wufan/friend/chat/protocol/t1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/wufan/friend/chat/protocol/t1;",
        "Lcom/wufan/friend/chat/protocol/t1$b;",
        ">;",
        "Lcom/wufan/friend/chat/protocol/u1;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/wufan/friend/chat/protocol/t1;->S2()Lcom/wufan/friend/chat/protocol/t1;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wufan/friend/chat/protocol/t1$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/t1$b;-><init>()V

    return-void
.end method


# virtual methods
.method public A2()Lcom/wufan/friend/chat/protocol/HeartArgs;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t1;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/t1;->A2()Lcom/wufan/friend/chat/protocol/HeartArgs;

    move-result-object v0

    return-object v0
.end method

.method public A3(Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;)Lcom/wufan/friend/chat/protocol/t1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t1;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/t1;->h3(Lcom/wufan/friend/chat/protocol/t1;Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;)V

    return-object p0
.end method

.method public B1()Lcom/wufan/friend/chat/protocol/ChatRoomArgs;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t1;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/t1;->B1()Lcom/wufan/friend/chat/protocol/ChatRoomArgs;

    move-result-object v0

    return-object v0
.end method

.method public B2()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t1;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/t1;->B2()Z

    move-result v0

    return v0
.end method

.method public B3(Lcom/wufan/friend/chat/protocol/PlayGameArgs;)Lcom/wufan/friend/chat/protocol/t1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t1;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/t1;->g3(Lcom/wufan/friend/chat/protocol/t1;Lcom/wufan/friend/chat/protocol/PlayGameArgs;)V

    return-object p0
.end method

.method public C2()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t1;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/t1;->C2()Z

    move-result v0

    return v0
.end method

.method public C3(Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;)Lcom/wufan/friend/chat/protocol/t1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t1;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/t1;->u3(Lcom/wufan/friend/chat/protocol/t1;Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;)V

    return-object p0
.end method

.method public D3(Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;)Lcom/wufan/friend/chat/protocol/t1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t1;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/t1;->t3(Lcom/wufan/friend/chat/protocol/t1;Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;)V

    return-object p0
.end method

.method public E3(Lcom/wufan/friend/chat/protocol/a1$b;)Lcom/wufan/friend/chat/protocol/t1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t1;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/t1;->c3(Lcom/wufan/friend/chat/protocol/t1;Lcom/wufan/friend/chat/protocol/a1$b;)V

    return-object p0
.end method

.method public F3(Lcom/wufan/friend/chat/protocol/a1;)Lcom/wufan/friend/chat/protocol/t1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t1;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/t1;->b3(Lcom/wufan/friend/chat/protocol/t1;Lcom/wufan/friend/chat/protocol/a1;)V

    return-object p0
.end method

.method public G0()Lcom/wufan/friend/chat/protocol/PlayGameArgs;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t1;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/t1;->G0()Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    move-result-object v0

    return-object v0
.end method

.method public G2()Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t1;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/t1;->G2()Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    move-result-object v0

    return-object v0
.end method

.method public H0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t1;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/t1;->H0()Z

    move-result v0

    return v0
.end method

.method public H2()Lcom/wufan/friend/chat/protocol/i0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t1;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/t1;->H2()Lcom/wufan/friend/chat/protocol/i0;

    move-result-object v0

    return-object v0
.end method

.method public I0()Lcom/wufan/friend/chat/protocol/e0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t1;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/t1;->I0()Lcom/wufan/friend/chat/protocol/e0;

    move-result-object v0

    return-object v0
.end method

.method public K2()Lcom/wufan/friend/chat/protocol/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t1;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/t1;->K2()Lcom/wufan/friend/chat/protocol/i;

    move-result-object v0

    return-object v0
.end method

.method public L0()Lcom/wufan/friend/chat/protocol/t0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t1;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/t1;->L0()Lcom/wufan/friend/chat/protocol/t0;

    move-result-object v0

    return-object v0
.end method

.method public M0()Lcom/wufan/friend/chat/protocol/a1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t1;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/t1;->M0()Lcom/wufan/friend/chat/protocol/a1;

    move-result-object v0

    return-object v0
.end method

.method public M2()Lcom/wufan/friend/chat/protocol/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t1;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/t1;->M2()Lcom/wufan/friend/chat/protocol/c;

    move-result-object v0

    return-object v0
.end method

.method public Q2()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t1;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/t1;->Q2()Z

    move-result v0

    return v0
.end method

.method public R1()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t1;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/t1;->R1()Z

    move-result v0

    return v0
.end method

.method public S1()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t1;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/t1;->S1()Z

    move-result v0

    return v0
.end method

.method public S2()Lcom/wufan/friend/chat/protocol/t1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t1;

    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/t1;->F3(Lcom/wufan/friend/chat/protocol/t1;)V

    return-object p0
.end method

.method public T2()Lcom/wufan/friend/chat/protocol/t1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t1;

    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/t1;->s3(Lcom/wufan/friend/chat/protocol/t1;)V

    return-object p0
.end method

.method public U2()Lcom/wufan/friend/chat/protocol/t1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t1;

    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/t1;->n3(Lcom/wufan/friend/chat/protocol/t1;)V

    return-object p0
.end method

.method public V2()Lcom/wufan/friend/chat/protocol/t1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t1;

    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/t1;->a3(Lcom/wufan/friend/chat/protocol/t1;)V

    return-object p0
.end method

.method public W1()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t1;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/t1;->W1()Z

    move-result v0

    return v0
.end method

.method public W2()Lcom/wufan/friend/chat/protocol/t1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t1;

    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/t1;->W2(Lcom/wufan/friend/chat/protocol/t1;)V

    return-object p0
.end method

.method public X2()Lcom/wufan/friend/chat/protocol/t1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t1;

    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/t1;->B3(Lcom/wufan/friend/chat/protocol/t1;)V

    return-object p0
.end method

.method public Y2()Lcom/wufan/friend/chat/protocol/t1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t1;

    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/t1;->A3(Lcom/wufan/friend/chat/protocol/t1;)V

    return-object p0
.end method

.method public Z2()Lcom/wufan/friend/chat/protocol/t1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t1;

    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/t1;->j3(Lcom/wufan/friend/chat/protocol/t1;)V

    return-object p0
.end method

.method public a0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t1;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/t1;->a0()Z

    move-result v0

    return v0
.end method

.method public a3()Lcom/wufan/friend/chat/protocol/t1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t1;

    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/t1;->w3(Lcom/wufan/friend/chat/protocol/t1;)V

    return-object p0
.end method

.method public b3()Lcom/wufan/friend/chat/protocol/t1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t1;

    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/t1;->f3(Lcom/wufan/friend/chat/protocol/t1;)V

    return-object p0
.end method

.method public c3(Lcom/wufan/friend/chat/protocol/c;)Lcom/wufan/friend/chat/protocol/t1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t1;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/t1;->E3(Lcom/wufan/friend/chat/protocol/t1;Lcom/wufan/friend/chat/protocol/c;)V

    return-object p0
.end method

.method public d3(Lcom/wufan/friend/chat/protocol/i;)Lcom/wufan/friend/chat/protocol/t1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t1;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/t1;->r3(Lcom/wufan/friend/chat/protocol/t1;Lcom/wufan/friend/chat/protocol/i;)V

    return-object p0
.end method

.method public e3(Lcom/wufan/friend/chat/protocol/ChatRoomArgs;)Lcom/wufan/friend/chat/protocol/t1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t1;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/t1;->m3(Lcom/wufan/friend/chat/protocol/t1;Lcom/wufan/friend/chat/protocol/ChatRoomArgs;)V

    return-object p0
.end method

.method public f3(Lcom/wufan/friend/chat/protocol/e0;)Lcom/wufan/friend/chat/protocol/t1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t1;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/t1;->Z2(Lcom/wufan/friend/chat/protocol/t1;Lcom/wufan/friend/chat/protocol/e0;)V

    return-object p0
.end method

.method public g3(Lcom/wufan/friend/chat/protocol/HeartArgs;)Lcom/wufan/friend/chat/protocol/t1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t1;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/t1;->V2(Lcom/wufan/friend/chat/protocol/t1;Lcom/wufan/friend/chat/protocol/HeartArgs;)V

    return-object p0
.end method

.method public h3(Lcom/wufan/friend/chat/protocol/i0;)Lcom/wufan/friend/chat/protocol/t1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t1;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/t1;->z3(Lcom/wufan/friend/chat/protocol/t1;Lcom/wufan/friend/chat/protocol/i0;)V

    return-object p0
.end method

.method public i3(Lcom/wufan/friend/chat/protocol/t0;)Lcom/wufan/friend/chat/protocol/t1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t1;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/t1;->p3(Lcom/wufan/friend/chat/protocol/t1;Lcom/wufan/friend/chat/protocol/t0;)V

    return-object p0
.end method

.method public j3(Lcom/wufan/friend/chat/protocol/PlayGameArgs;)Lcom/wufan/friend/chat/protocol/t1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t1;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/t1;->i3(Lcom/wufan/friend/chat/protocol/t1;Lcom/wufan/friend/chat/protocol/PlayGameArgs;)V

    return-object p0
.end method

.method public k3(Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;)Lcom/wufan/friend/chat/protocol/t1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t1;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/t1;->v3(Lcom/wufan/friend/chat/protocol/t1;Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;)V

    return-object p0
.end method

.method public l0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t1;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/t1;->l0()Z

    move-result v0

    return v0
.end method

.method public l3(Lcom/wufan/friend/chat/protocol/a1;)Lcom/wufan/friend/chat/protocol/t1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t1;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/t1;->d3(Lcom/wufan/friend/chat/protocol/t1;Lcom/wufan/friend/chat/protocol/a1;)V

    return-object p0
.end method

.method public m3(Lcom/wufan/friend/chat/protocol/c$b;)Lcom/wufan/friend/chat/protocol/t1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t1;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/t1;->D3(Lcom/wufan/friend/chat/protocol/t1;Lcom/wufan/friend/chat/protocol/c$b;)V

    return-object p0
.end method

.method public n3(Lcom/wufan/friend/chat/protocol/c;)Lcom/wufan/friend/chat/protocol/t1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t1;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/t1;->C3(Lcom/wufan/friend/chat/protocol/t1;Lcom/wufan/friend/chat/protocol/c;)V

    return-object p0
.end method

.method public o3(Lcom/wufan/friend/chat/protocol/i$b;)Lcom/wufan/friend/chat/protocol/t1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t1;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/t1;->q3(Lcom/wufan/friend/chat/protocol/t1;Lcom/wufan/friend/chat/protocol/i$b;)V

    return-object p0
.end method

.method public p3(Lcom/wufan/friend/chat/protocol/i;)Lcom/wufan/friend/chat/protocol/t1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t1;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/t1;->o3(Lcom/wufan/friend/chat/protocol/t1;Lcom/wufan/friend/chat/protocol/i;)V

    return-object p0
.end method

.method public q3(Lcom/wufan/friend/chat/protocol/ChatRoomArgs$b;)Lcom/wufan/friend/chat/protocol/t1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t1;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/t1;->l3(Lcom/wufan/friend/chat/protocol/t1;Lcom/wufan/friend/chat/protocol/ChatRoomArgs$b;)V

    return-object p0
.end method

.method public r3(Lcom/wufan/friend/chat/protocol/ChatRoomArgs;)Lcom/wufan/friend/chat/protocol/t1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t1;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/t1;->k3(Lcom/wufan/friend/chat/protocol/t1;Lcom/wufan/friend/chat/protocol/ChatRoomArgs;)V

    return-object p0
.end method

.method public s3(Lcom/wufan/friend/chat/protocol/e0$b;)Lcom/wufan/friend/chat/protocol/t1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t1;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/t1;->Y2(Lcom/wufan/friend/chat/protocol/t1;Lcom/wufan/friend/chat/protocol/e0$b;)V

    return-object p0
.end method

.method public t3(Lcom/wufan/friend/chat/protocol/e0;)Lcom/wufan/friend/chat/protocol/t1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t1;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/t1;->X2(Lcom/wufan/friend/chat/protocol/t1;Lcom/wufan/friend/chat/protocol/e0;)V

    return-object p0
.end method

.method public u3(Lcom/wufan/friend/chat/protocol/HeartArgs$b;)Lcom/wufan/friend/chat/protocol/t1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t1;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/t1;->U2(Lcom/wufan/friend/chat/protocol/t1;Lcom/wufan/friend/chat/protocol/HeartArgs$b;)V

    return-object p0
.end method

.method public v3(Lcom/wufan/friend/chat/protocol/HeartArgs;)Lcom/wufan/friend/chat/protocol/t1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t1;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/t1;->G3(Lcom/wufan/friend/chat/protocol/t1;Lcom/wufan/friend/chat/protocol/HeartArgs;)V

    return-object p0
.end method

.method public w3(Lcom/wufan/friend/chat/protocol/i0$b;)Lcom/wufan/friend/chat/protocol/t1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t1;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/t1;->y3(Lcom/wufan/friend/chat/protocol/t1;Lcom/wufan/friend/chat/protocol/i0$b;)V

    return-object p0
.end method

.method public x3(Lcom/wufan/friend/chat/protocol/i0;)Lcom/wufan/friend/chat/protocol/t1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t1;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/t1;->x3(Lcom/wufan/friend/chat/protocol/t1;Lcom/wufan/friend/chat/protocol/i0;)V

    return-object p0
.end method

.method public y3(Lcom/wufan/friend/chat/protocol/t0$b;)Lcom/wufan/friend/chat/protocol/t1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t1;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/t1;->e3(Lcom/wufan/friend/chat/protocol/t1;Lcom/wufan/friend/chat/protocol/t0$b;)V

    return-object p0
.end method

.method public z1()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t1;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/t1;->z1()Z

    move-result v0

    return v0
.end method

.method public z3(Lcom/wufan/friend/chat/protocol/t0;)Lcom/wufan/friend/chat/protocol/t1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/t1;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/t1;->T2(Lcom/wufan/friend/chat/protocol/t1;Lcom/wufan/friend/chat/protocol/t0;)V

    return-object p0
.end method
