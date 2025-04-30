.class public interface abstract Lcom/join/mgps/rpc/j;
.super Ljava/lang/Object;
.source "RpcGameClient.java"


# virtual methods
.method public abstract A(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
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

    .annotation runtime Lretrofit2/http/POST;
        value = "/v7/bbs/post/detail"
    .end annotation
.end method

.method public abstract B(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/mgps/dto/RequestDeleteUserCustomGameTag;",
            ">;)",
            "Lcom/join/mgps/dto/ResponseModel;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v7/game/delete_user_custom_game_tag"
    .end annotation
.end method

.method public abstract C(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
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

    .annotation runtime Lretrofit2/http/POST;
        value = "/v7/bbs/post/reply"
    .end annotation
.end method

.method public abstract D(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
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

    .annotation runtime Lretrofit2/http/POST;
        value = "/v5/game/gameSurface"
    .end annotation
.end method

.method public abstract E(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
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

    .annotation runtime Lretrofit2/http/POST;
        value = "/v5/game/mod_question_collect"
    .end annotation
.end method

.method public abstract F(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
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

    .annotation runtime Lretrofit2/http/POST;
        value = "/v7/game/openserver/list"
    .end annotation
.end method

.method public abstract G(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
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

    .annotation runtime Lretrofit2/http/POST;
        value = "/v5/game/simulatorExitPlayPanel"
    .end annotation
.end method

.method public abstract H(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
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

    .annotation runtime Lretrofit2/http/POST;
        value = "/v7/bbs/post/reply/list"
    .end annotation
.end method

.method public abstract I(Lcom/join/mgps/dto/RequestModel;Ll1/h;)V
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
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

    .annotation runtime Lretrofit2/http/POST;
        value = "/v4/game/gameDownloadDetail"
    .end annotation
.end method

.method public abstract a(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/mgps/dto/RequestFeedbackUserCustomTag;",
            ">;)",
            "Lcom/join/mgps/dto/ResponseModel;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v7/game/feedback_user_custom_tag"
    .end annotation
.end method

.method public abstract b(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
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

    .annotation runtime Lretrofit2/http/POST;
        value = "/v7/bbs/tag/list"
    .end annotation
.end method

.method public abstract c(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
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

    .annotation runtime Lretrofit2/http/POST;
        value = "/v7/bbs/post/recommend"
    .end annotation
.end method

.method public abstract d(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
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

    .annotation runtime Lretrofit2/http/POST;
        value = "/v7/game/game_tag_game_list"
    .end annotation
.end method

.method public abstract e(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
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

    .annotation runtime Lretrofit2/http/POST;
        value = "/v7/configure/video_ad_watch_log"
    .end annotation
.end method

.method public abstract f(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
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

    .annotation runtime Lretrofit2/http/POST;
        value = "/v7/search/gameSearchList"
    .end annotation
.end method

.method public abstract g(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
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

    .annotation runtime Lretrofit2/http/POST;
        value = "/v7/game_detail/activity/list"
    .end annotation
.end method

.method public abstract h(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
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

    .annotation runtime Lretrofit2/http/POST;
        value = "/v7/bbs/post/list"
    .end annotation
.end method

.method public abstract i(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
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

    .annotation runtime Lretrofit2/http/POST;
        value = "/v7/game/gameInfo"
    .end annotation
.end method

.method public abstract j(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
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

    .annotation runtime Lretrofit2/http/POST;
        value = "/v4/game/downloadInfo"
    .end annotation
.end method

.method public abstract k(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
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

    .annotation runtime Lretrofit2/http/POST;
        value = "/v7/game_detail/similar_rec/list"
    .end annotation
.end method

.method public abstract l(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
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

    .annotation runtime Lretrofit2/http/POST;
        value = "/v7/bbs/resource/dispraise"
    .end annotation
.end method

.method public abstract m(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
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

    .annotation runtime Lretrofit2/http/POST;
        value = "/v7/game/version"
    .end annotation
.end method

.method public abstract n(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/mgps/dto/RequestDeleteUserCustomTag;",
            ">;)",
            "Lcom/join/mgps/dto/ResponseModel;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v7/game/delete_user_custom_tag"
    .end annotation
.end method

.method public abstract o(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
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

    .annotation runtime Lretrofit2/http/POST;
        value = "/v7/game/search_user_custom_game_tag"
    .end annotation
.end method

.method public abstract p(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
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

    .annotation runtime Lretrofit2/http/POST;
        value = "/v5/game/standAloneStartUpPanel"
    .end annotation
.end method

.method public abstract q(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
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

    .annotation runtime Lretrofit2/http/POST;
        value = "/v7/configure/video_ad_cfg"
    .end annotation
.end method

.method public abstract r(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
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

    .annotation runtime Lretrofit2/http/POST;
        value = "/v7/mini_game/list"
    .end annotation
.end method

.method public abstract s(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
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

    .annotation runtime Lretrofit2/http/POST;
        value = "/v7/bbs/post/comment/list"
    .end annotation
.end method

.method public abstract t(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
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

    .annotation runtime Lretrofit2/http/POST;
        value = "/v7/game_detail/ranking/list"
    .end annotation
.end method

.method public abstract u(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
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

    .annotation runtime Lretrofit2/http/POST;
        value = "/v7/game/add_user_custom_game_tag"
    .end annotation
.end method

.method public abstract v(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
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

    .annotation runtime Lretrofit2/http/POST;
        value = "/v7/bbs/post/reply/detail_list"
    .end annotation
.end method

.method public abstract w(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
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

    .annotation runtime Lretrofit2/http/POST;
        value = "/v7/minigame/sdk_ad_cfg"
    .end annotation
.end method

.method public abstract x(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
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

    .annotation runtime Lretrofit2/http/POST;
        value = "/v7/game/list_user_custom_game_tag"
    .end annotation
.end method

.method public abstract y(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
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

    .annotation runtime Lretrofit2/http/POST;
        value = "/v7/bbs/resource/praise"
    .end annotation
.end method

.method public abstract z(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
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

    .annotation runtime Lretrofit2/http/POST;
        value = "/v5/game/mod_game_feedback"
    .end annotation
.end method
