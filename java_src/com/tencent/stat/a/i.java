package com.tencent.stat.a;

import android.content.Context;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class i extends e {

    /* renamed from: a  reason: collision with root package name */
    private static String f60026a;

    /* renamed from: l  reason: collision with root package name */
    private String f60027l;

    /* renamed from: m  reason: collision with root package name */
    private String f60028m;

    public i(Context context, int i2) {
        super(context, i2);
        this.f60027l = null;
        this.f60028m = null;
        this.f60027l = com.tencent.stat.common.k.p(context);
        if (f60026a == null) {
            f60026a = com.tencent.stat.common.k.m(context);
        }
    }

    @Override // com.tencent.stat.a.e
    public f a() {
        return f.NETWORK_MONITOR;
    }

    public void a(String str) {
        this.f60028m = str;
    }

    @Override // com.tencent.stat.a.e
    public boolean a(JSONObject jSONObject) {
        com.tencent.stat.common.k.a(jSONObject, "op", f60026a);
        com.tencent.stat.common.k.a(jSONObject, "cn", this.f60027l);
        jSONObject.put("sp", this.f60028m);
        return true;
    }
}
