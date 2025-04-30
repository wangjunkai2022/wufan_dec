package com.join.mgps.rpc.impl;

import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.AccountLoginresultData;
import com.join.mgps.dto.AccountResultBean;
import com.join.mgps.dto.AccountResultMainBean;
import com.join.mgps.dto.AccountTokenSuccess;
import com.join.mgps.dto.AccountVoucher;
import com.join.mgps.dto.AccountVoucherGame;
import com.join.mgps.dto.AccountresultData;
import com.join.mgps.dto.BluetoothHandleBlackListData;
import com.join.mgps.dto.CloudBackupsListBean;
import com.join.mgps.dto.CloudBackupsRecoverListBean;
import com.join.mgps.dto.ConfigMain;
import com.join.mgps.dto.CreateVipData;
import com.join.mgps.dto.FavoritesCenterData;
import com.join.mgps.dto.ForumResponse;
import com.join.mgps.dto.ForumResponseGame;
import com.join.mgps.dto.GameFromBooleanBean;
import com.join.mgps.dto.GameFromPopoWinBean;
import com.join.mgps.dto.GameFromPopoWinBeanV2;
import com.join.mgps.dto.GameWorldResponse;
import com.join.mgps.dto.JPushJoinDeviceResult;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.UploadResultMainBean;
import com.join.mgps.dto.UserHeadPortrait;
import com.join.mgps.rpc.retrofit2.RetrofitApi;
import java.io.IOException;
import java.util.List;
import java.util.Map;
/* compiled from: RpcAccountClientImpl.java */
/* loaded from: classes4.dex */
public class a implements com.join.mgps.rpc.b {

    /* renamed from: b  reason: collision with root package name */
    private static a f51572b;

    /* renamed from: a  reason: collision with root package name */
    private final q1.a f51573a;

    public a(q1.a aVar) {
        this.f51573a = aVar;
    }

    public static com.join.mgps.rpc.b b0() {
        if (f51572b == null) {
            f51572b = new a((q1.a) RetrofitApi.getRetrofit2(com.join.mgps.rpc.g.f51524k).create(q1.a.class));
        }
        return f51572b;
    }

    public static com.join.mgps.rpc.b c0() {
        a aVar = new a((q1.a) RetrofitApi.getRetrofit2(com.join.mgps.rpc.g.f51524k).create(q1.a.class));
        f51572b = aVar;
        return aVar;
    }

    @Override // com.join.mgps.rpc.b
    public ForumResponseGame A(Map<String, Object> map) {
        try {
            return this.f51573a.A(map).execute().body();
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public AccountResultMainBean<AccountLoginresultData> B(Map<String, String> map) {
        try {
            q1.a aVar = this.f51573a;
            if (aVar != null) {
                return aVar.B(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public AccountResultMainBean<AccountLoginresultData> C(Map<String, String> map) {
        try {
            q1.a aVar = this.f51573a;
            if (aVar != null) {
                return aVar.C(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public AccountResultMainBean<AccountTokenSuccess> D(Map<String, String> map) {
        try {
            q1.a aVar = this.f51573a;
            if (aVar != null) {
                return aVar.D(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public GameFromBooleanBean E(Map<String, Object> map) {
        try {
            return this.f51573a.E(map).execute().body();
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public AccountResultMainBean<AccountTokenSuccess> F(Map<String, String> map) {
        try {
            q1.a aVar = this.f51573a;
            if (aVar != null) {
                return aVar.F(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public AccountResultMainBean<AccountLoginresultData> G(Map<String, String> map) {
        try {
            q1.a aVar = this.f51573a;
            if (aVar != null) {
                return aVar.G(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public AccountResultMainBean<AccountLoginresultData> H(Map<String, String> map) {
        try {
            q1.a aVar = this.f51573a;
            if (aVar != null) {
                return aVar.H(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public AccountResultMainBean<JPushJoinDeviceResult> I(Map<String, String> map) {
        try {
            q1.a aVar = this.f51573a;
            if (aVar != null) {
                return aVar.I(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public GameFromPopoWinBeanV2 J(Map<String, Object> map) {
        try {
            return this.f51573a.J(map).execute().body();
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public AccountResultMainBean<CloudBackupsRecoverListBean> K(String str, String str2, String str3) {
        try {
            q1.a aVar = this.f51573a;
            if (aVar != null) {
                return aVar.K(str, str2, str3).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public AccountResultMainBean<AccountTokenSuccess> L(Map<String, String> map) {
        try {
            q1.a aVar = this.f51573a;
            if (aVar != null) {
                return aVar.L(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public AccountResultMainBean<AccountTokenSuccess> M(Map<String, String> map) {
        try {
            q1.a aVar = this.f51573a;
            if (aVar != null) {
                return aVar.M(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public AccountResultMainBean<AccountLoginresultData<AccountBean>> N(Map<String, String> map) {
        try {
            q1.a aVar = this.f51573a;
            if (aVar != null) {
                return aVar.N(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public GameFromPopoWinBean O(Map<String, Object> map) {
        try {
            return this.f51573a.O(map).execute().body();
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public GameFromBooleanBean P(Map<String, Object> map) {
        try {
            return this.f51573a.P(map).execute().body();
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public GameFromBooleanBean Q(Map<String, Object> map) {
        try {
            return this.f51573a.Q(map).execute().body();
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public AccountResultMainBean<JPushJoinDeviceResult> R(Map<String, String> map) {
        try {
            q1.a aVar = this.f51573a;
            if (aVar != null) {
                return aVar.R(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public AccountResultMainBean<CloudBackupsListBean> S(String str, String str2) {
        try {
            q1.a aVar = this.f51573a;
            if (aVar != null) {
                return aVar.S(str, str2).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public AccountResultMainBean<AccountTokenSuccess> T(Map<String, String> map) {
        try {
            q1.a aVar = this.f51573a;
            if (aVar != null) {
                return aVar.T(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public AccountResultMainBean<AccountLoginresultData<AccountBean>> U(Map<String, String> map) {
        try {
            q1.a aVar = this.f51573a;
            if (aVar != null) {
                return aVar.U(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public GameFromBooleanBean V(Map<String, Object> map) {
        try {
            q1.a aVar = this.f51573a;
            if (aVar != null) {
                return aVar.V(map).execute().body();
            }
            return null;
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public AccountResultMainBean<BluetoothHandleBlackListData> W(Map<String, String> map) {
        try {
            q1.a aVar = this.f51573a;
            if (aVar != null) {
                return aVar.W(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public ForumResponse<FavoritesCenterData> X(Map<String, Object> map) {
        q1.a aVar = this.f51573a;
        if (aVar != null) {
            try {
                return aVar.X(map).execute().body();
            } catch (IOException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    @Override // com.join.mgps.rpc.b
    public AccountResultMainBean<AccountTokenSuccess> Y(Map<String, String> map) {
        try {
            q1.a aVar = this.f51573a;
            if (aVar != null) {
                return aVar.Y(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public AccountResultMainBean<AccountLoginresultData> Z(Map<String, String> map) {
        try {
            q1.a aVar = this.f51573a;
            if (aVar != null) {
                return aVar.Z(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public AccountResultBean<AccountLoginresultData<AccountBean>> a(Map<String, String> map) {
        try {
            q1.a aVar = this.f51573a;
            if (aVar != null) {
                return aVar.a(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public GameFromBooleanBean a0(Map<String, Object> map) {
        try {
            return this.f51573a.a0(map).execute().body();
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public AccountResultMainBean<AccountTokenSuccess> b(Map<String, String> map) {
        try {
            q1.a aVar = this.f51573a;
            if (aVar != null) {
                return aVar.b(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public AccountResultMainBean<AccountTokenSuccess> c(Map<String, String> map) {
        try {
            q1.a aVar = this.f51573a;
            if (aVar != null) {
                return aVar.c(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public AccountResultMainBean<AccountBean> d(Map<String, String> map) {
        try {
            q1.a aVar = this.f51573a;
            if (aVar != null) {
                return aVar.d(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public AccountResultBean<AccountLoginresultData<AccountBean>> e(Map<String, String> map) {
        try {
            q1.a aVar = this.f51573a;
            if (aVar != null) {
                return aVar.e(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public ResultMainBean<List<AccountVoucherGame>> f(Map<String, String> map) {
        try {
            q1.a aVar = this.f51573a;
            if (aVar != null) {
                return aVar.f(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public AccountResultMainBean<AccountTokenSuccess> g(Map<String, String> map) {
        try {
            q1.a aVar = this.f51573a;
            if (aVar != null) {
                return aVar.g(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public AccountResultMainBean<AccountTokenSuccess> h(Map<String, String> map) {
        try {
            q1.a aVar = this.f51573a;
            if (aVar != null) {
                return aVar.h(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public AccountResultMainBean<AccountTokenSuccess> i(Map<String, String> map) {
        try {
            q1.a aVar = this.f51573a;
            if (aVar != null) {
                return aVar.i(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public GameWorldResponse<AccountResultMainBean> j(Map<String, String> map) {
        try {
            q1.a aVar = this.f51573a;
            if (aVar != null) {
                return aVar.j(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public AccountResultMainBean<AccountresultData<AccountBean>> k(Map<String, String> map) {
        try {
            q1.a aVar = this.f51573a;
            if (aVar != null) {
                return aVar.k(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public ResultMainBean<List<AccountVoucher>> l(Map<String, String> map) {
        try {
            q1.a aVar = this.f51573a;
            if (aVar != null) {
                return aVar.l(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public AccountResultMainBean<JPushJoinDeviceResult> m(Map<String, String> map) {
        try {
            q1.a aVar = this.f51573a;
            if (aVar != null) {
                return aVar.m(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public ForumResponse<ConfigMain> n() {
        try {
            q1.a aVar = this.f51573a;
            if (aVar != null) {
                return aVar.n().execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public AccountResultMainBean<AccountLoginresultData> o(Map<String, String> map) {
        try {
            q1.a aVar = this.f51573a;
            if (aVar != null) {
                return aVar.o(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public GameFromBooleanBean p(Map<String, Object> map) {
        try {
            return this.f51573a.p(map).execute().body();
        } catch (Exception e4) {
            e4.toString();
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public UploadResultMainBean<AccountTokenSuccess> q(Map<String, String> map) {
        try {
            q1.a aVar = this.f51573a;
            if (aVar != null) {
                return aVar.q(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public GameFromPopoWinBean r(Map<String, Object> map) {
        try {
            return this.f51573a.r(map).execute().body();
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public AccountResultMainBean<AccountTokenSuccess> s(Map<String, String> map) {
        try {
            q1.a aVar = this.f51573a;
            if (aVar != null) {
                return aVar.s(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public AccountResultMainBean<UserHeadPortrait> t(Map<String, String> map) {
        try {
            q1.a aVar = this.f51573a;
            if (aVar != null) {
                return aVar.t(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public AccountResultMainBean<AccountTokenSuccess> u(Map<String, String> map) {
        try {
            q1.a aVar = this.f51573a;
            if (aVar != null) {
                return aVar.u(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public AccountResultMainBean<AccountTokenSuccess> v(Map<String, String> map) {
        try {
            q1.a aVar = this.f51573a;
            if (aVar != null) {
                return aVar.v(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public AccountResultMainBean<CreateVipData> w(Map<String, String> map) {
        try {
            q1.a aVar = this.f51573a;
            if (aVar != null) {
                return aVar.w(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public AccountResultMainBean<AccountLoginresultData> x(Map<String, String> map) {
        try {
            q1.a aVar = this.f51573a;
            if (aVar != null) {
                return aVar.x(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public AccountResultMainBean<AccountTokenSuccess> y(Map<String, String> map) {
        try {
            q1.a aVar = this.f51573a;
            if (aVar != null) {
                return aVar.y(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public GameFromBooleanBean z(Map<String, Object> map) {
        try {
            q1.a aVar = this.f51573a;
            if (aVar != null) {
                return aVar.z(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }
}
