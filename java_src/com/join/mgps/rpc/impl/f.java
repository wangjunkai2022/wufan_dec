package com.join.mgps.rpc.impl;

import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.DiscoverListData;
import com.join.mgps.dto.DiscoverListItemBean;
import com.join.mgps.dto.DiscoverListWeiboItemBean;
import com.join.mgps.dto.EmptyMessage;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.ForumData;
import com.join.mgps.dto.ForumProfileMessageData;
import com.join.mgps.dto.ForumResponse;
import com.join.mgps.dto.GameCommitListBean;
import com.join.mgps.dto.GameMainCommunityBean;
import com.join.mgps.dto.GivePriaceBean;
import com.join.mgps.dto.GroupListBean;
import com.join.mgps.dto.HavenForumDatabean;
import com.join.mgps.dto.HavenWishResultBean;
import com.join.mgps.dto.LabelBean;
import com.join.mgps.dto.MainLabelBean;
import com.join.mgps.dto.MessageCommentReplyResponse;
import com.join.mgps.dto.MulPostData;
import com.join.mgps.dto.NoticeFragmentBean;
import com.join.mgps.dto.RecommendLabelTag;
import com.join.mgps.dto.Response;
import com.join.mgps.dto.ResultResMainBean;
import com.join.mgps.rpc.retrofit2.RetrofitApi;
import java.io.IOException;
import java.util.List;
import java.util.Map;
/* compiled from: RpcForumClientImpl.java */
/* loaded from: classes4.dex */
public class f implements com.join.mgps.rpc.h {

    /* renamed from: b  reason: collision with root package name */
    private static f f51582b;

    /* renamed from: a  reason: collision with root package name */
    private final q1.f f51583a;

    public f(q1.f fVar) {
        this.f51583a = fVar;
    }

    public static f A0() {
        if (f51582b == null) {
            f51582b = new f((q1.f) RetrofitApi.getRetrofit2(com.join.mgps.rpc.g.f51527l).create(q1.f.class));
        }
        return f51582b;
    }

    @Override // com.join.mgps.rpc.h
    public ForumResponse<ForumData.ForumCommentReplyDeleteData> A(Map<String, String> map) {
        try {
            q1.f fVar = this.f51583a;
            if (fVar != null) {
                return fVar.A(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.h
    public ForumResponse<ForumData.ForumProfileFavoritesPostsData> B(int i2, String str, int i4, int i5, String str2) {
        try {
            q1.f fVar = this.f51583a;
            if (fVar != null) {
                return fVar.B(i2, str, i4, i5, str2).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.h
    public ForumResponse<DiscoverListData<DiscoverListItemBean>> C(int i2, int i4, int i5) {
        q1.f fVar = this.f51583a;
        if (fVar != null) {
            try {
                return fVar.C(i2, i4, i5).execute().body();
            } catch (IOException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    @Override // com.join.mgps.rpc.h
    public ResultResMainBean<List<LabelBean>> D(String str, String str2, int i2) {
        try {
            q1.f fVar = this.f51583a;
            if (fVar != null) {
                return fVar.D(str, str2, i2).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.h
    public ForumResponse<ForumData.MyForumMain> E(String str, String str2, int i2, int i4) {
        try {
            q1.f fVar = this.f51583a;
            if (fVar != null) {
                return fVar.E(str, str2, i2, i4).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.h
    public ForumResponse<ForumProfileMessageData> F(int i2, String str, int i4, int i5) {
        try {
            q1.f fVar = this.f51583a;
            if (fVar != null) {
                return fVar.F(i2, str, i4, i5).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.h
    public ForumResponse<ForumData.ForumForumAllData> G(String str) {
        try {
            q1.f fVar = this.f51583a;
            if (fVar != null) {
                return fVar.G(str).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.h
    public ResultResMainBean<Response> H(String str, String str2, int i2) {
        try {
            q1.f fVar = this.f51583a;
            if (fVar != null) {
                return fVar.H(str, str2, i2).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.h
    public ResultResMainBean<GameCommitListBean> I(String str, String str2, String str3, String str4) {
        try {
            q1.f fVar = this.f51583a;
            if (fVar != null) {
                return fVar.I(str, str2, str3, str4).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.h
    public ForumResponse<ForumData.ForumCommentReplyReplyData> J(Map<String, String> map) {
        try {
            q1.f fVar = this.f51583a;
            if (fVar != null) {
                return fVar.J(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.h
    public ForumResponse<ForumData.ForumProfileUnreadMessageCountData> K(int i2, String str, String str2) {
        try {
            q1.f fVar = this.f51583a;
            if (fVar != null) {
                return fVar.K(i2, str, str2).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.h
    public ForumResponse<MulPostData> L(String str) {
        try {
            q1.f fVar = this.f51583a;
            if (fVar != null) {
                return fVar.L(str).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.h
    public ForumResponse<ForumData.HomepageRecommendLabel> M(int i2, int i4, int i5, int i6, int i7, String str, String str2) {
        try {
            q1.f fVar = this.f51583a;
            if (fVar != null) {
                return fVar.M(i2, i4, i5, i6, i7, str, str2).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.h
    public ForumResponse<ForumData.ForumSearchQueryData> N(int i2, int i4, String str, String str2, int i5) {
        try {
            q1.f fVar = this.f51583a;
            if (fVar != null) {
                return fVar.N(i2, i4, str, str2, i5).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.h
    public ForumResponse<ForumData.HomepageRecommendLabel> O(int i2, int i4, String str, String str2) {
        try {
            q1.f fVar = this.f51583a;
            if (fVar != null) {
                return fVar.O(i2, i4, str, str2).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.h
    public ForumResponse<ForumData.HomepageRecommendGroup> P(String str, String str2) {
        try {
            q1.f fVar = this.f51583a;
            if (fVar != null) {
                return fVar.P(str, str2).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.h
    public NoticeFragmentBean Q(int i2, String str, int i4, int i5, String str2, String str3) {
        q1.f fVar = this.f51583a;
        if (fVar != null) {
            try {
                return fVar.Q(i2, str, i4, i5, str2, str3).execute().body();
            } catch (IOException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    @Override // com.join.mgps.rpc.h
    public ForumResponse<HavenForumDatabean> R(String str, String str2) {
        q1.f fVar = this.f51583a;
        if (fVar != null) {
            try {
                return fVar.R(str, str2).execute().body();
            } catch (IOException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    @Override // com.join.mgps.rpc.h
    public ForumResponse<ForumData.ForumForumPlateData> S(int i2, int i4, int i5, String str, int i6, String str2, String str3, String str4, String str5) {
        try {
            q1.f fVar = this.f51583a;
            if (fVar != null) {
                return fVar.S(i2, i4, i5, str, i6, str2, str3, str4, str5).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.h
    public ForumResponse<ForumData.ForumForumWelcomeData> T(int i2, String str, String str2) {
        try {
            q1.f fVar = this.f51583a;
            if (fVar != null) {
                return fVar.T(i2, str, str2).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.h
    public ForumResponse<ForumData.ForumForumAllData> U(int i2, String str, String str2) {
        try {
            q1.f fVar = this.f51583a;
            if (fVar != null) {
                return fVar.U(i2, str, str2).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.h
    public ForumResponse<ForumData.ForumForumWelcomePostsData> V(int i2, int i4, int i5, String str, String str2) {
        try {
            q1.f fVar = this.f51583a;
            if (fVar != null) {
                return fVar.V(i2, i4, i5, str, str2).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.h
    public ForumResponse<List<ForumBean.ForumPostsBean>> W(String str, String str2, int i2) {
        try {
            q1.f fVar = this.f51583a;
            if (fVar != null) {
                return fVar.W(str, str2, i2).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.h
    public ResultResMainBean<List<ForumBean.ForumPostsBean>> X(String str, int i2, int i4, int i5, int i6, String str2, String str3, String str4) {
        try {
            q1.f fVar = this.f51583a;
            if (fVar != null) {
                return fVar.X(str, i2, i4, i5, i6, str2, str3, str4).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.h
    public ForumResponse<ForumData.ForumPostsData> Y(int i2, int i4, int i5, String str, int i6, String str2, String str3, String str4, String str5) {
        try {
            q1.f fVar = this.f51583a;
            if (fVar != null) {
                return fVar.Y(i2, i4, i5, str, i6, str2, str3, str4, str5).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.h
    public ForumResponse<ForumData.GroupFans> Z(int i2, int i4, String str, String str2) {
        try {
            q1.f fVar = this.f51583a;
            if (fVar != null) {
                return fVar.Z(i2, i4, str, str2).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.h
    public ForumResponse<List<ForumData.ForumProfileCommentData>> a(int i2, String str, int i4, int i5, String str2) {
        try {
            q1.f fVar = this.f51583a;
            if (fVar != null) {
                return fVar.a(i2, str, i4, i5, str2).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.h
    public ForumResponse<ForumData.HomepageRecommendLabel> a0(int i2, int i4, String str, String str2, String str3) {
        try {
            q1.f fVar = this.f51583a;
            if (fVar != null) {
                return fVar.a0(i2, i4, str, str2, str3).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.h
    public ForumResponse<DiscoverListData<DiscoverListWeiboItemBean>> b(int i2, int i4, int i5) {
        q1.f fVar = this.f51583a;
        if (fVar != null) {
            try {
                return fVar.b(i2, i4, i5).execute().body();
            } catch (IOException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    @Override // com.join.mgps.rpc.h
    public ForumResponse<MessageCommentReplyResponse> b0(String str, Map<String, Object> map) {
        try {
            q1.f fVar = this.f51583a;
            if (fVar != null) {
                return fVar.b0(str, map).execute().body();
            }
            return null;
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.h
    public ForumResponse<ForumData.ForumPostsReportData> c(Map<String, String> map) {
        try {
            q1.f fVar = this.f51583a;
            if (fVar != null) {
                return fVar.c(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.h
    public ForumResponse<ForumData.ForumProfileMessageReplyData> c0(int i2, String str, int i4, String str2) {
        try {
            q1.f fVar = this.f51583a;
            if (fVar != null) {
                return fVar.c0(i2, str, i4, str2).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.h
    public ResultResMainBean<List<LabelBean>> d(String str) {
        try {
            q1.f fVar = this.f51583a;
            if (fVar != null) {
                return fVar.d(str).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.h
    public ForumResponse<ForumData.ForumCommentDeleteData> d0(Map<String, String> map) {
        try {
            q1.f fVar = this.f51583a;
            if (fVar != null) {
                return fVar.d0(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.h
    public ForumResponse<ForumData.ForumSearchIndexData> e(String str) {
        try {
            q1.f fVar = this.f51583a;
            if (fVar != null) {
                return fVar.e(str).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.h
    public ForumResponse<ForumData.HomepageRecommendLabel> e0(int i2, String str, String str2) {
        try {
            q1.f fVar = this.f51583a;
            if (fVar != null) {
                return fVar.e0(i2, str, str2).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.h
    public ForumResponse<ForumData.ForumResult> f(Map<String, String> map) {
        try {
            q1.f fVar = this.f51583a;
            if (fVar != null) {
                return fVar.f(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.h
    public ForumResponse<ForumData.ForumPostsData> f0(int i2, int i4, int i5, int i6, String str, int i7, String str2, String str3, String str4, String str5) {
        try {
            q1.f fVar = this.f51583a;
            if (fVar != null) {
                return fVar.f0(i2, i4, i5, i6, str, i7, str2, str3, str4, str5).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.h
    public ForumResponse<ForumData.HomepageRecommendLabel> g(int i2, int i4, String str, String str2, String str3) {
        try {
            q1.f fVar = this.f51583a;
            if (fVar != null) {
                return fVar.g(i2, i4, str, str2, str3).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.h
    public ForumResponse<HavenWishResultBean> g0(Map<String, Object> map) {
        q1.f fVar = this.f51583a;
        if (fVar != null) {
            try {
                return fVar.g0(map).execute().body();
            } catch (IOException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    @Override // com.join.mgps.rpc.h
    public ForumResponse<ForumData.ForumForumTopicData> h(int i2, int i4, String str, int i5, int i6, String str2) {
        try {
            q1.f fVar = this.f51583a;
            if (fVar != null) {
                return fVar.h(i2, i4, str, i5, i6, str2).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.h
    public ForumResponse<ForumData.ForumResult> h0(int i2, String str, String str2) {
        try {
            q1.f fVar = this.f51583a;
            if (fVar != null) {
                return fVar.h0(i2, str, str2).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.h
    public ForumResponse<ForumData.HomepageRecommendLabel> i(int i2, String str, String str2) {
        try {
            q1.f fVar = this.f51583a;
            if (fVar != null) {
                return fVar.i(i2, str, str2).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.h
    public ForumResponse<ForumData.ForumForumWelcomeData> i0(String str) {
        try {
            q1.f fVar = this.f51583a;
            if (fVar != null) {
                return fVar.i0(str).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.h
    public ForumResponse<ForumData.ForumPostsHelpSolveData> j(Map<String, String> map) {
        try {
            q1.f fVar = this.f51583a;
            if (fVar != null) {
                return fVar.j(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.h
    public ResultResMainBean<String> j0(int i2) {
        try {
            q1.f fVar = this.f51583a;
            if (fVar != null) {
                return fVar.j0(i2).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.h
    public ForumResponse<ForumData.ForumProfilePostsData> k(int i2, String str, int i4, int i5, String str2) {
        try {
            q1.f fVar = this.f51583a;
            if (fVar != null) {
                return fVar.k(i2, str, i4, i5, str2).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.h
    public ForumResponse<ForumData.ForumPostsFavoritesData> k0(Map<String, String> map) {
        try {
            q1.f fVar = this.f51583a;
            if (fVar != null) {
                return fVar.k0(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.h
    public ForumResponse<ForumData.ForumSearchQueryData> l(int i2, int i4, String str, String str2) {
        try {
            q1.f fVar = this.f51583a;
            if (fVar != null) {
                return fVar.l(i2, i4, str, str2).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.h
    public ForumResponse<ForumData.ForumCommentReplyData> l0(Map<String, String> map) {
        try {
            q1.f fVar = this.f51583a;
            if (fVar != null) {
                return fVar.l0(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.h
    public GivePriaceBean m(String str, CommonRequestBean commonRequestBean) {
        try {
            q1.f fVar = this.f51583a;
            if (fVar != null) {
                return fVar.m(str, commonRequestBean).execute().body();
            }
            return null;
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.h
    public ForumResponse<ForumProfileMessageData> m0(int i2, String str, int i4, int i5) {
        try {
            q1.f fVar = this.f51583a;
            if (fVar != null) {
                return fVar.m0(i2, str, i4, i5).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.h
    public ResultResMainBean<GameMainCommunityBean> n(int i2) {
        try {
            q1.f fVar = this.f51583a;
            if (fVar != null) {
                return fVar.n(i2).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.h
    public ResultResMainBean<EmptyMessage> n0(String str, String str2, int i2, String str3) {
        try {
            q1.f fVar = this.f51583a;
            if (fVar != null) {
                return fVar.n0(str, str2, i2, str3).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.h
    public ForumResponse<ForumData.ForumPostsPraiseData> o(Map<String, String> map) {
        try {
            q1.f fVar = this.f51583a;
            if (fVar != null) {
                return fVar.o(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.h
    public ResultResMainBean<List<CollectionBeanSub>> o0(String str, int i2) {
        try {
            q1.f fVar = this.f51583a;
            if (fVar != null) {
                return fVar.o0(str, i2).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.h
    public ResultResMainBean<MainLabelBean> p(String str, int i2, int i4, String str2) {
        try {
            q1.f fVar = this.f51583a;
            if (fVar != null) {
                return fVar.p(str, i2, i4, str2).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.h
    public ForumResponse<ForumData.ForumForumGroupsData> p0(int i2, String str, String str2) {
        try {
            q1.f fVar = this.f51583a;
            if (fVar != null) {
                return fVar.p0(i2, str, str2).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.h
    public ForumResponse<ForumData.ForumForumPlateData> q(int i2, int i4, int i5, String str, int i6, String str2, String str3) {
        try {
            q1.f fVar = this.f51583a;
            if (fVar != null) {
                return fVar.q(i2, i4, i5, str, i6, str2, str3).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.h
    public ForumResponse<ForumData.ForumPostsDeleteData> q0(Map<String, String> map) {
        try {
            q1.f fVar = this.f51583a;
            if (fVar != null) {
                return fVar.q0(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.h
    public ForumResponse<ForumData.ForumPostsFavoritesData> r(Map<String, String> map) {
        try {
            q1.f fVar = this.f51583a;
            if (fVar != null) {
                return fVar.r(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.h
    public ForumResponse<ForumData.ForumPostsBestData> r0(Map<String, String> map) {
        try {
            q1.f fVar = this.f51583a;
            if (fVar != null) {
                return fVar.r0(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.h
    public ResultResMainBean<GroupListBean> s(String str, String str2, String str3, String str4) {
        try {
            q1.f fVar = this.f51583a;
            if (fVar != null) {
                return fVar.s(str, str2, str3, str4).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.h
    public ForumResponse<ForumData.ForumPostsData> s0(int i2, int i4, int i5, int i6, String str, String str2, String str3, String str4) {
        try {
            q1.f fVar = this.f51583a;
            if (fVar != null) {
                return fVar.s0(i2, i4, i5, i6, str, str2, str3, str4).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.h
    public ForumResponse<ForumData.ForumProfileMessageData> t(int i2, String str, int i4, int i5, String str2) {
        try {
            q1.f fVar = this.f51583a;
            if (fVar != null) {
                return fVar.t(i2, str, i4, i5, str2).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.h
    public ForumResponse<ForumData.ForumForumWelcomePostsData> t0(int i2, int i4, String str) {
        try {
            q1.f fVar = this.f51583a;
            if (fVar != null) {
                return fVar.t0(i2, i4, str).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.h
    public ForumResponse<List<RecommendLabelTag>> u(String str, String str2, int i2) {
        try {
            q1.f fVar = this.f51583a;
            if (fVar != null) {
                return fVar.u(str, str2, i2).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.h
    public ForumResponse<ForumData.ForumGroupIndex> u0(int i2, String str, String str2) {
        try {
            q1.f fVar = this.f51583a;
            if (fVar != null) {
                return fVar.u0(i2, str, str2).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.h
    public ForumResponse<ForumData.ForumPostsData> v(int i2, int i4, int i5, String str, String str2, String str3, String str4) {
        try {
            q1.f fVar = this.f51583a;
            if (fVar != null) {
                return fVar.v(i2, i4, i5, str, str2, str3, str4).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.h
    public ForumResponse<ForumData.ForumResult> v0(Map<String, String> map) {
        try {
            q1.f fVar = this.f51583a;
            if (fVar != null) {
                return fVar.v0(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.h
    public ForumResponse<List<RecommendLabelTag>> w(int i2, String str, String str2, int i4) {
        try {
            q1.f fVar = this.f51583a;
            if (fVar != null) {
                return fVar.w(i2, str, str2, i4).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.h
    public ForumResponse<ForumData.ForumForumFollowData> w0(Map<String, String> map) {
        try {
            q1.f fVar = this.f51583a;
            if (fVar != null) {
                return fVar.w0(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.h
    public ForumResponse<ForumData.ForumForumFollowListData> x(int i2, String str, String str2) {
        try {
            q1.f fVar = this.f51583a;
            if (fVar != null) {
                return fVar.x(i2, str, str2).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.h
    public ResultResMainBean<Response> x0(Map<String, Object> map) {
        try {
            if (this.f51583a != null) {
                return this.f51583a.y0(RetrofitApi.getInstance().convert2PartMap(map), RetrofitApi.getInstance().convert2Parts(map)).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.h
    public ForumResponse<ForumData.ForumUserFavoritesDatas> y(int i2, String str, int i4, int i5, String str2, String str3, int i6) {
        try {
            q1.f fVar = this.f51583a;
            if (fVar != null) {
                return fVar.y(i2, str, i4, i5, str2, str3, i6).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.h
    public ForumResponse<ForumData.ForumPostsSubmitData> y0(Map<String, Object> map) {
        try {
            if (this.f51583a != null) {
                return this.f51583a.x0(RetrofitApi.getInstance().convert2PartMap(map), RetrofitApi.getInstance().convert2Parts(map)).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.h
    public ForumResponse<ForumData.HomepageRecommendLabel> z(Map<String, String> map) {
        try {
            q1.f fVar = this.f51583a;
            if (fVar != null) {
                return fVar.z(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.h
    public ForumResponse<ForumData.ForumPostsCommentData> z0(Map<String, Object> map) {
        try {
            if (this.f51583a != null) {
                return this.f51583a.z0(RetrofitApi.getInstance().convert2PartMap(map), RetrofitApi.getInstance().convert2Parts(map)).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }
}
