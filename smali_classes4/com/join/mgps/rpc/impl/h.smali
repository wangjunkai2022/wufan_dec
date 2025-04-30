.class public Lcom/join/mgps/rpc/impl/h;
.super Ljava/lang/Object;
.source "RpcGameClientImpl.java"

# interfaces
.implements Lcom/join/mgps/rpc/j;


# static fields
.field private static b:Lcom/join/mgps/rpc/impl/h;

.field private static c:Lcom/join/mgps/rpc/impl/h;


# instance fields
.field private final a:Lq1/h;


# direct methods
.method public constructor <init>(Lq1/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/rpc/impl/h;->a:Lq1/h;

    return-void
.end method

.method private static K(Z)V
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/rpc/impl/h;->b:Lcom/join/mgps/rpc/impl/h;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_1

    .line 2
    :cond_0
    sget-object p0, Lcom/join/mgps/rpc/g;->B:Ljava/lang/String;

    invoke-static {p0}, Lcom/join/mgps/rpc/retrofit2/RetrofitApi;->getRetrofit2(Ljava/lang/String;)Lretrofit2/Retrofit;

    move-result-object p0

    const-class v0, Lq1/h;

    invoke-virtual {p0, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lq1/h;

    .line 3
    new-instance v0, Lcom/join/mgps/rpc/impl/h;

    invoke-direct {v0, p0}, Lcom/join/mgps/rpc/impl/h;-><init>(Lq1/h;)V

    sput-object v0, Lcom/join/mgps/rpc/impl/h;->b:Lcom/join/mgps/rpc/impl/h;

    :cond_1
    return-void
.end method

.method public static L()Lcom/join/mgps/rpc/impl/h;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/join/mgps/rpc/impl/h;->K(Z)V

    .line 2
    sget-object v0, Lcom/join/mgps/rpc/impl/h;->b:Lcom/join/mgps/rpc/impl/h;

    return-object v0
.end method

.method public static M()Lcom/join/mgps/rpc/impl/h;
    .locals 2

    .line 1
    sget-object v0, Lcom/join/mgps/rpc/impl/h;->c:Lcom/join/mgps/rpc/impl/h;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/join/mgps/rpc/g;->C:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/mgps/rpc/retrofit2/RetrofitApi;->getRetrofit2(Ljava/lang/String;)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lq1/h;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq1/h;

    .line 3
    new-instance v1, Lcom/join/mgps/rpc/impl/h;

    invoke-direct {v1, v0}, Lcom/join/mgps/rpc/impl/h;-><init>(Lq1/h;)V

    sput-object v1, Lcom/join/mgps/rpc/impl/h;->c:Lcom/join/mgps/rpc/impl/h;

    .line 4
    :cond_0
    sget-object v0, Lcom/join/mgps/rpc/impl/h;->c:Lcom/join/mgps/rpc/impl/h;

    return-object v0
.end method

.method public static N()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lcom/join/mgps/rpc/impl/h;->K(Z)V

    return-void
.end method


# virtual methods
.method public A(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/mgps/dto/RequestBbsDetailArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/dto/BbsDetailBean;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/h;->a:Lq1/h;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lq1/h;->A(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ResponseModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public B(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/mgps/dto/RequestDeleteUserCustomGameTag;",
            ">;)",
            "Lcom/join/mgps/dto/ResponseModel;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/h;->a:Lq1/h;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lq1/h;->B(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ResponseModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public C(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/mgps/dto/RequestBbsReplyArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/h;->a:Lq1/h;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lq1/h;->C(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ResponseModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public D(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/mgps/dto/RequestGameIdArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/dto/GameMainV4DataBean;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/h;->a:Lq1/h;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lq1/h;->D(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ResponseModel;
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

.method public E(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/mgps/dto/RequestModFeedbackArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/dto/ModFeedbackBean;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/h;->a:Lq1/h;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lq1/h;->E(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ResponseModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public F(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/mgps/dto/RequestGameIdArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/kotlin/ui/coupon/ServerListData;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/h;->a:Lq1/h;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lq1/h;->F(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ResponseModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public G(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/mgps/dto/SimulatorExitPlayRequestArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/dto/SimulatorExitPlayResponseData;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/h;->a:Lq1/h;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lq1/h;->G(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ResponseModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public H(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/mgps/dto/RequestBbsCommentListArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BbsCommentListBean;",
            ">;>;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/h;->a:Lq1/h;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lq1/h;->H(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ResponseModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public I(Lcom/join/mgps/dto/RequestModel;Ll1/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;",
            ">;",
            "Ll1/h<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/activity/mygame/data/DataGameListBean;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/h;->a:Lq1/h;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lq1/h;->b0(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    move-result-object p1

    new-instance v0, Lcom/join/mgps/rpc/impl/h$a;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/rpc/impl/h$a;-><init>(Lcom/join/mgps/rpc/impl/h;Ll1/h;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public J()Lq1/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/h;->a:Lq1/h;

    return-object v0
.end method

.method public a(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/mgps/dto/RequestFeedbackUserCustomTag;",
            ">;)",
            "Lcom/join/mgps/dto/ResponseModel;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/h;->a:Lq1/h;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lq1/h;->a(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ResponseModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/mgps/dto/RequestBbsTagListArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BbsTagListBean;",
            ">;>;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/h;->a:Lq1/h;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lq1/h;->b(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ResponseModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/mgps/dto/RequestBbsRecommendArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/dto/GameBbsPostListBean;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/h;->a:Lq1/h;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lq1/h;->c(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ResponseModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public d(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/mgps/dto/RequestGameIdArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;>;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/h;->a:Lq1/h;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lq1/h;->d(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ResponseModel;
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

.method public e(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/mgps/dto/VideoAdWatchLogRequest;",
            ">;)",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/h;->a:Lq1/h;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lq1/h;->e(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ResponseModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public f(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/mgps/dto/RequestSearchGameArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/dto/SearchGameListBean;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/h;->a:Lq1/h;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lq1/h;->f(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ResponseModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public g(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/mgps/dto/RequestGameIdArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/kotlin/ui/coupon/NoticeListData;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/h;->a:Lq1/h;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lq1/h;->g(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ResponseModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public h(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/mgps/dto/RequestBbsListArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BbsListBean;",
            ">;>;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/h;->a:Lq1/h;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lq1/h;->h(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ResponseModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public i(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/mgps/dto/RequestGameIdArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/dto/GamedetialModleFourBean;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/h;->a:Lq1/h;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lq1/h;->i(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ResponseModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public j(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/dto/QueryDownloadInfoResponseData;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/h;->a:Lq1/h;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lq1/h;->j(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ResponseModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public k(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/mgps/dto/RequestGameIdArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;>;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/h;->a:Lq1/h;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lq1/h;->k(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ResponseModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public l(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/mgps/dto/RequestBbsDispraiseArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/h;->a:Lq1/h;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lq1/h;->l(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ResponseModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public m(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/mgps/dto/CheckGameVersionRequestArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/dto/CheckGameVersionResponseData;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/h;->a:Lq1/h;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lq1/h;->m(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ResponseModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public n(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/mgps/dto/RequestDeleteUserCustomTag;",
            ">;)",
            "Lcom/join/mgps/dto/ResponseModel;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/h;->a:Lq1/h;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lq1/h;->n(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ResponseModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public o(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/mgps/dto/RequestSearchUserCustomGameTag;",
            ">;)",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/h;->a:Lq1/h;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lq1/h;->o(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ResponseModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public p(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/mgps/dto/RequestModGameArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/dto/ModGameDetailBean;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/h;->a:Lq1/h;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    move-result-object p1

    invoke-interface {v0, p1}, Lq1/h;->p(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ResponseModel;
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

.method public q(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/mgps/dto/VideoAdCfgRequestArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/dto/VideoAdCfgBean;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/h;->a:Lq1/h;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lq1/h;->q(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ResponseModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public r(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/mgps/dto/RequestMiniGameArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommonGameInfoBean;",
            ">;>;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/h;->a:Lq1/h;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lq1/h;->r(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ResponseModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public s(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/mgps/dto/RequestBbsCommentListArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BbsCommentListBean;",
            ">;>;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/h;->a:Lq1/h;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lq1/h;->s(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ResponseModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public t(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/mgps/dto/RequestRankingListArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;>;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/h;->a:Lq1/h;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lq1/h;->t(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ResponseModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public u(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/mgps/dto/RequestAddUserCustomGameTag;",
            ">;)",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/dto/ListUserCustomGameTagBean;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/h;->a:Lq1/h;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lq1/h;->u(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ResponseModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public v(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/mgps/dto/RequestBbsCommentListArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BbsCommentListBean;",
            ">;>;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/h;->a:Lq1/h;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lq1/h;->v(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ResponseModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public w(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/mgps/dto/MiniGameSdkDtoRequestArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/dto/MiniGameSdkDtoResponseResponseData;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/h;->a:Lq1/h;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lq1/h;->w(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ResponseModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public x(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/mgps/dto/RequestListUserCustomGameTagArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/dto/ListUserCustomGameTagBean;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/h;->a:Lq1/h;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lq1/h;->x(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ResponseModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public y(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/mgps/dto/RequestBbsPraiseArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/h;->a:Lq1/h;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lq1/h;->y(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ResponseModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public z(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/mgps/dto/RequestModFeedbackArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/dto/ModFeedbackBean;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/h;->a:Lq1/h;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lq1/h;->z(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ResponseModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
