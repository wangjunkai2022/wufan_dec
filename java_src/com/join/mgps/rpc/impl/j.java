package com.join.mgps.rpc.impl;

import app.mgsim.arena.ArenaLobbyServer;
import com.join.mgps.dto.ArenaGameInfo;
import com.join.mgps.dto.DiscoveryMainDataBean;
import com.join.mgps.dto.GameWorldResponse;
import com.join.mgps.dto.ResultArenaBean;
import com.join.mgps.rpc.retrofit2.RetrofitApi;
import java.io.IOException;
import java.util.List;
import java.util.Map;
/* compiled from: RpcNetMatch1ClientImpl.java */
/* loaded from: classes4.dex */
public class j extends k {

    /* renamed from: e  reason: collision with root package name */
    private static k f51593e;

    /* renamed from: d  reason: collision with root package name */
    private final q1.j f51594d;

    public j(q1.j jVar) {
        super(jVar);
        this.f51594d = (q1.j) RetrofitApi.getRetrofit2(com.join.mgps.rpc.g.f51536o).create(q1.j.class);
    }

    public static k n0() {
        if (f51593e == null) {
            f51593e = new j((q1.j) RetrofitApi.getRetrofit2(com.join.mgps.rpc.g.f51530m).create(q1.j.class));
        }
        return f51593e;
    }

    @Override // com.join.mgps.rpc.impl.k, com.join.mgps.rpc.k
    public ResultArenaBean<ArenaLobbyServer> P(int i2, String str) {
        try {
            q1.j jVar = this.f51594d;
            if (jVar != null) {
                return jVar.P(i2, str).execute().body();
            }
        } catch (IOException e4) {
            e4.printStackTrace();
        }
        return super.P(i2, str);
    }

    @Override // com.join.mgps.rpc.impl.k, com.join.mgps.rpc.k
    public GameWorldResponse<DiscoveryMainDataBean> j0(Map<String, String> map) {
        try {
            q1.j jVar = this.f51594d;
            if (jVar != null) {
                return jVar.j0(map).execute().body();
            }
        } catch (IOException e4) {
            e4.printStackTrace();
        }
        return super.j0(map);
    }

    @Override // com.join.mgps.rpc.impl.k, com.join.mgps.rpc.k
    public GameWorldResponse<List<ArenaGameInfo>> r(String str) {
        try {
            q1.j jVar = this.f51594d;
            if (jVar != null) {
                return jVar.r(str).execute().body();
            }
        } catch (IOException e4) {
            e4.printStackTrace();
        }
        return r(str);
    }
}
