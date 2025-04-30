package com.alipay.android.phone.mrpc.core.a;

import java.lang.reflect.Type;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class d extends a {
    public d(Type type, byte[] bArr) {
        super(type, bArr);
    }

    @Override // com.alipay.android.phone.mrpc.core.a.c
    public final Object a() {
        try {
            String str = new String(this.f9415b);
            Thread.currentThread().getId();
            JSONObject jSONObject = new JSONObject(str);
            int i2 = jSONObject.getInt("resultStatus");
            if (i2 == 1000) {
                return this.f9414a == String.class ? jSONObject.optString("result") : com.alipay.a.a.e.b(jSONObject.optString("result"), this.f9414a);
            }
            throw new com.alipay.android.phone.mrpc.core.c(Integer.valueOf(i2), jSONObject.optString("tips"));
        } catch (Exception e4) {
            StringBuilder sb = new StringBuilder("response  =");
            sb.append(new String(this.f9415b));
            sb.append(":");
            sb.append(e4);
            throw new com.alipay.android.phone.mrpc.core.c((Integer) 10, sb.toString() == null ? "" : e4.getMessage());
        }
    }
}
