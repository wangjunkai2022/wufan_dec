package com.tencent.stat.a;

import android.content.Context;
import com.tencent.stat.StatAppMonitor;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class h extends e {

    /* renamed from: l  reason: collision with root package name */
    private static String f60023l;

    /* renamed from: m  reason: collision with root package name */
    private static String f60024m;

    /* renamed from: a  reason: collision with root package name */
    private StatAppMonitor f60025a;

    public h(Context context, int i2, StatAppMonitor statAppMonitor) {
        super(context, i2);
        this.f60025a = null;
        this.f60025a = statAppMonitor.m15clone();
    }

    @Override // com.tencent.stat.a.e
    public f a() {
        return f.MONITOR_STAT;
    }

    @Override // com.tencent.stat.a.e
    public boolean a(JSONObject jSONObject) {
        StatAppMonitor statAppMonitor = this.f60025a;
        if (statAppMonitor == null) {
            return false;
        }
        jSONObject.put("na", statAppMonitor.getInterfaceName());
        jSONObject.put("rq", this.f60025a.getReqSize());
        jSONObject.put("rp", this.f60025a.getRespSize());
        jSONObject.put("rt", this.f60025a.getResultType());
        jSONObject.put("tm", this.f60025a.getMillisecondsConsume());
        jSONObject.put("rc", this.f60025a.getReturnCode());
        jSONObject.put("sp", this.f60025a.getSampling());
        if (f60024m == null) {
            f60024m = com.tencent.stat.common.k.r(this.f60011k);
        }
        com.tencent.stat.common.k.a(jSONObject, m.a.f72574l, f60024m);
        if (f60023l == null) {
            f60023l = com.tencent.stat.common.k.m(this.f60011k);
        }
        com.tencent.stat.common.k.a(jSONObject, "op", f60023l);
        jSONObject.put("cn", com.tencent.stat.common.k.p(this.f60011k));
        return true;
    }
}
