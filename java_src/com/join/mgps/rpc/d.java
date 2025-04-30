package com.join.mgps.rpc;

import com.join.mgps.activity.recomend.RecomentBean1;
import com.join.mgps.activity.screenshot.ScreenShortListItemBean;
import com.join.mgps.activity.screenshot.ScreenshortTabBean;
import com.join.mgps.dto.APKVersionMainBean;
import com.join.mgps.dto.APKVersionRequestargs;
import com.join.mgps.dto.AllAppId;
import com.join.mgps.dto.ApkVersionbean;
import com.join.mgps.dto.AppBean;
import com.join.mgps.dto.AppDataBackupBean;
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
import retrofit2.http.Body;
import retrofit2.http.POST;
/* compiled from: RpcClient.java */
/* loaded from: classes4.dex */
public interface d {
    @POST(g.Q0)
    ResultMainBean<GameOLDataBean<GameOLFirstBean>> A(@Body CommonRequestBean<RequestPnAndPcArgs> commonRequestBean);

    @POST(g.S1)
    ResultMainBean<List<TodayWufunTopic>> A0(@Body CommonRequestBean<RequestPnAndPcArgs> commonRequestBean);

    @POST("/android/v3/scanning/matching")
    ResultMainBean<List<CollectionBeanSub>> A1(@Body CommonRequestBean<RequestSNKGameArgs> commonRequestBean);

    @POST(g.Z0)
    ResultMainBean<List<RecomCentrebean>> B(@Body CommonRequestBean<RequestPnArgs> commonRequestBean);

    @POST("/game/gametypesort/indexv2")
    ResultMainBean<List<GameSortBean>> B0(@Body CommonRequestBean<GameSortRequestBean> commonRequestBean);

    @POST("/android/v4/search/integrated_game_list")
    ResultMainBean<SearchGameListBean> B1(@Body CommonRequestBean commonRequestBean);

    @POST(g.D1)
    ResultMainBean<List<BootPageData>> C(@Body CommonRequestBean<BootPageRequestArgs> commonRequestBean);

    @POST("/game_down_load/down_info")
    ResultMainBean<GameDownInfo> C0(@Body CommonRequestBean<RequestGameIdArgs> commonRequestBean);

    @POST("/ver/check_battle_plugin_ver_so")
    ResultMainBean<List<ApkVersionbean>> C1(@Body CommonRequestBean<APKVersionRequestargs> commonRequestBean);

    @POST(g.f51547r1)
    ResultMainBean D(@Body CommonRequestBean<RequestGameIdArgs> commonRequestBean);

    @POST(g.f51512f1)
    ResultMainBean<BattlehallDatabean> D0(@Body CommonRequestBean<RequestBattlehallArgs> commonRequestBean);

    @POST("/android/v4/search/integrated_list")
    ResultMainBean<SearchIntegratedBean> D1(@Body CommonRequestBean commonRequestBean);

    @POST(g.N1)
    ResultMainBean<List<MatchBattleManagementBean>> E(@Body CommonRequestBean<RequestPnArgs> commonRequestBean);

    @POST(g.G0)
    ResultMainBean<List<ForumBannerBean.ForumAreaBannerMessagesData>> E0(@Body ForumBannerBean.ForumBannerRequestBean forumBannerRequestBean);

    @POST("/android/v3/share/gamestartbootcommentadd")
    ResultMainBean<List<ResultValbean>> E1(@Body CommonRequestBean<RequestGameShareTag> commonRequestBean);

    @POST(g.f51532m1)
    ResultMainBean<List<RecommendInfomationBean>> F(@Body CommonRequestBean<RequestGameIdArgs> commonRequestBean);

    @POST(g.Y0)
    ResultMainBean<GameSignleCompanyListbean> F0(@Body CommonRequestBean<RequestPnAndPcArgs> commonRequestBean);

    @POST(g.V1)
    ResultMainBean<List<StandAloneListBean>> F1(@Body CommonRequestBean<RequestGameIdArgs> commonRequestBean);

    @POST(g.F1)
    ResultMainBean<GameMainV3DataBean> G(@Body CommonRequestBean<RequestGameIdArgs> commonRequestBean);

    @POST(g.W)
    ResultMainBean<List<ShowViewDataBean>> G0(@Body CommonRequestBean<ArrayList> commonRequestBean);

    @POST(g.f51549s0)
    CollectionBean G1(@Body CommonRequestBean<RequestCollectionArgs> commonRequestBean);

    @POST("/game/game_company_game_list")
    ResultMainBean<GameFactoryListBean> H(@Body CommonRequestBean<Integer> commonRequestBean);

    @POST(g.L0)
    ResultMainBean<List<SearchDataBean>> H0(@Body CommonRequestBean<AppDataBackupBean> commonRequestBean);

    @POST("/android/v2/message/surplusunreadmessage")
    MessageRedPointBean H1(@Body CommonRequestBean commonRequestBean);

    @POST(g.f51510e1)
    ResultMainBean<RecomeWifiDatabean> I(@Body CommonRequestBean<RequestPnAndPcArgs> commonRequestBean);

    @POST(g.f51531m0)
    ResultMainBean<List<CollectionBeanSub>> I0(@Body CommonRequestBean<RequestClassifyArgs> commonRequestBean);

    @POST(g.P)
    ResultMainBean<PAPAMainBean> I1(@Body CommonRequestBean commonRequestBean);

    @POST(g.f51520i1)
    ResultMainBean<PopupAdBean> J(@Body CommonRequestBean<RequestPnAndPcAndUidArgs> commonRequestBean);

    @POST(g.J0)
    GameDiscoverMainBean J0(@Body CommonRequestBean<RequestPnAndPcArgs> commonRequestBean);

    @POST(g.X)
    ResultMainBean<List<CommentSendMessageResultBean>> J1(@Body CommonRequestBean<RegisterRequestBean> commonRequestBean);

    @POST(g.f51517h1)
    ResultMainBean<List<BaiduAdDataMain>> K(@Body CommonRequestBean<RequestPnArgs> commonRequestBean);

    @POST(g.P0)
    RecomDataAllBean K0(@Body CommonRequestBean commonRequestBean);

    @POST("/simulator/simulator_fba_index")
    ResultMainBean<SimulatorAreaDataBean> K1(@Body RecomRequestBean<SimulatorAreaRequest> recomRequestBean);

    @POST("/android/v4/game/gamerecommendsetup")
    ResultMainBean<RecomentBean1> L(@Body CommonRequestBean<RequestTypePn> commonRequestBean);

    @POST(g.f51504b1)
    GiftPackageBean L0(@Body CommonRequestBean<GiftPackageArgs> commonRequestBean);

    @POST("/simulator/simulator_gba_index")
    ResultMainBean<SimulatorAreaDataBean> L1(@Body RecomRequestBean<SimulatorAreaRequest> recomRequestBean);

    @POST("/android/v3/single_channel/gamecompanygamelist")
    ResultMainBean<GameFactoryListBean> M(@Body CommonRequestBean<Integer> commonRequestBean);

    @POST("/android/v2/game/gametypestate")
    ResultMainBean<ClassfyTypeBean> M0(@Body CommonRequestBean<ClassifyGameBean> commonRequestBean);

    @POST("/simulator/simulator_psp_index")
    ResultMainBean<SimulatorAreaDataBean> M1(@Body RecomRequestBean<SimulatorAreaRequest> recomRequestBean);

    @POST("/largesingle/recommend")
    ResultMainBean<GameListAndHeadAdAndCollectionInfoBean> N(@Body CommonRequestBean<RequestPnAndPcArgs> commonRequestBean);

    @POST(g.E0)
    ResultMainBean<List<APKVersionMainBean>> N0(@Body CommonRequestBean<APKVersionRequestargs> commonRequestBean);

    @POST("/simulator/simulator_fc_index")
    ResultMainBean<SimulatorAreaDataBean> N1(@Body RecomRequestBean<SimulatorAreaRequest> recomRequestBean);

    @POST(g.f51552t0)
    ResultMainBean<List<GameInformationBean>> O(@Body CommonRequestBean<RequestInfoIdArgs> commonRequestBean);

    @POST(g.f51544q1)
    ResultMainBean O0(@Body CommonRequestBean<RequestGameIdArgs> commonRequestBean);

    @POST(g.f51514g1)
    ResultMainBean<List<GameOLHeadAdBean>> P(@Body CommonRequestBean<RequestPnArgs> commonRequestBean);

    @POST(g.f51506c1)
    GiftPackageInfoBean P0(@Body CommonRequestBean<GiftPackageInfoArgs> commonRequestBean);

    @POST(g.f51522j0)
    WarModuleBean Q(@Body CommonRequestBeanInterface commonRequestBeanInterface);

    @POST("/android/v3/community/tag")
    ResultMainBean<String> Q0(@Body CommonRequestBean<RequestGameIdArgs> commonRequestBean);

    @POST(g.f51525k0)
    ResultMainBean<List<DetailResultBean>> R(@Body RecomRequestBean<RequestAppDetialArgs> recomRequestBean);

    @POST(g.f51526k1)
    ResultMainBean<List<VipPopData>> R0(@Body CommonRequestBean<RequestPnAndPcAndUidArgs> commonRequestBean);

    @POST("/largesingle/languecnv2")
    ResultMainBean<GameListAndHeadAdBean> S(@Body CommonRequestBean<RequestPnAndPcArgs> commonRequestBean);

    @POST(g.K0)
    GamesurFaceMainBean S0(@Body RecomRequestBean<RequestAppDetialArgs> recomRequestBean);

    @POST(g.G1)
    ResultMainBean<List<DetailResultBeanV3>> T(@Body RecomRequestBean<RequestAppDetialArgs> recomRequestBean);

    @POST(g.U1)
    ResultMainBean<List<StandAloneListBean>> T0(@Body CommonRequestBean<RequestGameIdArgs> commonRequestBean);

    @POST(g.G1)
    ResultMainBean<List<GamedetialModleFourBean>> U(@Body CommonRequestBean<RequestGameIdArgs> commonRequestBean);

    @POST(g.f51521j)
    ResultMainBean<List<StatisticMainBean>> U0(@Body CommonRequestBeanInterface commonRequestBeanInterface);

    @POST("/android/v3/scanning/setting")
    ResultMainBean<SNKGameInfoBean> V(@Body CommonRequestBean commonRequestBean);

    @POST("/simulator/simulator_play_game_surface_state")
    ResultMainBean<GameMainSimulatorResponse> V0(@Body CommonRequestBean<RequestGameIdArgs> commonRequestBean);

    @POST("/user/personal_center_prompt_title")
    ResultMainBean<List<ResultValbean>> W(@Body CommonRequestBean<RequestUserCenterArgs> commonRequestBean);

    @POST(g.Z)
    CategoryBean W0(@Body CommonRequestBean<ArrayList> commonRequestBean);

    @POST(g.f51538o1)
    ResultMainBean<GamedetialMoreGiftData> X(@Body CommonRequestBean<RequestGameIdArgs> commonRequestBean);

    @POST("/home/game_carefully")
    ResultMainBean<HomeGameCarefullyBean> X0(@Body CommonRequestBean commonRequestBean);

    @POST(g.R0)
    ResultMainBean<GameOLDataBean<GameOLFirstBean>> Y(@Body CommonRequestBean<RequestPnAndPcArgs> commonRequestBean);

    @POST(g.f51562w1)
    ResultMainBean<List<RecomDatabean>> Y0(@Body CommonRequestBean<RequestPnArgs> commonRequestBean);

    @POST(g.F0)
    ForumBannerBean.ForumBannerResponseBean Z(@Body ForumBannerBean.ForumBannerRequestBean forumBannerRequestBean);

    @POST("/user/personal_center_home_page/indexv2")
    ResultMainBean<UserCenterBean> Z0(@Body CommonRequestBean<RequestUserCenterArgs> commonRequestBean);

    @POST("/v4/personal_center/index")
    ResultMainBean<UserCenterBean> a(@Body CommonRequestBean<RequestUserCenterArgs> commonRequestBean);

    @POST(g.P1)
    ResultMainBean<PayGameDetialBean> a0(@Body RecomRequestBean<RequestAppDetialArgs> recomRequestBean);

    @POST(g.F1)
    ResultMainBean<List<GameMainDataBean>> a1(@Body CommonRequestBean<RequestGameIdArgs> commonRequestBean);

    @POST(g.O0)
    ResultMainBean<List<PariseBackData>> b(@Body CommonRequestBean<GamePariseRequest> commonRequestBean);

    @POST("/android/v2/message/replynoticemessagelist")
    GameReplyMessageListBean b0(@Body CommonRequestBean commonRequestBean);

    @POST("/android/v4/ranking/gamelists")
    ResultMainBean<RankingItemDataBean> b1(@Body CommonRequestBean<RequestTypePn> commonRequestBean);

    @POST(g.I0)
    ResultMainBean<List<MustPlayNetDataBean>> c(@Body CommonRequestBeanInterface commonRequestBeanInterface);

    @POST(g.S)
    ResultMainBean<List<CollectionDataBean>> c0(@Body CommonRequestBean<RequestSimulatorArgs> commonRequestBean);

    @POST(g.f51549s0)
    CollectionModuleBean c1(@Body CommonRequestBean<RequestCollectionArgs> commonRequestBean);

    @POST(g.H1)
    ResultMainBean d(@Body CommonRequestBean<RequestGameIdArgs> commonRequestBean);

    @POST(g.f51553t1)
    ResultMainBean d0(@Body CommonRequestBean<RequestGameIdArgs> commonRequestBean);

    @POST("/android/v3/advertisement/downloadcenterad/index")
    ResultMainBean<ResponseDownloadCenterAd> d1(@Body CommonRequestBean<RequestDownloadCenterArgs> commonRequestBean);

    @POST(g.f51534n0)
    SearchAutoBean e(@Body CommonRequestBean<RequestKeywordArgs> commonRequestBean);

    @POST(g.B1)
    ResultMainBean<List<String>> e0(@Body CommonRequestBean<IgnoreNoticeRequestArgs> commonRequestBean);

    @POST(g.O1)
    ResultMainBean<CollectionBeanSub> e1(@Body RecomRequestBean<RequestAppDetialArgs> recomRequestBean);

    @POST(g.f51568y1)
    ResultMainBean<InformationCommentBack> f(@Body CommonRequestBean<GameInformationCommentRequest> commonRequestBean);

    @POST(g.f51508d1)
    GiftPackageOperationBean f0(@Body CommonRequestBean<GiftPackageOperationArgs> commonRequestBean);

    @POST(g.V)
    ResultMainBean<List<CheckAppVersionBean>> f1(@Body CommonRequestBean<AllAppId> commonRequestBean);

    @POST("/largesingle/crackv2")
    ResultMainBean<GameListAndHeadAdBean> g(@Body CommonRequestBean<RequestPnAndPcArgs> commonRequestBean);

    @POST(g.f51556u1)
    ResultMainBean<List<CollectionBeanSub>> g0(@Body CommonRequestBean<RequestTypePn> commonRequestBean);

    @POST(g.f51541p1)
    ResultMainBean<List<ServiceStateForMore>> g1(@Body CommonRequestBean<RequestGameIdArgs> commonRequestBean);

    @POST(g.S0)
    ResultMainBean<GameOLDataBean<GameOLNoOpenTestBean>> h(@Body CommonRequestBean<RequestPnAndPcArgs> commonRequestBean);

    @POST("/android/v2/game/gamescreenshot/getTypeList")
    ResultMainBean<List<ScreenshortTabBean>> h0(@Body CommonRequestBean<RequestGameIdArgs> commonRequestBean);

    @POST(g.f51546r0)
    SearchRecommendBean h1(@Body CommonRequestBean commonRequestBean);

    @POST(g.f51516h0)
    WarIndexResultMainBean<List<WarIndexDataBean>> i(@Body CommonRequestBean<RequestWarIndexArgs> commonRequestBean);

    @POST(g.f51529l1)
    ResultMainBean<List<RewardBean>> i0(@Body CommonRequestBean<RequestPnAndPcAndUidArgs> commonRequestBean);

    @POST(g.V0)
    ResultMainBean<GameOLDataBean<GameOLFirstBean>> i1(@Body CommonRequestBean<RequestPnAndPcArgs> commonRequestBean);

    @POST(g.X0)
    ResultMainBean<GameOLDataBean<GameOLFirstBean>> j(@Body CommonRequestBean<RequestPnAndPcArgs> commonRequestBean);

    @POST(g.f51535n1)
    ResultMainBean<List<RecommendInfomationBean>> j0(@Body CommonRequestBean<RequestGameIdArgs> commonRequestBean);

    @POST("/android/v4/search/integrated_rand_game_favorites")
    ResultMainBean<SearchPageBean> j1(@Body CommonRequestBean<RequestSearchPageArgs> commonRequestBean);

    @POST("/game/game_ranking_top_5")
    ResultMainBean<List<RankingDataBean>> k(@Body CommonRequestBean<GameSortRequestBean> commonRequestBean);

    @POST(g.A0)
    ResultMainBean<InformationCommentBack> k0(@Body CommonRequestBean<GameInformationCommentRequest> commonRequestBean);

    @POST("/android/v3/share/gamestartbootcommenttagadd")
    ResultMainBean<List<ResultValbean>> k1(@Body CommonRequestBean<RequestUidtagidTagdes> commonRequestBean);

    @POST(g.f51537o0)
    ResultMainBean<SearchPageBean> l(@Body CommonRequestBean<RequestSearchPageArgs> commonRequestBean);

    @POST(g.f51540p0)
    SearchAppBean l0(@Body CommonRequestBean<RequestKeywordArgs> commonRequestBean);

    @POST("/home/recommendlocation")
    ResultMainBean<List<RecomDatabean>> l1(@Body CommonRequestBean commonRequestBean);

    @POST(g.f51519i0)
    ResultMainBean<String[]> m(@Body CommonRequestBeanInterface commonRequestBeanInterface);

    @POST(g.R1)
    ResultMainBean<List<TodayWufunBean>> m0(@Body CommonRequestBean<RequestPnAndPcArgs> commonRequestBean);

    @POST(g.f51570z0)
    ResultMainBean<CommitContextDataBean> m1(@Body CommonRequestBean<InformationSendRequestBean> commonRequestBean);

    @POST(g.f51564x0)
    ResultMainBean<CommitContextDataBean> n(@Body CommonRequestBean commonRequestBean);

    @POST(g.f51543q0)
    ResultMainBean<List<SearchPageBean>> n0(@Body CommonRequestBean<RequestSearchPageArgs> commonRequestBean);

    @POST("/android/v3/share/gamestartbootcommenttaglist")
    ResultMainBean<GameShareData> n1(@Body CommonRequestBean<RequestGameIdArgs> commonRequestBean);

    @POST(g.f51550s1)
    ResultMainBean o(@Body CommonRequestBean<RequestGameIdArgs> commonRequestBean);

    @POST("/advertisement/down_load_speed_tips_ad")
    ResultMainBean<List<RecomDatabean>> o0(@Body CommonRequestBean<RequestGameIdArgs> commonRequestBean);

    @POST("/android/v4/search/integrated_posts_list")
    ResultMainBean<SearchPostsBean> o1(@Body CommonRequestBean commonRequestBean);

    @POST(g.J1)
    ResultMainBean<List<CollectionBeanSub>> p(@Body CommonRequestBean<RequestGameIdArgs> commonRequestBean);

    @POST(g.C0)
    ResultMainBean<List<PariseBackData>> p0(@Body CommonRequestBean<PariseRequest> commonRequestBean);

    @POST(g.W0)
    ResultMainBean<GameOLDataBean<GameOLFirstBean>> p1(@Body CommonRequestBean<RequestPnAndPcArgs> commonRequestBean);

    @POST("/battle/battle_room_game_list_cfg")
    ResultMainBean<ArenaGameRoomListConfig> q(@Body CommonRequestBean<RequestArenaRoomListArgs> commonRequestBean);

    @POST("/game/gametypelistv2/indexv2")
    ResultMainBean<ClassifyBean> q0(@Body CommonRequestBean<GameSortRequestBean> commonRequestBean);

    @POST(g.L1)
    ResultMainBean<List<CollectionBeanSub>> q1(@Body CommonRequestBean<RequestGameIdArgs> commonRequestBean);

    @POST("/android/v4/search/integrated_game_favorite_list")
    ResultMainBean<SearchGameFavoriteListBean> r(@Body CommonRequestBean commonRequestBean);

    @POST(g.C1)
    ResultMainBean<HandShankAdBean> r0(@Body CommonRequestBean<RequestHandShankAdListArgs> commonRequestBean);

    @POST(g.D0)
    ResultMainBean<List<APKVersionMainBean>> r1(@Body CommonRequestBean<APKVersionRequestargs> commonRequestBean);

    @POST(g.U)
    ResultMainBean<List<CollectionDataBean>> s(@Body CommonRequestBean<RequestSimulatorArgs> commonRequestBean);

    @POST(g.Y)
    ResultMainBean<List<CommentSendMessageResultBean>> s0(@Body CommonRequestBean<SendAppinfoMainbean> commonRequestBean);

    @POST(g.I0)
    ResultMainBean<MustPlayData> s1(@Body CommonRequestBean<RecomRequestArgs> commonRequestBean);

    @POST(g.T0)
    ResultMainBean<List<GiftPackageDataInfoBean>> t(@Body CommonRequestBean<RequestPnAndPcArgs> commonRequestBean);

    @POST(g.f51565x1)
    ResultMainBean<List<RecomDatabean>> t0(@Body CommonRequestBean<RequestPnArgs> commonRequestBean);

    @POST(g.Q1)
    ResultMainBean<DownDeductCoinResponse> t1(@Body RecomRequestBean<RequestAppDetialArgs> recomRequestBean);

    @POST(g.I1)
    ResultMainBean<List<ResultValbean>> u(@Body CommonRequestBean<RequestSiliencebean> commonRequestBean);

    @POST(g.R)
    ResultMainBean<WufunMarketHomeBean> u0(@Body CommonRequestBean commonRequestBean);

    @POST(g.A1)
    ResultMainBean<List<PariseBackData>> u1(@Body CommonRequestBean<PariseRequest> commonRequestBean);

    @POST(g.f51558v0)
    InformationMainBean v(@Body CommonRequestBean<RequestPnArgs> commonRequestBean);

    @POST(g.O)
    ResultMainBean<List<PAPAHomeBean>> v0(@Body CommonRequestBean commonRequestBean);

    @POST(g.T1)
    ResultMainBean<List<GameHeadAd>> v1(@Body CommonRequestBean commonRequestBean);

    @POST("/android/v2/game/gamescreenshot/index")
    ResultMainBean<List<ScreenShortListItemBean>> w(@Body CommonRequestBean<RequestScreenshortListArgs> commonRequestBean);

    @POST("/largesingle/game_google_ranking")
    ResultMainBean<List<AppBean>> w0(@Body CommonRequestBean<RequestGoogleRankArgs> commonRequestBean);

    @POST(g.f51571z1)
    ResultMainBean<InformationSendBack> w1(@Body CommonRequestBean<InformationSendRequestBean> commonRequestBean);

    @POST(g.T)
    ResultMainBean<EverydayNewGameResponse> x(@Body CommonRequestBean<RequestSimulatorArgs> commonRequestBean);

    @POST(g.H0)
    ResultMainBean<ForumBannerBean.ForumBannerDataBannerBean> x0(@Body ForumBannerBean.ForumBannerRequestBean forumBannerRequestBean);

    @POST(g.f51502a1)
    SearchAppBean x1(@Body CommonRequestBean commonRequestBean);

    @POST(g.f51559v1)
    ResultMainBean<List<GameTopicBean>> y(@Body CommonRequestBean<GameTopicBean> commonRequestBean);

    @POST(g.f51561w0)
    ResultMainBean<InformationCommentBack> y0(@Body CommonRequestBean<RequestCommitArgs> commonRequestBean);

    @POST("/advertisement/down_load_center_ad")
    ResultMainBean<List<RecomDatabean>> y1(@Body CommonRequestBean<RequestGameIdArgs> commonRequestBean);

    @POST(g.M1)
    ResultMainBean<List<CollectionBeanSub>> z(@Body CommonRequestBean<RequestCompanyNameArgs> commonRequestBean);

    @POST("/game/game_ver_by_pg")
    ResultMainBean<GameVerByBg> z0(@Body RecomRequestBean<GameVerByBgRequestargs> recomRequestBean);

    @POST(g.U0)
    ResultMainBean<GameOLDataBean<GameOLFirstBean>> z1(@Body CommonRequestBean<RequestPnAndPcArgs> commonRequestBean);
}
