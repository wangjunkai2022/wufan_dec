.class public interface abstract Lq1/d;
.super Ljava/lang/Object;
.source "IRpcCommentClient.java"


# virtual methods
.method public abstract a(Lcom/join/mgps/dto/CommentModifyArgs;)Lretrofit2/Call;
    .param p1    # Lcom/join/mgps/dto/CommentModifyArgs;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommentModifyArgs;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/CommentResponse<",
            "Lcom/join/mgps/dto/CommentCreateBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/modifyComment/index"
    .end annotation
.end method

.method public abstract b(Lcom/join/mgps/dto/RequestCommentAllListArgs;)Lretrofit2/Call;
    .param p1    # Lcom/join/mgps/dto/RequestCommentAllListArgs;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestCommentAllListArgs;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/CommentResponse<",
            "Lcom/join/mgps/dto/CommentAllListBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/commentlist/index"
    .end annotation
.end method

.method public abstract c(Lcom/join/mgps/dto/CommentRequest;)Lretrofit2/Call;
    .param p1    # Lcom/join/mgps/dto/CommentRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommentRequest;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/CommentResponse<",
            "Lcom/join/mgps/dto/CommentTokenBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/token/index"
    .end annotation
.end method

.method public abstract d(Lcom/join/mgps/dto/CommentCreateArgs;)Lretrofit2/Call;
    .param p1    # Lcom/join/mgps/dto/CommentCreateArgs;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommentCreateArgs;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/CommentResponse<",
            "Lcom/join/mgps/dto/CommentCreateBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/addcomment/index"
    .end annotation
.end method

.method public abstract e(Lcom/join/mgps/dto/RequestCommentDetailArgs;)Lretrofit2/Call;
    .param p1    # Lcom/join/mgps/dto/RequestCommentDetailArgs;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestCommentDetailArgs;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/CommentResponse<",
            "Lcom/join/mgps/dto/CommentDetailBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/commentDetailList/index"
    .end annotation
.end method

.method public abstract f(Lcom/join/mgps/dto/CommentPraiseRequestBean;)Lretrofit2/Call;
    .param p1    # Lcom/join/mgps/dto/CommentPraiseRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommentPraiseRequestBean;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/CommentResponse<",
            "Lcom/join/mgps/dto/CommentPraiseBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/adddespise/index"
    .end annotation
.end method

.method public abstract g(Lcom/join/mgps/dto/GamedetialCommentRequest;)Lretrofit2/Call;
    .param p1    # Lcom/join/mgps/dto/GamedetialCommentRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/GamedetialCommentRequest;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/CommentResponse<",
            "Lcom/join/mgps/dto/CommentAllListBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/commentListForGameInfo/index"
    .end annotation
.end method

.method public abstract h(Lcom/join/mgps/dto/RequestCommentpraiseArgs;)Lretrofit2/Call;
    .param p1    # Lcom/join/mgps/dto/RequestCommentpraiseArgs;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestCommentpraiseArgs;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/CommentResponse<",
            "Lcom/join/mgps/dto/CommentPraiseBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/addpraise/index"
    .end annotation
.end method

.method public abstract i(Lcom/join/mgps/dto/CommentPraiseRequestBean;)Lretrofit2/Call;
    .param p1    # Lcom/join/mgps/dto/CommentPraiseRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommentPraiseRequestBean;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/CommentResponse<",
            "Lcom/join/mgps/dto/CommentPraiseBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/addpraise/index"
    .end annotation
.end method

.method public abstract j(Lcom/join/mgps/dto/CommentSelfRequestBean;)Lretrofit2/Call;
    .param p1    # Lcom/join/mgps/dto/CommentSelfRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommentSelfRequestBean;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/CommentResponse<",
            "Lcom/join/mgps/dto/CommentListForSelfBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/commentListForSelfv2/index"
    .end annotation
.end method

.method public abstract k(Lcom/join/mgps/dto/DeleteCommentArgs;)Lretrofit2/Call;
    .param p1    # Lcom/join/mgps/dto/DeleteCommentArgs;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/DeleteCommentArgs;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/CommentResponse<",
            "Lcom/join/mgps/dto/CommentPraiseBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/delComment/index"
    .end annotation
.end method

.method public abstract l(Lcom/join/mgps/dto/RequestCommentpraiseArgs;)Lretrofit2/Call;
    .param p1    # Lcom/join/mgps/dto/RequestCommentpraiseArgs;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestCommentpraiseArgs;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/CommentResponse<",
            "Lcom/join/mgps/dto/CommentPraiseBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/adddespise/index"
    .end annotation
.end method
