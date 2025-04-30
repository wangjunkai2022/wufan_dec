package com.tencent.stat.a;

import android.content.Context;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class j extends e {

    /* renamed from: a  reason: collision with root package name */
    Long f60029a;

    /* renamed from: l  reason: collision with root package name */
    String f60030l;

    /* renamed from: m  reason: collision with root package name */
    String f60031m;

    public j(Context context, String str, String str2, int i2, Long l4) {
        super(context, i2);
        this.f60029a = null;
        this.f60031m = str;
        this.f60030l = str2;
        this.f60029a = l4;
    }

    @Override // com.tencent.stat.a.e
    public f a() {
        return f.PAGE_VIEW;
    }

    @Override // com.tencent.stat.a.e
    public boolean a(JSONObject jSONObject) {
        com.tencent.stat.common.k.a(jSONObject, "pi", this.f60030l);
        com.tencent.stat.common.k.a(jSONObject, "rf", this.f60031m);
        Long l4 = this.f60029a;
        if (l4 != null) {
            jSONObject.put(com.umeng.analytics.pro.c.W, l4);
            return true;
        }
        return true;
    }
}
