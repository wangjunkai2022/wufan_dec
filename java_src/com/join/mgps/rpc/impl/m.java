package com.join.mgps.rpc.impl;

import com.join.mgps.dto.AccountGetVoucherResult;
import com.join.mgps.dto.AccountPaBiBean;
import com.join.mgps.dto.PapayVoucherResultMain;
import com.join.mgps.dto.PapayWalletResultMain;
import com.join.mgps.dto.PayActivityConfig;
import com.join.mgps.dto.ResultMyVoucherBean;
import com.join.mgps.dto.ResultMyVoucherGameBean;
import com.join.mgps.rpc.retrofit2.RetrofitApi;
import java.io.IOException;
import java.util.Map;
/* compiled from: RpcPawalletClientImpl.java */
/* loaded from: classes4.dex */
public class m implements com.join.mgps.rpc.n {

    /* renamed from: b  reason: collision with root package name */
    private static m f51600b;

    /* renamed from: a  reason: collision with root package name */
    private final q1.l f51601a;

    public m(q1.l lVar) {
        this.f51601a = lVar;
    }

    public static m h() {
        if (f51600b == null) {
            f51600b = new m((q1.l) RetrofitApi.getRetrofit2(com.join.mgps.rpc.g.f51524k).create(q1.l.class));
        }
        return f51600b;
    }

    @Override // com.join.mgps.rpc.n
    public PapayVoucherResultMain<AccountGetVoucherResult> a(Map<String, String> map) {
        try {
            q1.l lVar = this.f51601a;
            if (lVar != null) {
                return lVar.a(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.n
    public PapayVoucherResultMain<ResultMyVoucherBean> b(Map<String, String> map) {
        try {
            q1.l lVar = this.f51601a;
            if (lVar != null) {
                return lVar.b(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.n
    public PapayWalletResultMain c(Map<String, String> map) {
        try {
            q1.l lVar = this.f51601a;
            if (lVar != null) {
                return lVar.c(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.n
    public PapayWalletResultMain d(Map<String, String> map) {
        try {
            q1.l lVar = this.f51601a;
            if (lVar != null) {
                return lVar.d(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.n
    public PapayVoucherResultMain<AccountPaBiBean> e(Map<String, String> map) {
        try {
            q1.l lVar = this.f51601a;
            if (lVar != null) {
                return lVar.e(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.n
    public PapayVoucherResultMain<ResultMyVoucherGameBean> f(Map<String, String> map) {
        try {
            q1.l lVar = this.f51601a;
            if (lVar != null) {
                return lVar.f(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.n
    public PapayVoucherResultMain<PayActivityConfig> g(Map<String, String> map) {
        try {
            q1.l lVar = this.f51601a;
            if (lVar != null) {
                return lVar.g(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.n
    public PapayVoucherResultMain<ResultMyVoucherBean> l(Map<String, String> map) {
        try {
            q1.l lVar = this.f51601a;
            if (lVar != null) {
                return lVar.l(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }
}
