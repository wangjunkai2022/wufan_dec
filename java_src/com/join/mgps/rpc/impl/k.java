package com.join.mgps.rpc.impl;

import app.mgsim.arena.ArenaLobbyServer;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.AccountResultMainBean;
import com.join.mgps.dto.AccountTokenSuccess;
import com.join.mgps.dto.AccountresultData;
import com.join.mgps.dto.ArchiveRecordBean;
import com.join.mgps.dto.ArenaGameInfo;
import com.join.mgps.dto.ArenaLobbyPlayCheck;
import com.join.mgps.dto.ArenaSelectServer;
import com.join.mgps.dto.ArenaWelcomeLobby;
import com.join.mgps.dto.BattleChallengeConfig;
import com.join.mgps.dto.BattleStatus;
import com.join.mgps.dto.CloudCreateInfo;
import com.join.mgps.dto.CloudList;
import com.join.mgps.dto.CloudStatus;
import com.join.mgps.dto.CreateArchiveRecordBean;
import com.join.mgps.dto.DiscoveryMainDataBean;
import com.join.mgps.dto.GameDataBean;
import com.join.mgps.dto.GameListBannerBean;
import com.join.mgps.dto.GameListBean;
import com.join.mgps.dto.GameWorldGlobalData;
import com.join.mgps.dto.GameWorldRealTimeWorshipBean;
import com.join.mgps.dto.GameWorldResponse;
import com.join.mgps.dto.GameWorldTrophy;
import com.join.mgps.dto.GameWorldUserInfoWrap;
import com.join.mgps.dto.GameWorldWorship;
import com.join.mgps.dto.GameworldFightRecoderResultBean;
import com.join.mgps.dto.GetPaiWeiPlayCodeBean;
import com.join.mgps.dto.GradeListData;
import com.join.mgps.dto.GradeRankListData;
import com.join.mgps.dto.InWorldDataBean;
import com.join.mgps.dto.InvitationPassBean;
import com.join.mgps.dto.Message;
import com.join.mgps.dto.NetBattleGetMatchAvailableServerBean;
import com.join.mgps.dto.NetBattleInviteBean;
import com.join.mgps.dto.NetBattleOnlineCount;
import com.join.mgps.dto.NetBattleStartBattleBean;
import com.join.mgps.dto.NetBattleUserInfoResultBean;
import com.join.mgps.dto.NetGetBattleUdpPortBean;
import com.join.mgps.dto.NewArenaGameListBean;
import com.join.mgps.dto.NewGameDataBean;
import com.join.mgps.dto.PspBattleServer;
import com.join.mgps.dto.ResultArenaBean;
import com.join.mgps.dto.ResultResMainBean;
import com.join.mgps.dto.WelcomeInDataBean;
import com.join.mgps.rpc.retrofit2.RetrofitApi;
import com.papa91.arc.bean.PaiWeiDataBean;
import java.io.IOException;
import java.util.List;
import java.util.Map;
/* compiled from: RpcNetMatchClientImpl.java */
/* loaded from: classes4.dex */
public class k implements com.join.mgps.rpc.k {

    /* renamed from: b  reason: collision with root package name */
    private static k f51595b;

    /* renamed from: c  reason: collision with root package name */
    private static k f51596c;

    /* renamed from: a  reason: collision with root package name */
    private final q1.j f51597a;

    public k(q1.j jVar) {
        this.f51597a = jVar;
    }

    public static k n0() {
        if (f51595b == null) {
            f51595b = new k((q1.j) RetrofitApi.getRetrofit2(com.join.mgps.rpc.g.f51530m).create(q1.j.class));
        }
        return f51595b;
    }

    public static k o0() {
        k kVar = new k((q1.j) RetrofitApi.getRetrofit2(com.join.mgps.rpc.g.f51533n).create(q1.j.class));
        f51596c = kVar;
        return kVar;
    }

    public static k p0() {
        k kVar = new k((q1.j) RetrofitApi.getRetrofit2(com.join.mgps.rpc.g.f51530m).create(q1.j.class));
        f51595b = kVar;
        return kVar;
    }

    @Override // com.join.mgps.rpc.k
    public GameWorldResponse<NewGameDataBean> A(String str, int i2, String str2) {
        try {
            q1.j jVar = this.f51597a;
            if (jVar != null) {
                return jVar.A(str, i2, str2).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public GameWorldResponse<List<GameWorldTrophy>> B(long j4, int i2) {
        try {
            q1.j jVar = this.f51597a;
            if (jVar != null) {
                return jVar.B(j4, i2).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public GameWorldResponse<NetBattleUserInfoResultBean> C(String str, int i2, int i4, String str2) {
        try {
            q1.j jVar = this.f51597a;
            if (jVar != null) {
                return jVar.C(str, i2, i4, str2).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public AccountResultMainBean<AccountTokenSuccess> D(Map<String, String> map) {
        try {
            q1.j jVar = this.f51597a;
            if (jVar != null) {
                return jVar.D(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResultArenaBean<BattleChallengeConfig> E(int i2, String str, long j4) {
        try {
            q1.j jVar = this.f51597a;
            if (jVar != null) {
                return jVar.E(i2, str, j4).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public GameWorldResponse<GradeListData> F(long j4) {
        try {
            q1.j jVar = this.f51597a;
            if (jVar != null) {
                return jVar.F(j4).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public GameWorldResponse<GameWorldGlobalData> G(long j4) {
        try {
            q1.j jVar = this.f51597a;
            if (jVar != null) {
                return jVar.G(j4).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public GameWorldResponse<GameDataBean> H(Map<String, String> map) {
        try {
            q1.j jVar = this.f51597a;
            if (jVar != null) {
                return jVar.H(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public GameWorldResponse<GameDataBean> I(Map<String, String> map) {
        try {
            q1.j jVar = this.f51597a;
            if (jVar != null) {
                return jVar.I(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public GameWorldResponse<InvitationPassBean> J(Map<String, String> map) {
        try {
            q1.j jVar = this.f51597a;
            if (jVar != null) {
                return jVar.J(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public GameWorldResponse<InvitationPassBean> K(String str, String str2) {
        try {
            q1.j jVar = this.f51597a;
            if (jVar != null) {
                return jVar.K(str, str2).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public GameWorldResponse<NewGameDataBean> L(Map<String, String> map) {
        try {
            q1.j jVar = this.f51597a;
            if (jVar != null) {
                return jVar.L(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public GameWorldResponse<ArchiveRecordBean> M(String str, int i2, String str2) {
        try {
            q1.j jVar = this.f51597a;
            if (jVar != null) {
                return jVar.M(str, i2, str2).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public GameWorldResponse<NetBattleOnlineCount> N(String str) {
        try {
            q1.j jVar = this.f51597a;
            if (jVar != null) {
                return jVar.N(str).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public GameWorldResponse<CreateArchiveRecordBean> O(Map<String, String> map) {
        try {
            q1.j jVar = this.f51597a;
            if (jVar != null) {
                return jVar.O(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResultArenaBean<ArenaLobbyServer> P(int i2, String str) {
        try {
            q1.j jVar = this.f51597a;
            if (jVar != null) {
                return jVar.P(i2, str).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public GameWorldResponse<InWorldDataBean> Q(Map<String, String> map) {
        try {
            q1.j jVar = this.f51597a;
            if (jVar != null) {
                return jVar.Q(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public GameWorldResponse<BattleStatus> R(int i2, String str) {
        try {
            q1.j jVar = this.f51597a;
            if (jVar != null) {
                return jVar.R(i2, str).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public GameWorldResponse<GameworldFightRecoderResultBean> S(String str, int i2, String str2) {
        try {
            q1.j jVar = this.f51597a;
            if (jVar != null) {
                return jVar.S(str, i2, str2).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public GameWorldResponse T(int i2, String str, String str2, int i4, long j4) {
        try {
            q1.j jVar = this.f51597a;
            if (jVar != null) {
                return jVar.T(i2, str, str2, i4, j4).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public GameWorldResponse<NetBattleUserInfoResultBean> U(String str, int i2, int i4, String str2) {
        try {
            q1.j jVar = this.f51597a;
            if (jVar != null) {
                return jVar.U(str, i2, i4, str2).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public GameWorldResponse<CloudStatus> V(Map<String, String> map) {
        try {
            q1.j jVar = this.f51597a;
            if (jVar != null) {
                return jVar.V(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResultResMainBean<GetPaiWeiPlayCodeBean> W(String str, String str2) {
        try {
            q1.j jVar = this.f51597a;
            if (jVar != null) {
                return jVar.W(str, str2).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public GameWorldResponse<ArenaLobbyPlayCheck> X(String str, String str2) {
        try {
            q1.j jVar = this.f51597a;
            if (jVar != null) {
                return jVar.X(str, str2).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public GameWorldResponse<List<ArenaSelectServer>> Y(String str, String str2, String str3, int i2, String str4) {
        try {
            q1.j jVar = this.f51597a;
            if (jVar != null) {
                return jVar.Y(str, str2, str3, i2, str4).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public GameWorldResponse<NetBattleUserInfoResultBean> Z(String str, int i2, int i4, String str2) {
        try {
            q1.j jVar = this.f51597a;
            if (jVar != null) {
                return jVar.Z(str, i2, i4, str2).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public AccountResultMainBean<AccountresultData<AccountBean>> a(Map<String, String> map) {
        try {
            q1.j jVar = this.f51597a;
            if (jVar != null) {
                return jVar.a(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public GameWorldResponse<CreateArchiveRecordBean> a0(Map<String, String> map) {
        try {
            q1.j jVar = this.f51597a;
            if (jVar != null) {
                return jVar.a0(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public AccountResultMainBean<AccountTokenSuccess> b(Map<String, String> map) {
        try {
            q1.j jVar = this.f51597a;
            if (jVar != null) {
                return jVar.b(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public AccountResultMainBean<AccountresultData<AccountBean>> b0(Map<String, String> map) {
        try {
            q1.j jVar = this.f51597a;
            if (jVar != null) {
                return jVar.b0(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public AccountResultMainBean<AccountTokenSuccess> c(Map<String, String> map) {
        try {
            q1.j jVar = this.f51597a;
            if (jVar != null) {
                return jVar.c(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public GameWorldResponse<GameDataBean> c0(Map<String, String> map) {
        try {
            q1.j jVar = this.f51597a;
            if (jVar != null) {
                return jVar.c0(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public AccountResultMainBean<AccountBean> d(Map<String, String> map) {
        try {
            q1.j jVar = this.f51597a;
            if (jVar != null) {
                return jVar.d(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public GameWorldResponse<ArenaWelcomeLobby> d0(int i2, String str) {
        try {
            q1.j jVar = this.f51597a;
            if (jVar != null) {
                return jVar.d0(i2, str).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public AccountResultMainBean<AccountresultData<AccountBean>> e(Map<String, String> map) {
        try {
            q1.j jVar = this.f51597a;
            if (jVar != null) {
                return jVar.e(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public GameWorldResponse<NetGetBattleUdpPortBean> e0(String str) {
        try {
            q1.j jVar = this.f51597a;
            if (jVar != null) {
                return jVar.e0(str).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public GameWorldResponse<NetBattleInviteBean> f(int i2, String str, String str2) {
        try {
            q1.j jVar = this.f51597a;
            if (jVar != null) {
                return jVar.f(i2, str, str2).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public GameWorldResponse<CloudCreateInfo> f0(Map<String, String> map) {
        try {
            q1.j jVar = this.f51597a;
            if (jVar != null) {
                return jVar.f0(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public AccountResultMainBean<AccountTokenSuccess> g(Map<String, String> map) {
        try {
            q1.j jVar = this.f51597a;
            if (jVar != null) {
                return jVar.g(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public GameWorldResponse<GameWorldWorship> g0(Map<String, String> map) {
        try {
            q1.j jVar = this.f51597a;
            if (jVar != null) {
                return jVar.g0(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public AccountResultMainBean<AccountTokenSuccess> h(Map<String, String> map) {
        try {
            q1.j jVar = this.f51597a;
            if (jVar != null) {
                return jVar.h(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public GameWorldResponse<GradeRankListData> h0(long j4, int i2, int i4, String str, int i5) {
        try {
            q1.j jVar = this.f51597a;
            if (jVar != null) {
                return jVar.h0(j4, i2, i4, str, i5).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public AccountResultMainBean<AccountTokenSuccess> i(Map<String, String> map) {
        try {
            q1.j jVar = this.f51597a;
            if (jVar != null) {
                return jVar.i(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public GameWorldResponse<NetBattleStartBattleBean> i0(int i2, String str, String str2) {
        try {
            q1.j jVar = this.f51597a;
            if (jVar != null) {
                return jVar.i0(i2, str, str2).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public GameWorldResponse<AccountResultMainBean> j(Map<String, String> map) {
        try {
            q1.j jVar = this.f51597a;
            if (jVar != null) {
                return jVar.j(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public GameWorldResponse<DiscoveryMainDataBean> j0(Map<String, String> map) {
        try {
            q1.j jVar = this.f51597a;
            if (jVar != null) {
                return jVar.j0(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public AccountResultMainBean<AccountresultData<AccountBean>> k(Map<String, String> map) {
        try {
            q1.j jVar = this.f51597a;
            if (jVar != null) {
                return jVar.k(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public GameWorldResponse<ArenaWelcomeLobby> k0(int i2, long j4, String str, String str2, int i4) {
        try {
            q1.j jVar = this.f51597a;
            if (jVar != null) {
                return jVar.k0(i2, j4, str, str2, i4).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResultResMainBean<PaiWeiDataBean> l(String str, String str2, String str3, String str4, String str5) {
        try {
            q1.j jVar = this.f51597a;
            if (jVar != null) {
                return jVar.l(str, str2, str3, str4, str5).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public GameWorldResponse<WelcomeInDataBean> l0(String str, int i2, String str2, String str3) {
        try {
            q1.j jVar = this.f51597a;
            if (jVar != null) {
                return jVar.l0(str, i2, str2, str3).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResultResMainBean<GameListBean> m(int i2, String str, int i4) {
        try {
            q1.j jVar = this.f51597a;
            if (jVar != null) {
                return jVar.m(i2, str, i4).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public q1.j m0() {
        return this.f51597a;
    }

    @Override // com.join.mgps.rpc.k
    public ResultResMainBean<PaiWeiDataBean> n(String str, String str2, String str3, String str4) {
        try {
            q1.j jVar = this.f51597a;
            if (jVar != null) {
                return jVar.n(str, str2, str3, str4).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public GameWorldResponse<List<GameWorldRealTimeWorshipBean>> o(long j4) {
        try {
            q1.j jVar = this.f51597a;
            if (jVar != null) {
                return jVar.o(j4).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public GameWorldResponse<NetBattleGetMatchAvailableServerBean> p(int i2, String str, String str2) {
        try {
            q1.j jVar = this.f51597a;
            if (jVar != null) {
                return jVar.p(i2, str, str2).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public GameWorldResponse<Message> q(Map<String, String> map) {
        try {
            q1.j jVar = this.f51597a;
            if (jVar != null) {
                return jVar.q(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public GameWorldResponse<List<ArenaGameInfo>> r(String str) {
        try {
            q1.j jVar = this.f51597a;
            if (jVar != null) {
                return jVar.r(str).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResultResMainBean<GetPaiWeiPlayCodeBean> s(String str, String str2, String str3, String str4) {
        try {
            q1.j jVar = this.f51597a;
            if (jVar != null) {
                return jVar.s(str, str2, str3, str4).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public GameWorldResponse<GameWorldWorship> t(long j4, int i2, int i4, String str) {
        try {
            q1.j jVar = this.f51597a;
            if (jVar != null) {
                return jVar.t(j4, i2, i4, str).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResultResMainBean<GameListBannerBean> u(String str) {
        try {
            q1.j jVar = this.f51597a;
            if (jVar != null) {
                return jVar.u(str).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public GameWorldResponse<List<PspBattleServer>> v() {
        try {
            q1.j jVar = this.f51597a;
            if (jVar != null) {
                return jVar.v().execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResultResMainBean<NewArenaGameListBean> w(int i2, int i4, int i5) {
        try {
            q1.j jVar = this.f51597a;
            if (jVar != null) {
                return jVar.w(i2, i4, i5).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public GameWorldResponse<NetBattleInviteBean> x(int i2, String str, String str2) {
        try {
            q1.j jVar = this.f51597a;
            if (jVar != null) {
                return jVar.x(i2, str, str2).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public GameWorldResponse<GameWorldUserInfoWrap> y(long j4, int i2, int i4) {
        try {
            q1.j jVar = this.f51597a;
            if (jVar != null) {
                return jVar.y(j4, i2, i4).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public GameWorldResponse<CloudList> z(int i2, String str) {
        try {
            q1.j jVar = this.f51597a;
            if (jVar != null) {
                return jVar.z(i2, str).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }
}
