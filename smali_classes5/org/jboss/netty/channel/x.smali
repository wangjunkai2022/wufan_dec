.class public Lorg/jboss/netty/channel/x;
.super Ljava/lang/Object;
.source "DefaultChannelPipeline.java"

# interfaces
.implements Lorg/jboss/netty/channel/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/channel/x$b;,
        Lorg/jboss/netty/channel/x$a;
    }
.end annotation


# static fields
.field static final f:Lorg/jboss/netty/channel/p;


# instance fields
.field private volatile a:Lorg/jboss/netty/channel/e;

.field private volatile b:Lorg/jboss/netty/channel/p;

.field private volatile c:Lorg/jboss/netty/channel/x$a;

.field private volatile d:Lorg/jboss/netty/channel/x$a;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jboss/netty/channel/x$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/jboss/netty/channel/x$b;

    invoke-direct {v0}, Lorg/jboss/netty/channel/x$b;-><init>()V

    sput-object v0, Lorg/jboss/netty/channel/x;->f:Lorg/jboss/netty/channel/p;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/jboss/netty/channel/x;->e:Ljava/util/Map;

    return-void
.end method

.method private B(Lorg/jboss/netty/channel/x$a;)Lorg/jboss/netty/channel/x$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/x;->c:Lorg/jboss/netty/channel/x$a;

    iget-object v1, p0, Lorg/jboss/netty/channel/x;->d:Lorg/jboss/netty/channel/x$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/jboss/netty/channel/x;->d:Lorg/jboss/netty/channel/x$a;

    iput-object v0, p0, Lorg/jboss/netty/channel/x;->c:Lorg/jboss/netty/channel/x$a;

    .line 3
    iget-object v0, p0, Lorg/jboss/netty/channel/x;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/channel/x;->c:Lorg/jboss/netty/channel/x$a;

    if-ne p1, v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lorg/jboss/netty/channel/x;->removeFirst()Lorg/jboss/netty/channel/ChannelHandler;

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lorg/jboss/netty/channel/x;->d:Lorg/jboss/netty/channel/x$a;

    if-ne p1, v0, :cond_2

    .line 7
    invoke-virtual {p0}, Lorg/jboss/netty/channel/x;->removeLast()Lorg/jboss/netty/channel/ChannelHandler;

    goto :goto_0

    .line 8
    :cond_2
    invoke-static {p1}, Lorg/jboss/netty/channel/x;->s(Lorg/jboss/netty/channel/m;)V

    .line 9
    iget-object v0, p1, Lorg/jboss/netty/channel/x$a;->b:Lorg/jboss/netty/channel/x$a;

    .line 10
    iget-object v1, p1, Lorg/jboss/netty/channel/x$a;->a:Lorg/jboss/netty/channel/x$a;

    .line 11
    iput-object v1, v0, Lorg/jboss/netty/channel/x$a;->a:Lorg/jboss/netty/channel/x$a;

    .line 12
    iput-object v0, v1, Lorg/jboss/netty/channel/x$a;->b:Lorg/jboss/netty/channel/x$a;

    .line 13
    iget-object v0, p0, Lorg/jboss/netty/channel/x;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/jboss/netty/channel/x$a;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static {p1}, Lorg/jboss/netty/channel/x;->q(Lorg/jboss/netty/channel/m;)V

    :goto_0
    return-object p1
.end method

.method private C(Lorg/jboss/netty/channel/x$a;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/ChannelHandler;
    .locals 10

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/x;->c:Lorg/jboss/netty/channel/x$a;

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/jboss/netty/channel/x;->removeFirst()Lorg/jboss/netty/channel/ChannelHandler;

    .line 3
    invoke-virtual {p0, p2, p3}, Lorg/jboss/netty/channel/x;->j(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    goto/16 :goto_3

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/channel/x;->d:Lorg/jboss/netty/channel/x$a;

    if-ne p1, v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lorg/jboss/netty/channel/x;->removeLast()Lorg/jboss/netty/channel/ChannelHandler;

    .line 6
    invoke-virtual {p0, p2, p3}, Lorg/jboss/netty/channel/x;->g(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    goto/16 :goto_3

    .line 7
    :cond_1
    invoke-virtual {p1}, Lorg/jboss/netty/channel/x$a;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    invoke-direct {p0, p2}, Lorg/jboss/netty/channel/x;->t(Ljava/lang/String;)V

    .line 9
    :cond_2
    iget-object v7, p1, Lorg/jboss/netty/channel/x$a;->b:Lorg/jboss/netty/channel/x$a;

    .line 10
    iget-object v8, p1, Lorg/jboss/netty/channel/x$a;->a:Lorg/jboss/netty/channel/x$a;

    .line 11
    new-instance v9, Lorg/jboss/netty/channel/x$a;

    move-object v1, v9

    move-object v2, p0

    move-object v3, v7

    move-object v4, v8

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/jboss/netty/channel/x$a;-><init>(Lorg/jboss/netty/channel/x;Lorg/jboss/netty/channel/x$a;Lorg/jboss/netty/channel/x$a;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    .line 12
    invoke-static {p1}, Lorg/jboss/netty/channel/x;->s(Lorg/jboss/netty/channel/m;)V

    .line 13
    invoke-static {v9}, Lorg/jboss/netty/channel/x;->r(Lorg/jboss/netty/channel/m;)V

    .line 14
    iput-object v9, v7, Lorg/jboss/netty/channel/x$a;->a:Lorg/jboss/netty/channel/x$a;

    .line 15
    iput-object v9, v8, Lorg/jboss/netty/channel/x$a;->b:Lorg/jboss/netty/channel/x$a;

    if-nez v0, :cond_3

    .line 16
    iget-object p3, p0, Lorg/jboss/netty/channel/x;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/jboss/netty/channel/x$a;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :cond_3
    iget-object p3, p0, Lorg/jboss/netty/channel/x;->e:Ljava/util/Map;

    invoke-interface {p3, p2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x1

    const/4 p3, 0x0

    const/4 v0, 0x0

    .line 18
    :try_start_0
    invoke-static {p1}, Lorg/jboss/netty/channel/x;->q(Lorg/jboss/netty/channel/m;)V
    :try_end_0
    .catch Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    .line 19
    :goto_0
    :try_start_1
    invoke-direct {p0, v9}, Lorg/jboss/netty/channel/x;->p(Lorg/jboss/netty/channel/m;)V
    :try_end_1
    .catch Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const/4 p2, 0x0

    :goto_1
    if-nez v2, :cond_5

    if-eqz p2, :cond_4

    goto :goto_2

    .line 20
    :cond_4
    new-instance p2, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Both "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/jboss/netty/channel/x$a;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".afterRemove() and "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lorg/jboss/netty/channel/x$a;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".afterAdd() failed; see logs."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    :goto_2
    if-eqz v2, :cond_7

    if-eqz p2, :cond_6

    .line 21
    :goto_3
    invoke-virtual {p1}, Lorg/jboss/netty/channel/x$a;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object p1

    return-object p1

    .line 22
    :cond_6
    throw v0

    .line 23
    :cond_7
    throw v1
.end method

.method static synthetic n(Lorg/jboss/netty/channel/x;Lorg/jboss/netty/channel/x$a;)Lorg/jboss/netty/channel/x$a;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/x;->u(Lorg/jboss/netty/channel/x$a;)Lorg/jboss/netty/channel/x$a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic o(Lorg/jboss/netty/channel/x;Lorg/jboss/netty/channel/x$a;)Lorg/jboss/netty/channel/x$a;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/x;->v(Lorg/jboss/netty/channel/x$a;)Lorg/jboss/netty/channel/x$a;

    move-result-object p0

    return-object p0
.end method

.method private p(Lorg/jboss/netty/channel/m;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Lorg/jboss/netty/channel/m;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v0

    instance-of v0, v0, Lorg/jboss/netty/channel/h0;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1}, Lorg/jboss/netty/channel/m;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/h0;

    .line 3
    :try_start_0
    invoke-interface {v0, p1}, Lorg/jboss/netty/channel/h0;->afterAdd(Lorg/jboss/netty/channel/m;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    const/4 v2, 0x0

    .line 4
    :try_start_1
    check-cast p1, Lorg/jboss/netty/channel/x$a;

    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/x;->B(Lorg/jboss/netty/channel/x$a;)Lorg/jboss/netty/channel/x$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v2, 0x1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    if-eqz v2, :cond_1

    .line 6
    new-instance p1, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".afterAdd() has thrown an exception; removed."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, v1}, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 7
    :cond_1
    new-instance p1, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".afterAdd() has thrown an exception; also failed to remove."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, v1}, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static q(Lorg/jboss/netty/channel/m;)V
    .locals 3

    .line 1
    invoke-interface {p0}, Lorg/jboss/netty/channel/m;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v0

    instance-of v0, v0, Lorg/jboss/netty/channel/h0;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p0}, Lorg/jboss/netty/channel/m;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/h0;

    .line 3
    :try_start_0
    invoke-interface {v0, p0}, Lorg/jboss/netty/channel/h0;->afterRemove(Lorg/jboss/netty/channel/m;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 4
    new-instance v1, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".afterRemove() has thrown an exception."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static r(Lorg/jboss/netty/channel/m;)V
    .locals 3

    .line 1
    invoke-interface {p0}, Lorg/jboss/netty/channel/m;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v0

    instance-of v0, v0, Lorg/jboss/netty/channel/h0;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p0}, Lorg/jboss/netty/channel/m;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/h0;

    .line 3
    :try_start_0
    invoke-interface {v0, p0}, Lorg/jboss/netty/channel/h0;->beforeAdd(Lorg/jboss/netty/channel/m;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 4
    new-instance v1, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".beforeAdd() has thrown an exception; not adding."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static s(Lorg/jboss/netty/channel/m;)V
    .locals 3

    .line 1
    invoke-interface {p0}, Lorg/jboss/netty/channel/m;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v0

    instance-of v0, v0, Lorg/jboss/netty/channel/h0;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p0}, Lorg/jboss/netty/channel/m;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/h0;

    .line 3
    :try_start_0
    invoke-interface {v0, p0}, Lorg/jboss/netty/channel/h0;->beforeRemove(Lorg/jboss/netty/channel/m;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 4
    new-instance v1, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".beforeRemove() has thrown an exception; not removing."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private t(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/x;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate handler name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private u(Lorg/jboss/netty/channel/x$a;)Lorg/jboss/netty/channel/x$a;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lorg/jboss/netty/channel/x$a;->f()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2
    iget-object p1, p1, Lorg/jboss/netty/channel/x$a;->b:Lorg/jboss/netty/channel/x$a;

    if-nez p1, :cond_0

    return-object v0

    :cond_1
    return-object p1
.end method

.method private v(Lorg/jboss/netty/channel/x$a;)Lorg/jboss/netty/channel/x$a;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lorg/jboss/netty/channel/x$a;->e()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2
    iget-object p1, p1, Lorg/jboss/netty/channel/x$a;->a:Lorg/jboss/netty/channel/x$a;

    if-nez p1, :cond_0

    return-object v0

    :cond_1
    return-object p1
.end method

.method private w(Ljava/lang/Class;)Lorg/jboss/netty/channel/x$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/jboss/netty/channel/ChannelHandler;",
            ">;)",
            "Lorg/jboss/netty/channel/x$a;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/x;->getContext(Ljava/lang/Class;)Lorg/jboss/netty/channel/m;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/x$a;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private x(Ljava/lang/String;)Lorg/jboss/netty/channel/x$a;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/x;->getContext(Ljava/lang/String;)Lorg/jboss/netty/channel/m;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/x$a;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private y(Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/x$a;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/x;->getContext(Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/m;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/x$a;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private z(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V
    .locals 7

    .line 1
    new-instance v6, Lorg/jboss/netty/channel/x$a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/channel/x$a;-><init>(Lorg/jboss/netty/channel/x;Lorg/jboss/netty/channel/x$a;Lorg/jboss/netty/channel/x$a;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    .line 2
    invoke-static {v6}, Lorg/jboss/netty/channel/x;->r(Lorg/jboss/netty/channel/m;)V

    .line 3
    iput-object v6, p0, Lorg/jboss/netty/channel/x;->d:Lorg/jboss/netty/channel/x$a;

    iput-object v6, p0, Lorg/jboss/netty/channel/x;->c:Lorg/jboss/netty/channel/x$a;

    .line 4
    iget-object p2, p0, Lorg/jboss/netty/channel/x;->e:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 5
    iget-object p2, p0, Lorg/jboss/netty/channel/x;->e:Ljava/util/Map;

    invoke-interface {p2, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-direct {p0, v6}, Lorg/jboss/netty/channel/x;->p(Lorg/jboss/netty/channel/m;)V

    return-void
.end method


# virtual methods
.method protected A(Lorg/jboss/netty/channel/h;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/jboss/netty/channel/e0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    .line 3
    :cond_0
    instance-of v0, p2, Lorg/jboss/netty/channel/ChannelPipelineException;

    if-eqz v0, :cond_1

    .line 4
    check-cast p2, Lorg/jboss/netty/channel/ChannelPipelineException;

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Lorg/jboss/netty/channel/ChannelPipelineException;

    invoke-direct {v0, p2}, Lorg/jboss/netty/channel/ChannelPipelineException;-><init>(Ljava/lang/Throwable;)V

    move-object p2, v0

    .line 6
    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/x;->b:Lorg/jboss/netty/channel/p;

    invoke-interface {v0, p0, p1, p2}, Lorg/jboss/netty/channel/p;->c(Lorg/jboss/netty/channel/n;Lorg/jboss/netty/channel/h;Lorg/jboss/netty/channel/ChannelPipelineException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method D(Lorg/jboss/netty/channel/x$a;Lorg/jboss/netty/channel/h;)V
    .locals 1

    .line 1
    instance-of v0, p2, Lorg/jboss/netty/channel/p0;

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lorg/jboss/netty/channel/x$a;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/g;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/channel/g;->handleDownstream(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/h;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    invoke-interface {p2}, Lorg/jboss/netty/channel/h;->d()Lorg/jboss/netty/channel/j;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/channel/j;->setFailure(Ljava/lang/Throwable;)Z

    .line 4
    invoke-virtual {p0, p2, p1}, Lorg/jboss/netty/channel/x;->A(Lorg/jboss/netty/channel/h;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cannot send an upstream event to downstream"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method E(Lorg/jboss/netty/channel/x$a;Lorg/jboss/netty/channel/h;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lorg/jboss/netty/channel/x$a;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/r;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/channel/r;->handleUpstream(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/h;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    invoke-virtual {p0, p2, p1}, Lorg/jboss/netty/channel/x;->A(Lorg/jboss/netty/channel/h;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public a(Lorg/jboss/netty/channel/h;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/x;->c:Lorg/jboss/netty/channel/x$a;

    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/x;->v(Lorg/jboss/netty/channel/x$a;)Lorg/jboss/netty/channel/x$a;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, v0, p1}, Lorg/jboss/netty/channel/x;->E(Lorg/jboss/netty/channel/x$a;Lorg/jboss/netty/channel/h;)V

    return-void
.end method

.method public declared-synchronized b(Ljava/lang/String;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/ChannelHandler;
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/x;->x(Ljava/lang/String;)Lorg/jboss/netty/channel/x$a;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lorg/jboss/netty/channel/x;->C(Lorg/jboss/netty/channel/x$a;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c(Lorg/jboss/netty/channel/h;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/x;->d:Lorg/jboss/netty/channel/x$a;

    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/x;->u(Lorg/jboss/netty/channel/x$a;)Lorg/jboss/netty/channel/x$a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lorg/jboss/netty/channel/x;->m()Lorg/jboss/netty/channel/p;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/jboss/netty/channel/p;->a(Lorg/jboss/netty/channel/n;Lorg/jboss/netty/channel/h;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 3
    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/channel/x;->A(Lorg/jboss/netty/channel/h;Ljava/lang/Throwable;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0, v0, p1}, Lorg/jboss/netty/channel/x;->D(Lorg/jboss/netty/channel/x$a;Lorg/jboss/netty/channel/h;)V

    return-void
.end method

.method public declared-synchronized d(Lorg/jboss/netty/channel/ChannelHandler;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/x;->y(Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/x$a;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/x;->B(Lorg/jboss/netty/channel/x$a;)Lorg/jboss/netty/channel/x$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/x;->b:Lorg/jboss/netty/channel/p;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public execute(Ljava/lang/Runnable;)Lorg/jboss/netty/channel/j;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/x;->m()Lorg/jboss/netty/channel/p;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/jboss/netty/channel/p;->b(Lorg/jboss/netty/channel/n;Ljava/lang/Runnable;)Lorg/jboss/netty/channel/j;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized f(Ljava/lang/String;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/x;->x(Ljava/lang/String;)Lorg/jboss/netty/channel/x$a;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lorg/jboss/netty/channel/x;->d:Lorg/jboss/netty/channel/x$a;

    if-ne p1, v0, :cond_0

    .line 3
    invoke-virtual {p0, p2, p3}, Lorg/jboss/netty/channel/x;->g(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p2}, Lorg/jboss/netty/channel/x;->t(Ljava/lang/String;)V

    .line 5
    new-instance v6, Lorg/jboss/netty/channel/x$a;

    iget-object v3, p1, Lorg/jboss/netty/channel/x$a;->a:Lorg/jboss/netty/channel/x$a;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/channel/x$a;-><init>(Lorg/jboss/netty/channel/x;Lorg/jboss/netty/channel/x$a;Lorg/jboss/netty/channel/x$a;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    .line 6
    invoke-static {v6}, Lorg/jboss/netty/channel/x;->r(Lorg/jboss/netty/channel/m;)V

    .line 7
    iget-object p3, p1, Lorg/jboss/netty/channel/x$a;->a:Lorg/jboss/netty/channel/x$a;

    iput-object v6, p3, Lorg/jboss/netty/channel/x$a;->b:Lorg/jboss/netty/channel/x$a;

    .line 8
    iput-object v6, p1, Lorg/jboss/netty/channel/x$a;->a:Lorg/jboss/netty/channel/x$a;

    .line 9
    iget-object p1, p0, Lorg/jboss/netty/channel/x;->e:Ljava/util/Map;

    invoke-interface {p1, p2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-direct {p0, v6}, Lorg/jboss/netty/channel/x;->p(Lorg/jboss/netty/channel/m;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized g(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/x;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/channel/x;->z(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/x;->t(Ljava/lang/String;)V

    .line 4
    iget-object v6, p0, Lorg/jboss/netty/channel/x;->d:Lorg/jboss/netty/channel/x$a;

    .line 5
    new-instance v7, Lorg/jboss/netty/channel/x$a;

    const/4 v3, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, v6

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/channel/x$a;-><init>(Lorg/jboss/netty/channel/x;Lorg/jboss/netty/channel/x$a;Lorg/jboss/netty/channel/x$a;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    .line 6
    invoke-static {v7}, Lorg/jboss/netty/channel/x;->r(Lorg/jboss/netty/channel/m;)V

    .line 7
    iput-object v7, v6, Lorg/jboss/netty/channel/x$a;->a:Lorg/jboss/netty/channel/x$a;

    .line 8
    iput-object v7, p0, Lorg/jboss/netty/channel/x;->d:Lorg/jboss/netty/channel/x$a;

    .line 9
    iget-object p2, p0, Lorg/jboss/netty/channel/x;->e:Ljava/util/Map;

    invoke-interface {p2, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-direct {p0, v7}, Lorg/jboss/netty/channel/x;->p(Lorg/jboss/netty/channel/m;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized get(Ljava/lang/Class;)Lorg/jboss/netty/channel/ChannelHandler;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/jboss/netty/channel/ChannelHandler;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/x;->getContext(Ljava/lang/Class;)Lorg/jboss/netty/channel/m;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 5
    monitor-exit p0

    return-object p1

    .line 6
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lorg/jboss/netty/channel/m;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lorg/jboss/netty/channel/ChannelHandler;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/x;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jboss/netty/channel/x$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2
    monitor-exit p0

    return-object p1

    .line 3
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lorg/jboss/netty/channel/x$a;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getChannel()Lorg/jboss/netty/channel/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/x;->a:Lorg/jboss/netty/channel/e;

    return-object v0
.end method

.method public declared-synchronized getContext(Ljava/lang/Class;)Lorg/jboss/netty/channel/m;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/jboss/netty/channel/ChannelHandler;",
            ">;)",
            "Lorg/jboss/netty/channel/m;"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_3

    .line 11
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/x;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 12
    monitor-exit p0

    return-object v1

    .line 13
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/jboss/netty/channel/x;->c:Lorg/jboss/netty/channel/x$a;

    .line 14
    :cond_1
    invoke-virtual {v0}, Lorg/jboss/netty/channel/x$a;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    .line 15
    monitor-exit p0

    return-object v0

    .line 16
    :cond_2
    :try_start_2
    iget-object v0, v0, Lorg/jboss/netty/channel/x$a;->a:Lorg/jboss/netty/channel/x$a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_1

    .line 17
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 18
    :cond_3
    :try_start_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "handlerType"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized getContext(Ljava/lang/String;)Lorg/jboss/netty/channel/m;
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/x;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jboss/netty/channel/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 2
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "name"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getContext(Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/m;
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_3

    .line 3
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/x;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    monitor-exit p0

    return-object v1

    .line 5
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/jboss/netty/channel/x;->c:Lorg/jboss/netty/channel/x$a;

    .line 6
    :cond_1
    invoke-virtual {v0}, Lorg/jboss/netty/channel/x$a;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v2, p1, :cond_2

    .line 7
    monitor-exit p0

    return-object v0

    .line 8
    :cond_2
    :try_start_2
    iget-object v0, v0, Lorg/jboss/netty/channel/x$a;->a:Lorg/jboss/netty/channel/x$a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_1

    .line 9
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 10
    :cond_3
    :try_start_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "handler"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized getFirst()Lorg/jboss/netty/channel/ChannelHandler;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/x;->c:Lorg/jboss/netty/channel/x$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    monitor-exit p0

    return-object v0

    .line 3
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lorg/jboss/netty/channel/x$a;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLast()Lorg/jboss/netty/channel/ChannelHandler;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/x;->d:Lorg/jboss/netty/channel/x$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    monitor-exit p0

    return-object v0

    .line 3
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lorg/jboss/netty/channel/x$a;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNames()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lorg/jboss/netty/channel/x;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget-object v1, p0, Lorg/jboss/netty/channel/x;->c:Lorg/jboss/netty/channel/x$a;

    .line 4
    :cond_1
    invoke-virtual {v1}, Lorg/jboss/netty/channel/x$a;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v1, v1, Lorg/jboss/netty/channel/x$a;->a:Lorg/jboss/netty/channel/x$a;

    if-nez v1, :cond_1

    return-object v0
.end method

.method public declared-synchronized h(Ljava/lang/String;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/x;->x(Ljava/lang/String;)Lorg/jboss/netty/channel/x$a;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lorg/jboss/netty/channel/x;->c:Lorg/jboss/netty/channel/x$a;

    if-ne p1, v0, :cond_0

    .line 3
    invoke-virtual {p0, p2, p3}, Lorg/jboss/netty/channel/x;->j(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p2}, Lorg/jboss/netty/channel/x;->t(Ljava/lang/String;)V

    .line 5
    new-instance v6, Lorg/jboss/netty/channel/x$a;

    iget-object v2, p1, Lorg/jboss/netty/channel/x$a;->b:Lorg/jboss/netty/channel/x$a;

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/channel/x$a;-><init>(Lorg/jboss/netty/channel/x;Lorg/jboss/netty/channel/x$a;Lorg/jboss/netty/channel/x$a;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    .line 6
    invoke-static {v6}, Lorg/jboss/netty/channel/x;->r(Lorg/jboss/netty/channel/m;)V

    .line 7
    iget-object p3, p1, Lorg/jboss/netty/channel/x$a;->b:Lorg/jboss/netty/channel/x$a;

    iput-object v6, p3, Lorg/jboss/netty/channel/x$a;->a:Lorg/jboss/netty/channel/x$a;

    .line 8
    iput-object v6, p1, Lorg/jboss/netty/channel/x$a;->b:Lorg/jboss/netty/channel/x$a;

    .line 9
    iget-object p1, p0, Lorg/jboss/netty/channel/x;->e:Ljava/util/Map;

    invoke-interface {p1, p2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-direct {p0, v6}, Lorg/jboss/netty/channel/x;->p(Lorg/jboss/netty/channel/m;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public i(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/p;)V
    .locals 1

    const-string v0, "channel"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "sink"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lorg/jboss/netty/channel/x;->a:Lorg/jboss/netty/channel/e;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/channel/x;->b:Lorg/jboss/netty/channel/p;

    if-nez v0, :cond_0

    .line 4
    iput-object p1, p0, Lorg/jboss/netty/channel/x;->a:Lorg/jboss/netty/channel/e;

    .line 5
    iput-object p2, p0, Lorg/jboss/netty/channel/x;->b:Lorg/jboss/netty/channel/p;

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "attached already"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized j(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/x;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/channel/x;->z(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/x;->t(Ljava/lang/String;)V

    .line 4
    iget-object v6, p0, Lorg/jboss/netty/channel/x;->c:Lorg/jboss/netty/channel/x$a;

    .line 5
    new-instance v7, Lorg/jboss/netty/channel/x$a;

    const/4 v2, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v3, v6

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/channel/x$a;-><init>(Lorg/jboss/netty/channel/x;Lorg/jboss/netty/channel/x$a;Lorg/jboss/netty/channel/x$a;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    .line 6
    invoke-static {v7}, Lorg/jboss/netty/channel/x;->r(Lorg/jboss/netty/channel/m;)V

    .line 7
    iput-object v7, v6, Lorg/jboss/netty/channel/x$a;->b:Lorg/jboss/netty/channel/x$a;

    .line 8
    iput-object v7, p0, Lorg/jboss/netty/channel/x;->c:Lorg/jboss/netty/channel/x$a;

    .line 9
    iget-object p2, p0, Lorg/jboss/netty/channel/x;->e:Ljava/util/Map;

    invoke-interface {p2, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-direct {p0, v7}, Lorg/jboss/netty/channel/x;->p(Lorg/jboss/netty/channel/m;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized k(Ljava/lang/Class;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/ChannelHandler;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/jboss/netty/channel/ChannelHandler;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Lorg/jboss/netty/channel/ChannelHandler;",
            ")TT;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/x;->w(Ljava/lang/Class;)Lorg/jboss/netty/channel/x$a;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lorg/jboss/netty/channel/x;->C(Lorg/jboss/netty/channel/x$a;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized l(Lorg/jboss/netty/channel/ChannelHandler;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/x;->y(Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/x$a;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lorg/jboss/netty/channel/x;->C(Lorg/jboss/netty/channel/x$a;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/ChannelHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public m()Lorg/jboss/netty/channel/p;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/x;->b:Lorg/jboss/netty/channel/p;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lorg/jboss/netty/channel/x;->f:Lorg/jboss/netty/channel/p;

    :cond_0
    return-object v0
.end method

.method public declared-synchronized remove(Ljava/lang/Class;)Lorg/jboss/netty/channel/ChannelHandler;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/jboss/netty/channel/ChannelHandler;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/x;->w(Ljava/lang/Class;)Lorg/jboss/netty/channel/x$a;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/x;->B(Lorg/jboss/netty/channel/x$a;)Lorg/jboss/netty/channel/x$a;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jboss/netty/channel/x$a;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Lorg/jboss/netty/channel/ChannelHandler;
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/x;->x(Ljava/lang/String;)Lorg/jboss/netty/channel/x$a;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/x;->B(Lorg/jboss/netty/channel/x$a;)Lorg/jboss/netty/channel/x$a;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jboss/netty/channel/x$a;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeFirst()Lorg/jboss/netty/channel/ChannelHandler;
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/x;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lorg/jboss/netty/channel/x;->c:Lorg/jboss/netty/channel/x$a;

    if-eqz v0, :cond_1

    .line 3
    invoke-static {v0}, Lorg/jboss/netty/channel/x;->s(Lorg/jboss/netty/channel/m;)V

    .line 4
    iget-object v1, v0, Lorg/jboss/netty/channel/x$a;->a:Lorg/jboss/netty/channel/x$a;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 5
    iput-object v2, p0, Lorg/jboss/netty/channel/x;->d:Lorg/jboss/netty/channel/x$a;

    iput-object v2, p0, Lorg/jboss/netty/channel/x;->c:Lorg/jboss/netty/channel/x$a;

    .line 6
    iget-object v1, p0, Lorg/jboss/netty/channel/x;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, v0, Lorg/jboss/netty/channel/x$a;->a:Lorg/jboss/netty/channel/x$a;

    iput-object v2, v1, Lorg/jboss/netty/channel/x$a;->b:Lorg/jboss/netty/channel/x$a;

    .line 8
    iget-object v1, v0, Lorg/jboss/netty/channel/x$a;->a:Lorg/jboss/netty/channel/x$a;

    iput-object v1, p0, Lorg/jboss/netty/channel/x;->c:Lorg/jboss/netty/channel/x$a;

    .line 9
    iget-object v1, p0, Lorg/jboss/netty/channel/x;->e:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/x$a;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :goto_0
    invoke-static {v0}, Lorg/jboss/netty/channel/x;->q(Lorg/jboss/netty/channel/m;)V

    .line 11
    invoke-virtual {v0}, Lorg/jboss/netty/channel/x$a;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 12
    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 13
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeLast()Lorg/jboss/netty/channel/ChannelHandler;
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/x;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lorg/jboss/netty/channel/x;->d:Lorg/jboss/netty/channel/x$a;

    if-eqz v0, :cond_1

    .line 3
    invoke-static {v0}, Lorg/jboss/netty/channel/x;->s(Lorg/jboss/netty/channel/m;)V

    .line 4
    iget-object v1, v0, Lorg/jboss/netty/channel/x$a;->b:Lorg/jboss/netty/channel/x$a;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 5
    iput-object v2, p0, Lorg/jboss/netty/channel/x;->d:Lorg/jboss/netty/channel/x$a;

    iput-object v2, p0, Lorg/jboss/netty/channel/x;->c:Lorg/jboss/netty/channel/x$a;

    .line 6
    iget-object v1, p0, Lorg/jboss/netty/channel/x;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, v0, Lorg/jboss/netty/channel/x$a;->b:Lorg/jboss/netty/channel/x$a;

    iput-object v2, v1, Lorg/jboss/netty/channel/x$a;->a:Lorg/jboss/netty/channel/x$a;

    .line 8
    iget-object v1, v0, Lorg/jboss/netty/channel/x$a;->b:Lorg/jboss/netty/channel/x$a;

    iput-object v1, p0, Lorg/jboss/netty/channel/x;->d:Lorg/jboss/netty/channel/x$a;

    .line 9
    iget-object v1, p0, Lorg/jboss/netty/channel/x;->e:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/x$a;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :goto_0
    invoke-static {v0}, Lorg/jboss/netty/channel/x;->s(Lorg/jboss/netty/channel/m;)V

    .line 11
    invoke-virtual {v0}, Lorg/jboss/netty/channel/x$a;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 12
    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 13
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jboss/netty/channel/ChannelHandler;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lorg/jboss/netty/channel/x;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget-object v1, p0, Lorg/jboss/netty/channel/x;->c:Lorg/jboss/netty/channel/x$a;

    .line 4
    :cond_1
    invoke-virtual {v1}, Lorg/jboss/netty/channel/x$a;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/jboss/netty/channel/x$a;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, v1, Lorg/jboss/netty/channel/x$a;->a:Lorg/jboss/netty/channel/x$a;

    if-nez v1, :cond_1

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Lorg/jboss/netty/channel/x;->c:Lorg/jboss/netty/channel/x$a;

    if-eqz v1, :cond_1

    :goto_0
    const/16 v2, 0x28

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v1}, Lorg/jboss/netty/channel/x$a;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = "

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v1}, Lorg/jboss/netty/channel/x$a;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    iget-object v1, v1, Lorg/jboss/netty/channel/x$a;->a:Lorg/jboss/netty/channel/x$a;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, ", "

    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    :goto_1
    const/16 v1, 0x7d

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
