package q1;

import com.join.mgps.activity.login.LoginCfgsBean;
import com.join.mgps.activity.recomend.RecomentBean1;
import com.join.mgps.activity.screenshot.ScreenShortListItemBean;
import com.join.mgps.activity.screenshot.ScreenshortTabBean;
import com.join.mgps.dto.APKVersionMainBean;
import com.join.mgps.dto.APKVersionRequestargs;
import com.join.mgps.dto.AllAppId;
import com.join.mgps.dto.ApkVersionbean;
import com.join.mgps.dto.AppBean;
import com.join.mgps.dto.AppDataBackupBean;
import com.join.mgps.dto.ArenaAdData;
import com.join.mgps.dto.ArenaGameRoomListConfig;
import com.join.mgps.dto.BaiduAdDataMain;
import com.join.mgps.dto.BattlehallDatabean;
import com.join.mgps.dto.BootPageData;
import com.join.mgps.dto.BootPageRequestArgs;
import com.join.mgps.dto.CategoryBean;
import com.join.mgps.dto.CheckAppVersionBean;
import com.join.mgps.dto.ClassfyTypeBean;
import com.join.mgps.dto.ClassifyBean;
import com.join.mgps.dto.ClassifyGameBean;
import com.join.mgps.dto.CollectionBean;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CollectionCommentRequest;
import com.join.mgps.dto.CollectionDataBean;
import com.join.mgps.dto.CollectionModuleBean;
import com.join.mgps.dto.CommentSendMessageResultBean;
import com.join.mgps.dto.CommitContextDataBean;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.CommonRequestBeanInterface;
import com.join.mgps.dto.DetailResultBean;
import com.join.mgps.dto.DetailResultBeanV3;
import com.join.mgps.dto.DownDeductCoinResponse;
import com.join.mgps.dto.EverydayNewGameResponse;
import com.join.mgps.dto.ForumBannerBean;
import com.join.mgps.dto.GameDiscoverMainBean;
import com.join.mgps.dto.GameDownInfo;
import com.join.mgps.dto.GameFactoryListBean;
import com.join.mgps.dto.GameHeadAd;
import com.join.mgps.dto.GameInformationBean;
import com.join.mgps.dto.GameInformationCommentRequest;
import com.join.mgps.dto.GameListAndHeadAdAndCollectionInfoBean;
import com.join.mgps.dto.GameListAndHeadAdBean;
import com.join.mgps.dto.GameMainDataBean;
import com.join.mgps.dto.GameMainSimulatorResponse;
import com.join.mgps.dto.GameMainV3DataBean;
import com.join.mgps.dto.GameOLDataBean;
import com.join.mgps.dto.GameOLFirstBean;
import com.join.mgps.dto.GameOLHeadAdBean;
import com.join.mgps.dto.GameOLNoOpenTestBean;
import com.join.mgps.dto.GamePariseRequest;
import com.join.mgps.dto.GameReplyMessageListBean;
import com.join.mgps.dto.GameShareData;
import com.join.mgps.dto.GameSignleCompanyListbean;
import com.join.mgps.dto.GameSortBean;
import com.join.mgps.dto.GameSortRequestBean;
import com.join.mgps.dto.GameTopicBean;
import com.join.mgps.dto.GameVerByBg;
import com.join.mgps.dto.GameVerByBgRequestargs;
import com.join.mgps.dto.GamedetialModleFourBean;
import com.join.mgps.dto.GamedetialMoreGiftData;
import com.join.mgps.dto.GamesurFaceMainBean;
import com.join.mgps.dto.GiftPackageArgs;
import com.join.mgps.dto.GiftPackageBean;
import com.join.mgps.dto.GiftPackageDataInfoBean;
import com.join.mgps.dto.GiftPackageInfoArgs;
import com.join.mgps.dto.GiftPackageInfoBean;
import com.join.mgps.dto.GiftPackageOperationArgs;
import com.join.mgps.dto.GiftPackageOperationBean;
import com.join.mgps.dto.HandShankAdBean;
import com.join.mgps.dto.HomeGameCarefullyBean;
import com.join.mgps.dto.IgnoreNoticeRequestArgs;
import com.join.mgps.dto.InformationCommentBack;
import com.join.mgps.dto.InformationMainBean;
import com.join.mgps.dto.InformationSendBack;
import com.join.mgps.dto.InformationSendRequestBean;
import com.join.mgps.dto.MatchBattleManagementBean;
import com.join.mgps.dto.MessageRedPointBean;
import com.join.mgps.dto.MustPlayData;
import com.join.mgps.dto.MustPlayNetDataBean;
import com.join.mgps.dto.PAPAHomeBean;
import com.join.mgps.dto.PAPAMainBean;
import com.join.mgps.dto.PariseBackData;
import com.join.mgps.dto.PariseRequest;
import com.join.mgps.dto.PayGameDetialBean;
import com.join.mgps.dto.PopupAdBean;
import com.join.mgps.dto.RankingDataBean;
import com.join.mgps.dto.RankingItemDataBean;
import com.join.mgps.dto.RecomCentrebean;
import com.join.mgps.dto.RecomDataAllBean;
import com.join.mgps.dto.RecomDatabean;
import com.join.mgps.dto.RecomRequestArgs;
import com.join.mgps.dto.RecomRequestBean;
import com.join.mgps.dto.RecomeWifiDatabean;
import com.join.mgps.dto.RecommendInfomationBean;
import com.join.mgps.dto.RegisterRequestBean;
import com.join.mgps.dto.RequestAppDetialArgs;
import com.join.mgps.dto.RequestArenaRoomListArgs;
import com.join.mgps.dto.RequestBattlehallArgs;
import com.join.mgps.dto.RequestClassifyArgs;
import com.join.mgps.dto.RequestCollectionArgs;
import com.join.mgps.dto.RequestCommitArgs;
import com.join.mgps.dto.RequestCompanyNameArgs;
import com.join.mgps.dto.RequestDownloadCenterArgs;
import com.join.mgps.dto.RequestGameIdArgs;
import com.join.mgps.dto.RequestGameShareTag;
import com.join.mgps.dto.RequestGoogleRankArgs;
import com.join.mgps.dto.RequestHandShankAdListArgs;
import com.join.mgps.dto.RequestInfoArgs;
import com.join.mgps.dto.RequestInfoIdArgs;
import com.join.mgps.dto.RequestKeywordArgs;
import com.join.mgps.dto.RequestPnAndPcAndUidArgs;
import com.join.mgps.dto.RequestPnAndPcArgs;
import com.join.mgps.dto.RequestPnArgs;
import com.join.mgps.dto.RequestSNKGameArgs;
import com.join.mgps.dto.RequestScreenshortListArgs;
import com.join.mgps.dto.RequestSearchPageArgs;
import com.join.mgps.dto.RequestSiliencebean;
import com.join.mgps.dto.RequestSimulatorArgs;
import com.join.mgps.dto.RequestTypePn;
import com.join.mgps.dto.RequestUidtagidTagdes;
import com.join.mgps.dto.RequestUserCenterArgs;
import com.join.mgps.dto.RequestWarIndexArgs;
import com.join.mgps.dto.ResponseDownloadCenterAd;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.ResultValbean;
import com.join.mgps.dto.RewardBean;
import com.join.mgps.dto.SNKGameInfoBean;
import com.join.mgps.dto.SearchAppBean;
import com.join.mgps.dto.SearchAutoBean;
import com.join.mgps.dto.SearchDataBean;
import com.join.mgps.dto.SearchGameFavoriteListBean;
import com.join.mgps.dto.SearchGameListBean;
import com.join.mgps.dto.SearchIntegratedBean;
import com.join.mgps.dto.SearchPageBean;
import com.join.mgps.dto.SearchPostsBean;
import com.join.mgps.dto.SearchRecommendBean;
import com.join.mgps.dto.SendAppinfoMainbean;
import com.join.mgps.dto.ServiceStateForMore;
import com.join.mgps.dto.ShowViewDataBean;
import com.join.mgps.dto.SimulatorAreaDataBean;
import com.join.mgps.dto.SimulatorAreaRequest;
import com.join.mgps.dto.StandAloneListBean;
import com.join.mgps.dto.StatisticMainBean;
import com.join.mgps.dto.TodayWufunBean;
import com.join.mgps.dto.TodayWufunTopic;
import com.join.mgps.dto.UserCenterBean;
import com.join.mgps.dto.VipPopData;
import com.join.mgps.dto.WarIndexDataBean;
import com.join.mgps.dto.WarIndexResultMainBean;
import com.join.mgps.dto.WarModuleBean;
import com.join.mgps.dto.WufunMarketHomeBean;
import java.util.ArrayList;
import java.util.List;
import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.POST;
/* compiled from: IRpcClient.java */
/* loaded from: classes4.dex */
public interface c {
    @POST(com.join.mgps.rpc.g.Q0)
    Call<ResultMainBean<GameOLDataBean<GameOLFirstBean>>> A(@Body CommonRequestBean<RequestPnAndPcArgs> commonRequestBean);

    @POST(com.join.mgps.rpc.g.S1)
    Call<ResultMainBean<List<TodayWufunTopic>>> A0(@Body CommonRequestBean<RequestPnAndPcArgs> commonRequestBean);

    @POST("/android/v3/scanning/matching")
    Call<ResultMainBean<List<CollectionBeanSub>>> A1(@Body CommonRequestBean<RequestSNKGameArgs> commonRequestBean);

    @POST(com.join.mgps.rpc.g.Z0)
    Call<ResultMainBean<List<RecomCentrebean>>> B(@Body CommonRequestBean<RequestPnArgs> commonRequestBean);

    @POST("/game/gametypesort/indexv2")
    Call<ResultMainBean<List<GameSortBean>>> B0(@Body CommonRequestBean<GameSortRequestBean> commonRequestBean);

    @POST("/android/v4/search/integrated_game_list")
    Call<ResultMainBean<SearchGameListBean>> B1(@Body CommonRequestBean commonRequestBean);

    @POST(com.join.mgps.rpc.g.D1)
    Call<ResultMainBean<List<BootPageData>>> C(@Body CommonRequestBean<BootPageRequestArgs> commonRequestBean);

    @POST("/game_down_load/down_info")
    Call<ResultMainBean<GameDownInfo>> C0(@Body CommonRequestBean<RequestGameIdArgs> commonRequestBean);

    @POST("/ver/check_battle_plugin_ver_so")
    Call<ResultMainBean<List<ApkVersionbean>>> C1(@Body CommonRequestBean<APKVersionRequestargs> commonRequestBean);

    @POST(com.join.mgps.rpc.g.f51547r1)
    Call<ResultMainBean> D(@Body CommonRequestBean<RequestGameIdArgs> commonRequestBean);

    @POST(com.join.mgps.rpc.g.f51512f1)
    Call<ResultMainBean<BattlehallDatabean>> D0(@Body CommonRequestBean<RequestBattlehallArgs> commonRequestBean);

    @POST("/android/v4/search/integrated_list")
    Call<ResultMainBean<SearchIntegratedBean>> D1(@Body CommonRequestBean commonRequestBean);

    @POST(com.join.mgps.rpc.g.N1)
    Call<ResultMainBean<List<MatchBattleManagementBean>>> E(@Body CommonRequestBean<RequestPnArgs> commonRequestBean);

    @POST(com.join.mgps.rpc.g.G0)
    Call<ResultMainBean<List<ForumBannerBean.ForumAreaBannerMessagesData>>> E0(@Body ForumBannerBean.ForumBannerRequestBean forumBannerRequestBean);

    @POST("/android/v3/share/gamestartbootcommentadd")
    Call<ResultMainBean<List<ResultValbean>>> E1(@Body CommonRequestBean<RequestGameShareTag> commonRequestBean);

    @POST(com.join.mgps.rpc.g.f51532m1)
    Call<ResultMainBean<List<RecommendInfomationBean>>> F(@Body CommonRequestBean<RequestGameIdArgs> commonRequestBean);

    @POST(com.join.mgps.rpc.g.Y0)
    Call<ResultMainBean<GameSignleCompanyListbean>> F0(@Body CommonRequestBean<RequestPnAndPcArgs> commonRequestBean);

    @POST(com.join.mgps.rpc.g.V1)
    Call<ResultMainBean<List<StandAloneListBean>>> F1(@Body CommonRequestBean commonRequestBean);

    @POST(com.join.mgps.rpc.g.F1)
    Call<ResultMainBean<GameMainV3DataBean>> G(@Body CommonRequestBean<RequestGameIdArgs> commonRequestBean);

    @POST(com.join.mgps.rpc.g.W)
    Call<ResultMainBean<List<ShowViewDataBean>>> G0(@Body CommonRequestBean<ArrayList> commonRequestBean);

    @POST(com.join.mgps.rpc.g.f51549s0)
    Call<CollectionBean> G1(@Body CommonRequestBean<RequestCollectionArgs> commonRequestBean);

    @POST("/game/game_company_game_list")
    Call<ResultMainBean<GameFactoryListBean>> H(@Body CommonRequestBean<Integer> commonRequestBean);

    @POST(com.join.mgps.rpc.g.L0)
    Call<ResultMainBean<List<SearchDataBean>>> H0(@Body CommonRequestBean<AppDataBackupBean> commonRequestBean);

    @POST("/android/v2/message/surplusunreadmessage")
    Call<MessageRedPointBean> H1(@Body CommonRequestBean commonRequestBean);

    @POST(com.join.mgps.rpc.g.f51510e1)
    Call<ResultMainBean<RecomeWifiDatabean>> I(@Body CommonRequestBean<RequestPnAndPcArgs> commonRequestBean);

    @POST(com.join.mgps.rpc.g.f51531m0)
    Call<ResultMainBean<List<CollectionBeanSub>>> I0(@Body CommonRequestBean<RequestClassifyArgs> commonRequestBean);

    @POST(com.join.mgps.rpc.g.P)
    Call<ResultMainBean<PAPAMainBean>> I1(@Body CommonRequestBean commonRequestBean);

    @POST(com.join.mgps.rpc.g.f51520i1)
    Call<ResultMainBean<PopupAdBean>> J(@Body CommonRequestBean<RequestPnAndPcAndUidArgs> commonRequestBean);

    @POST(com.join.mgps.rpc.g.J0)
    Call<GameDiscoverMainBean> J0(@Body CommonRequestBean<RequestPnAndPcArgs> commonRequestBean);

    @POST(com.join.mgps.rpc.g.X)
    Call<ResultMainBean<List<CommentSendMessageResultBean>>> J1(@Body CommonRequestBean<RegisterRequestBean> commonRequestBean);

    @POST(com.join.mgps.rpc.g.f51517h1)
    Call<ResultMainBean<List<BaiduAdDataMain>>> K(@Body CommonRequestBean<RequestPnArgs> commonRequestBean);

    @POST(com.join.mgps.rpc.g.P0)
    Call<RecomDataAllBean> K0(@Body CommonRequestBean commonRequestBean);

    @POST("/simulator/simulator_fba_index")
    Call<ResultMainBean<SimulatorAreaDataBean>> K1(@Body RecomRequestBean<SimulatorAreaRequest> recomRequestBean);

    @POST("/android/v4/game/gamerecommendsetup")
    Call<ResultMainBean<RecomentBean1>> L(@Body CommonRequestBean<RequestTypePn> commonRequestBean);

    @POST(com.join.mgps.rpc.g.f51504b1)
    Call<GiftPackageBean> L0(@Body CommonRequestBean<GiftPackageArgs> commonRequestBean);

    @POST("/android/v5/game/watch_ad_log/add")
    Call<ResultMainBean<SearchPostsBean>> L1(@Body CommonRequestBean<RequestInfoArgs> commonRequestBean);

    @POST("/android/v3/single_channel/gamecompanygamelist")
    Call<ResultMainBean<GameFactoryListBean>> M(@Body CommonRequestBean<Integer> commonRequestBean);

    @POST("/android/v2/game/gametypestate")
    Call<ResultMainBean<ClassfyTypeBean>> M0(@Body CommonRequestBean<ClassifyGameBean> commonRequestBean);

    @POST("/simulator/simulator_gba_index")
    Call<ResultMainBean<SimulatorAreaDataBean>> M1(@Body RecomRequestBean<SimulatorAreaRequest> recomRequestBean);

    @POST("/largesingle/recommend")
    Call<ResultMainBean<GameListAndHeadAdAndCollectionInfoBean>> N(@Body CommonRequestBean<RequestPnAndPcArgs> commonRequestBean);

    @POST(com.join.mgps.rpc.g.E0)
    Call<ResultMainBean<List<APKVersionMainBean>>> N0(@Body CommonRequestBean<APKVersionRequestargs> commonRequestBean);

    @POST("/android/v5/lobby/info")
    Call<ResultMainBean<ArenaAdData>> N1(@Body CommonRequestBean<CollectionCommentRequest> commonRequestBean);

    @POST(com.join.mgps.rpc.g.f51552t0)
    Call<ResultMainBean<List<GameInformationBean>>> O(@Body CommonRequestBean<RequestInfoIdArgs> commonRequestBean);

    @POST(com.join.mgps.rpc.g.f51544q1)
    Call<ResultMainBean> O0(@Body CommonRequestBean<RequestGameIdArgs> commonRequestBean);

    @POST("/simulator/simulator_psp_index")
    Call<ResultMainBean<SimulatorAreaDataBean>> O1(@Body RecomRequestBean<SimulatorAreaRequest> recomRequestBean);

    @POST(com.join.mgps.rpc.g.f51514g1)
    Call<ResultMainBean<List<GameOLHeadAdBean>>> P(@Body CommonRequestBean<RequestPnArgs> commonRequestBean);

    @POST(com.join.mgps.rpc.g.f51506c1)
    Call<GiftPackageInfoBean> P0(@Body CommonRequestBean<GiftPackageInfoArgs> commonRequestBean);

    @POST("/android/v4/real_name/config")
    Call<ResultMainBean<LoginCfgsBean>> P1(@Body CommonRequestBean<RequestUidtagidTagdes> commonRequestBean);

    @POST(com.join.mgps.rpc.g.f51522j0)
    Call<WarModuleBean> Q(@Body CommonRequestBeanInterface commonRequestBeanInterface);

    @POST("/android/v3/community/tag")
    Call<ResultMainBean<String>> Q0(@Body CommonRequestBean<RequestGameIdArgs> commonRequestBean);

    @POST("/simulator/simulator_fc_index")
    Call<ResultMainBean<SimulatorAreaDataBean>> Q1(@Body RecomRequestBean<SimulatorAreaRequest> recomRequestBean);

    @POST(com.join.mgps.rpc.g.f51525k0)
    Call<ResultMainBean<List<DetailResultBean>>> R(@Body RecomRequestBean<RequestAppDetialArgs> recomRequestBean);

    @POST(com.join.mgps.rpc.g.f51526k1)
    Call<ResultMainBean<List<VipPopData>>> R0(@Body CommonRequestBean<RequestPnAndPcAndUidArgs> commonRequestBean);

    @POST(com.join.mgps.rpc.g.f51523j1)
    Call<ResultMainBean<PopupAdBean>> R1(@Body CommonRequestBean<RequestPnAndPcAndUidArgs> commonRequestBean);

    @POST("/largesingle/languecnv2")
    Call<ResultMainBean<GameListAndHeadAdBean>> S(@Body CommonRequestBean<RequestPnAndPcArgs> commonRequestBean);

    @POST(com.join.mgps.rpc.g.K0)
    Call<GamesurFaceMainBean> S0(@Body RecomRequestBean<RequestAppDetialArgs> recomRequestBean);

    @POST(com.join.mgps.rpc.g.G1)
    Call<ResultMainBean<List<DetailResultBeanV3>>> T(@Body RecomRequestBean<RequestAppDetialArgs> recomRequestBean);

    @POST(com.join.mgps.rpc.g.U1)
    Call<ResultMainBean<List<StandAloneListBean>>> T0(@Body CommonRequestBean commonRequestBean);

    @POST(com.join.mgps.rpc.g.G1)
    Call<ResultMainBean<List<GamedetialModleFourBean>>> U(@Body CommonRequestBean<RequestGameIdArgs> commonRequestBean);

    @POST(com.join.mgps.rpc.g.f51521j)
    Call<ResultMainBean<List<StatisticMainBean>>> U0(@Body CommonRequestBeanInterface commonRequestBeanInterface);

    @POST("/android/v3/scanning/setting")
    Call<ResultMainBean<SNKGameInfoBean>> V(@Body CommonRequestBean commonRequestBean);

    @POST("/simulator/simulator_play_game_surface_state")
    Call<ResultMainBean<GameMainSimulatorResponse>> V0(@Body CommonRequestBean<RequestGameIdArgs> commonRequestBean);

    @POST("/user/personal_center_prompt_title")
    Call<ResultMainBean<List<ResultValbean>>> W(@Body CommonRequestBean<RequestUserCenterArgs> commonRequestBean);

    @POST(com.join.mgps.rpc.g.Z)
    Call<CategoryBean> W0(@Body CommonRequestBean<ArrayList> commonRequestBean);

    @POST(com.join.mgps.rpc.g.f51538o1)
    Call<ResultMainBean<GamedetialMoreGiftData>> X(@Body CommonRequestBean<RequestGameIdArgs> commonRequestBean);

    @POST("/home/game_carefully")
    Call<ResultMainBean<HomeGameCarefullyBean>> X0(@Body CommonRequestBean commonRequestBean);

    @POST(com.join.mgps.rpc.g.R0)
    Call<ResultMainBean<GameOLDataBean<GameOLFirstBean>>> Y(@Body CommonRequestBean<RequestPnAndPcArgs> commonRequestBean);

    @POST(com.join.mgps.rpc.g.f51562w1)
    Call<ResultMainBean<List<RecomDatabean>>> Y0(@Body CommonRequestBean<RequestPnArgs> commonRequestBean);

    @POST(com.join.mgps.rpc.g.F0)
    Call<ForumBannerBean.ForumBannerResponseBean> Z(@Body ForumBannerBean.ForumBannerRequestBean forumBannerRequestBean);

    @POST("/user/personal_center_home_page/indexv2")
    Call<ResultMainBean<UserCenterBean>> Z0(@Body CommonRequestBean<RequestUserCenterArgs> commonRequestBean);

    @POST("/v4/personal_center/index")
    ResultMainBean<UserCenterBean> a(@Body CommonRequestBean<RequestUserCenterArgs> commonRequestBean);

    @POST(com.join.mgps.rpc.g.P1)
    Call<ResultMainBean<PayGameDetialBean>> a0(@Body RecomRequestBean<RequestAppDetialArgs> recomRequestBean);

    @POST(com.join.mgps.rpc.g.F1)
    Call<ResultMainBean<List<GameMainDataBean>>> a1(@Body CommonRequestBean<RequestGameIdArgs> commonRequestBean);

    @POST(com.join.mgps.rpc.g.O0)
    Call<ResultMainBean<List<PariseBackData>>> b(@Body CommonRequestBean<GamePariseRequest> commonRequestBean);

    @POST("/android/v2/message/replynoticemessagelist")
    Call<GameReplyMessageListBean> b0(@Body CommonRequestBean commonRequestBean);

    @POST("/android/v4/ranking/gamelists")
    Call<ResultMainBean<RankingItemDataBean>> b1(@Body CommonRequestBean<RequestTypePn> commonRequestBean);

    @POST(com.join.mgps.rpc.g.I0)
    Call<ResultMainBean<List<MustPlayNetDataBean>>> c(@Body CommonRequestBeanInterface commonRequestBeanInterface);

    @POST(com.join.mgps.rpc.g.S)
    Call<ResultMainBean<List<CollectionDataBean>>> c0(@Body CommonRequestBean<RequestSimulatorArgs> commonRequestBean);

    @POST(com.join.mgps.rpc.g.f51549s0)
    Call<CollectionModuleBean> c1(@Body CommonRequestBean<RequestCollectionArgs> commonRequestBean);

    @POST(com.join.mgps.rpc.g.H1)
    Call<ResultMainBean> d(@Body CommonRequestBean<RequestGameIdArgs> commonRequestBean);

    @POST(com.join.mgps.rpc.g.f51553t1)
    Call<ResultMainBean> d0(@Body CommonRequestBean<RequestGameIdArgs> commonRequestBean);

    @POST("/android/v3/advertisement/downloadcenterad/index")
    Call<ResultMainBean<ResponseDownloadCenterAd>> d1(@Body CommonRequestBean<RequestDownloadCenterArgs> commonRequestBean);

    @POST(com.join.mgps.rpc.g.f51534n0)
    Call<SearchAutoBean> e(@Body CommonRequestBean<RequestKeywordArgs> commonRequestBean);

    @POST(com.join.mgps.rpc.g.B1)
    Call<ResultMainBean<List<String>>> e0(@Body CommonRequestBean<IgnoreNoticeRequestArgs> commonRequestBean);

    @POST(com.join.mgps.rpc.g.O1)
    Call<ResultMainBean<CollectionBeanSub>> e1(@Body RecomRequestBean<RequestAppDetialArgs> recomRequestBean);

    @POST(com.join.mgps.rpc.g.f51568y1)
    Call<ResultMainBean<InformationCommentBack>> f(@Body CommonRequestBean<GameInformationCommentRequest> commonRequestBean);

    @POST(com.join.mgps.rpc.g.f51508d1)
    Call<GiftPackageOperationBean> f0(@Body CommonRequestBean<GiftPackageOperationArgs> commonRequestBean);

    @POST(com.join.mgps.rpc.g.V)
    Call<ResultMainBean<List<CheckAppVersionBean>>> f1(@Body CommonRequestBean<AllAppId> commonRequestBean);

    @POST("/largesingle/crackv2")
    Call<ResultMainBean<GameListAndHeadAdBean>> g(@Body CommonRequestBean<RequestPnAndPcArgs> commonRequestBean);

    @POST(com.join.mgps.rpc.g.f51556u1)
    Call<ResultMainBean<List<CollectionBeanSub>>> g0(@Body CommonRequestBean<RequestTypePn> commonRequestBean);

    @POST(com.join.mgps.rpc.g.f51541p1)
    Call<ResultMainBean<List<ServiceStateForMore>>> g1(@Body CommonRequestBean<RequestGameIdArgs> commonRequestBean);

    @POST(com.join.mgps.rpc.g.S0)
    Call<ResultMainBean<GameOLDataBean<GameOLNoOpenTestBean>>> h(@Body CommonRequestBean<RequestPnAndPcArgs> commonRequestBean);

    @POST("/android/v2/game/gamescreenshot/getTypeList")
    Call<ResultMainBean<List<ScreenshortTabBean>>> h0(@Body CommonRequestBean<RequestGameIdArgs> commonRequestBean);

    @POST(com.join.mgps.rpc.g.f51546r0)
    Call<SearchRecommendBean> h1(@Body CommonRequestBean commonRequestBean);

    @POST(com.join.mgps.rpc.g.f51516h0)
    Call<WarIndexResultMainBean<List<WarIndexDataBean>>> i(@Body CommonRequestBean<RequestWarIndexArgs> commonRequestBean);

    @POST(com.join.mgps.rpc.g.f51529l1)
    Call<ResultMainBean<List<RewardBean>>> i0(@Body CommonRequestBean<RequestPnAndPcAndUidArgs> commonRequestBean);

    @POST(com.join.mgps.rpc.g.V0)
    Call<ResultMainBean<GameOLDataBean<GameOLFirstBean>>> i1(@Body CommonRequestBean<RequestPnAndPcArgs> commonRequestBean);

    @POST(com.join.mgps.rpc.g.X0)
    Call<ResultMainBean<GameOLDataBean<GameOLFirstBean>>> j(@Body CommonRequestBean<RequestPnAndPcArgs> commonRequestBean);

    @POST(com.join.mgps.rpc.g.f51535n1)
    Call<ResultMainBean<List<RecommendInfomationBean>>> j0(@Body CommonRequestBean<RequestGameIdArgs> commonRequestBean);

    @POST("/android/v4/search/integrated_rand_game_favorites")
    Call<ResultMainBean<SearchPageBean>> j1(@Body CommonRequestBean<RequestSearchPageArgs> commonRequestBean);

    @POST("/game/game_ranking_top_5")
    Call<ResultMainBean<List<RankingDataBean>>> k(@Body CommonRequestBean<GameSortRequestBean> commonRequestBean);

    @POST(com.join.mgps.rpc.g.A0)
    Call<ResultMainBean<InformationCommentBack>> k0(@Body CommonRequestBean<GameInformationCommentRequest> commonRequestBean);

    @POST("/android/v3/share/gamestartbootcommenttagadd")
    Call<ResultMainBean<List<ResultValbean>>> k1(@Body CommonRequestBean<RequestUidtagidTagdes> commonRequestBean);

    @POST(com.join.mgps.rpc.g.f51537o0)
    Call<ResultMainBean<SearchPageBean>> l(@Body CommonRequestBean<RequestSearchPageArgs> commonRequestBean);

    @POST(com.join.mgps.rpc.g.f51540p0)
    Call<SearchAppBean> l0(@Body CommonRequestBean<RequestKeywordArgs> commonRequestBean);

    @POST("/home/recommendlocation")
    Call<ResultMainBean<List<RecomDatabean>>> l1(@Body CommonRequestBean commonRequestBean);

    @POST(com.join.mgps.rpc.g.f51519i0)
    Call<ResultMainBean<String[]>> m(@Body CommonRequestBeanInterface commonRequestBeanInterface);

    @POST(com.join.mgps.rpc.g.R1)
    Call<ResultMainBean<List<TodayWufunBean>>> m0(@Body CommonRequestBean<RequestPnAndPcArgs> commonRequestBean);

    @POST(com.join.mgps.rpc.g.f51570z0)
    Call<ResultMainBean<CommitContextDataBean>> m1(@Body CommonRequestBean<InformationSendRequestBean> commonRequestBean);

    @POST(com.join.mgps.rpc.g.f51564x0)
    Call<ResultMainBean<CommitContextDataBean>> n(@Body CommonRequestBean commonRequestBean);

    @POST(com.join.mgps.rpc.g.f51543q0)
    Call<ResultMainBean<List<SearchPageBean>>> n0(@Body CommonRequestBean<RequestSearchPageArgs> commonRequestBean);

    @POST("/android/v3/share/gamestartbootcommenttaglist")
    Call<ResultMainBean<GameShareData>> n1(@Body CommonRequestBean<RequestGameIdArgs> commonRequestBean);

    @POST(com.join.mgps.rpc.g.f51550s1)
    Call<ResultMainBean> o(@Body CommonRequestBean<RequestGameIdArgs> commonRequestBean);

    @POST("/advertisement/down_load_speed_tips_ad")
    Call<ResultMainBean<List<RecomDatabean>>> o0(@Body CommonRequestBean<RequestGameIdArgs> commonRequestBean);

    @POST("/android/v4/search/integrated_posts_list")
    Call<ResultMainBean<SearchPostsBean>> o1(@Body CommonRequestBean commonRequestBean);

    @POST(com.join.mgps.rpc.g.J1)
    Call<ResultMainBean<List<CollectionBeanSub>>> p(@Body CommonRequestBean<RequestGameIdArgs> commonRequestBean);

    @POST(com.join.mgps.rpc.g.C0)
    Call<ResultMainBean<List<PariseBackData>>> p0(@Body CommonRequestBean<PariseRequest> commonRequestBean);

    @POST(com.join.mgps.rpc.g.W0)
    Call<ResultMainBean<GameOLDataBean<GameOLFirstBean>>> p1(@Body CommonRequestBean<RequestPnAndPcArgs> commonRequestBean);

    @POST("/battle/battle_room_game_list_cfg")
    Call<ResultMainBean<ArenaGameRoomListConfig>> q(@Body CommonRequestBean<RequestArenaRoomListArgs> commonRequestBean);

    @POST("/game/gametypelistv2/indexv2")
    Call<ResultMainBean<ClassifyBean>> q0(@Body CommonRequestBean<GameSortRequestBean> commonRequestBean);

    @POST(com.join.mgps.rpc.g.L1)
    Call<ResultMainBean<List<CollectionBeanSub>>> q1(@Body CommonRequestBean<RequestGameIdArgs> commonRequestBean);

    @POST("/android/v4/search/integrated_game_favorite_list")
    Call<ResultMainBean<SearchGameFavoriteListBean>> r(@Body CommonRequestBean commonRequestBean);

    @POST(com.join.mgps.rpc.g.C1)
    Call<ResultMainBean<HandShankAdBean>> r0(@Body CommonRequestBean<RequestHandShankAdListArgs> commonRequestBean);

    @POST(com.join.mgps.rpc.g.D0)
    Call<ResultMainBean<List<APKVersionMainBean>>> r1(@Body CommonRequestBean<APKVersionRequestargs> commonRequestBean);

    @POST(com.join.mgps.rpc.g.U)
    Call<ResultMainBean<List<CollectionDataBean>>> s(@Body CommonRequestBean<RequestSimulatorArgs> commonRequestBean);

    @POST(com.join.mgps.rpc.g.Y)
    Call<ResultMainBean<List<CommentSendMessageResultBean>>> s0(@Body CommonRequestBean<SendAppinfoMainbean> commonRequestBean);

    @POST(com.join.mgps.rpc.g.I0)
    Call<ResultMainBean<MustPlayData>> s1(@Body CommonRequestBean<RecomRequestArgs> commonRequestBean);

    @POST(com.join.mgps.rpc.g.T0)
    Call<ResultMainBean<List<GiftPackageDataInfoBean>>> t(@Body CommonRequestBean<RequestPnAndPcArgs> commonRequestBean);

    @POST(com.join.mgps.rpc.g.f51565x1)
    Call<ResultMainBean<List<RecomDatabean>>> t0(@Body CommonRequestBean<RequestPnArgs> commonRequestBean);

    @POST(com.join.mgps.rpc.g.Q1)
    Call<ResultMainBean<DownDeductCoinResponse>> t1(@Body RecomRequestBean<RequestAppDetialArgs> recomRequestBean);

    @POST(com.join.mgps.rpc.g.I1)
    Call<ResultMainBean<List<ResultValbean>>> u(@Body CommonRequestBean<RequestSiliencebean> commonRequestBean);

    @POST(com.join.mgps.rpc.g.R)
    Call<ResultMainBean<WufunMarketHomeBean>> u0(@Body CommonRequestBean commonRequestBean);

    @POST(com.join.mgps.rpc.g.A1)
    Call<ResultMainBean<List<PariseBackData>>> u1(@Body CommonRequestBean<PariseRequest> commonRequestBean);

    @POST(com.join.mgps.rpc.g.f51558v0)
    Call<InformationMainBean> v(@Body CommonRequestBean<RequestPnArgs> commonRequestBean);

    @POST(com.join.mgps.rpc.g.O)
    Call<ResultMainBean<List<PAPAHomeBean>>> v0(@Body CommonRequestBean commonRequestBean);

    @POST(com.join.mgps.rpc.g.T1)
    Call<ResultMainBean<List<GameHeadAd>>> v1(@Body CommonRequestBean commonRequestBean);

    @POST("/android/v2/game/gamescreenshot/index")
    Call<ResultMainBean<List<ScreenShortListItemBean>>> w(@Body CommonRequestBean<RequestScreenshortListArgs> commonRequestBean);

    @POST("/largesingle/game_google_ranking")
    Call<ResultMainBean<List<AppBean>>> w0(@Body CommonRequestBean<RequestGoogleRankArgs> commonRequestBean);

    @POST(com.join.mgps.rpc.g.f51571z1)
    Call<ResultMainBean<InformationSendBack>> w1(@Body CommonRequestBean<InformationSendRequestBean> commonRequestBean);

    @POST(com.join.mgps.rpc.g.T)
    Call<ResultMainBean<EverydayNewGameResponse>> x(@Body CommonRequestBean<RequestSimulatorArgs> commonRequestBean);

    @POST(com.join.mgps.rpc.g.H0)
    Call<ResultMainBean<ForumBannerBean.ForumBannerDataBannerBean>> x0(@Body ForumBannerBean.ForumBannerRequestBean forumBannerRequestBean);

    @POST(com.join.mgps.rpc.g.f51502a1)
    Call<SearchAppBean> x1(@Body CommonRequestBean commonRequestBean);

    @POST(com.join.mgps.rpc.g.f51559v1)
    Call<ResultMainBean<List<GameTopicBean>>> y(@Body CommonRequestBean<GameTopicBean> commonRequestBean);

    @POST(com.join.mgps.rpc.g.f51561w0)
    Call<ResultMainBean<InformationCommentBack>> y0(@Body CommonRequestBean<RequestCommitArgs> commonRequestBean);

    @POST("/advertisement/down_load_center_ad")
    Call<ResultMainBean<List<RecomDatabean>>> y1(@Body CommonRequestBean<RequestGameIdArgs> commonRequestBean);

    @POST(com.join.mgps.rpc.g.M1)
    Call<ResultMainBean<List<CollectionBeanSub>>> z(@Body CommonRequestBean<RequestCompanyNameArgs> commonRequestBean);

    @POST("/game/game_ver_by_pg")
    Call<ResultMainBean<GameVerByBg>> z0(@Body RecomRequestBean<GameVerByBgRequestargs> recomRequestBean);

    @POST(com.join.mgps.rpc.g.U0)
    Call<ResultMainBean<GameOLDataBean<GameOLFirstBean>>> z1(@Body CommonRequestBean<RequestPnAndPcArgs> commonRequestBean);
}
