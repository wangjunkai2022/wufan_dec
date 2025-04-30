package com.join.mgps.rpc.impl;

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
import com.join.mgps.rpc.retrofit2.RetrofitApi;
import java.io.IOException;
import java.util.List;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
/* compiled from: RpcGameClientImpl.java */
/* loaded from: classes4.dex */
public class h implements com.join.mgps.rpc.j {

    /* renamed from: b  reason: collision with root package name */
    private static h f51586b;

    /* renamed from: c  reason: collision with root package name */
    private static h f51587c;

    /* renamed from: a  reason: collision with root package name */
    private final q1.h f51588a;

    /* compiled from: RpcGameClientImpl.java */
    /* loaded from: classes4.dex */
    class a implements Callback<ResponseModel<DataGameListBean>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ l1.h f51589a;

        a(l1.h hVar) {
            this.f51589a = hVar;
        }

        @Override // retrofit2.Callback
        public void onFailure(Call<ResponseModel<DataGameListBean>> call, Throwable th) {
            l1.h hVar = this.f51589a;
            if (hVar != null) {
                hVar.a(th);
            }
        }

        @Override // retrofit2.Callback
        public void onResponse(Call<ResponseModel<DataGameListBean>> call, Response<ResponseModel<DataGameListBean>> response) {
            l1.h hVar = this.f51589a;
            if (hVar != null) {
                hVar.onSuccess(response.body());
            }
        }
    }

    public h(q1.h hVar) {
        this.f51588a = hVar;
    }

    private static void K(boolean z3) {
        if (f51586b == null || z3) {
            f51586b = new h((q1.h) RetrofitApi.getRetrofit2(com.join.mgps.rpc.g.B).create(q1.h.class));
        }
    }

    public static h L() {
        K(false);
        return f51586b;
    }

    public static h M() {
        if (f51587c == null) {
            f51587c = new h((q1.h) RetrofitApi.getRetrofit2(com.join.mgps.rpc.g.C).create(q1.h.class));
        }
        return f51587c;
    }

    public static void N() {
        K(true);
    }

    @Override // com.join.mgps.rpc.j
    public ResponseModel<BbsDetailBean> A(RequestModel<RequestBbsDetailArgs> requestModel) {
        try {
            q1.h hVar = this.f51588a;
            if (hVar != null) {
                return hVar.A(requestModel).execute().body();
            }
            return null;
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.j
    public ResponseModel B(RequestModel<RequestDeleteUserCustomGameTag> requestModel) {
        try {
            q1.h hVar = this.f51588a;
            if (hVar != null) {
                return hVar.B(requestModel).execute().body();
            }
            return null;
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.j
    public ResponseModel<Boolean> C(RequestModel<RequestBbsReplyArgs> requestModel) {
        try {
            q1.h hVar = this.f51588a;
            if (hVar != null) {
                return hVar.C(requestModel).execute().body();
            }
            return null;
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.j
    public ResponseModel<GameMainV4DataBean> D(RequestModel<RequestGameIdArgs> requestModel) {
        try {
            q1.h hVar = this.f51588a;
            if (hVar != null) {
                return hVar.D(requestModel).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.j
    public ResponseModel<ModFeedbackBean> E(RequestModel<RequestModFeedbackArgs> requestModel) {
        try {
            q1.h hVar = this.f51588a;
            if (hVar != null) {
                return hVar.E(requestModel).execute().body();
            }
            return null;
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.j
    public ResponseModel<ServerListData> F(RequestModel<RequestGameIdArgs> requestModel) {
        try {
            q1.h hVar = this.f51588a;
            if (hVar != null) {
                return hVar.F(requestModel).execute().body();
            }
            return null;
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.j
    public ResponseModel<SimulatorExitPlayResponseData> G(RequestModel<SimulatorExitPlayRequestArgs> requestModel) {
        try {
            q1.h hVar = this.f51588a;
            if (hVar != null) {
                return hVar.G(requestModel).execute().body();
            }
            return null;
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.j
    public ResponseModel<List<BbsCommentListBean>> H(RequestModel<RequestBbsCommentListArgs> requestModel) {
        try {
            q1.h hVar = this.f51588a;
            if (hVar != null) {
                return hVar.H(requestModel).execute().body();
            }
            return null;
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.j
    public void I(RequestModel<QueryDownloadInfoRequestArgs> requestModel, l1.h<ResponseModel<DataGameListBean>> hVar) {
        try {
            q1.h hVar2 = this.f51588a;
            if (hVar2 != null) {
                hVar2.b0(requestModel).enqueue(new a(hVar));
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public q1.h J() {
        return this.f51588a;
    }

    @Override // com.join.mgps.rpc.j
    public ResponseModel a(RequestModel<RequestFeedbackUserCustomTag> requestModel) {
        try {
            q1.h hVar = this.f51588a;
            if (hVar != null) {
                return hVar.a(requestModel).execute().body();
            }
            return null;
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.j
    public ResponseModel<List<BbsTagListBean>> b(RequestModel<RequestBbsTagListArgs> requestModel) {
        try {
            q1.h hVar = this.f51588a;
            if (hVar != null) {
                return hVar.b(requestModel).execute().body();
            }
            return null;
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.j
    public ResponseModel<GameBbsPostListBean> c(RequestModel<RequestBbsRecommendArgs> requestModel) {
        try {
            q1.h hVar = this.f51588a;
            if (hVar != null) {
                return hVar.c(requestModel).execute().body();
            }
            return null;
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.j
    public ResponseModel<List<CollectionBeanSub>> d(RequestModel<RequestGameIdArgs> requestModel) {
        try {
            q1.h hVar = this.f51588a;
            if (hVar != null) {
                return hVar.d(requestModel).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.j
    public ResponseModel<Boolean> e(RequestModel<VideoAdWatchLogRequest> requestModel) {
        try {
            q1.h hVar = this.f51588a;
            if (hVar != null) {
                return hVar.e(requestModel).execute().body();
            }
            return null;
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.j
    public ResponseModel<SearchGameListBean> f(RequestModel<RequestSearchGameArgs> requestModel) {
        try {
            q1.h hVar = this.f51588a;
            if (hVar != null) {
                return hVar.f(requestModel).execute().body();
            }
            return null;
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.j
    public ResponseModel<NoticeListData> g(RequestModel<RequestGameIdArgs> requestModel) {
        try {
            q1.h hVar = this.f51588a;
            if (hVar != null) {
                return hVar.g(requestModel).execute().body();
            }
            return null;
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.j
    public ResponseModel<List<BbsListBean>> h(RequestModel<RequestBbsListArgs> requestModel) {
        try {
            q1.h hVar = this.f51588a;
            if (hVar != null) {
                return hVar.h(requestModel).execute().body();
            }
            return null;
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.j
    public ResponseModel<GamedetialModleFourBean> i(RequestModel<RequestGameIdArgs> requestModel) {
        try {
            q1.h hVar = this.f51588a;
            if (hVar != null) {
                return hVar.i(requestModel).execute().body();
            }
            return null;
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.j
    public ResponseModel<QueryDownloadInfoResponseData> j(RequestModel<QueryDownloadInfoRequestArgs> requestModel) {
        try {
            q1.h hVar = this.f51588a;
            if (hVar != null) {
                return hVar.j(requestModel).execute().body();
            }
            return null;
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.j
    public ResponseModel<List<CollectionBeanSub>> k(RequestModel<RequestGameIdArgs> requestModel) {
        try {
            q1.h hVar = this.f51588a;
            if (hVar != null) {
                return hVar.k(requestModel).execute().body();
            }
            return null;
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.j
    public ResponseModel<Boolean> l(RequestModel<RequestBbsDispraiseArgs> requestModel) {
        try {
            q1.h hVar = this.f51588a;
            if (hVar != null) {
                return hVar.l(requestModel).execute().body();
            }
            return null;
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.j
    public ResponseModel<CheckGameVersionResponseData> m(RequestModel<CheckGameVersionRequestArgs> requestModel) {
        try {
            q1.h hVar = this.f51588a;
            if (hVar != null) {
                return hVar.m(requestModel).execute().body();
            }
            return null;
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.j
    public ResponseModel n(RequestModel<RequestDeleteUserCustomTag> requestModel) {
        try {
            q1.h hVar = this.f51588a;
            if (hVar != null) {
                return hVar.n(requestModel).execute().body();
            }
            return null;
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.j
    public ResponseModel<List<String>> o(RequestModel<RequestSearchUserCustomGameTag> requestModel) {
        try {
            q1.h hVar = this.f51588a;
            if (hVar != null) {
                return hVar.o(requestModel).execute().body();
            }
            return null;
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.j
    public ResponseModel<ModGameDetailBean> p(RequestModel<RequestModGameArgs> requestModel) {
        try {
            q1.h hVar = this.f51588a;
            if (hVar != null) {
                return hVar.p(requestModel.makeSign()).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.j
    public ResponseModel<VideoAdCfgBean> q(RequestModel<VideoAdCfgRequestArgs> requestModel) {
        try {
            q1.h hVar = this.f51588a;
            if (hVar != null) {
                return hVar.q(requestModel).execute().body();
            }
            return null;
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.j
    public ResponseModel<List<CommonGameInfoBean>> r(RequestModel<RequestMiniGameArgs> requestModel) {
        try {
            q1.h hVar = this.f51588a;
            if (hVar != null) {
                return hVar.r(requestModel).execute().body();
            }
            return null;
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.j
    public ResponseModel<List<BbsCommentListBean>> s(RequestModel<RequestBbsCommentListArgs> requestModel) {
        try {
            q1.h hVar = this.f51588a;
            if (hVar != null) {
                return hVar.s(requestModel).execute().body();
            }
            return null;
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.j
    public ResponseModel<List<CollectionBeanSub>> t(RequestModel<RequestRankingListArgs> requestModel) {
        try {
            q1.h hVar = this.f51588a;
            if (hVar != null) {
                return hVar.t(requestModel).execute().body();
            }
            return null;
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.j
    public ResponseModel<ListUserCustomGameTagBean> u(RequestModel<RequestAddUserCustomGameTag> requestModel) {
        try {
            q1.h hVar = this.f51588a;
            if (hVar != null) {
                return hVar.u(requestModel).execute().body();
            }
            return null;
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.j
    public ResponseModel<List<BbsCommentListBean>> v(RequestModel<RequestBbsCommentListArgs> requestModel) {
        try {
            q1.h hVar = this.f51588a;
            if (hVar != null) {
                return hVar.v(requestModel).execute().body();
            }
            return null;
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.j
    public ResponseModel<MiniGameSdkDtoResponseResponseData> w(RequestModel<MiniGameSdkDtoRequestArgs> requestModel) {
        try {
            q1.h hVar = this.f51588a;
            if (hVar != null) {
                return hVar.w(requestModel).execute().body();
            }
            return null;
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.j
    public ResponseModel<ListUserCustomGameTagBean> x(RequestModel<RequestListUserCustomGameTagArgs> requestModel) {
        try {
            q1.h hVar = this.f51588a;
            if (hVar != null) {
                return hVar.x(requestModel).execute().body();
            }
            return null;
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.j
    public ResponseModel<Boolean> y(RequestModel<RequestBbsPraiseArgs> requestModel) {
        try {
            q1.h hVar = this.f51588a;
            if (hVar != null) {
                return hVar.y(requestModel).execute().body();
            }
            return null;
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.j
    public ResponseModel<ModFeedbackBean> z(RequestModel<RequestModFeedbackArgs> requestModel) {
        try {
            q1.h hVar = this.f51588a;
            if (hVar != null) {
                return hVar.z(requestModel).execute().body();
            }
            return null;
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }
}
