package com.tencent.stat.a;

import android.content.Context;
import com.tencent.stat.StatConfig;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class a extends e {

    /* renamed from: a  reason: collision with root package name */
    Map<String, ?> f59992a;

    public a(Context context, int i2, Map<String, ?> map) {
        super(context, i2);
        this.f59992a = null;
        this.f59992a = map;
    }

    @Override // com.tencent.stat.a.e
    public f a() {
        return f.ADDITION;
    }

    @Override // com.tencent.stat.a.e
    public boolean a(JSONObject jSONObject) {
        com.tencent.stat.common.k.a(jSONObject, "qq", StatConfig.getQQ());
        Map<String, ?> map = this.f59992a;
        if (map == null || map.size() <= 0) {
            return true;
        }
        for (Map.Entry<String, ?> entry : this.f59992a.entrySet()) {
            jSONObject.put(entry.getKey(), entry.getValue());
        }
        return true;
    }
}
