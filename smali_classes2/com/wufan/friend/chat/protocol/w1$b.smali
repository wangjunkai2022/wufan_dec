.class public final Lcom/wufan/friend/chat/protocol/w1$b;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Response.java"

# interfaces
.implements Lcom/wufan/friend/chat/protocol/z1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wufan/friend/chat/protocol/w1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/wufan/friend/chat/protocol/w1;",
        "Lcom/wufan/friend/chat/protocol/w1$b;",
        ">;",
        "Lcom/wufan/friend/chat/protocol/z1;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/wufan/friend/chat/protocol/w1;->S2()Lcom/wufan/friend/chat/protocol/w1;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wufan/friend/chat/protocol/w1$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/w1$b;-><init>()V

    return-void
.end method


# virtual methods
.method public A()Lcom/wufan/friend/chat/protocol/ServiceName;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/w1;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/w1;->A()Lcom/wufan/friend/chat/protocol/ServiceName;

    move-result-object v0

    return-object v0
.end method

.method public A1()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/w1;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/w1;->A1()I

    move-result v0

    return v0
.end method

.method public F()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/w1;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/w1;->F()I

    move-result v0

    return v0
.end method

.method public H()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/w1;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/w1;->H()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public L()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/w1;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/w1;->L()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public S2()Lcom/wufan/friend/chat/protocol/w1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/w1;

    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/w1;->o3(Lcom/wufan/friend/chat/protocol/w1;)V

    return-object p0
.end method

.method public T()Lcom/wufan/friend/chat/protocol/NotificationType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/w1;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/w1;->T()Lcom/wufan/friend/chat/protocol/NotificationType;

    move-result-object v0

    return-object v0
.end method

.method public T2()Lcom/wufan/friend/chat/protocol/w1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/w1;

    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/w1;->Z2(Lcom/wufan/friend/chat/protocol/w1;)V

    return-object p0
.end method

.method public U2()Lcom/wufan/friend/chat/protocol/w1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/w1;

    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/w1;->g3(Lcom/wufan/friend/chat/protocol/w1;)V

    return-object p0
.end method

.method public V2()Lcom/wufan/friend/chat/protocol/w1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/w1;

    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/w1;->k3(Lcom/wufan/friend/chat/protocol/w1;)V

    return-object p0
.end method

.method public W2()Lcom/wufan/friend/chat/protocol/w1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/w1;

    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/w1;->X2(Lcom/wufan/friend/chat/protocol/w1;)V

    return-object p0
.end method

.method public X2()Lcom/wufan/friend/chat/protocol/w1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/w1;

    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/w1;->e3(Lcom/wufan/friend/chat/protocol/w1;)V

    return-object p0
.end method

.method public Y2()Lcom/wufan/friend/chat/protocol/w1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/w1;

    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/w1;->t3(Lcom/wufan/friend/chat/protocol/w1;)V

    return-object p0
.end method

.method public Z2()Lcom/wufan/friend/chat/protocol/w1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/w1;

    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/w1;->U2(Lcom/wufan/friend/chat/protocol/w1;)V

    return-object p0
.end method

.method public a3()Lcom/wufan/friend/chat/protocol/w1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/w1;

    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/w1;->d3(Lcom/wufan/friend/chat/protocol/w1;)V

    return-object p0
.end method

.method public b3()Lcom/wufan/friend/chat/protocol/w1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/w1;

    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/w1;->q3(Lcom/wufan/friend/chat/protocol/w1;)V

    return-object p0
.end method

.method public c1()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/w1;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/w1;->c1()I

    move-result v0

    return v0
.end method

.method public c3(Lcom/wufan/friend/chat/protocol/x1;)Lcom/wufan/friend/chat/protocol/w1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/w1;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/w1;->n3(Lcom/wufan/friend/chat/protocol/w1;Lcom/wufan/friend/chat/protocol/x1;)V

    return-object p0
.end method

.method public d3(Lcom/wufan/friend/chat/protocol/x1$b;)Lcom/wufan/friend/chat/protocol/w1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/w1;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/w1;->m3(Lcom/wufan/friend/chat/protocol/w1;Lcom/wufan/friend/chat/protocol/x1$b;)V

    return-object p0
.end method

.method public e3(Lcom/wufan/friend/chat/protocol/x1;)Lcom/wufan/friend/chat/protocol/w1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/w1;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/w1;->l3(Lcom/wufan/friend/chat/protocol/w1;Lcom/wufan/friend/chat/protocol/x1;)V

    return-object p0
.end method

.method public f1()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/w1;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/w1;->f1()I

    move-result v0

    return v0
.end method

.method public f3(Ljava/lang/String;)Lcom/wufan/friend/chat/protocol/w1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/w1;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/w1;->Y2(Lcom/wufan/friend/chat/protocol/w1;Ljava/lang/String;)V

    return-object p0
.end method

.method public g3(Lcom/google/protobuf/ByteString;)Lcom/wufan/friend/chat/protocol/w1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/w1;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/w1;->a3(Lcom/wufan/friend/chat/protocol/w1;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public getData()Lcom/wufan/friend/chat/protocol/x1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/w1;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/w1;->getData()Lcom/wufan/friend/chat/protocol/x1;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/w1;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/w1;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/w1;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/w1;->getMessageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Lcom/wufan/friend/chat/protocol/ServicePath;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/w1;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/w1;->getPath()Lcom/wufan/friend/chat/protocol/ServicePath;

    move-result-object v0

    return-object v0
.end method

.method public getRequestId()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/w1;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/w1;->getRequestId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStatus()Lcom/wufan/friend/chat/protocol/ResponseStatus;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/w1;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/w1;->getStatus()Lcom/wufan/friend/chat/protocol/ResponseStatus;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/w1;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/w1;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public h3(Ljava/lang/String;)Lcom/wufan/friend/chat/protocol/w1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/w1;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/w1;->f3(Lcom/wufan/friend/chat/protocol/w1;Ljava/lang/String;)V

    return-object p0
.end method

.method public i3(Lcom/google/protobuf/ByteString;)Lcom/wufan/friend/chat/protocol/w1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/w1;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/w1;->h3(Lcom/wufan/friend/chat/protocol/w1;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public j3(Lcom/wufan/friend/chat/protocol/NotificationType;)Lcom/wufan/friend/chat/protocol/w1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/w1;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/w1;->j3(Lcom/wufan/friend/chat/protocol/w1;Lcom/wufan/friend/chat/protocol/NotificationType;)V

    return-object p0
.end method

.method public k3(I)Lcom/wufan/friend/chat/protocol/w1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/w1;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/w1;->i3(Lcom/wufan/friend/chat/protocol/w1;I)V

    return-object p0
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/w1;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/w1;->l()Z

    move-result v0

    return v0
.end method

.method public l3(Lcom/wufan/friend/chat/protocol/ServicePath;)Lcom/wufan/friend/chat/protocol/w1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/w1;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/w1;->W2(Lcom/wufan/friend/chat/protocol/w1;Lcom/wufan/friend/chat/protocol/ServicePath;)V

    return-object p0
.end method

.method public m3(I)Lcom/wufan/friend/chat/protocol/w1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/w1;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/w1;->V2(Lcom/wufan/friend/chat/protocol/w1;I)V

    return-object p0
.end method

.method public n3(J)Lcom/wufan/friend/chat/protocol/w1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/w1;

    invoke-static {v0, p1, p2}, Lcom/wufan/friend/chat/protocol/w1;->T2(Lcom/wufan/friend/chat/protocol/w1;J)V

    return-object p0
.end method

.method public o3(Lcom/wufan/friend/chat/protocol/ResponseType;)Lcom/wufan/friend/chat/protocol/w1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/w1;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/w1;->s3(Lcom/wufan/friend/chat/protocol/w1;Lcom/wufan/friend/chat/protocol/ResponseType;)V

    return-object p0
.end method

.method public p3(I)Lcom/wufan/friend/chat/protocol/w1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/w1;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/w1;->r3(Lcom/wufan/friend/chat/protocol/w1;I)V

    return-object p0
.end method

.method public q0()Lcom/wufan/friend/chat/protocol/ResponseType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/w1;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/w1;->q0()Lcom/wufan/friend/chat/protocol/ResponseType;

    move-result-object v0

    return-object v0
.end method

.method public q3(Lcom/wufan/friend/chat/protocol/ServiceName;)Lcom/wufan/friend/chat/protocol/w1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/w1;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/w1;->v3(Lcom/wufan/friend/chat/protocol/w1;Lcom/wufan/friend/chat/protocol/ServiceName;)V

    return-object p0
.end method

.method public r3(I)Lcom/wufan/friend/chat/protocol/w1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/w1;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/w1;->u3(Lcom/wufan/friend/chat/protocol/w1;I)V

    return-object p0
.end method

.method public s3(Lcom/wufan/friend/chat/protocol/ResponseStatus;)Lcom/wufan/friend/chat/protocol/w1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/w1;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/w1;->c3(Lcom/wufan/friend/chat/protocol/w1;Lcom/wufan/friend/chat/protocol/ResponseStatus;)V

    return-object p0
.end method

.method public t3(I)Lcom/wufan/friend/chat/protocol/w1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/w1;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/w1;->b3(Lcom/wufan/friend/chat/protocol/w1;I)V

    return-object p0
.end method

.method public u3(J)Lcom/wufan/friend/chat/protocol/w1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/w1;

    invoke-static {v0, p1, p2}, Lcom/wufan/friend/chat/protocol/w1;->p3(Lcom/wufan/friend/chat/protocol/w1;J)V

    return-object p0
.end method

.method public y()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/w1;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/w1;->y()I

    move-result v0

    return v0
.end method
