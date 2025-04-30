.class public interface abstract Lcom/join/mgps/rpc/i;
.super Ljava/lang/Object;
.source "RpcFriendClient.java"


# virtual methods
.method public abstract a(Ljava/util/Map;)Lcom/join/mgps/dto/ResponseModel;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/FieldMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/join/mgps/dto/ResponseModel;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/like/add"
    .end annotation
.end method

.method public abstract b(Lcom/join/mgps/dto/FriendReqBean;)Lcom/join/mgps/dto/ResponseModel;
    .param p1    # Lcom/join/mgps/dto/FriendReqBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit2/http/POST;
        value = "/friendRequest/add"
    .end annotation
.end method

.method public abstract c(ILjava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ResponseModel;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "token"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "account"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FriendBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/friendRequest/multiSearch"
    .end annotation
.end method

.method public abstract d(Lcom/join/mgps/dto/FriendRecommendRequest;)Lcom/join/mgps/dto/ResponseModel;
    .param p1    # Lcom/join/mgps/dto/FriendRecommendRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/FriendRecommendRequest;",
            ")",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FriendBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/playersRecommend/get/v2"
    .end annotation
.end method

.method public abstract e(Ljava/lang/String;Ljava/lang/String;II)Lcom/join/mgps/dto/ResponseModel;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "token"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "limit"
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FriendBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/friendRequest/list"
    .end annotation
.end method

.method public abstract f(Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ResponseModel;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/dto/FriendAccountInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/user/get"
    .end annotation
.end method

.method public abstract g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ResponseModel;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "token"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "ruid"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/dto/FriendCardBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/visitingCard/get"
    .end annotation
.end method

.method public abstract h(Ljava/util/Map;)Lcom/join/mgps/dto/ResponseModel;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/FieldMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/join/mgps/dto/ResponseModel;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/like/watch"
    .end annotation
.end method

.method public abstract i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ResponseModel;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "token"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "ruid"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/dto/FriendAccountInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/friendInfo/get"
    .end annotation
.end method

.method public abstract j(Ljava/util/Map;)Lcom/join/mgps/dto/ResponseModel;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/FieldMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/join/mgps/dto/ResponseModel;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/rejectBattleInvite/v2"
    .end annotation
.end method

.method public abstract k(Lcom/join/mgps/dto/FriendBackGameReqBean;)Lcom/join/mgps/dto/ResponseModel;
    .param p1    # Lcom/join/mgps/dto/FriendBackGameReqBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/FriendBackGameReqBean;",
            ")",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/dto/FriendBackGameRspBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/friendRequest/add"
    .end annotation
.end method

.method public abstract l(Ljava/lang/String;Ljava/lang/String;II)Lcom/join/mgps/dto/ResponseModel;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "token"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "limit"
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FriendBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/like/list"
    .end annotation
.end method

.method public abstract m(Ljava/util/Map;)Lcom/join/mgps/dto/ResponseModel;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/FieldMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/join/mgps/dto/ResponseModel;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/friendRelation/delete"
    .end annotation
.end method

.method public abstract n(Ljava/util/Map;)Lcom/join/mgps/dto/ResponseModel;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/FieldMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/join/mgps/dto/ResponseModel;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/friendRequest/status"
    .end annotation
.end method
