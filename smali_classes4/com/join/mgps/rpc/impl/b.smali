.class public Lcom/join/mgps/rpc/impl/b;
.super Ljava/lang/Object;
.source "RpcArchiveClientImpl.java"

# interfaces
.implements Lcom/join/mgps/rpc/c;


# static fields
.field private static b:Lcom/join/mgps/rpc/impl/b;


# instance fields
.field private final a:Lq1/b;


# direct methods
.method public constructor <init>(Lq1/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/rpc/impl/b;->a:Lq1/b;

    return-void
.end method

.method public static k()Lcom/join/mgps/rpc/impl/b;
    .locals 2

    .line 1
    sget-object v0, Lcom/join/mgps/rpc/impl/b;->b:Lcom/join/mgps/rpc/impl/b;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/join/mgps/rpc/g;->z:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/mgps/rpc/retrofit2/RetrofitApi;->getRetrofit2(Ljava/lang/String;)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lq1/b;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq1/b;

    .line 3
    new-instance v1, Lcom/join/mgps/rpc/impl/b;

    invoke-direct {v1, v0}, Lcom/join/mgps/rpc/impl/b;-><init>(Lq1/b;)V

    sput-object v1, Lcom/join/mgps/rpc/impl/b;->b:Lcom/join/mgps/rpc/impl/b;

    .line 4
    :cond_0
    sget-object v0, Lcom/join/mgps/rpc/impl/b;->b:Lcom/join/mgps/rpc/impl/b;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/Map;)Lcom/join/mgps/dto/ArchiveEvaluteDataBean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/join/mgps/dto/ArchiveEvaluteDataBean;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/b;->a:Lq1/b;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0, p1}, Lq1/b;->a(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ArchiveEvaluteDataBean;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Ljava/util/Map;)Lcom/join/mgps/dto/ArchiveResponseMain;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/join/mgps/dto/ArchiveResponseMain<",
            "Lcom/join/mgps/dto/ArchiveResponseMessage;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/b;->a:Lq1/b;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0, p1}, Lq1/b;->b(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ArchiveResponseMain;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Ljava/util/Map;)Lcom/join/mgps/dto/ArchiveResponseMain;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/join/mgps/dto/ArchiveResponseMain<",
            "Lcom/join/mgps/dto/ArchiveResponseMessage;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/b;->a:Lq1/b;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0, p1}, Lq1/b;->c(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ArchiveResponseMain;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public d(Ljava/util/Map;)Lcom/join/mgps/dto/ArchiveDownDataBean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/join/mgps/dto/ArchiveDownDataBean;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/b;->a:Lq1/b;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0, p1}, Lq1/b;->d(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ArchiveDownDataBean;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public e(Ljava/util/Map;)Lcom/join/mgps/dto/ArchiveResponseMain;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/join/mgps/dto/ArchiveResponseMain<",
            "Lcom/join/mgps/dto/ArchiveResponseMessage;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/b;->a:Lq1/b;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0, p1}, Lq1/b;->e(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ArchiveResponseMain;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public f(Ljava/util/Map;)Lcom/join/mgps/dto/ArchiveNumDataBean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/join/mgps/dto/ArchiveNumDataBean;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/b;->a:Lq1/b;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0, p1}, Lq1/b;->i(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ArchiveNumDataBean;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public g(Ljava/util/Map;)Lcom/join/mgps/dto/ArchiveShopDataBean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/join/mgps/dto/ArchiveShopDataBean;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/b;->a:Lq1/b;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0, p1}, Lq1/b;->g(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ArchiveShopDataBean;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public h(Ljava/util/Map;)Lcom/join/mgps/dto/ArchiveDataBean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/join/mgps/dto/ArchiveDataBean;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/b;->a:Lq1/b;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0, p1}, Lq1/b;->h(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ArchiveDataBean;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public i(Ljava/util/Map;)Lcom/join/mgps/dto/ArchiveShopDataBean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/join/mgps/dto/ArchiveShopDataBean;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/b;->a:Lq1/b;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0, p1}, Lq1/b;->f(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ArchiveShopDataBean;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public j()Lq1/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/b;->a:Lq1/b;

    return-object v0
.end method
