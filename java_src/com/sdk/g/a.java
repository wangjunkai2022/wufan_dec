package com.sdk.g;

import com.sdk.a.i;
import com.sdk.o.c;
import io.netty.handler.codec.rtsp.RtspHeaders;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class a extends com.sdk.e.b<String> {

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ b f56654b;

    public a(b bVar) {
        this.f56654b = bVar;
    }

    @Override // com.sdk.e.b
    public void a(i<String> iVar, String str) {
        int i2;
        try {
            JSONObject jSONObject = new JSONObject(iVar == null ? "" : iVar.f56581b);
            int optInt = jSONObject.optInt("code");
            try {
                String optString = jSONObject.optString("msg");
                int optInt2 = jSONObject.optInt("status");
                String optString2 = jSONObject.optString("obj");
                String optString3 = jSONObject.optString(RtspHeaders.Values.SEQ);
                if (!com.sdk.o.b.a(optString).booleanValue() || !com.sdk.o.b.a(optString3).booleanValue() || !com.sdk.o.b.a(optString2).booleanValue()) {
                    this.f56654b.a(optInt, optString, optInt2, optString2, optString3);
                    return;
                }
                this.f56654b.a(1, "服务端数据格式出错", 302003, null, c.a().f56639c);
                com.sdk.o.b.a(b.f56655a, "返回数据为空", Boolean.valueOf(b.f56656b));
            } catch (Throwable th) {
                th = th;
                i2 = optInt;
                c.d(th.toString());
                this.f56654b.a(i2, "服务端数据格式出错", 302003, null, c.a().f56639c);
                String str2 = b.f56655a;
                com.sdk.o.b.a(str2, "返回数据解析异常：" + th.toString(), Boolean.valueOf(b.f56656b));
            }
        } catch (Throwable th2) {
            th = th2;
            i2 = 1;
        }
    }
}
