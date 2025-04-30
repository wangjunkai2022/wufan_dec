package com.join.mgps.rpc.impl;

import com.join.mgps.dto.FriendAccountInfo;
import com.join.mgps.dto.FriendBackGameReqBean;
import com.join.mgps.dto.FriendBackGameRspBean;
import com.join.mgps.dto.FriendBean;
import com.join.mgps.dto.FriendCardBean;
import com.join.mgps.dto.FriendRecommendRequest;
import com.join.mgps.dto.FriendReqBean;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.rpc.retrofit2.RetrofitApi;
import java.io.IOException;
import java.util.List;
import java.util.Map;
/* compiled from: RpcFriendClientImpl.java */
/* loaded from: classes4.dex */
public class g implements com.join.mgps.rpc.i {

    /* renamed from: b  reason: collision with root package name */
    private static g f51584b;

    /* renamed from: a  reason: collision with root package name */
    private final q1.g f51585a;

    public g(q1.g gVar) {
        this.f51585a = gVar;
    }

    public static g p() {
        if (f51584b == null) {
            f51584b = new g((q1.g) RetrofitApi.getRetrofit2(com.join.mgps.rpc.g.H).create(q1.g.class));
        }
        return f51584b;
    }

    public static g q() {
        g gVar = new g((q1.g) RetrofitApi.getRetrofit2(com.join.mgps.rpc.g.H).create(q1.g.class));
        f51584b = gVar;
        return gVar;
    }

    @Override // com.join.mgps.rpc.i
    public ResponseModel a(Map<String, Object> map) {
        try {
            q1.g gVar = this.f51585a;
            if (gVar != null) {
                return gVar.a(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ResponseModel b(FriendReqBean friendReqBean) {
        try {
            q1.g gVar = this.f51585a;
            if (gVar != null) {
                return gVar.b(friendReqBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ResponseModel<List<FriendBean>> c(int i2, String str, String str2) {
        try {
            q1.g gVar = this.f51585a;
            if (gVar != null) {
                return gVar.c(i2, str, str2).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ResponseModel<List<FriendBean>> d(FriendRecommendRequest friendRecommendRequest) {
        try {
            q1.g gVar = this.f51585a;
            if (gVar != null) {
                return gVar.d(friendRecommendRequest).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ResponseModel<List<FriendBean>> e(String str, String str2, int i2, int i4) {
        try {
            q1.g gVar = this.f51585a;
            if (gVar != null) {
                return gVar.e(str, str2, i2, i4).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ResponseModel<FriendAccountInfo> f(String str, String str2) {
        try {
            q1.g gVar = this.f51585a;
            if (gVar != null) {
                return gVar.f(str, str2).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ResponseModel<FriendCardBean> g(String str, String str2, String str3) {
        try {
            q1.g gVar = this.f51585a;
            if (gVar != null) {
                return gVar.g(str, str2, str3).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ResponseModel h(Map<String, Object> map) {
        try {
            q1.g gVar = this.f51585a;
            if (gVar != null) {
                return gVar.h(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ResponseModel<FriendAccountInfo> i(String str, String str2, String str3) {
        try {
            q1.g gVar = this.f51585a;
            if (gVar != null) {
                return gVar.i(str, str2, str3).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ResponseModel j(Map<String, Object> map) {
        try {
            q1.g gVar = this.f51585a;
            if (gVar != null) {
                return gVar.j(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ResponseModel<FriendBackGameRspBean> k(FriendBackGameReqBean friendBackGameReqBean) {
        try {
            q1.g gVar = this.f51585a;
            if (gVar != null) {
                return gVar.k(friendBackGameReqBean).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ResponseModel<List<FriendBean>> l(String str, String str2, int i2, int i4) {
        try {
            q1.g gVar = this.f51585a;
            if (gVar != null) {
                return gVar.l(str, str2, i2, i4).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ResponseModel m(Map<String, Object> map) {
        try {
            q1.g gVar = this.f51585a;
            if (gVar != null) {
                return gVar.m(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ResponseModel n(Map<String, Object> map) {
        try {
            q1.g gVar = this.f51585a;
            if (gVar != null) {
                return gVar.n(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public q1.g o() {
        return this.f51585a;
    }
}
