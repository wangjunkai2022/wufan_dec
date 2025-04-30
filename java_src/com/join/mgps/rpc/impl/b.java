package com.join.mgps.rpc.impl;

import com.join.mgps.dto.ArchiveDataBean;
import com.join.mgps.dto.ArchiveDownDataBean;
import com.join.mgps.dto.ArchiveEvaluteDataBean;
import com.join.mgps.dto.ArchiveNumDataBean;
import com.join.mgps.dto.ArchiveResponseMain;
import com.join.mgps.dto.ArchiveResponseMessage;
import com.join.mgps.dto.ArchiveShopDataBean;
import com.join.mgps.rpc.retrofit2.RetrofitApi;
import java.io.IOException;
import java.util.Map;
/* compiled from: RpcArchiveClientImpl.java */
/* loaded from: classes4.dex */
public class b implements com.join.mgps.rpc.c {

    /* renamed from: b  reason: collision with root package name */
    private static b f51574b;

    /* renamed from: a  reason: collision with root package name */
    private final q1.b f51575a;

    public b(q1.b bVar) {
        this.f51575a = bVar;
    }

    public static b k() {
        if (f51574b == null) {
            f51574b = new b((q1.b) RetrofitApi.getRetrofit2(com.join.mgps.rpc.g.f51569z).create(q1.b.class));
        }
        return f51574b;
    }

    @Override // com.join.mgps.rpc.c
    public ArchiveEvaluteDataBean a(Map<String, String> map) {
        q1.b bVar = this.f51575a;
        if (bVar != null) {
            try {
                return bVar.a(map).execute().body();
            } catch (IOException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    @Override // com.join.mgps.rpc.c
    public ArchiveResponseMain<ArchiveResponseMessage> b(Map<String, String> map) {
        q1.b bVar = this.f51575a;
        if (bVar != null) {
            try {
                return bVar.b(map).execute().body();
            } catch (IOException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    @Override // com.join.mgps.rpc.c
    public ArchiveResponseMain<ArchiveResponseMessage> c(Map<String, String> map) {
        q1.b bVar = this.f51575a;
        if (bVar != null) {
            try {
                return bVar.c(map).execute().body();
            } catch (IOException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    @Override // com.join.mgps.rpc.c
    public ArchiveDownDataBean d(Map<String, String> map) {
        q1.b bVar = this.f51575a;
        if (bVar != null) {
            try {
                return bVar.d(map).execute().body();
            } catch (IOException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    @Override // com.join.mgps.rpc.c
    public ArchiveResponseMain<ArchiveResponseMessage> e(Map<String, String> map) {
        q1.b bVar = this.f51575a;
        if (bVar != null) {
            try {
                return bVar.e(map).execute().body();
            } catch (IOException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    @Override // com.join.mgps.rpc.c
    public ArchiveNumDataBean f(Map<String, String> map) {
        q1.b bVar = this.f51575a;
        if (bVar != null) {
            try {
                return bVar.i(map).execute().body();
            } catch (IOException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    @Override // com.join.mgps.rpc.c
    public ArchiveShopDataBean g(Map<String, String> map) {
        q1.b bVar = this.f51575a;
        if (bVar != null) {
            try {
                return bVar.g(map).execute().body();
            } catch (IOException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    @Override // com.join.mgps.rpc.c
    public ArchiveDataBean h(Map<String, String> map) {
        q1.b bVar = this.f51575a;
        if (bVar != null) {
            try {
                return bVar.h(map).execute().body();
            } catch (IOException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    @Override // com.join.mgps.rpc.c
    public ArchiveShopDataBean i(Map<String, String> map) {
        q1.b bVar = this.f51575a;
        if (bVar != null) {
            try {
                return bVar.f(map).execute().body();
            } catch (IOException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public q1.b j() {
        return this.f51575a;
    }
}
