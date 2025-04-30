.class public Lcom/join/mgps/rpc/impl/d;
.super Ljava/lang/Object;
.source "RpcCommentClientImpl.java"

# interfaces
.implements Lcom/join/mgps/rpc/e;


# static fields
.field private static b:Lcom/join/mgps/rpc/impl/d;


# instance fields
.field private final a:Lq1/d;


# direct methods
.method public constructor <init>(Lq1/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/rpc/impl/d;->a:Lq1/d;

    return-void
.end method

.method public static m()Lcom/join/mgps/rpc/impl/d;
    .locals 2

    .line 1
    sget-object v0, Lcom/join/mgps/rpc/impl/d;->b:Lcom/join/mgps/rpc/impl/d;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/join/mgps/rpc/g;->v:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/mgps/rpc/retrofit2/RetrofitApi;->getRetrofit2(Ljava/lang/String;)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lq1/d;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq1/d;

    .line 3
    new-instance v1, Lcom/join/mgps/rpc/impl/d;

    invoke-direct {v1, v0}, Lcom/join/mgps/rpc/impl/d;-><init>(Lq1/d;)V

    sput-object v1, Lcom/join/mgps/rpc/impl/d;->b:Lcom/join/mgps/rpc/impl/d;

    .line 4
    :cond_0
    sget-object v0, Lcom/join/mgps/rpc/impl/d;->b:Lcom/join/mgps/rpc/impl/d;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/join/mgps/dto/CommentModifyArgs;)Lcom/join/mgps/dto/CommentResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommentModifyArgs;",
            ")",
            "Lcom/join/mgps/dto/CommentResponse<",
            "Lcom/join/mgps/dto/CommentCreateBean;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/d;->a:Lq1/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lq1/d;->a(Lcom/join/mgps/dto/CommentModifyArgs;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/CommentResponse;
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

.method public b(Lcom/join/mgps/dto/RequestCommentAllListArgs;)Lcom/join/mgps/dto/CommentResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestCommentAllListArgs;",
            ")",
            "Lcom/join/mgps/dto/CommentResponse<",
            "Lcom/join/mgps/dto/CommentAllListBean;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/d;->a:Lq1/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lq1/d;->b(Lcom/join/mgps/dto/RequestCommentAllListArgs;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/CommentResponse;
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

.method public c(Lcom/join/mgps/dto/CommentRequest;)Lcom/join/mgps/dto/CommentResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommentRequest;",
            ")",
            "Lcom/join/mgps/dto/CommentResponse<",
            "Lcom/join/mgps/dto/CommentTokenBean;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/d;->a:Lq1/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lq1/d;->c(Lcom/join/mgps/dto/CommentRequest;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/CommentResponse;
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

.method public d(Lcom/join/mgps/dto/CommentCreateArgs;)Lcom/join/mgps/dto/CommentResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommentCreateArgs;",
            ")",
            "Lcom/join/mgps/dto/CommentResponse<",
            "Lcom/join/mgps/dto/CommentCreateBean;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/d;->a:Lq1/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lq1/d;->d(Lcom/join/mgps/dto/CommentCreateArgs;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/CommentResponse;
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

.method public e(Lcom/join/mgps/dto/RequestCommentDetailArgs;)Lcom/join/mgps/dto/CommentResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestCommentDetailArgs;",
            ")",
            "Lcom/join/mgps/dto/CommentResponse<",
            "Lcom/join/mgps/dto/CommentDetailBean;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/d;->a:Lq1/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lq1/d;->e(Lcom/join/mgps/dto/RequestCommentDetailArgs;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/CommentResponse;
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

.method public f(Lcom/join/mgps/dto/CommentPraiseRequestBean;)Lcom/join/mgps/dto/CommentResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommentPraiseRequestBean;",
            ")",
            "Lcom/join/mgps/dto/CommentResponse<",
            "Lcom/join/mgps/dto/CommentPraiseBean;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/d;->a:Lq1/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lq1/d;->f(Lcom/join/mgps/dto/CommentPraiseRequestBean;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/CommentResponse;
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

.method public g(Lcom/join/mgps/dto/GamedetialCommentRequest;)Lcom/join/mgps/dto/CommentResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/GamedetialCommentRequest;",
            ")",
            "Lcom/join/mgps/dto/CommentResponse<",
            "Lcom/join/mgps/dto/CommentAllListBean;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/d;->a:Lq1/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lq1/d;->g(Lcom/join/mgps/dto/GamedetialCommentRequest;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/CommentResponse;
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

.method public h(Lcom/join/mgps/dto/RequestCommentpraiseArgs;)Lcom/join/mgps/dto/CommentResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestCommentpraiseArgs;",
            ")",
            "Lcom/join/mgps/dto/CommentResponse<",
            "Lcom/join/mgps/dto/CommentPraiseBean;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/d;->a:Lq1/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lq1/d;->h(Lcom/join/mgps/dto/RequestCommentpraiseArgs;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/CommentResponse;
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

.method public i(Lcom/join/mgps/dto/CommentPraiseRequestBean;)Lcom/join/mgps/dto/CommentResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommentPraiseRequestBean;",
            ")",
            "Lcom/join/mgps/dto/CommentResponse<",
            "Lcom/join/mgps/dto/CommentPraiseBean;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/d;->a:Lq1/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lq1/d;->i(Lcom/join/mgps/dto/CommentPraiseRequestBean;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/CommentResponse;
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

.method public j(Lcom/join/mgps/dto/CommentSelfRequestBean;)Lcom/join/mgps/dto/CommentResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommentSelfRequestBean;",
            ")",
            "Lcom/join/mgps/dto/CommentResponse<",
            "Lcom/join/mgps/dto/CommentListForSelfBean;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/d;->a:Lq1/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lq1/d;->j(Lcom/join/mgps/dto/CommentSelfRequestBean;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/CommentResponse;
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

.method public k(Lcom/join/mgps/dto/DeleteCommentArgs;)Lcom/join/mgps/dto/CommentResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/DeleteCommentArgs;",
            ")",
            "Lcom/join/mgps/dto/CommentResponse<",
            "Lcom/join/mgps/dto/CommentPraiseBean;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/d;->a:Lq1/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lq1/d;->k(Lcom/join/mgps/dto/DeleteCommentArgs;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/CommentResponse;
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

.method public l(Lcom/join/mgps/dto/RequestCommentpraiseArgs;)Lcom/join/mgps/dto/CommentResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestCommentpraiseArgs;",
            ")",
            "Lcom/join/mgps/dto/CommentResponse<",
            "Lcom/join/mgps/dto/CommentPraiseBean;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/rpc/impl/d;->a:Lq1/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lq1/d;->l(Lcom/join/mgps/dto/RequestCommentpraiseArgs;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/CommentResponse;
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
