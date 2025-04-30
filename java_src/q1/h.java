package q1;

import com.join.kotlin.ui.cloudarchive.data.ArchiveArgs;
import com.join.kotlin.ui.cloudarchive.data.ArchiveData;
import com.join.kotlin.ui.coupon.CouponListMainData;
import com.join.kotlin.ui.coupon.CouponRequest;
import com.join.kotlin.ui.coupon.NoticeListData;
import com.join.kotlin.ui.coupon.ServerListData;
import com.join.kotlin.ui.findgame.data.CategoryListMain;
import com.join.kotlin.ui.findgame.data.CategoryRequest;
import com.join.kotlin.ui.findgame.data.EverdayNewResultData;
import com.join.kotlin.ui.findgame.data.FindChoiceResultData;
import com.join.kotlin.ui.userrecom.UserRecomRequestArgs;
import com.join.mgps.activity.mygame.data.DataGameListBean;
import com.join.mgps.activity.search.SearchAutoData;
import com.join.mgps.activity.search.SearchIndexData;
import com.join.mgps.activity.vipzone.bean.LuckAddressrequest;
import com.join.mgps.activity.vipzone.bean.LuckHistoryResult;
import com.join.mgps.activity.vipzone.bean.LuckHistoryrequest;
import com.join.mgps.activity.vipzone.bean.PrizeBean;
import com.join.mgps.activity.vipzone.bean.SpecialZoneResultbean;
import com.join.mgps.activity.vipzone.bean.SpecialgamelistRequestBean;
import com.join.mgps.activity.vipzone.bean.VipCenterRequestBean;
import com.join.mgps.activity.vipzone.bean.VipCenterResultData;
import com.join.mgps.dto.BaseRequestArgs;
import com.join.mgps.dto.BbsCommentListBean;
import com.join.mgps.dto.BbsDetailBean;
import com.join.mgps.dto.BbsListBean;
import com.join.mgps.dto.BbsTagListBean;
import com.join.mgps.dto.CheckGameVersionRequestArgs;
import com.join.mgps.dto.CheckGameVersionResponseData;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.ConfigData;
import com.join.mgps.dto.FirstScreenAdDtoData;
import com.join.mgps.dto.GameBbsPostListBean;
import com.join.mgps.dto.GameMD5ResultInfo;
import com.join.mgps.dto.GameMainV4DataBean;
import com.join.mgps.dto.GameMd5Data;
import com.join.mgps.dto.GamedetialModleFourBean;
import com.join.mgps.dto.GamelistRankingmainbean;
import com.join.mgps.dto.ListUserCustomGameTagBean;
import com.join.mgps.dto.MiniGameSdkDtoRequestArgs;
import com.join.mgps.dto.MiniGameSdkDtoResponseResponseData;
import com.join.mgps.dto.ModFeedbackBean;
import com.join.mgps.dto.ModGameArchiveTagBean;
import com.join.mgps.dto.ModGameDetailBean;
import com.join.mgps.dto.ModGameRecommendAdBean;
import com.join.mgps.dto.OnlineCouponConfigBean;
import com.join.mgps.dto.PAPAHomeBeanV6;
import com.join.mgps.dto.PAPAHomeBeanV7;
import com.join.mgps.dto.PapaHomeCheckNewDataBean;
import com.join.mgps.dto.QueryDownloadInfoRequestArgs;
import com.join.mgps.dto.QueryDownloadInfoResponseData;
import com.join.mgps.dto.RankingMainDataBean;
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
import com.join.mgps.dto.RequestKeywordArgs;
import com.join.mgps.dto.RequestListUserCustomGameTagArgs;
import com.join.mgps.dto.RequestMiniGameArgs;
import com.join.mgps.dto.RequestModFeedbackArgs;
import com.join.mgps.dto.RequestModGameArgs;
import com.join.mgps.dto.RequestModGameRecommendAdArgs;
import com.join.mgps.dto.RequestModGameTagArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.RequestOnlineCouponArgs;
import com.join.mgps.dto.RequestRankingListArgs;
import com.join.mgps.dto.RequestSearchGameArgs;
import com.join.mgps.dto.RequestSearchUserCustomGameTag;
import com.join.mgps.dto.RequestUidtagidTagdes;
import com.join.mgps.dto.RequestUserCenterArgs;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.dto.SearchGameListBean;
import com.join.mgps.dto.SimulatorExitPlayRequestArgs;
import com.join.mgps.dto.SimulatorExitPlayResponseData;
import com.join.mgps.dto.SimulatorFastEntryBean;
import com.join.mgps.dto.UserCenterBean;
import com.join.mgps.dto.VideoAdCfgBean;
import com.join.mgps.dto.VideoAdCfgRequestArgs;
import com.join.mgps.dto.VideoAdWatchLogRequest;
import com.papa91.common.RealNameCheckInfo;
import java.util.List;
import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.POST;
/* compiled from: IRpcGameClient.java */
/* loaded from: classes4.dex */
public interface h {
    @POST("/v7/bbs/post/detail")
    Call<ResponseModel<BbsDetailBean>> A(@Body RequestModel<RequestBbsDetailArgs> requestModel);

    @POST("/v6/game/old/gameInfo")
    Call<ResponseModel<CollectionBeanSub>> A0(@Body RequestModel<RequestGameIdArgs> requestModel);

    @POST("/v7/game/delete_user_custom_game_tag")
    Call<ResponseModel> B(@Body RequestModel<RequestDeleteUserCustomGameTag> requestModel);

    @POST("/v6/home/the_new")
    Call<ResponseModel<EverdayNewResultData>> B0(@Body RequestModel<LuckHistoryrequest> requestModel);

    @POST("/v7/bbs/post/reply")
    Call<ResponseModel<Boolean>> C(@Body RequestModel<RequestBbsReplyArgs> requestModel);

    @POST("/v7/home/home_page")
    Call<ResponseModel<PAPAHomeBeanV7>> C0(@Body RequestModel<LuckHistoryrequest> requestModel);

    @POST("/v5/game/gameSurface")
    Call<ResponseModel<GameMainV4DataBean>> D(@Body RequestModel<RequestGameIdArgs> requestModel);

    @POST("/v6/game/game_type")
    Call<ResponseModel<FindChoiceResultData>> D0(@Body RequestModel<LuckHistoryrequest> requestModel);

    @POST("/v5/game/mod_question_collect")
    Call<ResponseModel<ModFeedbackBean>> E(@Body RequestModel<RequestModFeedbackArgs> requestModel);

    @POST("/v6/game/take/coupon")
    Call<ResponseModel> E0(@Body RequestModel<CouponRequest> requestModel);

    @POST("/v7/game/openserver/list")
    Call<ResponseModel<ServerListData>> F(@Body RequestModel<RequestGameIdArgs> requestModel);

    @POST("/v6/game/old/gameInfo")
    Call<ResponseModel<GamedetialModleFourBean>> F0(@Body RequestModel<RequestGameIdArgs> requestModel);

    @POST("/v5/game/simulatorExitPlayPanel")
    Call<ResponseModel<SimulatorExitPlayResponseData>> G(@Body RequestModel<SimulatorExitPlayRequestArgs> requestModel);

    @POST("/v4/game/fileMd5State")
    Call<ResponseModel<GameMD5ResultInfo>> G0(@Body RequestModel<GameMd5Data> requestModel);

    @POST("/v7/bbs/post/reply/list")
    Call<ResponseModel<List<BbsCommentListBean>>> H(@Body RequestModel<RequestBbsCommentListArgs> requestModel);

    @POST("/v6/configure/cfg_info")
    Call<ResponseModel<ConfigData>> I(@Body RequestModel<BaseRequestArgs> requestModel);

    @POST("/v6/game/cloudArchive/comment")
    Call<ResponseModel> J(@Body RequestModel<ArchiveArgs> requestModel);

    @POST("/v6/game/cloudArchive/tagList")
    Call<ResponseModel<List<ModGameArchiveTagBean>>> K(@Body RequestModel<RequestModGameTagArgs> requestModel);

    @POST("/v6/game/cloudArchive/releasedList")
    Call<ResponseModel<List<ArchiveData>>> L(@Body RequestModel<RequestGameIdArgs> requestModel);

    @POST("/v5/special_game_board/ranking_game_list")
    Call<ResponseModel<List<CollectionBeanSub>>> M(@Body RequestModel<SpecialgamelistRequestBean> requestModel);

    @POST("/v5/special_game_board/index")
    Call<ResponseModel<SpecialZoneResultbean>> N(@Body RequestModel<VipCenterRequestBean> requestModel);

    @POST("/v6/game/cloudArchive/downloadedList")
    Call<ResponseModel<List<ArchiveData>>> O(@Body RequestModel<RequestGameIdArgs> requestModel);

    @POST("/v6/game/cloudArchive/delReleased")
    Call<ResponseModel> P(@Body RequestModel<ArchiveArgs> requestModel);

    @POST("/v6/game/openserver/list")
    Call<ResponseModel<ServerListData>> Q(@Body RequestModel<RequestGameIdArgs> requestModel);

    @POST("/v6/game/cloudArchive/delComment")
    Call<ResponseModel> R(@Body RequestModel<ArchiveArgs> requestModel);

    @POST("/v7/simulatorIndex/getInfo")
    Call<ResponseModel<SimulatorFastEntryBean>> S(@Body RequestModel<RequestOnlineCouponArgs> requestModel);

    @POST("/v6/game/game_type_game_list")
    Call<ResponseModel<CategoryListMain>> T(@Body RequestModel<CategoryRequest> requestModel);

    @POST("/v4/game/downloadRecommend")
    Call<ResponseModel<DataGameListBean>> U(@Body RequestModel<QueryDownloadInfoRequestArgs> requestModel);

    @POST("/v7/home/game/recommend")
    Call<ResponseModel<List<CollectionBeanSub>>> V(@Body RequestModel<UserRecomRequestArgs> requestModel);

    @POST("/v7/home/recommend/set_state")
    Call<ResponseModel<PapaHomeCheckNewDataBean>> W(@Body RequestModel<RequestOnlineCouponArgs> requestModel);

    @POST("/v6/ranking/game_favorites_rank")
    Call<ResponseModel<GamelistRankingmainbean>> X(@Body RequestModel<LuckHistoryrequest> requestModel);

    @POST("/v5/search/collectedGameSearchList")
    Call<ResponseModel<SearchGameListBean>> Y(@Body RequestModel<RequestKeywordArgs> requestModel);

    @POST("/v6/app/firstScreenAdvert")
    Call<ResponseModel<FirstScreenAdDtoData>> Z(@Body RequestModel<RequestGameIdArgs> requestModel);

    @POST("/v7/game/feedback_user_custom_tag")
    Call<ResponseModel> a(@Body RequestModel<RequestFeedbackUserCustomTag> requestModel);

    @POST("/v6/game/cloudArchive/delDownloaded")
    Call<ResponseModel> a0(@Body RequestModel<ArchiveArgs> requestModel);

    @POST("/v7/bbs/tag/list")
    Call<ResponseModel<List<BbsTagListBean>>> b(@Body RequestModel<RequestBbsTagListArgs> requestModel);

    @POST("/v4/game/gameDownloadDetail")
    Call<ResponseModel<DataGameListBean>> b0(@Body RequestModel<QueryDownloadInfoRequestArgs> requestModel);

    @POST("/v7/bbs/post/recommend")
    Call<ResponseModel<GameBbsPostListBean>> c(@Body RequestModel<RequestBbsRecommendArgs> requestModel);

    @POST("/v7/game/downloadRecommend")
    Call<ResponseModel<List<CommonGameInfoBean>>> c0(@Body RequestModel<QueryDownloadInfoRequestArgs> requestModel);

    @POST(com.join.mgps.rpc.g.K1)
    Call<ResponseModel<List<CollectionBeanSub>>> d(@Body RequestModel<RequestGameIdArgs> requestModel);

    @POST("/v9/realName/auth/check")
    Call<ResponseModel<RealNameCheckInfo>> d0(@Body RequestModel<LuckHistoryrequest> requestModel);

    @POST(com.join.mgps.rpc.g.X1)
    Call<ResponseModel<Boolean>> e(@Body RequestModel<VideoAdWatchLogRequest> requestModel);

    @POST("/v6/game/cloudArchive/reportDownload")
    Call<ResponseModel> e0(@Body RequestModel<ArchiveArgs> requestModel);

    @POST("/v7/search/gameSearchList")
    Call<ResponseModel<SearchGameListBean>> f(@Body RequestModel<RequestSearchGameArgs> requestModel);

    @POST("/v7/ranking/game_rank")
    Call<ResponseModel<RankingMainDataBean>> f0(@Body RequestModel<LuckHistoryrequest> requestModel);

    @POST("/v7/game_detail/activity/list")
    Call<ResponseModel<NoticeListData>> g(@Body RequestModel<RequestGameIdArgs> requestModel);

    @POST("/v6/game/cloudArchive/communityList")
    Call<ResponseModel<List<ArchiveData>>> g0(@Body RequestModel<RequestGameIdArgs> requestModel);

    @POST("/v7/bbs/post/list")
    Call<ResponseModel<List<BbsListBean>>> h(@Body RequestModel<RequestBbsListArgs> requestModel);

    @POST("/v5/personal_center/index")
    Call<ResponseModel<UserCenterBean>> h0(@Body RequestModel<RequestUserCenterArgs> requestModel);

    @POST("/v7/game/gameInfo")
    Call<ResponseModel<GamedetialModleFourBean>> i(@Body RequestModel<RequestGameIdArgs> requestModel);

    @POST("/v5/special_game_board/every_day_luck_draw")
    Call<ResponseModel<VipCenterResultData>> i0(@Body RequestModel<VipCenterRequestBean> requestModel);

    @POST("/v4/game/downloadInfo")
    Call<ResponseModel<QueryDownloadInfoResponseData>> j(@Body RequestModel<QueryDownloadInfoRequestArgs> requestModel);

    @POST("/v6/game/activity/list")
    Call<ResponseModel<NoticeListData>> j0(@Body RequestModel<RequestGameIdArgs> requestModel);

    @POST("/v7/game_detail/similar_rec/list")
    Call<ResponseModel<List<CollectionBeanSub>>> k(@Body RequestModel<RequestGameIdArgs> requestModel);

    @POST("/v5/special_game_board/every_day_luck_draw_result")
    Call<ResponseModel<PrizeBean>> k0(@Body RequestModel<LuckHistoryrequest> requestModel);

    @POST("/v7/bbs/resource/dispraise")
    Call<ResponseModel<Boolean>> l(@Body RequestModel<RequestBbsDispraiseArgs> requestModel);

    @POST("/v4/game/gameDownloadDetail")
    Call<ResponseModel<DataGameListBean>> l0(@Body RequestModel<QueryDownloadInfoRequestArgs> requestModel);

    @POST("/v7/game/version")
    Call<ResponseModel<CheckGameVersionResponseData>> m(@Body RequestModel<CheckGameVersionRequestArgs> requestModel);

    @POST("/v5/special_game_board/every_day_luck_draw_record")
    Call<ResponseModel<LuckHistoryResult>> m0(@Body RequestModel<LuckHistoryrequest> requestModel);

    @POST("/v7/game/delete_user_custom_tag")
    Call<ResponseModel> n(@Body RequestModel<RequestDeleteUserCustomTag> requestModel);

    @POST("/v4/game/myGameRecommend")
    Call<ResponseModel<DataGameListBean>> n0(@Body RequestModel<QueryDownloadInfoRequestArgs> requestModel);

    @POST("/v7/game/search_user_custom_game_tag")
    Call<ResponseModel<List<String>>> o(@Body RequestModel<RequestSearchUserCustomGameTag> requestModel);

    @POST("/v5/special_game_board/every_day_luck_draw_address")
    Call<ResponseModel<PrizeBean>> o0(@Body RequestModel<LuckAddressrequest> requestModel);

    @POST("/v6/game/cloudArchive/standAloneStartUpPanel")
    Call<ResponseModel<ModGameDetailBean>> p(@Body RequestModel<RequestModGameArgs> requestModel);

    @POST("/v6/game/coupon/list")
    Call<ResponseModel<CouponListMainData>> p0(@Body RequestModel<CouponRequest> requestModel);

    @POST(com.join.mgps.rpc.g.W1)
    Call<ResponseModel<VideoAdCfgBean>> q(@Body RequestModel<VideoAdCfgRequestArgs> requestModel);

    @POST("/v6/game/cloudArchive/updateReleased")
    Call<ResponseModel> q0(@Body RequestModel<ArchiveArgs> requestModel);

    @POST("/v7/mini_game/list")
    Call<ResponseModel<List<CommonGameInfoBean>>> r(@Body RequestModel<RequestMiniGameArgs> requestModel);

    @POST("/v7/home/recommend/state")
    Call<ResponseModel<PapaHomeCheckNewDataBean>> r0(@Body RequestModel<RequestOnlineCouponArgs> requestModel);

    @POST("/v7/bbs/post/comment/list")
    Call<ResponseModel<List<BbsCommentListBean>>> s(@Body RequestModel<RequestBbsCommentListArgs> requestModel);

    @POST("/v7/non_online/user/transform")
    Call<ResponseModel<OnlineCouponConfigBean>> s0(@Body RequestModel<RequestOnlineCouponArgs> requestModel);

    @POST("/v7/game_detail/ranking/list")
    Call<ResponseModel<List<CollectionBeanSub>>> t(@Body RequestModel<RequestRankingListArgs> requestModel);

    @POST(com.join.mgps.rpc.g.Q)
    Call<ResponseModel<PAPAHomeBeanV6>> t0(@Body RequestModel<LuckHistoryrequest> requestModel);

    @POST("/v7/game/add_user_custom_game_tag")
    Call<ResponseModel<ListUserCustomGameTagBean>> u(@Body RequestModel<RequestAddUserCustomGameTag> requestModel);

    @POST("/v6/game/cloudArchive/communityList/v2")
    Call<ResponseModel<List<ArchiveData>>> u0(@Body RequestModel<RequestGameIdArgs> requestModel);

    @POST("/v7/bbs/post/reply/detail_list")
    Call<ResponseModel<List<BbsCommentListBean>>> v(@Body RequestModel<RequestBbsCommentListArgs> requestModel);

    @POST("/v6/home/game_choice_ness")
    Call<ResponseModel<FindChoiceResultData>> v0(@Body RequestModel<LuckHistoryrequest> requestModel);

    @POST("/v7/minigame/sdk_ad_cfg")
    Call<ResponseModel<MiniGameSdkDtoResponseResponseData>> w(@Body RequestModel<MiniGameSdkDtoRequestArgs> requestModel);

    @POST("/v6_4/ranking/game_rank")
    Call<ResponseModel<RankingMainDataBean>> w0(@Body RequestModel<LuckHistoryrequest> requestModel);

    @POST("/v7/game/list_user_custom_game_tag")
    Call<ResponseModel<ListUserCustomGameTagBean>> x(@Body RequestModel<RequestListUserCustomGameTagArgs> requestModel);

    @POST("/v7/game/stand_alone/startUpPanelRecAd")
    Call<ResponseModel<ModGameRecommendAdBean>> x0(@Body RequestModel<RequestModGameRecommendAdArgs> requestModel);

    @POST("/v7/bbs/resource/praise")
    Call<ResponseModel<Boolean>> y(@Body RequestModel<RequestBbsPraiseArgs> requestModel);

    @POST("/v6/search/gameSearchIndex")
    Call<ResponseModel<SearchIndexData>> y0(@Body RequestModel<RequestUidtagidTagdes> requestModel);

    @POST("/v5/game/mod_game_feedback")
    Call<ResponseModel<ModFeedbackBean>> z(@Body RequestModel<RequestModFeedbackArgs> requestModel);

    @POST("/v5/search/gameSearchAuto")
    Call<ResponseModel<SearchAutoData>> z0(@Body RequestModel<RequestKeywordArgs> requestModel);
}
