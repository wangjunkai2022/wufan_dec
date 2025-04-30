package com.tencent.stat.a;

import android.content.Context;
import com.tencent.stat.DeviceInfo;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class k extends e {

    /* renamed from: a  reason: collision with root package name */
    private com.tencent.stat.common.a f60032a;

    /* renamed from: l  reason: collision with root package name */
    private JSONObject f60033l;

    public k(Context context, int i2, JSONObject jSONObject) {
        super(context, i2);
        this.f60033l = null;
        this.f60032a = new com.tencent.stat.common.a(context);
        this.f60033l = jSONObject;
    }

    @Override // com.tencent.stat.a.e
    public f a() {
        return f.SESSION_ENV;
    }

    @Override // com.tencent.stat.a.e
    public boolean a(JSONObject jSONObject) {
        DeviceInfo deviceInfo = this.f60005e;
        if (deviceInfo != null) {
            jSONObject.put("ut", deviceInfo.getUserType());
        }
        JSONObject jSONObject2 = this.f60033l;
        if (jSONObject2 != null) {
            jSONObject.put("cfg", jSONObject2);
        }
        this.f60032a.a(jSONObject);
        return true;
    }
}
