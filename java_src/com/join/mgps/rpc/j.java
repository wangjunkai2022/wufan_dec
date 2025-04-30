package com.join.mgps.rpc;

import com.join.kotlin.ui.coupon.NoticeListData;
import com.join.kotlin.ui.coupon.ServerListData;
import com.join.mgps.activity.mygame.data.DataGameListBean;
import com.join.mgps.dto.BbsCommentListBean;
import com.join.mgps.dto.BbsDetailBean;
import com.join.mgps.dto.BbsListBean;
import com.join.mgps.dto.BbsTagListBean;
import com.join.mgps.dto.CheckGameVersionRequestArgs;
import com.join.mgps.dto.CheckGameVersionResponseData;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.GameBbsPostListBean;
import com.join.mgps.dto.GameMainV4DataBean;
import com.join.mgps.dto.GamedetialModleFourBean;
import com.join.mgps.dto.ListUserCustomGameTagBean;
import com.join.mgps.dto.MiniGameSdkDtoRequestArgs;
import com.join.mgps.dto.MiniGameSdkDtoResponseResponseData;
import com.join.mgps.dto.ModFeedbackBean;
import com.join.mgps.dto.ModGameDetailBean;
import com.join.mgps.dto.QueryDownloadInfoRequestArgs;
import com.join.mgps.dto.QueryDownloadInfoResponseData;
import com.join.mgps.dto.RequestAddUserCustomGameTag;
import com.join.mgps.dto.RequestBbsCommentListArgs;
import com.join.mgps.dto.RequestBbsDetailArgs;
import com.join.mgps.dto.RequestBbsDispraiseArgs;
import com.join.mgps.dto.RequestBbsListArgs;
import com.join.mgps.dto.RequestBbsPraiseArgs;
import com.join.mgps.dto.RequestBbsRecommendArgs;
import com.join.mgps.dto.RequestBbsReplyArgs;
import com.join.mgps.dto.RequestBbsTagListArgs;
import com.join.mgps.dto.RequestDeleteUserCustomGameTag;
import com.join.mgps.dto.RequestDeleteUserCustomTag;
import com.join.mgps.dto.RequestFeedbackUserCustomTag;
import com.join.mgps.dto.RequestGameIdArgs;
import com.join.mgps.dto.RequestListUserCustomGameTagArgs;
import com.join.mgps.dto.RequestMiniGameArgs;
import com.join.mgps.dto.RequestModFeedbackArgs;
import com.join.mgps.dto.RequestModGameArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.RequestRankingListArgs;
import com.join.mgps.dto.RequestSearchGameArgs;
import com.join.mgps.dto.RequestSearchUserCustomGameTag;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.dto.SearchGameListBean;
import com.join.mgps.dto.SimulatorExitPlayRequestArgs;
import com.join.mgps.dto.SimulatorExitPlayResponseData;
import com.join.mgps.dto.VideoAdCfgBean;
import com.join.mgps.dto.VideoAdCfgRequestArgs;
import com.join.mgps.dto.VideoAdWatchLogRequest;
import java.util.List;
import retrofit2.http.Body;
import retrofit2.http.POST;
/* compiled from: RpcGameClient.java */
/* loaded from: classes4.dex */
public interface j {
    @POST("/v7/bbs/post/detail")
    ResponseModel<BbsDetailBean> A(@Body RequestModel<RequestBbsDetailArgs> requestModel);

    @POST("/v7/game/delete_user_custom_game_tag")
    ResponseModel B(@Body RequestModel<RequestDeleteUserCustomGameTag> requestModel);

    @POST("/v7/bbs/post/reply")
    ResponseModel<Boolean> C(@Body RequestModel<RequestBbsReplyArgs> requestModel);

    @POST("/v5/game/gameSurface")
    ResponseModel<GameMainV4DataBean> D(@Body RequestModel<RequestGameIdArgs> requestModel);

    @POST("/v5/game/mod_question_collect")
    ResponseModel<ModFeedbackBean> E(@Body RequestModel<RequestModFeedbackArgs> requestModel);

    @POST("/v7/game/openserver/list")
    ResponseModel<ServerListData> F(@Body RequestModel<RequestGameIdArgs> requestModel);

    @POST("/v5/game/simulatorExitPlayPanel")
    ResponseModel<SimulatorExitPlayResponseData> G(@Body RequestModel<SimulatorExitPlayRequestArgs> requestModel);

    @POST("/v7/bbs/post/reply/list")
    ResponseModel<List<BbsCommentListBean>> H(@Body RequestModel<RequestBbsCommentListArgs> requestModel);

    @POST("/v4/game/gameDownloadDetail")
    void I(@Body RequestModel<QueryDownloadInfoRequestArgs> requestModel, l1.h<ResponseModel<DataGameListBean>> hVar);

    @POST("/v7/game/feedback_user_custom_tag")
    ResponseModel a(@Body RequestModel<RequestFeedbackUserCustomTag> requestModel);

    @POST("/v7/bbs/tag/list")
    ResponseModel<List<BbsTagListBean>> b(@Body RequestModel<RequestBbsTagListArgs> requestModel);

    @POST("/v7/bbs/post/recommend")
    ResponseModel<GameBbsPostListBean> c(@Body RequestModel<RequestBbsRecommendArgs> requestModel);

    @POST(g.K1)
    ResponseModel<List<CollectionBeanSub>> d(@Body RequestModel<RequestGameIdArgs> requestModel);

    @POST(g.X1)
    ResponseModel<Boolean> e(@Body RequestModel<VideoAdWatchLogRequest> requestModel);

    @POST("/v7/search/gameSearchList")
    ResponseModel<SearchGameListBean> f(@Body RequestModel<RequestSearchGameArgs> requestModel);

    @POST("/v7/game_detail/activity/list")
    ResponseModel<NoticeListData> g(@Body RequestModel<RequestGameIdArgs> requestModel);

    @POST("/v7/bbs/post/list")
    ResponseModel<List<BbsListBean>> h(@Body RequestModel<RequestBbsListArgs> requestModel);

    @POST("/v7/game/gameInfo")
    ResponseModel<GamedetialModleFourBean> i(@Body RequestModel<RequestGameIdArgs> requestModel);

    @POST("/v4/game/downloadInfo")
    ResponseModel<QueryDownloadInfoResponseData> j(@Body RequestModel<QueryDownloadInfoRequestArgs> requestModel);

    @POST("/v7/game_detail/similar_rec/list")
    ResponseModel<List<CollectionBeanSub>> k(@Body RequestModel<RequestGameIdArgs> requestModel);

    @POST("/v7/bbs/resource/dispraise")
    ResponseModel<Boolean> l(@Body RequestModel<RequestBbsDispraiseArgs> requestModel);

    @POST("/v7/game/version")
    ResponseModel<CheckGameVersionResponseData> m(@Body RequestModel<CheckGameVersionRequestArgs> requestModel);

    @POST("/v7/game/delete_user_custom_tag")
    ResponseModel n(@Body RequestModel<RequestDeleteUserCustomTag> requestModel);

    @POST("/v7/game/search_user_custom_game_tag")
    ResponseModel<List<String>> o(@Body RequestModel<RequestSearchUserCustomGameTag> requestModel);

    @POST("/v5/game/standAloneStartUpPanel")
    ResponseModel<ModGameDetailBean> p(@Body RequestModel<RequestModGameArgs> requestModel);

    @POST(g.W1)
    ResponseModel<VideoAdCfgBean> q(@Body RequestModel<VideoAdCfgRequestArgs> requestModel);

    @POST("/v7/mini_game/list")
    ResponseModel<List<CommonGameInfoBean>> r(@Body RequestModel<RequestMiniGameArgs> requestModel);

    @POST("/v7/bbs/post/comment/list")
    ResponseModel<List<BbsCommentListBean>> s(@Body RequestModel<RequestBbsCommentListArgs> requestModel);

    @POST("/v7/game_detail/ranking/list")
    ResponseModel<List<CollectionBeanSub>> t(@Body RequestModel<RequestRankingListArgs> requestModel);

    @POST("/v7/game/add_user_custom_game_tag")
    ResponseModel<ListUserCustomGameTagBean> u(@Body RequestModel<RequestAddUserCustomGameTag> requestModel);

    @POST("/v7/bbs/post/reply/detail_list")
    ResponseModel<List<BbsCommentListBean>> v(@Body RequestModel<RequestBbsCommentListArgs> requestModel);

    @POST("/v7/minigame/sdk_ad_cfg")
    ResponseModel<MiniGameSdkDtoResponseResponseData> w(@Body RequestModel<MiniGameSdkDtoRequestArgs> requestModel);

    @POST("/v7/game/list_user_custom_game_tag")
    ResponseModel<ListUserCustomGameTagBean> x(@Body RequestModel<RequestListUserCustomGameTagArgs> requestModel);

    @POST("/v7/bbs/resource/praise")
    ResponseModel<Boolean> y(@Body RequestModel<RequestBbsPraiseArgs> requestModel);

    @POST("/v5/game/mod_game_feedback")
    ResponseModel<ModFeedbackBean> z(@Body RequestModel<RequestModFeedbackArgs> requestModel);
}
