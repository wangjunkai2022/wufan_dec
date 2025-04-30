.class public final Lcom/wufan/friend/chat/protocol/s1$b;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Request.java"

# interfaces
.implements Lcom/wufan/friend/chat/protocol/v1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wufan/friend/chat/protocol/s1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/wufan/friend/chat/protocol/s1;",
        "Lcom/wufan/friend/chat/protocol/s1$b;",
        ">;",
        "Lcom/wufan/friend/chat/protocol/v1;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/wufan/friend/chat/protocol/s1;->S2()Lcom/wufan/friend/chat/protocol/s1;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wufan/friend/chat/protocol/s1$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/s1$b;-><init>()V

    return-void
.end method


# virtual methods
.method public A()Lcom/wufan/friend/chat/protocol/ServiceName;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/s1;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/s1;->A()Lcom/wufan/friend/chat/protocol/ServiceName;

    move-result-object v0

    return-object v0
.end method

.method public F()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/s1;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/s1;->F()I

    move-result v0

    return v0
.end method

.method public S2()Lcom/wufan/friend/chat/protocol/s1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/s1;

    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/s1;->Z2(Lcom/wufan/friend/chat/protocol/s1;)V

    return-object p0
.end method

.method public T2()Lcom/wufan/friend/chat/protocol/s1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/s1;

    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/s1;->f3(Lcom/wufan/friend/chat/protocol/s1;)V

    return-object p0
.end method

.method public U2()Lcom/wufan/friend/chat/protocol/s1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/s1;

    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/s1;->X2(Lcom/wufan/friend/chat/protocol/s1;)V

    return-object p0
.end method

.method public V2()Lcom/wufan/friend/chat/protocol/s1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/s1;

    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/s1;->k3(Lcom/wufan/friend/chat/protocol/s1;)V

    return-object p0
.end method

.method public W2()Lcom/wufan/friend/chat/protocol/s1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/s1;

    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/s1;->e3(Lcom/wufan/friend/chat/protocol/s1;)V

    return-object p0
.end method

.method public X2()Lcom/wufan/friend/chat/protocol/s1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/s1;

    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/s1;->U2(Lcom/wufan/friend/chat/protocol/s1;)V

    return-object p0
.end method

.method public Y2()Lcom/wufan/friend/chat/protocol/s1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/s1;

    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/s1;->h3(Lcom/wufan/friend/chat/protocol/s1;)V

    return-object p0
.end method

.method public Z2(Lcom/wufan/friend/chat/protocol/t1;)Lcom/wufan/friend/chat/protocol/s1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/s1;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/s1;->d3(Lcom/wufan/friend/chat/protocol/s1;Lcom/wufan/friend/chat/protocol/t1;)V

    return-object p0
.end method

.method public a()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/s1;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/s1;->a()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public a3(Ljava/lang/String;)Lcom/wufan/friend/chat/protocol/s1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/s1;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/s1;->Y2(Lcom/wufan/friend/chat/protocol/s1;Ljava/lang/String;)V

    return-object p0
.end method

.method public b3(Lcom/google/protobuf/ByteString;)Lcom/wufan/friend/chat/protocol/s1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/s1;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/s1;->a3(Lcom/wufan/friend/chat/protocol/s1;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public c3(Lcom/wufan/friend/chat/protocol/t1$b;)Lcom/wufan/friend/chat/protocol/s1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/s1;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/s1;->c3(Lcom/wufan/friend/chat/protocol/s1;Lcom/wufan/friend/chat/protocol/t1$b;)V

    return-object p0
.end method

.method public d3(Lcom/wufan/friend/chat/protocol/t1;)Lcom/wufan/friend/chat/protocol/s1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/s1;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/s1;->b3(Lcom/wufan/friend/chat/protocol/s1;Lcom/wufan/friend/chat/protocol/t1;)V

    return-object p0
.end method

.method public e3(Lcom/wufan/friend/chat/protocol/ServicePath;)Lcom/wufan/friend/chat/protocol/s1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/s1;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/s1;->W2(Lcom/wufan/friend/chat/protocol/s1;Lcom/wufan/friend/chat/protocol/ServicePath;)V

    return-object p0
.end method

.method public f3(I)Lcom/wufan/friend/chat/protocol/s1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/s1;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/s1;->V2(Lcom/wufan/friend/chat/protocol/s1;I)V

    return-object p0
.end method

.method public g3(Lcom/wufan/friend/chat/protocol/Platform;)Lcom/wufan/friend/chat/protocol/s1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/s1;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/s1;->j3(Lcom/wufan/friend/chat/protocol/s1;Lcom/wufan/friend/chat/protocol/Platform;)V

    return-object p0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/s1;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/s1;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Lcom/wufan/friend/chat/protocol/ServicePath;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/s1;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/s1;->getPath()Lcom/wufan/friend/chat/protocol/ServicePath;

    move-result-object v0

    return-object v0
.end method

.method public getPlatform()Lcom/wufan/friend/chat/protocol/Platform;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/s1;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/s1;->getPlatform()Lcom/wufan/friend/chat/protocol/Platform;

    move-result-object v0

    return-object v0
.end method

.method public getPlatformValue()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/s1;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/s1;->getPlatformValue()I

    move-result v0

    return v0
.end method

.method public getRequestId()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/s1;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/s1;->getRequestId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/s1;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/s1;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public h3(I)Lcom/wufan/friend/chat/protocol/s1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/s1;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/s1;->i3(Lcom/wufan/friend/chat/protocol/s1;I)V

    return-object p0
.end method

.method public i3(J)Lcom/wufan/friend/chat/protocol/s1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/s1;

    invoke-static {v0, p1, p2}, Lcom/wufan/friend/chat/protocol/s1;->T2(Lcom/wufan/friend/chat/protocol/s1;J)V

    return-object p0
.end method

.method public j3(Lcom/wufan/friend/chat/protocol/ServiceName;)Lcom/wufan/friend/chat/protocol/s1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/s1;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/s1;->m3(Lcom/wufan/friend/chat/protocol/s1;Lcom/wufan/friend/chat/protocol/ServiceName;)V

    return-object p0
.end method

.method public k3(I)Lcom/wufan/friend/chat/protocol/s1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/s1;

    invoke-static {v0, p1}, Lcom/wufan/friend/chat/protocol/s1;->l3(Lcom/wufan/friend/chat/protocol/s1;I)V

    return-object p0
.end method

.method public l3(J)Lcom/wufan/friend/chat/protocol/s1$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/s1;

    invoke-static {v0, p1, p2}, Lcom/wufan/friend/chat/protocol/s1;->g3(Lcom/wufan/friend/chat/protocol/s1;J)V

    return-object p0
.end method

.method public v1()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/s1;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/s1;->v1()Z

    move-result v0

    return v0
.end method

.method public w1()Lcom/wufan/friend/chat/protocol/t1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/s1;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/s1;->w1()Lcom/wufan/friend/chat/protocol/t1;

    move-result-object v0

    return-object v0
.end method

.method public y()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/wufan/friend/chat/protocol/s1;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/s1;->y()I

    move-result v0

    return v0
.end method
