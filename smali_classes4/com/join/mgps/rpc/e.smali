.class public interface abstract Lcom/join/mgps/rpc/e;
.super Ljava/lang/Object;
.source "RpcCommentClient.java"


# virtual methods
.method public abstract a(Lcom/join/mgps/dto/CommentModifyArgs;)Lcom/join/mgps/dto/CommentResponse;
    .param p1    # Lcom/join/mgps/dto/CommentModifyArgs;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
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

    .annotation runtime Lretrofit2/http/POST;
        value = "/modifyComment/index"
    .end annotation
.end method

.method public abstract b(Lcom/join/mgps/dto/RequestCommentAllListArgs;)Lcom/join/mgps/dto/CommentResponse;
    .param p1    # Lcom/join/mgps/dto/RequestCommentAllListArgs;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
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

    .annotation runtime Lretrofit2/http/POST;
        value = "/commentlist/index"
    .end annotation
.end method

.method public abstract c(Lcom/join/mgps/dto/CommentRequest;)Lcom/join/mgps/dto/CommentResponse;
    .param p1    # Lcom/join/mgps/dto/CommentRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
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

    .annotation runtime Lretrofit2/http/POST;
        value = "/token/index"
    .end annotation
.end method

.method public abstract d(Lcom/join/mgps/dto/CommentCreateArgs;)Lcom/join/mgps/dto/CommentResponse;
    .param p1    # Lcom/join/mgps/dto/CommentCreateArgs;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
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

    .annotation runtime Lretrofit2/http/POST;
        value = "/addcomment/index"
    .end annotation
.end method

.method public abstract e(Lcom/join/mgps/dto/RequestCommentDetailArgs;)Lcom/join/mgps/dto/CommentResponse;
    .param p1    # Lcom/join/mgps/dto/RequestCommentDetailArgs;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
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

    .annotation runtime Lretrofit2/http/POST;
        value = "/commentDetailList/index"
    .end annotation
.end method

.method public abstract f(Lcom/join/mgps/dto/CommentPraiseRequestBean;)Lcom/join/mgps/dto/CommentResponse;
    .param p1    # Lcom/join/mgps/dto/CommentPraiseRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
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

    .annotation runtime Lretrofit2/http/POST;
        value = "/adddespise/index"
    .end annotation
.end method

.method public abstract g(Lcom/join/mgps/dto/GamedetialCommentRequest;)Lcom/join/mgps/dto/CommentResponse;
    .param p1    # Lcom/join/mgps/dto/GamedetialCommentRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
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

    .annotation runtime Lretrofit2/http/POST;
        value = "/commentListForGameInfo/index"
    .end annotation
.end method

.method public abstract h(Lcom/join/mgps/dto/RequestCommentpraiseArgs;)Lcom/join/mgps/dto/CommentResponse;
    .param p1    # Lcom/join/mgps/dto/RequestCommentpraiseArgs;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
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

    .annotation runtime Lretrofit2/http/POST;
        value = "/addpraise/index"
    .end annotation
.end method

.method public abstract i(Lcom/join/mgps/dto/CommentPraiseRequestBean;)Lcom/join/mgps/dto/CommentResponse;
    .param p1    # Lcom/join/mgps/dto/CommentPraiseRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
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

    .annotation runtime Lretrofit2/http/POST;
        value = "/addpraise/index"
    .end annotation
.end method

.method public abstract j(Lcom/join/mgps/dto/CommentSelfRequestBean;)Lcom/join/mgps/dto/CommentResponse;
    .param p1    # Lcom/join/mgps/dto/CommentSelfRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
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

    .annotation runtime Lretrofit2/http/POST;
        value = "/commentListForSelfv2/index"
    .end annotation
.end method

.method public abstract k(Lcom/join/mgps/dto/DeleteCommentArgs;)Lcom/join/mgps/dto/CommentResponse;
    .param p1    # Lcom/join/mgps/dto/DeleteCommentArgs;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
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

    .annotation runtime Lretrofit2/http/POST;
        value = "/delComment/index"
    .end annotation
.end method

.method public abstract l(Lcom/join/mgps/dto/RequestCommentpraiseArgs;)Lcom/join/mgps/dto/CommentResponse;
    .param p1    # Lcom/join/mgps/dto/RequestCommentpraiseArgs;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
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

    .annotation runtime Lretrofit2/http/POST;
        value = "/adddespise/index"
    .end annotation
.end method
