.class Lcom/join/mgps/socket/fight/arena/ArenaService$a;
.super Ljava/lang/Object;
.source "ArenaService.java"

# interfaces
.implements Lapp/mgsim/arena/SocketListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/socket/fight/arena/ArenaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/socket/fight/arena/ArenaService;


# direct methods
.method constructor <init>(Lcom/join/mgps/socket/fight/arena/ArenaService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/socket/fight/arena/ArenaService$a;->a:Lcom/join/mgps/socket/fight/arena/ArenaService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeRequest(Lapp/mgsim/arena/ArenaRequest;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService$a;->a:Lcom/join/mgps/socket/fight/arena/ArenaService;

    invoke-virtual {v0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->k(Lapp/mgsim/arena/ArenaRequest;)V

    return-void
.end method

.method public onError(Lapp/mgsim/arena/SocketError;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService$a;->a:Lcom/join/mgps/socket/fight/arena/ArenaService;

    const-string v1, "-----onError  ----- "

    invoke-virtual {v0, v1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->y(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService$a;->a:Lcom/join/mgps/socket/fight/arena/ArenaService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->f(Lcom/join/mgps/socket/fight/arena/ArenaService;Lapp/mgsim/arena/AreaInfo;)Lapp/mgsim/arena/AreaInfo;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService$a;->a:Lcom/join/mgps/socket/fight/arena/ArenaService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->g(Lcom/join/mgps/socket/fight/arena/ArenaService;Z)Z

    .line 4
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService$a;->a:Lcom/join/mgps/socket/fight/arena/ArenaService;

    invoke-static {v0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->h(Lcom/join/mgps/socket/fight/arena/ArenaService;)Lapp/mgsim/arena/UDPHelper;

    move-result-object v0

    invoke-virtual {v0}, Lapp/mgsim/arena/UDPHelper;->stop()V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService$a;->a:Lcom/join/mgps/socket/fight/arena/ArenaService;

    invoke-static {v0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->b(Lcom/join/mgps/socket/fight/arena/ArenaService;)Lapp/mgsim/arena/ArenaSocketThread;

    move-result-object v0

    iget-object v0, v0, Lapp/mgsim/arena/ArenaSocketThread;->mHeartBeatThread:Lapp/mgsim/arena/CheckThread;

    invoke-virtual {v0}, Lapp/mgsim/arena/CheckThread;->stop()V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService$a;->a:Lcom/join/mgps/socket/fight/arena/ArenaService;

    invoke-virtual {v0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->w(Lapp/mgsim/arena/SocketError;)V

    return-void
.end method

.method public onServerResponse(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService$a;->a:Lcom/join/mgps/socket/fight/arena/ArenaService;

    invoke-virtual {v0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->r(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onSocketConnected()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService$a;->a:Lcom/join/mgps/socket/fight/arena/ArenaService;

    const-string v1, "-----mArenaListener onSocketConnected----"

    invoke-virtual {v0, v1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->y(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService$a;->a:Lcom/join/mgps/socket/fight/arena/ArenaService;

    invoke-static {v0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->b(Lcom/join/mgps/socket/fight/arena/ArenaService;)Lapp/mgsim/arena/ArenaSocketThread;

    move-result-object v0

    iget-object v0, v0, Lapp/mgsim/arena/ArenaSocketThread;->mHeartBeatThread:Lapp/mgsim/arena/CheckThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lapp/mgsim/arena/CheckThread;->setContinue(Z)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService$a;->a:Lcom/join/mgps/socket/fight/arena/ArenaService;

    invoke-static {v0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->b(Lcom/join/mgps/socket/fight/arena/ArenaService;)Lapp/mgsim/arena/ArenaSocketThread;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lapp/mgsim/arena/ArenaSocketThread;->setLastHeartBeatStartTime(J)V

    .line 4
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/ArenaService$a;->a:Lcom/join/mgps/socket/fight/arena/ArenaService;

    invoke-static {v1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->b(Lcom/join/mgps/socket/fight/arena/ArenaService;)Lapp/mgsim/arena/ArenaSocketThread;

    move-result-object v1

    iget-object v1, v1, Lapp/mgsim/arena/ArenaSocketThread;->mHeartBeatThread:Lapp/mgsim/arena/CheckThread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService$a;->a:Lcom/join/mgps/socket/fight/arena/ArenaService;

    iget-object v0, v0, Lcom/join/mgps/socket/fight/arena/ArenaService;->h:Lcom/join/mgps/Util/b;

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/ArenaService$a;->a:Lcom/join/mgps/socket/fight/arena/ArenaService;

    iget-object v1, v1, Lcom/join/mgps/socket/fight/arena/ArenaService;->h:Lcom/join/mgps/Util/b;

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v1

    .line 7
    iget-object v2, p0, Lcom/join/mgps/socket/fight/arena/ArenaService$a;->a:Lcom/join/mgps/socket/fight/arena/ArenaService;

    invoke-static {v2, v0, v1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->c(Lcom/join/mgps/socket/fight/arena/ArenaService;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 8
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/socket/fight/arena/ArenaService$a;->a:Lcom/join/mgps/socket/fight/arena/ArenaService;

    invoke-static {v2}, Lcom/join/mgps/socket/fight/arena/ArenaService;->d(Lcom/join/mgps/socket/fight/arena/ArenaService;)Lapp/mgsim/arena/ArenaRequest;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 9
    iget-object v2, p0, Lcom/join/mgps/socket/fight/arena/ArenaService$a;->a:Lcom/join/mgps/socket/fight/arena/ArenaService;

    invoke-static {v2}, Lcom/join/mgps/socket/fight/arena/ArenaService;->d(Lcom/join/mgps/socket/fight/arena/ArenaService;)Lapp/mgsim/arena/ArenaRequest;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v2, "register_type_public"

    .line 10
    invoke-static {v2}, Lapp/mgsim/arena/ArenaRequestFactory;->login(Ljava/lang/String;)Lapp/mgsim/arena/ArenaRequest;

    move-result-object v2

    .line 11
    :goto_0
    iget-object v3, p0, Lcom/join/mgps/socket/fight/arena/ArenaService$a;->a:Lcom/join/mgps/socket/fight/arena/ArenaService;

    invoke-static {v3}, Lcom/join/mgps/socket/fight/arena/ArenaService;->b(Lcom/join/mgps/socket/fight/arena/ArenaService;)Lapp/mgsim/arena/ArenaSocketThread;

    move-result-object v3

    iget-object v4, p0, Lcom/join/mgps/socket/fight/arena/ArenaService$a;->a:Lcom/join/mgps/socket/fight/arena/ArenaService;

    invoke-static {v4, v2}, Lcom/join/mgps/socket/fight/arena/ArenaService;->e(Lcom/join/mgps/socket/fight/arena/ArenaService;Lapp/mgsim/arena/ArenaRequest;)J

    move-result-wide v4

    const-string v2, ""

    invoke-static {v0, v1, v2, v4, v5}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->login(Ljava/lang/String;ILjava/lang/String;J)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v3, v0}, Lapp/mgsim/arena/ArenaSocketThread;->sendDataToServer(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public onSocketDisconnected()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService$a;->a:Lcom/join/mgps/socket/fight/arena/ArenaService;

    const-string v1, "-----mArenaListener onSocketDisconnected----"

    invoke-virtual {v0, v1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->y(Ljava/lang/String;)V

    const-string v0, "\u4e0e\u5927\u5385\u670d\u52a1\u5668\u8fde\u63a5\u65ad\u5f00\uff01"

    .line 2
    invoke-static {v0}, Lapp/mgsim/arena/SocketUtils;->createSocketErrorForBadNetwork(Ljava/lang/String;)Lapp/mgsim/arena/SocketError;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/socket/fight/arena/ArenaService$a;->onError(Lapp/mgsim/arena/SocketError;)V

    return-void
.end method
