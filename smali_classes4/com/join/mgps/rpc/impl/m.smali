.class public Lcom/join/mgps/rpc/impl/m;
.super Ljava/lang/Object;
.source "RpcPawalletClientImpl.java"

# interfaces
.implements Lcom/join/mgps/rpc/n;


# static fields
.field private static b:Lcom/join/mgps/rpc/impl/m;


# instance fields
.field private final a:Lq1/l;


# direct methods
.method public constructor <init>(Lq1/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/rpc/impl/m;->a:Lq1/l;

    return-void
.end method

.method public static h()Lcom/join/mgps/rpc/impl/m;
    .locals 2

    .line 1
    sget-object v0, Lcom/join/mgps/rpc/impl/m;->b:Lcom/join/mgps/rpc/impl/m;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/join/mgps/rpc/g;->k:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/mgps/rpc/retrofit2/RetrofitApi;->getRetrofit2(Ljava/lang/String;)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lq1/l;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq1/l;

    .line 3
    new-instance v1, Lcom/join/mgps/rpc/impl/m;

    invoke-direct {v1, v0}, Lcom/join/mgps/rpc/impl/m;-><init>(Lq1/l;)V

    sput-object v1, Lcom/join/mgps/rpc/impl/m;->b:Lcom/join/mgps/rpc/impl/m;

    .line 4
    :cond_0
    sget-object v0, Lcom/join/mgps/rpc/impl/m;->b:Lcom/join/mgps/rpc/impl/m;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/Map;)Lcom/join/mgps/dto/PapayVoucherResultMain;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/join/mgps/dto/PapayVoucherResultMain<",
            "Lcom/join/mgps/dto/AccountGetVoucherResult;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/m;->a:Lq1/l;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lq1/l;->a(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/PapayVoucherResultMain;
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

.method public b(Ljava/util/Map;)Lcom/join/mgps/dto/PapayVoucherResultMain;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/join/mgps/dto/PapayVoucherResultMain<",
            "Lcom/join/mgps/dto/ResultMyVoucherBean;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/m;->a:Lq1/l;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lq1/l;->b(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/PapayVoucherResultMain;
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

.method public c(Ljava/util/Map;)Lcom/join/mgps/dto/PapayWalletResultMain;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/join/mgps/dto/PapayWalletResultMain;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/m;->a:Lq1/l;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lq1/l;->c(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/PapayWalletResultMain;
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

.method public d(Ljava/util/Map;)Lcom/join/mgps/dto/PapayWalletResultMain;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/join/mgps/dto/PapayWalletResultMain;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/m;->a:Lq1/l;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lq1/l;->d(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/PapayWalletResultMain;
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

.method public e(Ljava/util/Map;)Lcom/join/mgps/dto/PapayVoucherResultMain;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/join/mgps/dto/PapayVoucherResultMain<",
            "Lcom/join/mgps/dto/AccountPaBiBean;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/m;->a:Lq1/l;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lq1/l;->e(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/PapayVoucherResultMain;
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

.method public f(Ljava/util/Map;)Lcom/join/mgps/dto/PapayVoucherResultMain;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/join/mgps/dto/PapayVoucherResultMain<",
            "Lcom/join/mgps/dto/ResultMyVoucherGameBean;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/m;->a:Lq1/l;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lq1/l;->f(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/PapayVoucherResultMain;
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

.method public g(Ljava/util/Map;)Lcom/join/mgps/dto/PapayVoucherResultMain;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/join/mgps/dto/PapayVoucherResultMain<",
            "Lcom/join/mgps/dto/PayActivityConfig;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/m;->a:Lq1/l;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lq1/l;->g(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/PapayVoucherResultMain;
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

.method public l(Ljava/util/Map;)Lcom/join/mgps/dto/PapayVoucherResultMain;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/join/mgps/dto/PapayVoucherResultMain<",
            "Lcom/join/mgps/dto/ResultMyVoucherBean;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/m;->a:Lq1/l;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lq1/l;->l(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/PapayVoucherResultMain;
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
