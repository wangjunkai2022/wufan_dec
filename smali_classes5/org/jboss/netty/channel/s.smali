.class public final Lorg/jboss/netty/channel/s;
.super Ljava/lang/Object;
.source "Channels.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Lorg/jboss/netty/channel/m;)V
    .locals 4

    .line 1
    new-instance v0, Lorg/jboss/netty/channel/o0;

    invoke-interface {p0}, Lorg/jboss/netty/channel/m;->getChannel()Lorg/jboss/netty/channel/e;

    move-result-object v1

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->BOUND:Lorg/jboss/netty/channel/ChannelState;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/jboss/netty/channel/o0;-><init>(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/m;->a(Lorg/jboss/netty/channel/h;)V

    return-void
.end method

.method public static B(Lorg/jboss/netty/channel/e;)Lorg/jboss/netty/channel/j;
    .locals 2

    .line 1
    invoke-interface {p0}, Lorg/jboss/netty/channel/e;->getPipeline()Lorg/jboss/netty/channel/n;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/s$e;

    invoke-direct {v1, p0}, Lorg/jboss/netty/channel/s$e;-><init>(Lorg/jboss/netty/channel/e;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/n;->execute(Ljava/lang/Runnable;)Lorg/jboss/netty/channel/j;

    move-result-object p0

    return-object p0
.end method

.method private static C(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/e;)V
    .locals 2

    .line 1
    invoke-interface {p0}, Lorg/jboss/netty/channel/e;->getPipeline()Lorg/jboss/netty/channel/n;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/y;

    invoke-direct {v1, p0, p1}, Lorg/jboss/netty/channel/y;-><init>(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/e;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/n;->a(Lorg/jboss/netty/channel/h;)V

    return-void
.end method

.method public static D(Lorg/jboss/netty/channel/e;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    invoke-interface {p0}, Lorg/jboss/netty/channel/e;->getPipeline()Lorg/jboss/netty/channel/n;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/z;

    invoke-direct {v1, p0, p1}, Lorg/jboss/netty/channel/z;-><init>(Lorg/jboss/netty/channel/e;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/n;->a(Lorg/jboss/netty/channel/h;)V

    return-void
.end method

.method public static E(Lorg/jboss/netty/channel/m;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    new-instance v0, Lorg/jboss/netty/channel/z;

    invoke-interface {p0}, Lorg/jboss/netty/channel/m;->getChannel()Lorg/jboss/netty/channel/e;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/jboss/netty/channel/z;-><init>(Lorg/jboss/netty/channel/e;Ljava/lang/Throwable;)V

    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/m;->a(Lorg/jboss/netty/channel/h;)V

    return-void
.end method

.method public static F(Lorg/jboss/netty/channel/e;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/j;
    .locals 2

    .line 1
    invoke-interface {p0}, Lorg/jboss/netty/channel/e;->getPipeline()Lorg/jboss/netty/channel/n;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/s$g;

    invoke-direct {v1, p0, p1}, Lorg/jboss/netty/channel/s$g;-><init>(Lorg/jboss/netty/channel/e;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/n;->execute(Ljava/lang/Runnable;)Lorg/jboss/netty/channel/j;

    move-result-object p0

    return-object p0
.end method

.method public static G(Lorg/jboss/netty/channel/m;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/j;
    .locals 2

    .line 1
    invoke-interface {p0}, Lorg/jboss/netty/channel/m;->getPipeline()Lorg/jboss/netty/channel/n;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/s$h;

    invoke-direct {v1, p0, p1}, Lorg/jboss/netty/channel/s$h;-><init>(Lorg/jboss/netty/channel/m;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/n;->execute(Ljava/lang/Runnable;)Lorg/jboss/netty/channel/j;

    move-result-object p0

    return-object p0
.end method

.method public static H(Lorg/jboss/netty/channel/e;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lorg/jboss/netty/channel/s;->I(Lorg/jboss/netty/channel/e;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    return-void
.end method

.method public static I(Lorg/jboss/netty/channel/e;Ljava/lang/Object;Ljava/net/SocketAddress;)V
    .locals 2

    .line 1
    invoke-interface {p0}, Lorg/jboss/netty/channel/e;->getPipeline()Lorg/jboss/netty/channel/n;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/p0;

    invoke-direct {v1, p0, p1, p2}, Lorg/jboss/netty/channel/p0;-><init>(Lorg/jboss/netty/channel/e;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/n;->a(Lorg/jboss/netty/channel/h;)V

    return-void
.end method

.method public static J(Lorg/jboss/netty/channel/m;Ljava/lang/Object;)V
    .locals 3

    .line 1
    new-instance v0, Lorg/jboss/netty/channel/p0;

    invoke-interface {p0}, Lorg/jboss/netty/channel/m;->getChannel()Lorg/jboss/netty/channel/e;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lorg/jboss/netty/channel/p0;-><init>(Lorg/jboss/netty/channel/e;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/m;->a(Lorg/jboss/netty/channel/h;)V

    return-void
.end method

.method public static K(Lorg/jboss/netty/channel/m;Ljava/lang/Object;Ljava/net/SocketAddress;)V
    .locals 2

    .line 1
    new-instance v0, Lorg/jboss/netty/channel/p0;

    invoke-interface {p0}, Lorg/jboss/netty/channel/m;->getChannel()Lorg/jboss/netty/channel/e;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lorg/jboss/netty/channel/p0;-><init>(Lorg/jboss/netty/channel/e;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/m;->a(Lorg/jboss/netty/channel/h;)V

    return-void
.end method

.method public static L(Lorg/jboss/netty/channel/e;J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-interface {p0}, Lorg/jboss/netty/channel/e;->getPipeline()Lorg/jboss/netty/channel/n;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/b0;

    invoke-direct {v1, p0, p1, p2}, Lorg/jboss/netty/channel/b0;-><init>(Lorg/jboss/netty/channel/e;J)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/n;->a(Lorg/jboss/netty/channel/h;)V

    return-void
.end method

.method public static M(Lorg/jboss/netty/channel/m;J)V
    .locals 2

    .line 1
    new-instance v0, Lorg/jboss/netty/channel/b0;

    invoke-interface {p0}, Lorg/jboss/netty/channel/m;->getChannel()Lorg/jboss/netty/channel/e;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lorg/jboss/netty/channel/b0;-><init>(Lorg/jboss/netty/channel/e;J)V

    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/m;->a(Lorg/jboss/netty/channel/h;)V

    return-void
.end method

.method public static N(Lorg/jboss/netty/channel/e;J)Lorg/jboss/netty/channel/j;
    .locals 2

    .line 1
    invoke-interface {p0}, Lorg/jboss/netty/channel/e;->getPipeline()Lorg/jboss/netty/channel/n;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/s$b;

    invoke-direct {v1, p0, p1, p2}, Lorg/jboss/netty/channel/s$b;-><init>(Lorg/jboss/netty/channel/e;J)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/n;->execute(Ljava/lang/Runnable;)Lorg/jboss/netty/channel/j;

    move-result-object p0

    return-object p0
.end method

.method public static O(Lorg/jboss/netty/channel/e;)Lorg/jboss/netty/channel/j;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lorg/jboss/netty/channel/s;->P(Lorg/jboss/netty/channel/e;Z)Lorg/jboss/netty/channel/j;

    move-result-object p0

    return-object p0
.end method

.method public static P(Lorg/jboss/netty/channel/e;Z)Lorg/jboss/netty/channel/j;
    .locals 1

    .line 1
    new-instance v0, Lorg/jboss/netty/channel/w;

    invoke-direct {v0, p0, p1}, Lorg/jboss/netty/channel/w;-><init>(Lorg/jboss/netty/channel/e;Z)V

    return-object v0
.end method

.method public static Q()Lorg/jboss/netty/channel/n;
    .locals 1

    .line 1
    new-instance v0, Lorg/jboss/netty/channel/x;

    invoke-direct {v0}, Lorg/jboss/netty/channel/x;-><init>()V

    return-object v0
.end method

.method public static R(Lorg/jboss/netty/channel/n;)Lorg/jboss/netty/channel/n;
    .locals 3

    .line 1
    invoke-static {}, Lorg/jboss/netty/channel/s;->Q()Lorg/jboss/netty/channel/n;

    move-result-object v0

    .line 2
    invoke-interface {p0}, Lorg/jboss/netty/channel/n;->toMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/channel/ChannelHandler;

    invoke-interface {v0, v2, v1}, Lorg/jboss/netty/channel/n;->g(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static varargs S([Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/n;
    .locals 4

    const-string v0, "handlers"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lorg/jboss/netty/channel/s;->Q()Lorg/jboss/netty/channel/n;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 4
    aget-object v2, p0, v1

    if-nez v2, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-static {v1}, Lorg/jboss/netty/util/internal/b;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Lorg/jboss/netty/channel/n;->g(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static T(Lorg/jboss/netty/channel/n;)Lorg/jboss/netty/channel/o;
    .locals 1

    .line 1
    new-instance v0, Lorg/jboss/netty/channel/s$a;

    invoke-direct {v0, p0}, Lorg/jboss/netty/channel/s$a;-><init>(Lorg/jboss/netty/channel/n;)V

    return-object v0
.end method

.method public static U(Lorg/jboss/netty/channel/e;I)Lorg/jboss/netty/channel/j;
    .locals 4

    .line 1
    invoke-static {p1}, Lorg/jboss/netty/channel/s;->Z(I)V

    .line 2
    invoke-static {p1}, Lorg/jboss/netty/channel/s;->j(I)I

    move-result p1

    .line 3
    invoke-static {p0}, Lorg/jboss/netty/channel/s;->O(Lorg/jboss/netty/channel/e;)Lorg/jboss/netty/channel/j;

    move-result-object v0

    .line 4
    invoke-interface {p0}, Lorg/jboss/netty/channel/e;->getPipeline()Lorg/jboss/netty/channel/n;

    move-result-object v1

    new-instance v2, Lorg/jboss/netty/channel/c0;

    sget-object v3, Lorg/jboss/netty/channel/ChannelState;->INTEREST_OPS:Lorg/jboss/netty/channel/ChannelState;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v2, p0, v0, v3, p1}, Lorg/jboss/netty/channel/c0;-><init>(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/j;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lorg/jboss/netty/channel/n;->c(Lorg/jboss/netty/channel/h;)V

    return-object v0
.end method

.method public static V(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/j;I)V
    .locals 3

    .line 1
    invoke-static {p2}, Lorg/jboss/netty/channel/s;->Z(I)V

    .line 2
    invoke-static {p2}, Lorg/jboss/netty/channel/s;->j(I)I

    move-result p2

    .line 3
    new-instance v0, Lorg/jboss/netty/channel/c0;

    invoke-interface {p0}, Lorg/jboss/netty/channel/m;->getChannel()Lorg/jboss/netty/channel/e;

    move-result-object v1

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->INTEREST_OPS:Lorg/jboss/netty/channel/ChannelState;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v0, v1, p1, v2, p2}, Lorg/jboss/netty/channel/c0;-><init>(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/j;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/m;->c(Lorg/jboss/netty/channel/h;)V

    return-void
.end method

.method public static W(Lorg/jboss/netty/channel/e;)Lorg/jboss/netty/channel/j;
    .locals 1

    .line 1
    instance-of v0, p0, Lorg/jboss/netty/channel/a;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lorg/jboss/netty/channel/a;

    invoke-virtual {p0}, Lorg/jboss/netty/channel/a;->A()Lorg/jboss/netty/channel/j;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lorg/jboss/netty/channel/n0;

    invoke-direct {v0, p0}, Lorg/jboss/netty/channel/n0;-><init>(Lorg/jboss/netty/channel/e;)V

    return-object v0
.end method

.method public static X(Lorg/jboss/netty/channel/e;)Lorg/jboss/netty/channel/j;
    .locals 5

    .line 1
    invoke-static {p0}, Lorg/jboss/netty/channel/s;->O(Lorg/jboss/netty/channel/e;)Lorg/jboss/netty/channel/j;

    move-result-object v0

    .line 2
    invoke-interface {p0}, Lorg/jboss/netty/channel/e;->getPipeline()Lorg/jboss/netty/channel/n;

    move-result-object v1

    new-instance v2, Lorg/jboss/netty/channel/c0;

    sget-object v3, Lorg/jboss/netty/channel/ChannelState;->BOUND:Lorg/jboss/netty/channel/ChannelState;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v0, v3, v4}, Lorg/jboss/netty/channel/c0;-><init>(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/j;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lorg/jboss/netty/channel/n;->c(Lorg/jboss/netty/channel/h;)V

    return-object v0
.end method

.method public static Y(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/j;)V
    .locals 4

    .line 1
    new-instance v0, Lorg/jboss/netty/channel/c0;

    invoke-interface {p0}, Lorg/jboss/netty/channel/m;->getChannel()Lorg/jboss/netty/channel/e;

    move-result-object v1

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->BOUND:Lorg/jboss/netty/channel/ChannelState;

    const/4 v3, 0x0

    invoke-direct {v0, v1, p1, v2, v3}, Lorg/jboss/netty/channel/c0;-><init>(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/j;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/m;->c(Lorg/jboss/netty/channel/h;)V

    return-void
.end method

.method private static Z(I)V
    .locals 3

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid interestOps: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Lorg/jboss/netty/channel/e;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/j;
    .locals 4

    const-string v0, "localAddress"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p0}, Lorg/jboss/netty/channel/s;->O(Lorg/jboss/netty/channel/e;)Lorg/jboss/netty/channel/j;

    move-result-object v0

    .line 3
    invoke-interface {p0}, Lorg/jboss/netty/channel/e;->getPipeline()Lorg/jboss/netty/channel/n;

    move-result-object v1

    new-instance v2, Lorg/jboss/netty/channel/c0;

    sget-object v3, Lorg/jboss/netty/channel/ChannelState;->BOUND:Lorg/jboss/netty/channel/ChannelState;

    invoke-direct {v2, p0, v0, v3, p1}, Lorg/jboss/netty/channel/c0;-><init>(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/j;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lorg/jboss/netty/channel/n;->c(Lorg/jboss/netty/channel/h;)V

    return-object v0
.end method

.method public static a0(Lorg/jboss/netty/channel/e;Ljava/lang/Object;)Lorg/jboss/netty/channel/j;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lorg/jboss/netty/channel/s;->b0(Lorg/jboss/netty/channel/e;Ljava/lang/Object;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/j;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/j;Ljava/net/SocketAddress;)V
    .locals 3

    const-string v0, "localAddress"

    .line 1
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lorg/jboss/netty/channel/c0;

    invoke-interface {p0}, Lorg/jboss/netty/channel/m;->getChannel()Lorg/jboss/netty/channel/e;

    move-result-object v1

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->BOUND:Lorg/jboss/netty/channel/ChannelState;

    invoke-direct {v0, v1, p1, v2, p2}, Lorg/jboss/netty/channel/c0;-><init>(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/j;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/m;->c(Lorg/jboss/netty/channel/h;)V

    return-void
.end method

.method public static b0(Lorg/jboss/netty/channel/e;Ljava/lang/Object;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/j;
    .locals 3

    .line 1
    invoke-static {p0}, Lorg/jboss/netty/channel/s;->O(Lorg/jboss/netty/channel/e;)Lorg/jboss/netty/channel/j;

    move-result-object v0

    .line 2
    invoke-interface {p0}, Lorg/jboss/netty/channel/e;->getPipeline()Lorg/jboss/netty/channel/n;

    move-result-object v1

    new-instance v2, Lorg/jboss/netty/channel/d0;

    invoke-direct {v2, p0, v0, p1, p2}, Lorg/jboss/netty/channel/d0;-><init>(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/j;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    invoke-interface {v1, v2}, Lorg/jboss/netty/channel/n;->c(Lorg/jboss/netty/channel/h;)V

    return-object v0
.end method

.method public static c(Lorg/jboss/netty/channel/e;)Lorg/jboss/netty/channel/j;
    .locals 5

    .line 1
    invoke-interface {p0}, Lorg/jboss/netty/channel/e;->t0()Lorg/jboss/netty/channel/j;

    move-result-object v0

    .line 2
    invoke-interface {p0}, Lorg/jboss/netty/channel/e;->getPipeline()Lorg/jboss/netty/channel/n;

    move-result-object v1

    new-instance v2, Lorg/jboss/netty/channel/c0;

    sget-object v3, Lorg/jboss/netty/channel/ChannelState;->OPEN:Lorg/jboss/netty/channel/ChannelState;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v2, p0, v0, v3, v4}, Lorg/jboss/netty/channel/c0;-><init>(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/j;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lorg/jboss/netty/channel/n;->c(Lorg/jboss/netty/channel/h;)V

    return-object v0
.end method

.method public static c0(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/j;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, v0}, Lorg/jboss/netty/channel/s;->d0(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/j;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    return-void
.end method

.method public static d(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/j;)V
    .locals 4

    .line 1
    new-instance v0, Lorg/jboss/netty/channel/c0;

    invoke-interface {p0}, Lorg/jboss/netty/channel/m;->getChannel()Lorg/jboss/netty/channel/e;

    move-result-object v1

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->OPEN:Lorg/jboss/netty/channel/ChannelState;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, p1, v2, v3}, Lorg/jboss/netty/channel/c0;-><init>(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/j;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/m;->c(Lorg/jboss/netty/channel/h;)V

    return-void
.end method

.method public static d0(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/j;Ljava/lang/Object;Ljava/net/SocketAddress;)V
    .locals 2

    .line 1
    new-instance v0, Lorg/jboss/netty/channel/d0;

    invoke-interface {p0}, Lorg/jboss/netty/channel/m;->getChannel()Lorg/jboss/netty/channel/e;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2, p3}, Lorg/jboss/netty/channel/d0;-><init>(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/j;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/m;->c(Lorg/jboss/netty/channel/h;)V

    return-void
.end method

.method public static e(Lorg/jboss/netty/channel/e;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/j;
    .locals 4

    const-string v0, "remoteAddress"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0}, Lorg/jboss/netty/channel/s;->P(Lorg/jboss/netty/channel/e;Z)Lorg/jboss/netty/channel/j;

    move-result-object v0

    .line 3
    invoke-interface {p0}, Lorg/jboss/netty/channel/e;->getPipeline()Lorg/jboss/netty/channel/n;

    move-result-object v1

    new-instance v2, Lorg/jboss/netty/channel/c0;

    sget-object v3, Lorg/jboss/netty/channel/ChannelState;->CONNECTED:Lorg/jboss/netty/channel/ChannelState;

    invoke-direct {v2, p0, v0, v3, p1}, Lorg/jboss/netty/channel/c0;-><init>(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/j;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lorg/jboss/netty/channel/n;->c(Lorg/jboss/netty/channel/h;)V

    return-object v0
.end method

.method public static f(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/j;Ljava/net/SocketAddress;)V
    .locals 3

    const-string v0, "remoteAddress"

    .line 1
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lorg/jboss/netty/channel/c0;

    invoke-interface {p0}, Lorg/jboss/netty/channel/m;->getChannel()Lorg/jboss/netty/channel/e;

    move-result-object v1

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->CONNECTED:Lorg/jboss/netty/channel/ChannelState;

    invoke-direct {v0, v1, p1, v2, p2}, Lorg/jboss/netty/channel/c0;-><init>(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/j;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/m;->c(Lorg/jboss/netty/channel/h;)V

    return-void
.end method

.method public static g(Lorg/jboss/netty/channel/e;)Lorg/jboss/netty/channel/j;
    .locals 5

    .line 1
    invoke-static {p0}, Lorg/jboss/netty/channel/s;->O(Lorg/jboss/netty/channel/e;)Lorg/jboss/netty/channel/j;

    move-result-object v0

    .line 2
    invoke-interface {p0}, Lorg/jboss/netty/channel/e;->getPipeline()Lorg/jboss/netty/channel/n;

    move-result-object v1

    new-instance v2, Lorg/jboss/netty/channel/c0;

    sget-object v3, Lorg/jboss/netty/channel/ChannelState;->CONNECTED:Lorg/jboss/netty/channel/ChannelState;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v0, v3, v4}, Lorg/jboss/netty/channel/c0;-><init>(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/j;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lorg/jboss/netty/channel/n;->c(Lorg/jboss/netty/channel/h;)V

    return-object v0
.end method

.method public static h(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/j;)V
    .locals 4

    .line 1
    new-instance v0, Lorg/jboss/netty/channel/c0;

    invoke-interface {p0}, Lorg/jboss/netty/channel/m;->getChannel()Lorg/jboss/netty/channel/e;

    move-result-object v1

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->CONNECTED:Lorg/jboss/netty/channel/ChannelState;

    const/4 v3, 0x0

    invoke-direct {v0, v1, p1, v2, v3}, Lorg/jboss/netty/channel/c0;-><init>(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/j;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/m;->c(Lorg/jboss/netty/channel/h;)V

    return-void
.end method

.method public static i(Lorg/jboss/netty/channel/e;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/j;
    .locals 1

    .line 1
    new-instance v0, Lorg/jboss/netty/channel/f0;

    invoke-direct {v0, p0, p1}, Lorg/jboss/netty/channel/f0;-><init>(Lorg/jboss/netty/channel/e;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static j(I)I
    .locals 0

    and-int/lit8 p0, p0, -0x5

    return p0
.end method

.method public static k(Lorg/jboss/netty/channel/e;Ljava/net/SocketAddress;)V
    .locals 3

    .line 1
    invoke-interface {p0}, Lorg/jboss/netty/channel/e;->getPipeline()Lorg/jboss/netty/channel/n;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/o0;

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->BOUND:Lorg/jboss/netty/channel/ChannelState;

    invoke-direct {v1, p0, v2, p1}, Lorg/jboss/netty/channel/o0;-><init>(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/n;->a(Lorg/jboss/netty/channel/h;)V

    return-void
.end method

.method public static l(Lorg/jboss/netty/channel/m;Ljava/net/SocketAddress;)V
    .locals 3

    .line 1
    new-instance v0, Lorg/jboss/netty/channel/o0;

    invoke-interface {p0}, Lorg/jboss/netty/channel/m;->getChannel()Lorg/jboss/netty/channel/e;

    move-result-object v1

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->BOUND:Lorg/jboss/netty/channel/ChannelState;

    invoke-direct {v0, v1, v2, p1}, Lorg/jboss/netty/channel/o0;-><init>(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/m;->a(Lorg/jboss/netty/channel/h;)V

    return-void
.end method

.method public static m(Lorg/jboss/netty/channel/e;)V
    .locals 4

    .line 1
    invoke-interface {p0}, Lorg/jboss/netty/channel/e;->getPipeline()Lorg/jboss/netty/channel/n;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/o0;

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->OPEN:Lorg/jboss/netty/channel/ChannelState;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v1, p0, v2, v3}, Lorg/jboss/netty/channel/o0;-><init>(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/n;->a(Lorg/jboss/netty/channel/h;)V

    .line 2
    invoke-interface {p0}, Lorg/jboss/netty/channel/e;->getParent()Lorg/jboss/netty/channel/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p0}, Lorg/jboss/netty/channel/e;->getParent()Lorg/jboss/netty/channel/e;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/jboss/netty/channel/s;->C(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/e;)V

    :cond_0
    return-void
.end method

.method public static n(Lorg/jboss/netty/channel/m;)V
    .locals 4

    .line 1
    new-instance v0, Lorg/jboss/netty/channel/o0;

    invoke-interface {p0}, Lorg/jboss/netty/channel/m;->getChannel()Lorg/jboss/netty/channel/e;

    move-result-object v1

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->OPEN:Lorg/jboss/netty/channel/ChannelState;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2, v3}, Lorg/jboss/netty/channel/o0;-><init>(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/m;->a(Lorg/jboss/netty/channel/h;)V

    return-void
.end method

.method public static o(Lorg/jboss/netty/channel/e;)Lorg/jboss/netty/channel/j;
    .locals 2

    .line 1
    invoke-interface {p0}, Lorg/jboss/netty/channel/e;->getPipeline()Lorg/jboss/netty/channel/n;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/s$f;

    invoke-direct {v1, p0}, Lorg/jboss/netty/channel/s$f;-><init>(Lorg/jboss/netty/channel/e;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/n;->execute(Ljava/lang/Runnable;)Lorg/jboss/netty/channel/j;

    move-result-object p0

    return-object p0
.end method

.method public static p(Lorg/jboss/netty/channel/e;Ljava/net/SocketAddress;)V
    .locals 3

    .line 1
    invoke-interface {p0}, Lorg/jboss/netty/channel/e;->getPipeline()Lorg/jboss/netty/channel/n;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/o0;

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->CONNECTED:Lorg/jboss/netty/channel/ChannelState;

    invoke-direct {v1, p0, v2, p1}, Lorg/jboss/netty/channel/o0;-><init>(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/n;->a(Lorg/jboss/netty/channel/h;)V

    return-void
.end method

.method public static q(Lorg/jboss/netty/channel/m;Ljava/net/SocketAddress;)V
    .locals 3

    .line 1
    new-instance v0, Lorg/jboss/netty/channel/o0;

    invoke-interface {p0}, Lorg/jboss/netty/channel/m;->getChannel()Lorg/jboss/netty/channel/e;

    move-result-object v1

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->CONNECTED:Lorg/jboss/netty/channel/ChannelState;

    invoke-direct {v0, v1, v2, p1}, Lorg/jboss/netty/channel/o0;-><init>(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/m;->a(Lorg/jboss/netty/channel/h;)V

    return-void
.end method

.method public static r(Lorg/jboss/netty/channel/e;)V
    .locals 4

    .line 1
    invoke-interface {p0}, Lorg/jboss/netty/channel/e;->getPipeline()Lorg/jboss/netty/channel/n;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/o0;

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->CONNECTED:Lorg/jboss/netty/channel/ChannelState;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lorg/jboss/netty/channel/o0;-><init>(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/n;->a(Lorg/jboss/netty/channel/h;)V

    return-void
.end method

.method public static s(Lorg/jboss/netty/channel/m;)V
    .locals 4

    .line 1
    new-instance v0, Lorg/jboss/netty/channel/o0;

    invoke-interface {p0}, Lorg/jboss/netty/channel/m;->getChannel()Lorg/jboss/netty/channel/e;

    move-result-object v1

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->CONNECTED:Lorg/jboss/netty/channel/ChannelState;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/jboss/netty/channel/o0;-><init>(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/m;->a(Lorg/jboss/netty/channel/h;)V

    return-void
.end method

.method public static t(Lorg/jboss/netty/channel/e;)Lorg/jboss/netty/channel/j;
    .locals 2

    .line 1
    invoke-interface {p0}, Lorg/jboss/netty/channel/e;->getPipeline()Lorg/jboss/netty/channel/n;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/s$d;

    invoke-direct {v1, p0}, Lorg/jboss/netty/channel/s$d;-><init>(Lorg/jboss/netty/channel/e;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/n;->execute(Ljava/lang/Runnable;)Lorg/jboss/netty/channel/j;

    move-result-object p0

    return-object p0
.end method

.method public static u(Lorg/jboss/netty/channel/e;)V
    .locals 4

    .line 1
    invoke-interface {p0}, Lorg/jboss/netty/channel/e;->getPipeline()Lorg/jboss/netty/channel/n;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/o0;

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->INTEREST_OPS:Lorg/jboss/netty/channel/ChannelState;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lorg/jboss/netty/channel/o0;-><init>(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/n;->a(Lorg/jboss/netty/channel/h;)V

    return-void
.end method

.method public static v(Lorg/jboss/netty/channel/m;)V
    .locals 4

    .line 1
    new-instance v0, Lorg/jboss/netty/channel/o0;

    invoke-interface {p0}, Lorg/jboss/netty/channel/m;->getChannel()Lorg/jboss/netty/channel/e;

    move-result-object v1

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->INTEREST_OPS:Lorg/jboss/netty/channel/ChannelState;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/jboss/netty/channel/o0;-><init>(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/m;->a(Lorg/jboss/netty/channel/h;)V

    return-void
.end method

.method public static w(Lorg/jboss/netty/channel/e;)Lorg/jboss/netty/channel/j;
    .locals 2

    .line 1
    invoke-interface {p0}, Lorg/jboss/netty/channel/e;->getPipeline()Lorg/jboss/netty/channel/n;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/s$c;

    invoke-direct {v1, p0}, Lorg/jboss/netty/channel/s$c;-><init>(Lorg/jboss/netty/channel/e;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/n;->execute(Ljava/lang/Runnable;)Lorg/jboss/netty/channel/j;

    move-result-object p0

    return-object p0
.end method

.method public static x(Lorg/jboss/netty/channel/e;)V
    .locals 4

    .line 1
    invoke-interface {p0}, Lorg/jboss/netty/channel/e;->getParent()Lorg/jboss/netty/channel/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p0}, Lorg/jboss/netty/channel/e;->getParent()Lorg/jboss/netty/channel/e;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/jboss/netty/channel/s;->C(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/e;)V

    .line 3
    :cond_0
    invoke-interface {p0}, Lorg/jboss/netty/channel/e;->getPipeline()Lorg/jboss/netty/channel/n;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/o0;

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->OPEN:Lorg/jboss/netty/channel/ChannelState;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v1, p0, v2, v3}, Lorg/jboss/netty/channel/o0;-><init>(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/n;->a(Lorg/jboss/netty/channel/h;)V

    return-void
.end method

.method public static y(Lorg/jboss/netty/channel/m;)V
    .locals 4

    .line 1
    new-instance v0, Lorg/jboss/netty/channel/o0;

    invoke-interface {p0}, Lorg/jboss/netty/channel/m;->getChannel()Lorg/jboss/netty/channel/e;

    move-result-object v1

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->OPEN:Lorg/jboss/netty/channel/ChannelState;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2, v3}, Lorg/jboss/netty/channel/o0;-><init>(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/m;->a(Lorg/jboss/netty/channel/h;)V

    return-void
.end method

.method public static z(Lorg/jboss/netty/channel/e;)V
    .locals 4

    .line 1
    invoke-interface {p0}, Lorg/jboss/netty/channel/e;->getPipeline()Lorg/jboss/netty/channel/n;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/o0;

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->BOUND:Lorg/jboss/netty/channel/ChannelState;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lorg/jboss/netty/channel/o0;-><init>(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/n;->a(Lorg/jboss/netty/channel/h;)V

    return-void
.end method
