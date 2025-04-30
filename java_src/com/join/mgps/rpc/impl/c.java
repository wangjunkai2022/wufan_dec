package com.join.mgps.rpc.impl;

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
import com.join.mgps.rpc.retrofit2.RetrofitApi;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
/* compiled from: RpcClientImpl.java */
/* loaded from: classes4.dex */
public class c implements com.join.mgps.rpc.d {

    /* renamed from: b  reason: collision with root package name */
    private static c f51576b;

    /* renamed from: a  reason: collision with root package name */
    private final q1.c f51577a;

    public c(q1.c cVar) {
        this.f51577a = cVar;
    }

    public static c P1() {
        if (f51576b == null) {
            f51576b = new c((q1.c) RetrofitApi.getRetrofit2(com.join.mgps.rpc.g.f51518i).create(q1.c.class));
        }
        return f51576b;
    }

    public static c Q1() {
        c cVar = new c((q1.c) RetrofitApi.getRetrofit2(com.join.mgps.rpc.g.f51518i).create(q1.c.class));
        f51576b = cVar;
        return cVar;
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<GameOLDataBean<GameOLFirstBean>> A(CommonRequestBean<RequestPnAndPcArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.A(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<List<TodayWufunTopic>> A0(CommonRequestBean<RequestPnAndPcArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.A0(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<List<CollectionBeanSub>> A1(CommonRequestBean<RequestSNKGameArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.A1(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<List<RecomCentrebean>> B(CommonRequestBean<RequestPnArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.B(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<List<GameSortBean>> B0(CommonRequestBean<GameSortRequestBean> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.B0(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<SearchGameListBean> B1(CommonRequestBean commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.B1(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<List<BootPageData>> C(CommonRequestBean<BootPageRequestArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.C(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<GameDownInfo> C0(CommonRequestBean<RequestGameIdArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.C0(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<List<ApkVersionbean>> C1(CommonRequestBean<APKVersionRequestargs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.C1(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean D(CommonRequestBean<RequestGameIdArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.D(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<BattlehallDatabean> D0(CommonRequestBean<RequestBattlehallArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.D0(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<SearchIntegratedBean> D1(CommonRequestBean commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.D1(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<List<MatchBattleManagementBean>> E(CommonRequestBean<RequestPnArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.E(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<List<ForumBannerBean.ForumAreaBannerMessagesData>> E0(ForumBannerBean.ForumBannerRequestBean forumBannerRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.E0(forumBannerRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<List<ResultValbean>> E1(CommonRequestBean<RequestGameShareTag> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.E1(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<List<RecommendInfomationBean>> F(CommonRequestBean<RequestGameIdArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.F(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<GameSignleCompanyListbean> F0(CommonRequestBean<RequestPnAndPcArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.F0(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<List<StandAloneListBean>> F1(CommonRequestBean commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.F1(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<GameMainV3DataBean> G(CommonRequestBean<RequestGameIdArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.G(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<List<ShowViewDataBean>> G0(CommonRequestBean<ArrayList> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.G0(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public CollectionBean G1(CommonRequestBean<RequestCollectionArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.G1(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<GameFactoryListBean> H(CommonRequestBean<Integer> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.H(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<List<SearchDataBean>> H0(CommonRequestBean<AppDataBackupBean> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.H0(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public MessageRedPointBean H1(CommonRequestBean commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.H1(commonRequestBean).execute().body();
            }
            return null;
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<RecomeWifiDatabean> I(CommonRequestBean<RequestPnAndPcArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.I(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<List<CollectionBeanSub>> I0(CommonRequestBean<RequestClassifyArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.I0(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<PAPAMainBean> I1(CommonRequestBean commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.I1(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<PopupAdBean> J(CommonRequestBean<RequestPnAndPcAndUidArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.J(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public GameDiscoverMainBean J0(CommonRequestBean<RequestPnAndPcArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.J0(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<List<CommentSendMessageResultBean>> J1(CommonRequestBean<RegisterRequestBean> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.J1(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<List<BaiduAdDataMain>> K(CommonRequestBean<RequestPnArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.K(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public RecomDataAllBean K0(CommonRequestBean commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.K0(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<SimulatorAreaDataBean> K1(RecomRequestBean<SimulatorAreaRequest> recomRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.K1(recomRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<RecomentBean1> L(CommonRequestBean<RequestTypePn> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.L(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public GiftPackageBean L0(CommonRequestBean<GiftPackageArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.L0(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<SimulatorAreaDataBean> L1(RecomRequestBean<SimulatorAreaRequest> recomRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.M1(recomRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<GameFactoryListBean> M(CommonRequestBean<Integer> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.M(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<ClassfyTypeBean> M0(CommonRequestBean<ClassifyGameBean> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.M0(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<SimulatorAreaDataBean> M1(RecomRequestBean<SimulatorAreaRequest> recomRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.O1(recomRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<GameListAndHeadAdAndCollectionInfoBean> N(CommonRequestBean<RequestPnAndPcArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.N(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<List<APKVersionMainBean>> N0(CommonRequestBean<APKVersionRequestargs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.N0(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<SimulatorAreaDataBean> N1(RecomRequestBean<SimulatorAreaRequest> recomRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.Q1(recomRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<List<GameInformationBean>> O(CommonRequestBean<RequestInfoIdArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.O(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean O0(CommonRequestBean<RequestGameIdArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.O0(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public q1.c O1() {
        return this.f51577a;
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<List<GameOLHeadAdBean>> P(CommonRequestBean<RequestPnArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.P(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public GiftPackageInfoBean P0(CommonRequestBean<GiftPackageInfoArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.P0(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public WarModuleBean Q(CommonRequestBeanInterface commonRequestBeanInterface) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.Q(commonRequestBeanInterface).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<String> Q0(CommonRequestBean<RequestGameIdArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.Q0(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<List<DetailResultBean>> R(RecomRequestBean<RequestAppDetialArgs> recomRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.R(recomRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<List<VipPopData>> R0(CommonRequestBean<RequestPnAndPcAndUidArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.R0(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<GameListAndHeadAdBean> S(CommonRequestBean<RequestPnAndPcArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.S(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public GamesurFaceMainBean S0(RecomRequestBean<RequestAppDetialArgs> recomRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.S0(recomRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<List<DetailResultBeanV3>> T(RecomRequestBean<RequestAppDetialArgs> recomRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.T(recomRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<List<StandAloneListBean>> T0(CommonRequestBean commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.T0(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<List<GamedetialModleFourBean>> U(CommonRequestBean<RequestGameIdArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.U(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<List<StatisticMainBean>> U0(CommonRequestBeanInterface commonRequestBeanInterface) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.U0(commonRequestBeanInterface).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<SNKGameInfoBean> V(CommonRequestBean commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.V(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<GameMainSimulatorResponse> V0(CommonRequestBean<RequestGameIdArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.V0(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<List<ResultValbean>> W(CommonRequestBean<RequestUserCenterArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.W(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public CategoryBean W0(CommonRequestBean<ArrayList> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.W0(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<GamedetialMoreGiftData> X(CommonRequestBean<RequestGameIdArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.X(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<HomeGameCarefullyBean> X0(CommonRequestBean commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.X0(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<GameOLDataBean<GameOLFirstBean>> Y(CommonRequestBean<RequestPnAndPcArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.Y(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<List<RecomDatabean>> Y0(CommonRequestBean<RequestPnArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.Y0(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ForumBannerBean.ForumBannerResponseBean Z(ForumBannerBean.ForumBannerRequestBean forumBannerRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.Z(forumBannerRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<UserCenterBean> Z0(CommonRequestBean<RequestUserCenterArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.Z0(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<UserCenterBean> a(CommonRequestBean<RequestUserCenterArgs> commonRequestBean) {
        return null;
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<PayGameDetialBean> a0(RecomRequestBean<RequestAppDetialArgs> recomRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.a0(recomRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<List<GameMainDataBean>> a1(CommonRequestBean<RequestGameIdArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.a1(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<List<PariseBackData>> b(CommonRequestBean<GamePariseRequest> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.b(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public GameReplyMessageListBean b0(CommonRequestBean commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.b0(commonRequestBean).execute().body();
            }
            return null;
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<RankingItemDataBean> b1(CommonRequestBean<RequestTypePn> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.b1(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<List<MustPlayNetDataBean>> c(CommonRequestBeanInterface commonRequestBeanInterface) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.c(commonRequestBeanInterface).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<List<CollectionDataBean>> c0(CommonRequestBean<RequestSimulatorArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.c0(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public CollectionModuleBean c1(CommonRequestBean<RequestCollectionArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.c1(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean d(CommonRequestBean<RequestGameIdArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.d(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean d0(CommonRequestBean<RequestGameIdArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.d0(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<ResponseDownloadCenterAd> d1(CommonRequestBean<RequestDownloadCenterArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.d1(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public SearchAutoBean e(CommonRequestBean<RequestKeywordArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.e(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<List<String>> e0(CommonRequestBean<IgnoreNoticeRequestArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.e0(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<CollectionBeanSub> e1(RecomRequestBean<RequestAppDetialArgs> recomRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.e1(recomRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<InformationCommentBack> f(CommonRequestBean<GameInformationCommentRequest> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.f(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public GiftPackageOperationBean f0(CommonRequestBean<GiftPackageOperationArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.f0(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<List<CheckAppVersionBean>> f1(CommonRequestBean<AllAppId> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.f1(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<GameListAndHeadAdBean> g(CommonRequestBean<RequestPnAndPcArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.g(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<List<CollectionBeanSub>> g0(CommonRequestBean<RequestTypePn> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.g0(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<List<ServiceStateForMore>> g1(CommonRequestBean<RequestGameIdArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.g1(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<GameOLDataBean<GameOLNoOpenTestBean>> h(CommonRequestBean<RequestPnAndPcArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.h(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<List<ScreenshortTabBean>> h0(CommonRequestBean<RequestGameIdArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.h0(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public SearchRecommendBean h1(CommonRequestBean commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.h1(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public WarIndexResultMainBean<List<WarIndexDataBean>> i(CommonRequestBean<RequestWarIndexArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.i(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<List<RewardBean>> i0(CommonRequestBean<RequestPnAndPcAndUidArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.i0(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<GameOLDataBean<GameOLFirstBean>> i1(CommonRequestBean<RequestPnAndPcArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.i1(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<GameOLDataBean<GameOLFirstBean>> j(CommonRequestBean<RequestPnAndPcArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.j(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<List<RecommendInfomationBean>> j0(CommonRequestBean<RequestGameIdArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.j0(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<SearchPageBean> j1(CommonRequestBean<RequestSearchPageArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.j1(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<List<RankingDataBean>> k(CommonRequestBean<GameSortRequestBean> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.k(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<InformationCommentBack> k0(CommonRequestBean<GameInformationCommentRequest> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.k0(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<List<ResultValbean>> k1(CommonRequestBean<RequestUidtagidTagdes> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.k1(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<SearchPageBean> l(CommonRequestBean<RequestSearchPageArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.l(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public SearchAppBean l0(CommonRequestBean<RequestKeywordArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.l0(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<List<RecomDatabean>> l1(CommonRequestBean commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.l1(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<String[]> m(CommonRequestBeanInterface commonRequestBeanInterface) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.m(commonRequestBeanInterface).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<List<TodayWufunBean>> m0(CommonRequestBean<RequestPnAndPcArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.m0(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<CommitContextDataBean> m1(CommonRequestBean<InformationSendRequestBean> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.m1(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<CommitContextDataBean> n(CommonRequestBean commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.n(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<List<SearchPageBean>> n0(CommonRequestBean<RequestSearchPageArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.n0(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<GameShareData> n1(CommonRequestBean<RequestGameIdArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.n1(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean o(CommonRequestBean<RequestGameIdArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.o(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<List<RecomDatabean>> o0(CommonRequestBean<RequestGameIdArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.o0(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<SearchPostsBean> o1(CommonRequestBean commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.o1(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<List<CollectionBeanSub>> p(CommonRequestBean<RequestGameIdArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.p(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<List<PariseBackData>> p0(CommonRequestBean<PariseRequest> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.p0(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<GameOLDataBean<GameOLFirstBean>> p1(CommonRequestBean<RequestPnAndPcArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.p1(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<ArenaGameRoomListConfig> q(CommonRequestBean<RequestArenaRoomListArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.q(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<ClassifyBean> q0(CommonRequestBean<GameSortRequestBean> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.q0(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<List<CollectionBeanSub>> q1(CommonRequestBean<RequestGameIdArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.q1(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<SearchGameFavoriteListBean> r(CommonRequestBean commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.r(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<HandShankAdBean> r0(CommonRequestBean<RequestHandShankAdListArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.r0(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<List<APKVersionMainBean>> r1(CommonRequestBean<APKVersionRequestargs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.r1(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<List<CollectionDataBean>> s(CommonRequestBean<RequestSimulatorArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.s(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<List<CommentSendMessageResultBean>> s0(CommonRequestBean<SendAppinfoMainbean> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.s0(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<MustPlayData> s1(CommonRequestBean<RecomRequestArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.s1(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<List<GiftPackageDataInfoBean>> t(CommonRequestBean<RequestPnAndPcArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.t(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<List<RecomDatabean>> t0(CommonRequestBean<RequestPnArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.t0(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<DownDeductCoinResponse> t1(RecomRequestBean<RequestAppDetialArgs> recomRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.t1(recomRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<List<ResultValbean>> u(CommonRequestBean<RequestSiliencebean> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.u(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<WufunMarketHomeBean> u0(CommonRequestBean commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.u0(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<List<PariseBackData>> u1(CommonRequestBean<PariseRequest> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.u1(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public InformationMainBean v(CommonRequestBean<RequestPnArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.v(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<List<PAPAHomeBean>> v0(CommonRequestBean commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.v0(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<List<GameHeadAd>> v1(CommonRequestBean commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.v1(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<List<ScreenShortListItemBean>> w(CommonRequestBean<RequestScreenshortListArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.w(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<List<AppBean>> w0(CommonRequestBean<RequestGoogleRankArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.w0(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<InformationSendBack> w1(CommonRequestBean<InformationSendRequestBean> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.w1(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<EverydayNewGameResponse> x(CommonRequestBean<RequestSimulatorArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.x(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<ForumBannerBean.ForumBannerDataBannerBean> x0(ForumBannerBean.ForumBannerRequestBean forumBannerRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.x0(forumBannerRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public SearchAppBean x1(CommonRequestBean commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.x1(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<List<GameTopicBean>> y(CommonRequestBean<GameTopicBean> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.y(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<InformationCommentBack> y0(CommonRequestBean<RequestCommitArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.y0(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<List<RecomDatabean>> y1(CommonRequestBean<RequestGameIdArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.y1(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<List<CollectionBeanSub>> z(CommonRequestBean<RequestCompanyNameArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.z(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<GameVerByBg> z0(RecomRequestBean<GameVerByBgRequestargs> recomRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.z0(recomRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.d
    public ResultMainBean<GameOLDataBean<GameOLFirstBean>> z1(CommonRequestBean<RequestPnAndPcArgs> commonRequestBean) {
        try {
            q1.c cVar = this.f51577a;
            if (cVar != null) {
                return cVar.z1(commonRequestBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }
}
