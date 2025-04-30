.class public Lcom/join/mgps/rpc/impl/j;
.super Lcom/join/mgps/rpc/impl/k;
.source "RpcNetMatch1ClientImpl.java"


# static fields
.field private static e:Lcom/join/mgps/rpc/impl/k;


# instance fields
.field private final d:Lq1/j;


# direct methods
.method public constructor <init>(Lq1/j;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/rpc/impl/k;-><init>(Lq1/j;)V

    .line 2
    sget-object p1, Lcom/join/mgps/rpc/g;->o:Ljava/lang/String;

    invoke-static {p1}, Lcom/join/mgps/rpc/retrofit2/RetrofitApi;->getRetrofit2(Ljava/lang/String;)Lretrofit2/Retrofit;

    move-result-object p1

    const-class v0, Lq1/j;

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lq1/j;

    iput-object p1, p0, Lcom/join/mgps/rpc/impl/j;->d:Lq1/j;

    return-void
.end method

.method public static n0()Lcom/join/mgps/rpc/impl/k;
    .locals 2

    .line 1
    sget-object v0, Lcom/join/mgps/rpc/impl/j;->e:Lcom/join/mgps/rpc/impl/k;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/join/mgps/rpc/g;->m:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/mgps/rpc/retrofit2/RetrofitApi;->getRetrofit2(Ljava/lang/String;)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lq1/j;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq1/j;

    .line 3
    new-instance v1, Lcom/join/mgps/rpc/impl/j;

    invoke-direct {v1, v0}, Lcom/join/mgps/rpc/impl/j;-><init>(Lq1/j;)V

    sput-object v1, Lcom/join/mgps/rpc/impl/j;->e:Lcom/join/mgps/rpc/impl/k;

    .line 4
    :cond_0
    sget-object v0, Lcom/join/mgps/rpc/impl/j;->e:Lcom/join/mgps/rpc/impl/k;

    return-object v0
.end method


# virtual methods
.method public P(ILjava/lang/String;)Lcom/join/mgps/dto/ResultArenaBean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/ResultArenaBean<",
            "Lapp/mgsim/arena/ArenaLobbyServer;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/j;->d:Lq1/j;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lq1/j;->P(ILjava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ResultArenaBean;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 4
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/join/mgps/rpc/impl/k;->P(ILjava/lang/String;)Lcom/join/mgps/dto/ResultArenaBean;

    move-result-object p1

    return-object p1
.end method

.method public j0(Ljava/util/Map;)Lcom/join/mgps/dto/GameWorldResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/DiscoveryMainDataBean;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/j;->d:Lq1/j;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lq1/j;->j0(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/GameWorldResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 4
    :cond_0
    invoke-super {p0, p1}, Lcom/join/mgps/rpc/impl/k;->j0(Ljava/util/Map;)Lcom/join/mgps/dto/GameWorldResponse;

    move-result-object p1

    return-object p1
.end method

.method public r(Ljava/lang/String;)Lcom/join/mgps/dto/GameWorldResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ArenaGameInfo;",
            ">;>;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/j;->d:Lq1/j;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lq1/j;->r(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/GameWorldResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/rpc/impl/j;->r(Ljava/lang/String;)Lcom/join/mgps/dto/GameWorldResponse;

    move-result-object p1

    return-object p1
.end method
