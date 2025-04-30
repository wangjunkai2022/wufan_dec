.class public Lapp/mgsim/arena/ArenaSocketThread;
.super Lapp/mgsim/arena/SocketThread;
.source "ArenaSocketThread.java"


# static fields
.field private static final INTERVAL_NEXT_CHECK_HEARTBEAT_TIME:J = 0x2710L

.field private static final REQUESTID_HEARBEAT:J = -0x1L

.field private static final TAG:Ljava/lang/String; = "ArenaService"


# instance fields
.field private bootstrap:Lorg/jboss/netty/bootstrap/b;

.field private host:Ljava/lang/String;

.field public final mHeartBeatThread:Lapp/mgsim/arena/CheckThread;

.field public mLastHeartBeatStartTime:J

.field private final mSocketListener:Lapp/mgsim/arena/SocketListener;

.field private port:I

.field private writeChannel:Lorg/jboss/netty/channel/e;


# direct methods
.method public constructor <init>(Lapp/mgsim/arena/SocketListener;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lapp/mgsim/arena/SocketThread;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lapp/mgsim/arena/ArenaSocketThread;->mLastHeartBeatStartTime:J

    .line 3
    new-instance v0, Lapp/mgsim/arena/ArenaSocketThread$2;

    invoke-direct {v0, p0}, Lapp/mgsim/arena/ArenaSocketThread$2;-><init>(Lapp/mgsim/arena/ArenaSocketThread;)V

    iput-object v0, p0, Lapp/mgsim/arena/ArenaSocketThread;->mHeartBeatThread:Lapp/mgsim/arena/CheckThread;

    .line 4
    iput-object p1, p0, Lapp/mgsim/arena/ArenaSocketThread;->mSocketListener:Lapp/mgsim/arena/SocketListener;

    return-void
.end method

.method static synthetic access$000(Lapp/mgsim/arena/ArenaSocketThread;)Lapp/mgsim/arena/SocketListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lapp/mgsim/arena/ArenaSocketThread;->mSocketListener:Lapp/mgsim/arena/SocketListener;

    return-object p0
.end method


# virtual methods
.method protected execute()V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lorg/jboss/netty/channel/socket/nio/n;

    .line 2
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/channel/socket/nio/n;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    .line 3
    new-instance v1, Lorg/jboss/netty/bootstrap/b;

    invoke-direct {v1, v0}, Lorg/jboss/netty/bootstrap/b;-><init>(Lorg/jboss/netty/channel/i;)V

    iput-object v1, p0, Lapp/mgsim/arena/ArenaSocketThread;->bootstrap:Lorg/jboss/netty/bootstrap/b;

    const-string v0, "tcpNoDelay"

    .line 4
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Lorg/jboss/netty/bootstrap/a;->k(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lapp/mgsim/arena/ArenaSocketThread;->bootstrap:Lorg/jboss/netty/bootstrap/b;

    const-string v1, "keepAlive"

    invoke-virtual {v0, v1, v2}, Lorg/jboss/netty/bootstrap/a;->k(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lapp/mgsim/arena/ArenaSocketThread;->bootstrap:Lorg/jboss/netty/bootstrap/b;

    new-instance v1, Lapp/mgsim/arena/ArenaSocketThread$1;

    invoke-direct {v1, p0}, Lapp/mgsim/arena/ArenaSocketThread$1;-><init>(Lapp/mgsim/arena/ArenaSocketThread;)V

    invoke-virtual {v0, v1}, Lorg/jboss/netty/bootstrap/a;->o(Lorg/jboss/netty/channel/o;)V

    .line 7
    iget-object v0, p0, Lapp/mgsim/arena/ArenaSocketThread;->bootstrap:Lorg/jboss/netty/bootstrap/b;

    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lapp/mgsim/arena/ArenaSocketThread;->host:Ljava/lang/String;

    iget v3, p0, Lapp/mgsim/arena/ArenaSocketThread;->port:I

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lorg/jboss/netty/bootstrap/b;->p(Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/j;

    move-result-object v0

    .line 8
    invoke-interface {v0}, Lorg/jboss/netty/channel/j;->awaitUninterruptibly()Lorg/jboss/netty/channel/j;

    .line 9
    invoke-interface {v0}, Lorg/jboss/netty/channel/j;->getChannel()Lorg/jboss/netty/channel/e;

    move-result-object v0

    iput-object v0, p0, Lapp/mgsim/arena/ArenaSocketThread;->writeChannel:Lorg/jboss/netty/channel/e;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init socket exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ArenaService"

    invoke-virtual {p0, v1, v0}, Lapp/mgsim/arena/SocketThread;->printMessgae(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "\u521d\u59cb\u5316\u5927\u5385\u670d\u52a1\u5668\u5f02\u5e38\uff01"

    .line 11
    invoke-static {v0}, Lapp/mgsim/arena/SocketUtils;->createSocketErrorForBadNetwork(Ljava/lang/String;)Lapp/mgsim/arena/SocketError;

    move-result-object v0

    invoke-virtual {p0, v0}, Lapp/mgsim/arena/ArenaSocketThread;->handleExit(Lapp/mgsim/arena/SocketError;)V

    :goto_0
    return-void
.end method

.method public handleExit(Lapp/mgsim/arena/SocketError;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lapp/mgsim/arena/ArenaSocketThread;->mSocketListener:Lapp/mgsim/arena/SocketListener;

    invoke-interface {v0, p1}, Lapp/mgsim/arena/SocketListener;->onError(Lapp/mgsim/arena/SocketError;)V

    .line 2
    iget-object p1, p0, Lapp/mgsim/arena/ArenaSocketThread;->writeChannel:Lorg/jboss/netty/channel/e;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lorg/jboss/netty/channel/e;->close()Lorg/jboss/netty/channel/j;

    :cond_0
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lapp/mgsim/arena/ArenaSocketThread;->writeChannel:Lorg/jboss/netty/channel/e;

    .line 5
    iget-object v0, p0, Lapp/mgsim/arena/ArenaSocketThread;->bootstrap:Lorg/jboss/netty/bootstrap/b;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lorg/jboss/netty/bootstrap/a;->shutdown()V

    .line 7
    :cond_1
    iput-object p1, p0, Lapp/mgsim/arena/ArenaSocketThread;->bootstrap:Lorg/jboss/netty/bootstrap/b;

    return-void
.end method

.method public sendDataToServer(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lorg/jboss/netty/buffer/c;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, v1}, Lorg/jboss/netty/buffer/c;-><init>(I)V

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/e;->B([B)V

    .line 3
    iget-object p1, p0, Lapp/mgsim/arena/ArenaSocketThread;->writeChannel:Lorg/jboss/netty/channel/e;

    invoke-interface {p1, v0}, Lorg/jboss/netty/channel/e;->write(Ljava/lang/Object;)Lorg/jboss/netty/channel/j;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string/jumbo v0, "\u6d88\u606f\u53d1\u9001\u5931\u8d25\uff01"

    .line 4
    invoke-static {v0}, Lapp/mgsim/arena/SocketUtils;->createSocketErrorForBadNetwork(Ljava/lang/String;)Lapp/mgsim/arena/SocketError;

    move-result-object v0

    invoke-virtual {p0, v0}, Lapp/mgsim/arena/ArenaSocketThread;->handleExit(Lapp/mgsim/arena/SocketError;)V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "writeData IOException :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ArenaService"

    invoke-virtual {p0, v1, v0}, Lapp/mgsim/arena/SocketThread;->printMessgae(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setLastHeartBeatStartTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lapp/mgsim/arena/ArenaSocketThread;->mLastHeartBeatStartTime:J

    return-void
.end method

.method public setLobbyServer(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lapp/mgsim/arena/ArenaSocketThread;->host:Ljava/lang/String;

    .line 2
    iput p2, p0, Lapp/mgsim/arena/ArenaSocketThread;->port:I

    return-void
.end method
