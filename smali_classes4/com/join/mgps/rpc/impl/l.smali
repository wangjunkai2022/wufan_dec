.class public Lcom/join/mgps/rpc/impl/l;
.super Ljava/lang/Object;
.source "RpcOemClientImpl.java"

# interfaces
.implements Lcom/join/mgps/rpc/l;


# static fields
.field private static b:Lcom/join/mgps/rpc/impl/l;


# instance fields
.field private final a:Lq1/k;


# direct methods
.method public constructor <init>(Lq1/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/rpc/impl/l;->a:Lq1/k;

    return-void
.end method

.method public static c()Lcom/join/mgps/rpc/impl/l;
    .locals 2

    .line 1
    sget-object v0, Lcom/join/mgps/rpc/impl/l;->b:Lcom/join/mgps/rpc/impl/l;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/join/mgps/rpc/g;->q:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/mgps/rpc/retrofit2/RetrofitApi;->getRetrofit2(Ljava/lang/String;)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lq1/k;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq1/k;

    .line 3
    new-instance v1, Lcom/join/mgps/rpc/impl/l;

    invoke-direct {v1, v0}, Lcom/join/mgps/rpc/impl/l;-><init>(Lq1/k;)V

    sput-object v1, Lcom/join/mgps/rpc/impl/l;->b:Lcom/join/mgps/rpc/impl/l;

    .line 4
    :cond_0
    sget-object v0, Lcom/join/mgps/rpc/impl/l;->b:Lcom/join/mgps/rpc/impl/l;

    return-object v0
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/OemResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/OemResponse<",
            "Lcom/join/mgps/dto/OemData$GiftGetCdkData;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/l;->a:Lq1/k;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lq1/k;->a(ILjava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/OemResponse;
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

.method public b(ILjava/lang/String;)Lcom/join/mgps/dto/OemResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/OemResponse<",
            "Lcom/join/mgps/dto/OemData$GiftDetailData;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/l;->a:Lq1/k;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lq1/k;->b(ILjava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/OemResponse;
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
