.class public Lcom/join/mgps/socket/fight/arena/ArenaService;
.super Landroid/app/Service;
.source "ArenaService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/socket/fight/arena/ArenaService$b;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EService;
.end annotation


# static fields
.field private static final r:Ljava/lang/String; = "ArenaService"


# instance fields
.field private final a:Ljava/lang/Object;

.field private volatile b:Z

.field private c:Lapp/mgsim/arena/AreaInfo;

.field private d:Lapp/mgsim/arena/UDPHelper;

.field private volatile e:I

.field private f:Ljava/util/concurrent/atomic/AtomicLong;

.field private g:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Lapp/mgsim/arena/ArenaRequest;",
            ">;"
        }
    .end annotation
.end field

.field h:Lcom/join/mgps/Util/b;
    .annotation build Lorg/androidannotations/annotations/Bean;
    .end annotation
.end field

.field i:Lcom/join/mgps/rpc/k;

.field j:Lcom/join/mgps/rpc/k;

.field private k:Lapp/mgsim/arena/ArenaSocketThread;

.field private l:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lapp/mgsim/arena/SocketListener$NotifyObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Lapp/mgsim/arena/SocketListener;

.field private n:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lapp/mgsim/arena/ArenaResponse;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/papa91/battle/protocol/BattleArea;

.field private p:Lapp/mgsim/arena/ArenaRequest;

.field private q:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->b:Z

    .line 4
    iput v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->e:I

    .line 5
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->l:Ljava/util/HashSet;

    .line 6
    new-instance v1, Lcom/join/mgps/socket/fight/arena/ArenaService$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/socket/fight/arena/ArenaService$a;-><init>(Lcom/join/mgps/socket/fight/arena/ArenaService;)V

    iput-object v1, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->m:Lapp/mgsim/arena/SocketListener;

    .line 7
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->n:Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    iput v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->q:I

    return-void
.end method

.method private B(Lapp/mgsim/arena/ArenaResponse;Lapp/mgsim/arena/ArenaRequest;Lcom/papa91/battle/protocol/Response;)V
    .locals 3

    .line 1
    iput-object p2, p1, Lapp/mgsim/arena/ArenaResponse;->request:Lapp/mgsim/arena/ArenaRequest;

    .line 2
    iget-object p2, p2, Lapp/mgsim/arena/ArenaRequest;->request_type:Ljava/lang/String;

    iput-object p2, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 3
    invoke-virtual {p3}, Lcom/papa91/battle/protocol/Response;->getStatusCode()Lcom/papa91/battle/protocol/Response$StatusCode;

    move-result-object p2

    sget-object v0, Lcom/papa91/battle/protocol/Response$StatusCode;->RESULT_SUCCESS:Lcom/papa91/battle/protocol/Response$StatusCode;

    const-string v1, "cmd_login"

    const-string v2, "----responseByType ---- type:"

    if-ne p2, v0, :cond_1

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "---success"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/join/mgps/socket/fight/arena/ArenaService;->y(Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 5
    iput p2, p1, Lapp/mgsim/arena/ArenaResponse;->responseCode:I

    .line 6
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    iput-boolean p2, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->b:Z

    .line 7
    :cond_0
    invoke-static {p1, p3}, Lcom/join/mgps/socket/fight/arena/c;->l(Lapp/mgsim/arena/ArenaResponse;Lcom/papa91/battle/protocol/Response;)Lapp/mgsim/arena/ArenaResponse;

    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->v(Lapp/mgsim/arena/ArenaResponse;)V

    goto :goto_0

    .line 9
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "---failure"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/join/mgps/socket/fight/arena/ArenaService;->y(Ljava/lang/String;)V

    .line 10
    invoke-static {p1, p3}, Lcom/join/mgps/socket/fight/arena/c;->k(Lapp/mgsim/arena/ArenaResponse;Lcom/papa91/battle/protocol/Response;)Lapp/mgsim/arena/ArenaResponse;

    move-result-object p1

    .line 11
    iget-object p2, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    if-ne p2, v1, :cond_2

    .line 12
    invoke-static {p1}, Lcom/join/mgps/socket/fight/arena/c;->g(Lapp/mgsim/arena/ArenaResponse;)Ljava/lang/String;

    move-result-object p1

    .line 13
    iget-object p2, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->k:Lapp/mgsim/arena/ArenaSocketThread;

    const/4 p3, 0x6

    invoke-static {p3, p1}, Lapp/mgsim/arena/SocketUtils;->createSocketError(ILjava/lang/String;)Lapp/mgsim/arena/SocketError;

    move-result-object p1

    invoke-virtual {p2, p1}, Lapp/mgsim/arena/ArenaSocketThread;->handleExit(Lapp/mgsim/arena/SocketError;)V

    return-void

    .line 14
    :cond_2
    invoke-virtual {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->v(Lapp/mgsim/arena/ArenaResponse;)V

    :goto_0
    return-void
.end method

.method private F(Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAreaOnlinePeopleCounts bj:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;->getBj()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "---sh:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;->getSh()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "---gz:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;->getGz()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->y(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->d:Lapp/mgsim/arena/UDPHelper;

    invoke-virtual {v0, p1}, Lapp/mgsim/arena/UDPHelper;->updateMaps(Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;)V

    return-void
.end method

.method private G(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->e:I

    return-void
.end method

.method static synthetic b(Lcom/join/mgps/socket/fight/arena/ArenaService;)Lapp/mgsim/arena/ArenaSocketThread;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->k:Lapp/mgsim/arena/ArenaSocketThread;

    return-object p0
.end method

.method static synthetic c(Lcom/join/mgps/socket/fight/arena/ArenaService;Ljava/lang/String;I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/socket/fight/arena/ArenaService;->j(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method static synthetic d(Lcom/join/mgps/socket/fight/arena/ArenaService;)Lapp/mgsim/arena/ArenaRequest;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->p:Lapp/mgsim/arena/ArenaRequest;

    return-object p0
.end method

.method static synthetic e(Lcom/join/mgps/socket/fight/arena/ArenaService;Lapp/mgsim/arena/ArenaRequest;)J
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->l(Lapp/mgsim/arena/ArenaRequest;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic f(Lcom/join/mgps/socket/fight/arena/ArenaService;Lapp/mgsim/arena/AreaInfo;)Lapp/mgsim/arena/AreaInfo;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->c:Lapp/mgsim/arena/AreaInfo;

    return-object p1
.end method

.method static synthetic g(Lcom/join/mgps/socket/fight/arena/ArenaService;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->b:Z

    return p1
.end method

.method static synthetic h(Lcom/join/mgps/socket/fight/arena/ArenaService;)Lapp/mgsim/arena/UDPHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->d:Lapp/mgsim/arena/UDPHelper;

    return-object p0
.end method

.method private j(Ljava/lang/String;I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 3
    monitor-exit v0

    return p1

    .line 4
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->k:Lapp/mgsim/arena/ArenaSocketThread;

    const/4 p2, 0x4

    const-string v1, "\u68c0\u6d4b\u5230\u4f60\u8fd8\u6ca1\u6709\u767b\u9646\uff0c\u8bf7\u767b\u9646\uff01"

    invoke-static {p2, v1}, Lapp/mgsim/arena/SocketUtils;->createSocketError(ILjava/lang/String;)Lapp/mgsim/arena/SocketError;

    move-result-object p2

    invoke-virtual {p1, p2}, Lapp/mgsim/arena/ArenaSocketThread;->handleExit(Lapp/mgsim/arena/SocketError;)V

    const/4 p1, 0x0

    .line 5
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private l(Lapp/mgsim/arena/ArenaRequest;)J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->f:Ljava/util/concurrent/atomic/AtomicLong;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x2

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->f:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, p1, Lapp/mgsim/arena/ArenaRequest;->requestId:J

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "generateRequestId--request info "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lapp/mgsim/arena/ArenaRequest;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->y(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->g:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v1, p1, Lapp/mgsim/arena/ArenaRequest;->requestId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-wide v0, p1, Lapp/mgsim/arena/ArenaRequest;->requestId:J

    return-wide v0
.end method

.method private p()I
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->n()Lcom/papa91/battle/protocol/BattleArea;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->m()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lapp/mgsim/arena/AreaInfo;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Lapp/mgsim/arena/AreaInfo;->getPingTime()J

    move-result-wide v2

    long-to-int v3, v2

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPingValue pingTime by area:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "--- ping time :"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->y(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1}, Lapp/mgsim/arena/AreaInfo;->getPingTime()J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    .line 7
    :cond_0
    iget v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->e:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPingValue Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->y(Ljava/lang/String;)V

    .line 9
    iget v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->e:I

    return v0
.end method

.method private u(Lapp/mgsim/arena/ArenaRequest;)V
    .locals 6

    const-string v0, "\u4f60\u7684\u624b\u673a\u767b\u9646\u5df2\u7ecf\u5931\u6548\uff0c\u8bf7\u91cd\u65b0\u767b\u9646!"

    const-string v1, "\u83b7\u53d6\u5bf9\u6218\u5927\u5385\u670d\u52a1\u5668\u5730\u5740\u5931\u8d25\uff01"

    const/4 v2, 0x3

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->p:Lapp/mgsim/arena/ArenaRequest;

    .line 2
    iget-object v3, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->h:Lcom/join/mgps/Util/b;

    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v3

    .line 3
    iget-object v4, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->h:Lcom/join/mgps/Util/b;

    invoke-virtual {v4}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v4

    .line 4
    invoke-direct {p0, v3, v4}, Lcom/join/mgps/socket/fight/arena/ArenaService;->j(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v5, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->j:Lcom/join/mgps/rpc/k;

    invoke-interface {v5, v4, v3}, Lcom/join/mgps/rpc/k;->P(ILjava/lang/String;)Lcom/join/mgps/dto/ResultArenaBean;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 6
    invoke-virtual {v3}, Lcom/join/mgps/dto/ResultArenaBean;->getError()I

    move-result v4

    if-nez v4, :cond_1

    .line 7
    invoke-virtual {v3}, Lcom/join/mgps/dto/ResultArenaBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapp/mgsim/arena/ArenaLobbyServer;

    invoke-virtual {v0}, Lapp/mgsim/arena/ArenaLobbyServer;->getLobbyServer()Lapp/mgsim/arena/AreaInfo;

    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->c:Lapp/mgsim/arena/AreaInfo;

    .line 9
    iget-object v4, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->d:Lapp/mgsim/arena/UDPHelper;

    invoke-virtual {v3}, Lcom/join/mgps/dto/ResultArenaBean;->getData()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lapp/mgsim/arena/ArenaLobbyServer;

    invoke-virtual {v5}, Lapp/mgsim/arena/ArenaLobbyServer;->getPing()[Lapp/mgsim/arena/AreaInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Lapp/mgsim/arena/UDPHelper;->initUDPAndStart([Lapp/mgsim/arena/AreaInfo;)V

    .line 10
    iget-object v4, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->c:Lapp/mgsim/arena/AreaInfo;

    invoke-virtual {v4}, Lapp/mgsim/arena/AreaInfo;->getArea()I

    move-result v4

    invoke-static {v4}, Lcom/join/mgps/socket/fight/arena/c;->c(I)Lcom/papa91/battle/protocol/BattleArea;

    move-result-object v4

    iput-object v4, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->o:Lcom/papa91/battle/protocol/BattleArea;

    .line 11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ArenaLobbyServer info--> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/join/mgps/dto/ResultArenaBean;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lapp/mgsim/arena/ArenaLobbyServer;

    invoke-virtual {v3}, Lapp/mgsim/arena/ArenaLobbyServer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/join/mgps/socket/fight/arena/ArenaService;->y(Ljava/lang/String;)V

    .line 12
    iget-object v3, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->k:Lapp/mgsim/arena/ArenaSocketThread;

    invoke-virtual {v0}, Lapp/mgsim/arena/AreaInfo;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lapp/mgsim/arena/AreaInfo;->getPort()I

    move-result v0

    invoke-virtual {v3, v4, v0}, Lapp/mgsim/arena/ArenaSocketThread;->setLobbyServer(Ljava/lang/String;I)V

    .line 13
    new-instance v0, Ljava/lang/Thread;

    iget-object v3, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->k:Lapp/mgsim/arena/ArenaSocketThread;

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 14
    :cond_1
    invoke-virtual {v3}, Lcom/join/mgps/dto/ResultArenaBean;->getError()I

    move-result v3

    const/16 v4, 0x2bd

    if-ne v3, v4, :cond_2

    const-string v3, "handleLogin user need retry login"

    .line 15
    invoke-virtual {p0, v3}, Lcom/join/mgps/socket/fight/arena/ArenaService;->y(Ljava/lang/String;)V

    .line 16
    iget-object v3, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->k:Lapp/mgsim/arena/ArenaSocketThread;

    invoke-static {v2, v0}, Lapp/mgsim/arena/SocketUtils;->createSocketError(ILjava/lang/String;)Lapp/mgsim/arena/SocketError;

    move-result-object v4

    invoke-virtual {v3, v4}, Lapp/mgsim/arena/ArenaSocketThread;->handleExit(Lapp/mgsim/arena/SocketError;)V

    .line 17
    invoke-virtual {p0, v0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 18
    :cond_2
    iget v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->q:I

    if-gt v0, v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 19
    iput v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->q:I

    .line 20
    invoke-direct {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->u(Lapp/mgsim/arena/ArenaRequest;)V

    goto :goto_0

    .line 21
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->k:Lapp/mgsim/arena/ArenaSocketThread;

    invoke-static {v1}, Lapp/mgsim/arena/SocketUtils;->createSocketErrorForBadNetwork(Ljava/lang/String;)Lapp/mgsim/arena/SocketError;

    move-result-object v3

    invoke-virtual {v0, v3}, Lapp/mgsim/arena/ArenaSocketThread;->handleExit(Lapp/mgsim/arena/SocketError;)V

    goto :goto_0

    .line 22
    :cond_4
    iget v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->q:I

    if-gt v0, v2, :cond_5

    add-int/lit8 v0, v0, 0x1

    .line 23
    iput v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->q:I

    .line 24
    invoke-direct {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->u(Lapp/mgsim/arena/ArenaRequest;)V

    goto :goto_0

    .line 25
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->k:Lapp/mgsim/arena/ArenaSocketThread;

    invoke-static {v1}, Lapp/mgsim/arena/SocketUtils;->createSocketErrorForBadNetwork(Ljava/lang/String;)Lapp/mgsim/arena/SocketError;

    move-result-object v3

    invoke-virtual {v0, v3}, Lapp/mgsim/arena/ArenaSocketThread;->handleExit(Lapp/mgsim/arena/SocketError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleLogin exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->y(Ljava/lang/String;)V

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleLogin retryCount: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->q:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->y(Ljava/lang/String;)V

    .line 28
    iget v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->q:I

    if-gt v0, v2, :cond_6

    add-int/lit8 v0, v0, 0x1

    .line 29
    iput v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->q:I

    .line 30
    invoke-direct {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->u(Lapp/mgsim/arena/ArenaRequest;)V

    goto :goto_0

    .line 31
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->k:Lapp/mgsim/arena/ArenaSocketThread;

    invoke-static {v1}, Lapp/mgsim/arena/SocketUtils;->createSocketErrorForBadNetwork(Ljava/lang/String;)Lapp/mgsim/arena/SocketError;

    move-result-object v0

    invoke-virtual {p1, v0}, Lapp/mgsim/arena/ArenaSocketThread;->handleExit(Lapp/mgsim/arena/SocketError;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public A(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->l:Ljava/util/HashSet;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->l:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->l:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public C(Lapp/mgsim/arena/ArenaRequest;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->m:Lapp/mgsim/arena/SocketListener;

    invoke-interface {v0, p1}, Lapp/mgsim/arena/SocketListener;->executeRequest(Lapp/mgsim/arena/ArenaRequest;)V

    return-void
.end method

.method public D(Lcom/papa91/battle/protocol/BattleArea;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->o:Lcom/papa91/battle/protocol/BattleArea;

    return-void
.end method

.method public E(Lapp/mgsim/arena/ArenaResponse;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->n:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method i()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, "---cancelSubscribe----"

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->y(Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lapp/mgsim/arena/ArenaRequestFactory;->cancelSubscribeGameRoom()Lapp/mgsim/arena/ArenaRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->C(Lapp/mgsim/arena/ArenaRequest;)V

    :cond_0
    return-void
.end method

.method k(Lapp/mgsim/arena/ArenaRequest;)V
    .locals 14
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p1, Lapp/mgsim/arena/ArenaRequest;->request_type:Ljava/lang/String;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchRequest-->type :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->y(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v2, "cmd_login"

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->q(Lapp/mgsim/arena/ArenaRequest;)V

    goto/16 :goto_1

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->s()Z

    move-result v2

    if-nez v2, :cond_1

    .line 7
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->k:Lapp/mgsim/arena/ArenaSocketThread;

    const-string v0, "\u672a\u767b\u9646\uff0c\u9700\u8981\u91cd\u65b0\u767b\u9646\uff01"

    invoke-static {v0}, Lapp/mgsim/arena/SocketUtils;->createSocketErrorForBadNetwork(Ljava/lang/String;)Lapp/mgsim/arena/SocketError;

    move-result-object v0

    invoke-virtual {p1, v0}, Lapp/mgsim/arena/ArenaSocketThread;->handleExit(Lapp/mgsim/arena/SocketError;)V

    .line 8
    monitor-exit v1

    return-void

    :cond_1
    const-string v2, "cmd_create_game_room"

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->h:Lcom/join/mgps/Util/b;

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    .line 11
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->k:Lapp/mgsim/arena/ArenaSocketThread;

    iget-wide v3, p1, Lapp/mgsim/arena/ArenaRequest;->gameId:J

    invoke-direct {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->l(Lapp/mgsim/arena/ArenaRequest;)J

    move-result-wide v5

    invoke-direct {p0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->p()I

    move-result v7

    iget v8, p1, Lapp/mgsim/arena/ArenaRequest;->coins:I

    iget-boolean v9, p1, Lapp/mgsim/arena/ArenaRequest;->allowPeripheralJoin:Z

    iget-boolean v10, p1, Lapp/mgsim/arena/ArenaRequest;->allowPCJoin:Z

    iget-boolean v11, p1, Lapp/mgsim/arena/ArenaRequest;->allowSpectatorJoin:Z

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/join/mgps/socket/fight/arena/c;->o(Landroid/content/Context;)Z

    move-result v12

    iget-boolean v13, p1, Lapp/mgsim/arena/ArenaRequest;->isFromLive:Z

    invoke-static/range {v2 .. v13}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->createRoom(IJJIIZZZZZ)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lapp/mgsim/arena/ArenaSocketThread;->sendDataToServer(Ljava/nio/ByteBuffer;)V

    .line 12
    monitor-exit v1

    return-void

    :cond_2
    const-string v2, "cmd_subscribe_game_roomlist"

    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 14
    iget v0, p1, Lapp/mgsim/arena/ArenaRequest;->roomType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 15
    sget-object v0, Lcom/papa91/battle/protocol/Params$RoomType;->ELITE:Lcom/papa91/battle/protocol/Params$RoomType;

    goto :goto_0

    .line 16
    :cond_3
    sget-object v0, Lcom/papa91/battle/protocol/Params$RoomType;->NORMAL:Lcom/papa91/battle/protocol/Params$RoomType;

    .line 17
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->k:Lapp/mgsim/arena/ArenaSocketThread;

    iget v3, p1, Lapp/mgsim/arena/ArenaRequest;->collectionId:I

    invoke-direct {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->l(Lapp/mgsim/arena/ArenaRequest;)J

    move-result-wide v4

    invoke-static {v3, v0, v4, v5}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->subscribeGameRoom(ILcom/papa91/battle/protocol/Params$RoomType;J)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v2, p1}, Lapp/mgsim/arena/ArenaSocketThread;->sendDataToServer(Ljava/nio/ByteBuffer;)V

    .line 18
    monitor-exit v1

    return-void

    :cond_4
    const-string v2, "cmd_set_room_challenge_coins_altr"

    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 20
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->k:Lapp/mgsim/arena/ArenaSocketThread;

    iget v2, p1, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    iget v3, p1, Lapp/mgsim/arena/ArenaRequest;->coins:I

    invoke-direct {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->l(Lapp/mgsim/arena/ArenaRequest;)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->setChallengeCoins(IIJ)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lapp/mgsim/arena/ArenaSocketThread;->sendDataToServer(Ljava/nio/ByteBuffer;)V

    .line 21
    monitor-exit v1

    return-void

    :cond_5
    const-string v2, "cmd_set_room_password_altr"

    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 23
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->k:Lapp/mgsim/arena/ArenaSocketThread;

    iget v2, p1, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    iget-object v3, p1, Lapp/mgsim/arena/ArenaRequest;->password:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->l(Lapp/mgsim/arena/ArenaRequest;)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->setRoomPassword(ILjava/lang/String;J)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lapp/mgsim/arena/ArenaSocketThread;->sendDataToServer(Ljava/nio/ByteBuffer;)V

    .line 24
    monitor-exit v1

    return-void

    :cond_6
    const-string v2, "cmd_set_room_server_play_mode"

    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 26
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->k:Lapp/mgsim/arena/ArenaSocketThread;

    iget v2, p1, Lapp/mgsim/arena/ArenaRequest;->playMode:I

    iget v3, p1, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    invoke-direct {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->l(Lapp/mgsim/arena/ArenaRequest;)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->setRoomServerPlayMode(IIJ)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lapp/mgsim/arena/ArenaSocketThread;->sendDataToServer(Ljava/nio/ByteBuffer;)V

    goto/16 :goto_1

    :cond_7
    const-string v2, "cmd_set_room_peripheral_join_altr"

    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 28
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->k:Lapp/mgsim/arena/ArenaSocketThread;

    iget v2, p1, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    iget-boolean v3, p1, Lapp/mgsim/arena/ArenaRequest;->allowPeripheralJoin:Z

    invoke-direct {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->l(Lapp/mgsim/arena/ArenaRequest;)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->setAllowPeripheralJoin(IZJ)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lapp/mgsim/arena/ArenaSocketThread;->sendDataToServer(Ljava/nio/ByteBuffer;)V

    .line 29
    monitor-exit v1

    return-void

    :cond_8
    const-string v2, "cmd_set_room_pc_join_altr"

    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 31
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->k:Lapp/mgsim/arena/ArenaSocketThread;

    iget v2, p1, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    iget-boolean v3, p1, Lapp/mgsim/arena/ArenaRequest;->allowPCJoin:Z

    invoke-direct {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->l(Lapp/mgsim/arena/ArenaRequest;)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->setAllowPcJoin(IZJ)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lapp/mgsim/arena/ArenaSocketThread;->sendDataToServer(Ljava/nio/ByteBuffer;)V

    .line 32
    monitor-exit v1

    return-void

    :cond_9
    const-string v2, "cmd_set_room_spectator_join_altr"

    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 34
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->k:Lapp/mgsim/arena/ArenaSocketThread;

    iget v2, p1, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    iget-boolean v3, p1, Lapp/mgsim/arena/ArenaRequest;->allowSpectatorJoin:Z

    invoke-direct {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->l(Lapp/mgsim/arena/ArenaRequest;)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->setAllowSpectatorJoin(IZJ)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lapp/mgsim/arena/ArenaSocketThread;->sendDataToServer(Ljava/nio/ByteBuffer;)V

    .line 35
    monitor-exit v1

    return-void

    :cond_a
    const-string v2, "cmd_join_room"

    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 37
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->k:Lapp/mgsim/arena/ArenaSocketThread;

    iget v2, p1, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    iget-object v3, p1, Lapp/mgsim/arena/ArenaRequest;->password:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/join/mgps/socket/fight/arena/c;->o(Landroid/content/Context;)Z

    move-result v4

    invoke-direct {p0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->p()I

    move-result v5

    invoke-direct {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->l(Lapp/mgsim/arena/ArenaRequest;)J

    move-result-wide v6

    invoke-static/range {v2 .. v7}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->joinRoom(ILjava/lang/String;ZIJ)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lapp/mgsim/arena/ArenaSocketThread;->sendDataToServer(Ljava/nio/ByteBuffer;)V

    .line 38
    monitor-exit v1

    return-void

    :cond_b
    const-string v2, "cmd_set_room_close_p1_position"

    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 40
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->k:Lapp/mgsim/arena/ArenaSocketThread;

    iget v2, p1, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    iget v3, p1, Lapp/mgsim/arena/ArenaRequest;->position:I

    iget-boolean v4, p1, Lapp/mgsim/arena/ArenaRequest;->isClosePosition:Z

    invoke-direct {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->l(Lapp/mgsim/arena/ArenaRequest;)J

    move-result-wide v5

    invoke-static {v2, v3, v4, v5, v6}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->closeRoomPosition(IIZJ)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lapp/mgsim/arena/ArenaSocketThread;->sendDataToServer(Ljava/nio/ByteBuffer;)V

    .line 41
    monitor-exit v1

    return-void

    :cond_c
    const-string v2, "cmd_set_room_close_p2_position"

    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 43
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->k:Lapp/mgsim/arena/ArenaSocketThread;

    iget v2, p1, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    iget v3, p1, Lapp/mgsim/arena/ArenaRequest;->position:I

    iget-boolean v4, p1, Lapp/mgsim/arena/ArenaRequest;->isClosePosition:Z

    invoke-direct {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->l(Lapp/mgsim/arena/ArenaRequest;)J

    move-result-wide v5

    invoke-static {v2, v3, v4, v5, v6}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->closeRoomPosition(IIZJ)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lapp/mgsim/arena/ArenaSocketThread;->sendDataToServer(Ljava/nio/ByteBuffer;)V

    .line 44
    monitor-exit v1

    return-void

    :cond_d
    const-string v2, "cmd_set_room_close_p3_position"

    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 46
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->k:Lapp/mgsim/arena/ArenaSocketThread;

    iget v2, p1, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    iget v3, p1, Lapp/mgsim/arena/ArenaRequest;->position:I

    iget-boolean v4, p1, Lapp/mgsim/arena/ArenaRequest;->isClosePosition:Z

    invoke-direct {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->l(Lapp/mgsim/arena/ArenaRequest;)J

    move-result-wide v5

    invoke-static {v2, v3, v4, v5, v6}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->closeRoomPosition(IIZJ)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lapp/mgsim/arena/ArenaSocketThread;->sendDataToServer(Ljava/nio/ByteBuffer;)V

    .line 47
    monitor-exit v1

    return-void

    :cond_e
    const-string v2, "cmd_set_room_close_p4_position"

    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 49
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->k:Lapp/mgsim/arena/ArenaSocketThread;

    iget v2, p1, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    iget v3, p1, Lapp/mgsim/arena/ArenaRequest;->position:I

    iget-boolean v4, p1, Lapp/mgsim/arena/ArenaRequest;->isClosePosition:Z

    invoke-direct {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->l(Lapp/mgsim/arena/ArenaRequest;)J

    move-result-wide v5

    invoke-static {v2, v3, v4, v5, v6}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->closeRoomPosition(IIZJ)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lapp/mgsim/arena/ArenaSocketThread;->sendDataToServer(Ljava/nio/ByteBuffer;)V

    .line 50
    monitor-exit v1

    return-void

    :cond_f
    const-string v2, "cmd_leave_room"

    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 52
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->k:Lapp/mgsim/arena/ArenaSocketThread;

    iget v2, p1, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    invoke-direct {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->l(Lapp/mgsim/arena/ArenaRequest;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->leaveRoom(IJ)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lapp/mgsim/arena/ArenaSocketThread;->sendDataToServer(Ljava/nio/ByteBuffer;)V

    .line 53
    monitor-exit v1

    return-void

    :cond_10
    const-string v2, "cmd_kick_out_room_position"

    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 55
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->k:Lapp/mgsim/arena/ArenaSocketThread;

    iget v2, p1, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    iget v3, p1, Lapp/mgsim/arena/ArenaRequest;->position:I

    invoke-direct {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->l(Lapp/mgsim/arena/ArenaRequest;)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->kickOutRoomPosition(IIJ)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lapp/mgsim/arena/ArenaSocketThread;->sendDataToServer(Ljava/nio/ByteBuffer;)V

    .line 56
    monitor-exit v1

    return-void

    :cond_11
    const-string v2, "cmd_quick_join_room"

    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 58
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->k:Lapp/mgsim/arena/ArenaSocketThread;

    iget-wide v2, p1, Lapp/mgsim/arena/ArenaRequest;->gameId:J

    iget v4, p1, Lapp/mgsim/arena/ArenaRequest;->collectionId:I

    invoke-direct {p0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->p()I

    move-result v5

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/join/mgps/socket/fight/arena/c;->o(Landroid/content/Context;)Z

    move-result v6

    invoke-direct {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->l(Lapp/mgsim/arena/ArenaRequest;)J

    move-result-wide v7

    invoke-static/range {v2 .. v8}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->fastJoinRoom(JIIZJ)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lapp/mgsim/arena/ArenaSocketThread;->sendDataToServer(Ljava/nio/ByteBuffer;)V

    .line 59
    monitor-exit v1

    return-void

    :cond_12
    const-string v2, "cmd_search_room_by_id"

    .line 60
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 61
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->k:Lapp/mgsim/arena/ArenaSocketThread;

    iget v2, p1, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    invoke-direct {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->l(Lapp/mgsim/arena/ArenaRequest;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->searchRoomByID(IJ)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lapp/mgsim/arena/ArenaSocketThread;->sendDataToServer(Ljava/nio/ByteBuffer;)V

    .line 62
    monitor-exit v1

    return-void

    :cond_13
    const-string v2, "cmd_lobby_start_game"

    .line 63
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 64
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->k:Lapp/mgsim/arena/ArenaSocketThread;

    iget v2, p1, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    invoke-direct {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->l(Lapp/mgsim/arena/ArenaRequest;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->lobbyStartGame(IJ)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lapp/mgsim/arena/ArenaSocketThread;->sendDataToServer(Ljava/nio/ByteBuffer;)V

    .line 65
    monitor-exit v1

    return-void

    :cond_14
    const-string v2, "cmd_player_ready_game"

    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 67
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->k:Lapp/mgsim/arena/ArenaSocketThread;

    iget v2, p1, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    invoke-direct {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->l(Lapp/mgsim/arena/ArenaRequest;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->playerReadyGame(IJ)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lapp/mgsim/arena/ArenaSocketThread;->sendDataToServer(Ljava/nio/ByteBuffer;)V

    .line 68
    monitor-exit v1

    return-void

    :cond_15
    const-string v2, "cmd_cancel_subscribe_game_room"

    .line 69
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 70
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->k:Lapp/mgsim/arena/ArenaSocketThread;

    invoke-direct {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->l(Lapp/mgsim/arena/ArenaRequest;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->cancelSubscribeGameRoom(J)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lapp/mgsim/arena/ArenaSocketThread;->sendDataToServer(Ljava/nio/ByteBuffer;)V

    .line 71
    monitor-exit v1

    return-void

    :cond_16
    const-string v2, "cmd_share_join_room"

    .line 72
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 73
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->k:Lapp/mgsim/arena/ArenaSocketThread;

    iget-wide v2, p1, Lapp/mgsim/arena/ArenaRequest;->gameId:J

    iget v4, p1, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    iget-wide v5, p1, Lapp/mgsim/arena/ArenaRequest;->fightId:J

    iget-object v7, p1, Lapp/mgsim/arena/ArenaRequest;->password:Ljava/lang/String;

    invoke-direct {p0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->p()I

    move-result v8

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/join/mgps/socket/fight/arena/c;->o(Landroid/content/Context;)Z

    move-result v9

    invoke-direct {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->l(Lapp/mgsim/arena/ArenaRequest;)J

    move-result-wide v10

    invoke-static/range {v2 .. v11}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->shareJoinRoom(JIJLjava/lang/String;IZJ)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lapp/mgsim/arena/ArenaSocketThread;->sendDataToServer(Ljava/nio/ByteBuffer;)V

    .line 74
    monitor-exit v1

    return-void

    :cond_17
    const-string v2, "cmd_spectator_sit"

    .line 75
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 76
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->k:Lapp/mgsim/arena/ArenaSocketThread;

    iget v2, p1, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    iget v3, p1, Lapp/mgsim/arena/ArenaRequest;->position:I

    invoke-direct {p0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->p()I

    move-result v4

    invoke-direct {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->l(Lapp/mgsim/arena/ArenaRequest;)J

    move-result-wide v5

    invoke-static {v2, v3, v4, v5, v6}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->spectatorSit(IIIJ)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lapp/mgsim/arena/ArenaSocketThread;->sendDataToServer(Ljava/nio/ByteBuffer;)V

    .line 77
    monitor-exit v1

    return-void

    :cond_18
    const-string v2, "cmd_get_kick_out_room_position_info"

    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 79
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->k:Lapp/mgsim/arena/ArenaSocketThread;

    iget v2, p1, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    iget v3, p1, Lapp/mgsim/arena/ArenaRequest;->position:I

    invoke-direct {p0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->p()I

    move-result v4

    invoke-direct {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->l(Lapp/mgsim/arena/ArenaRequest;)J

    move-result-wide v5

    invoke-static {v2, v3, v4, v5, v6}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->getKickPlayerInfo(IIIJ)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lapp/mgsim/arena/ArenaSocketThread;->sendDataToServer(Ljava/nio/ByteBuffer;)V

    .line 80
    monitor-exit v1

    return-void

    :cond_19
    const-string v2, "cmd_get_frameforward_server"

    .line 81
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 82
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->k:Lapp/mgsim/arena/ArenaSocketThread;

    iget v2, p1, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    invoke-direct {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->l(Lapp/mgsim/arena/ArenaRequest;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->getFrameForwardServer(IJ)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lapp/mgsim/arena/ArenaSocketThread;->sendDataToServer(Ljava/nio/ByteBuffer;)V

    .line 83
    monitor-exit v1

    return-void

    :cond_1a
    const-string v2, "cmd_join_battle_area"

    .line 84
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 85
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->k:Lapp/mgsim/arena/ArenaSocketThread;

    iget-object v2, p1, Lapp/mgsim/arena/ArenaRequest;->battleArea:Lcom/papa91/battle/protocol/BattleArea;

    invoke-direct {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->l(Lapp/mgsim/arena/ArenaRequest;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->joinBattleArea(Lcom/papa91/battle/protocol/BattleArea;J)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lapp/mgsim/arena/ArenaSocketThread;->sendDataToServer(Ljava/nio/ByteBuffer;)V

    .line 86
    :cond_1b
    :goto_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public m()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lapp/mgsim/arena/AreaInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->d:Lapp/mgsim/arena/UDPHelper;

    invoke-virtual {v0}, Lapp/mgsim/arena/UDPHelper;->getAreaMaps()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method public n()Lcom/papa91/battle/protocol/BattleArea;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->o:Lcom/papa91/battle/protocol/BattleArea;

    return-object v0
.end method

.method public o(I)Lapp/mgsim/arena/ArenaResponse;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->n:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lapp/mgsim/arena/ArenaResponse;

    return-object p1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string p1, "---service onBind----"

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->y(Ljava/lang/String;)V

    .line 2
    new-instance p1, Lcom/join/mgps/socket/fight/arena/ArenaService$b;

    invoke-direct {p1, p0}, Lcom/join/mgps/socket/fight/arena/ArenaService$b;-><init>(Lcom/join/mgps/socket/fight/arena/ArenaService;)V

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    invoke-static {}, Lcom/join/mgps/rpc/impl/k;->n0()Lcom/join/mgps/rpc/impl/k;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->i:Lcom/join/mgps/rpc/k;

    .line 3
    invoke-static {}, Lcom/join/mgps/rpc/impl/j;->n0()Lcom/join/mgps/rpc/impl/k;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->j:Lcom/join/mgps/rpc/k;

    const-string v0, "---service onCreate----"

    .line 4
    invoke-virtual {p0, v0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->y(Ljava/lang/String;)V

    .line 5
    new-instance v0, Lapp/mgsim/arena/ArenaSocketThread;

    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->m:Lapp/mgsim/arena/SocketListener;

    invoke-direct {v0, v1}, Lapp/mgsim/arena/ArenaSocketThread;-><init>(Lapp/mgsim/arena/SocketListener;)V

    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->k:Lapp/mgsim/arena/ArenaSocketThread;

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x2

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->f:Ljava/util/concurrent/atomic/AtomicLong;

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndDecrement()J

    .line 8
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->g:Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    new-instance v0, Lapp/mgsim/arena/UDPHelper;

    invoke-direct {v0, p0}, Lapp/mgsim/arena/UDPHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->d:Lapp/mgsim/arena/UDPHelper;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const-string v0, "---service onDestroy----"

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->y(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->k:Lapp/mgsim/arena/ArenaSocketThread;

    iget-object v0, v0, Lapp/mgsim/arena/ArenaSocketThread;->mHeartBeatThread:Lapp/mgsim/arena/CheckThread;

    invoke-virtual {v0}, Lapp/mgsim/arena/CheckThread;->stop()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->f:Ljava/util/concurrent/atomic/AtomicLong;

    .line 5
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    const-string p2, "---service onStartCommand----"

    .line 1
    invoke-virtual {p0, p2}, Lcom/join/mgps/socket/fight/arena/ArenaService;->y(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "---service onStartCommand----action-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->y(Ljava/lang/String;)V

    const-string v0, "com.join.mgps.socket.fight.arena.leave_room"

    .line 5
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    const-string v0, "gameId"

    .line 6
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 7
    invoke-virtual {p0, p2}, Lcom/join/mgps/socket/fight/arena/ArenaService;->t(I)V

    goto :goto_0

    :cond_0
    const-string v0, "com.join.mgps.socket.fight.arena.cancel_subscribe"

    .line 8
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->i()V

    :cond_1
    :goto_0
    const/4 p2, 0x1

    .line 10
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    const-string v0, "---service onUnbind----"

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->y(Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method q(Lapp/mgsim/arena/ArenaRequest;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->q:I

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->u(Lapp/mgsim/arena/ArenaRequest;)V

    return-void
.end method

.method r(Ljava/lang/Object;)V
    .locals 8
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    check-cast p1, Lcom/papa91/battle/protocol/Response;

    .line 3
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getRequestId()J

    move-result-wide v1

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleServerResponse  requestId :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/join/mgps/socket/fight/arena/ArenaService;->y(Ljava/lang/String;)V

    .line 5
    new-instance v3, Lapp/mgsim/arena/ArenaResponse;

    invoke-direct {v3}, Lapp/mgsim/arena/ArenaResponse;-><init>()V

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    cmp-long v7, v1, v4

    if-nez v7, :cond_6

    const/4 v1, 0x2

    .line 6
    iput v1, v3, Lapp/mgsim/arena/ArenaResponse;->messageType:I

    .line 7
    iput v6, v3, Lapp/mgsim/arena/ArenaResponse;->responseCode:I

    .line 8
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getType()Lcom/papa91/battle/protocol/Response$ProtoType;

    move-result-object v2

    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleServerResponse server push message type : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/join/mgps/socket/fight/arena/ArenaService;->y(Ljava/lang/String;)V

    .line 10
    sget-object v4, Lcom/papa91/battle/protocol/Response$ProtoType;->PONG:Lcom/papa91/battle/protocol/Response$ProtoType;

    if-ne v2, v4, :cond_1

    .line 11
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getPong()Lcom/papa91/battle/protocol/Pong;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getPong()Lcom/papa91/battle/protocol/Pong;

    move-result-object p1

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Pong;->getTimestamp()J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-int p1, v1

    if-ltz p1, :cond_0

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ping value :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->y(Ljava/lang/String;)V

    .line 14
    iput p1, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->e:I

    .line 15
    :cond_0
    monitor-exit v0

    return-void

    .line 16
    :cond_1
    sget-object v4, Lcom/papa91/battle/protocol/Response$ProtoType;->ACCOUNT_KICK_BROADCAST:Lcom/papa91/battle/protocol/Response$ProtoType;

    if-ne v2, v4, :cond_2

    .line 17
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->k:Lapp/mgsim/arena/ArenaSocketThread;

    const-string v2, "\u68c0\u6d4b\u5230\u4f60\u7684\u8d26\u6237\u5728\u53e6\u5916\u4e00\u53f0\u624b\u673a\u767b\u9646!"

    invoke-static {v1, v2}, Lapp/mgsim/arena/SocketUtils;->createSocketError(ILjava/lang/String;)Lapp/mgsim/arena/SocketError;

    move-result-object v1

    invoke-virtual {p1, v1}, Lapp/mgsim/arena/ArenaSocketThread;->handleExit(Lapp/mgsim/arena/SocketError;)V

    .line 18
    monitor-exit v0

    return-void

    .line 19
    :cond_2
    sget-object v1, Lcom/papa91/battle/protocol/Response$ProtoType;->UPDATE_AREA_ONLINE_PEOPLE_BROADCAST:Lcom/papa91/battle/protocol/Response$ProtoType;

    if-ne v2, v1, :cond_3

    .line 20
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getAreaOnlinePeopleCount()Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

    move-result-object v1

    iput-object v1, v3, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    const-string v1, "push_update_area_online_people_broadcast"

    .line 21
    iput-object v1, v3, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getAreaOnlinePeopleCount()Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->F(Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;)V

    goto :goto_0

    .line 23
    :cond_3
    invoke-static {v3, p1}, Lcom/join/mgps/socket/fight/arena/c;->j(Lapp/mgsim/arena/ArenaResponse;Lcom/papa91/battle/protocol/Response;)Lapp/mgsim/arena/ArenaResponse;

    move-result-object v3

    .line 24
    :goto_0
    iget-object v1, v3, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    const-string v2, "push_dissolve_room"

    if-eq v1, v2, :cond_4

    const-string v2, "push_update_room"

    if-eq v1, v2, :cond_4

    const-string v2, "push_kick_room"

    if-ne v1, v2, :cond_5

    .line 25
    :cond_4
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getRoom()Lcom/papa91/battle/protocol/GameRoom;

    move-result-object p1

    .line 26
    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->n:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    :cond_5
    invoke-virtual {p0, v3}, Lcom/join/mgps/socket/fight/arena/ArenaService;->v(Lapp/mgsim/arena/ArenaResponse;)V

    goto :goto_1

    .line 28
    :cond_6
    iget-object v4, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lapp/mgsim/arena/ArenaRequest;

    if-nez v4, :cond_7

    .line 29
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleServerResponse get request is null by request id :"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->y(Ljava/lang/String;)V

    .line 30
    monitor-exit v0

    return-void

    .line 31
    :cond_7
    iput v6, v3, Lapp/mgsim/arena/ArenaResponse;->messageType:I

    .line 32
    invoke-direct {p0, v3, v4, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->B(Lapp/mgsim/arena/ArenaResponse;Lapp/mgsim/arena/ArenaRequest;Lcom/papa91/battle/protocol/Response;)V

    .line 33
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public s()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->c:Lapp/mgsim/arena/AreaInfo;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method t(I)V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "leaved room"

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->y(Ljava/lang/String;)V

    .line 3
    invoke-static {p1}, Lapp/mgsim/arena/ArenaRequestFactory;->leaveRoom(I)Lapp/mgsim/arena/ArenaRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->C(Lapp/mgsim/arena/ArenaRequest;)V

    .line 4
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object v0

    const/4 v1, 0x1

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/wufan/friend/chat/c;->i(IJ)V

    :cond_0
    return-void
.end method

.method v(Lapp/mgsim/arena/ArenaResponse;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->l:Ljava/util/HashSet;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :try_start_1
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/wufan/friend/chat/c;->j(Lapp/mgsim/arena/ArenaResponse;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->l:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lapp/mgsim/arena/SocketListener$NotifyObserver;

    .line 4
    invoke-interface {v2, p1}, Lapp/mgsim/arena/SocketListener$NotifyObserver;->onServerResponse(Lapp/mgsim/arena/ArenaResponse;)V

    goto :goto_0

    .line 5
    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyObservers exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->y(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method w(Lapp/mgsim/arena/SocketError;)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->l:Ljava/util/HashSet;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->l:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lapp/mgsim/arena/SocketListener$NotifyObserver;

    .line 3
    invoke-interface {v2, p1}, Lapp/mgsim/arena/SocketListener$NotifyObserver;->onError(Lapp/mgsim/arena/SocketError;)V

    goto :goto_0

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method x()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.account_status_uidchange"
        }
    .end annotation

    const-string v0, "----receiver on onUID Changed---"

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->y(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->k:Lapp/mgsim/arena/ArenaSocketThread;

    const/4 v1, 0x5

    const-string v2, "\u5207\u6362\u8d26\u6237\uff0c\u9700\u8981\u91cd\u65b0\u767b\u9646"

    invoke-static {v1, v2}, Lapp/mgsim/arena/SocketUtils;->createSocketError(ILjava/lang/String;)Lapp/mgsim/arena/SocketError;

    move-result-object v1

    invoke-virtual {v0, v1}, Lapp/mgsim/arena/ArenaSocketThread;->handleExit(Lapp/mgsim/arena/SocketError;)V

    return-void
.end method

.method y(Ljava/lang/String;)V
    .locals 1

    const-string v0, "ArenaService"

    .line 1
    invoke-static {v0, p1}, Lcom/join/mgps/Util/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public z(Lapp/mgsim/arena/SocketListener$NotifyObserver;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->l:Ljava/util/HashSet;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->l:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->l:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
