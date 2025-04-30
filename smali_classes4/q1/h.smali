.class public interface abstract Lq1/h;
.super Ljava/lang/Object;
.source "IRpcGameClient.java"


# virtual methods
.method public abstract A(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/dto/BbsDetailBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v7/bbs/post/detail"
    .end annotation
.end method

.method public abstract A0(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v6/game/old/gameInfo"
    .end annotation
.end method

.method public abstract B(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v7/game/delete_user_custom_game_tag"
    .end annotation
.end method

.method public abstract B0(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/kotlin/ui/findgame/data/EverdayNewResultData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v6/home/the_new"
    .end annotation
.end method

.method public abstract C(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v7/bbs/post/reply"
    .end annotation
.end method

.method public abstract C0(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/dto/PAPAHomeBeanV7;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v7/home/home_page"
    .end annotation
.end method

.method public abstract D(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/dto/GameMainV4DataBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v5/game/gameSurface"
    .end annotation
.end method

.method public abstract D0(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/kotlin/ui/findgame/data/FindChoiceResultData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v6/game/game_type"
    .end annotation
.end method

.method public abstract E(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/dto/ModFeedbackBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v5/game/mod_question_collect"
    .end annotation
.end method

.method public abstract E0(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/kotlin/ui/coupon/CouponRequest;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v6/game/take/coupon"
    .end annotation
.end method

.method public abstract F(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/kotlin/ui/coupon/ServerListData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v7/game/openserver/list"
    .end annotation
.end method

.method public abstract F0(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/dto/GamedetialModleFourBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v6/game/old/gameInfo"
    .end annotation
.end method

.method public abstract G(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/dto/SimulatorExitPlayResponseData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v5/game/simulatorExitPlayPanel"
    .end annotation
.end method

.method public abstract G0(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/mgps/dto/GameMd5Data;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/dto/GameMD5ResultInfo;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v4/game/fileMd5State"
    .end annotation
.end method

.method public abstract H(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BbsCommentListBean;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v7/bbs/post/reply/list"
    .end annotation
.end method

.method public abstract I(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/mgps/dto/BaseRequestArgs;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/dto/ConfigData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v6/configure/cfg_info"
    .end annotation
.end method

.method public abstract J(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveArgs;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v6/game/cloudArchive/comment"
    .end annotation
.end method

.method public abstract K(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/mgps/dto/RequestModGameTagArgs;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ModGameArchiveTagBean;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v6/game/cloudArchive/tagList"
    .end annotation
.end method

.method public abstract L(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v6/game/cloudArchive/releasedList"
    .end annotation
.end method

.method public abstract M(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/mgps/activity/vipzone/bean/SpecialgamelistRequestBean;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v5/special_game_board/ranking_game_list"
    .end annotation
.end method

.method public abstract N(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/mgps/activity/vipzone/bean/VipCenterRequestBean;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/activity/vipzone/bean/SpecialZoneResultbean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v5/special_game_board/index"
    .end annotation
.end method

.method public abstract O(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v6/game/cloudArchive/downloadedList"
    .end annotation
.end method

.method public abstract P(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveArgs;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v6/game/cloudArchive/delReleased"
    .end annotation
.end method

.method public abstract Q(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/kotlin/ui/coupon/ServerListData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v6/game/openserver/list"
    .end annotation
.end method

.method public abstract R(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveArgs;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v6/game/cloudArchive/delComment"
    .end annotation
.end method

.method public abstract S(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/mgps/dto/RequestOnlineCouponArgs;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/dto/SimulatorFastEntryBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v7/simulatorIndex/getInfo"
    .end annotation
.end method

.method public abstract T(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/kotlin/ui/findgame/data/CategoryRequest;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/kotlin/ui/findgame/data/CategoryListMain;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v6/game/game_type_game_list"
    .end annotation
.end method

.method public abstract U(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/activity/mygame/data/DataGameListBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v4/game/downloadRecommend"
    .end annotation
.end method

.method public abstract V(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/kotlin/ui/userrecom/UserRecomRequestArgs;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v7/home/game/recommend"
    .end annotation
.end method

.method public abstract W(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/mgps/dto/RequestOnlineCouponArgs;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/dto/PapaHomeCheckNewDataBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v7/home/recommend/set_state"
    .end annotation
.end method

.method public abstract X(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/dto/GamelistRankingmainbean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v6/ranking/game_favorites_rank"
    .end annotation
.end method

.method public abstract Y(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/mgps/dto/RequestKeywordArgs;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/dto/SearchGameListBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v5/search/collectedGameSearchList"
    .end annotation
.end method

.method public abstract Z(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/dto/FirstScreenAdDtoData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v6/app/firstScreenAdvert"
    .end annotation
.end method

.method public abstract a(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v7/game/feedback_user_custom_tag"
    .end annotation
.end method

.method public abstract a0(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveArgs;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v6/game/cloudArchive/delDownloaded"
    .end annotation
.end method

.method public abstract b(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BbsTagListBean;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v7/bbs/tag/list"
    .end annotation
.end method

.method public abstract b0(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/activity/mygame/data/DataGameListBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v4/game/gameDownloadDetail"
    .end annotation
.end method

.method public abstract c(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/dto/GameBbsPostListBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v7/bbs/post/recommend"
    .end annotation
.end method

.method public abstract c0(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommonGameInfoBean;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v7/game/downloadRecommend"
    .end annotation
.end method

.method public abstract d(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v7/game/game_tag_game_list"
    .end annotation
.end method

.method public abstract d0(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/papa91/common/RealNameCheckInfo;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v9/realName/auth/check"
    .end annotation
.end method

.method public abstract e(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v7/configure/video_ad_watch_log"
    .end annotation
.end method

.method public abstract e0(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveArgs;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v6/game/cloudArchive/reportDownload"
    .end annotation
.end method

.method public abstract f(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/dto/SearchGameListBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v7/search/gameSearchList"
    .end annotation
.end method

.method public abstract f0(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/dto/RankingMainDataBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v7/ranking/game_rank"
    .end annotation
.end method

.method public abstract g(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/kotlin/ui/coupon/NoticeListData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v7/game_detail/activity/list"
    .end annotation
.end method

.method public abstract g0(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v6/game/cloudArchive/communityList"
    .end annotation
.end method

.method public abstract h(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BbsListBean;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v7/bbs/post/list"
    .end annotation
.end method

.method public abstract h0(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/mgps/dto/RequestUserCenterArgs;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/dto/UserCenterBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v5/personal_center/index"
    .end annotation
.end method

.method public abstract i(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/dto/GamedetialModleFourBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v7/game/gameInfo"
    .end annotation
.end method

.method public abstract i0(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/mgps/activity/vipzone/bean/VipCenterRequestBean;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/activity/vipzone/bean/VipCenterResultData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v5/special_game_board/every_day_luck_draw"
    .end annotation
.end method

.method public abstract j(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/dto/QueryDownloadInfoResponseData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v4/game/downloadInfo"
    .end annotation
.end method

.method public abstract j0(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/kotlin/ui/coupon/NoticeListData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v6/game/activity/list"
    .end annotation
.end method

.method public abstract k(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v7/game_detail/similar_rec/list"
    .end annotation
.end method

.method public abstract k0(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/activity/vipzone/bean/PrizeBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v5/special_game_board/every_day_luck_draw_result"
    .end annotation
.end method

.method public abstract l(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v7/bbs/resource/dispraise"
    .end annotation
.end method

.method public abstract l0(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/activity/mygame/data/DataGameListBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v4/game/gameDownloadDetail"
    .end annotation
.end method

.method public abstract m(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/dto/CheckGameVersionResponseData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v7/game/version"
    .end annotation
.end method

.method public abstract m0(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/activity/vipzone/bean/LuckHistoryResult;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v5/special_game_board/every_day_luck_draw_record"
    .end annotation
.end method

.method public abstract n(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v7/game/delete_user_custom_tag"
    .end annotation
.end method

.method public abstract n0(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/activity/mygame/data/DataGameListBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v4/game/myGameRecommend"
    .end annotation
.end method

.method public abstract o(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v7/game/search_user_custom_game_tag"
    .end annotation
.end method

.method public abstract o0(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/mgps/activity/vipzone/bean/LuckAddressrequest;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/activity/vipzone/bean/PrizeBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v5/special_game_board/every_day_luck_draw_address"
    .end annotation
.end method

.method public abstract p(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/dto/ModGameDetailBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v6/game/cloudArchive/standAloneStartUpPanel"
    .end annotation
.end method

.method public abstract p0(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/kotlin/ui/coupon/CouponRequest;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/kotlin/ui/coupon/CouponListMainData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v6/game/coupon/list"
    .end annotation
.end method

.method public abstract q(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/dto/VideoAdCfgBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v7/configure/video_ad_cfg"
    .end annotation
.end method

.method public abstract q0(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveArgs;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v6/game/cloudArchive/updateReleased"
    .end annotation
.end method

.method public abstract r(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommonGameInfoBean;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v7/mini_game/list"
    .end annotation
.end method

.method public abstract r0(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/mgps/dto/RequestOnlineCouponArgs;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/dto/PapaHomeCheckNewDataBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v7/home/recommend/state"
    .end annotation
.end method

.method public abstract s(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BbsCommentListBean;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v7/bbs/post/comment/list"
    .end annotation
.end method

.method public abstract s0(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/mgps/dto/RequestOnlineCouponArgs;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/dto/OnlineCouponConfigBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v7/non_online/user/transform"
    .end annotation
.end method

.method public abstract t(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v7/game_detail/ranking/list"
    .end annotation
.end method

.method public abstract t0(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/dto/PAPAHomeBeanV6;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v6_4/home/home_page"
    .end annotation
.end method

.method public abstract u(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/dto/ListUserCustomGameTagBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v7/game/add_user_custom_game_tag"
    .end annotation
.end method

.method public abstract u0(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v6/game/cloudArchive/communityList/v2"
    .end annotation
.end method

.method public abstract v(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BbsCommentListBean;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v7/bbs/post/reply/detail_list"
    .end annotation
.end method

.method public abstract v0(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/kotlin/ui/findgame/data/FindChoiceResultData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v6/home/game_choice_ness"
    .end annotation
.end method

.method public abstract w(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/dto/MiniGameSdkDtoResponseResponseData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v7/minigame/sdk_ad_cfg"
    .end annotation
.end method

.method public abstract w0(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/dto/RankingMainDataBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v6_4/ranking/game_rank"
    .end annotation
.end method

.method public abstract x(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/dto/ListUserCustomGameTagBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v7/game/list_user_custom_game_tag"
    .end annotation
.end method

.method public abstract x0(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/mgps/dto/RequestModGameRecommendAdArgs;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/dto/ModGameRecommendAdBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v7/game/stand_alone/startUpPanelRecAd"
    .end annotation
.end method

.method public abstract y(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v7/bbs/resource/praise"
    .end annotation
.end method

.method public abstract y0(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/mgps/dto/RequestUidtagidTagdes;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/activity/search/SearchIndexData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v6/search/gameSearchIndex"
    .end annotation
.end method

.method public abstract z(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/dto/ModFeedbackBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v5/game/mod_game_feedback"
    .end annotation
.end method

.method public abstract z0(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/mgps/dto/RequestKeywordArgs;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/activity/search/SearchAutoData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v5/search/gameSearchAuto"
    .end annotation
.end method
