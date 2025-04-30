package com.cmic.sso.sdk.c.b;

import com.join.mgps.dto.Constant;
import com.qq.e.comm.pi.ACTD;
import com.tencent.stat.DeviceInfo;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: ScripAndTokenParameter.java */
/* loaded from: classes2.dex */
public class h extends a {

    /* renamed from: x  reason: collision with root package name */
    protected String f10860x = "";

    /* renamed from: y  reason: collision with root package name */
    protected String f10861y = "";

    @Override // com.cmic.sso.sdk.c.b.g
    protected String a(String str) {
        return this.f10811b + this.f10812c + this.f10813d + this.f10814e + this.f10815f + this.f10816g + this.f10817h + this.f10818i + this.f10819j + this.f10822m + this.f10823n + str + this.f10824o + this.f10826q + this.f10827r + this.f10828s + this.f10829t + this.f10830u + this.f10831v + this.f10860x + this.f10861y + this.f10832w;
    }

    @Override // com.cmic.sso.sdk.c.b.a
    public void a_(String str) {
        this.f10831v = t(str);
    }

    @Override // com.cmic.sso.sdk.c.b.g
    public JSONObject b() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(DeviceInfo.TAG_VERSION, this.f10810a);
            jSONObject.put("sdkver", this.f10811b);
            jSONObject.put(ACTD.APPID_KEY, this.f10812c);
            jSONObject.put("imsi", this.f10813d);
            jSONObject.put("operatortype", this.f10814e);
            jSONObject.put("networktype", this.f10815f);
            jSONObject.put("mobilebrand", this.f10816g);
            jSONObject.put("mobilemodel", this.f10817h);
            jSONObject.put("mobilesystem", this.f10818i);
            jSONObject.put("clienttype", this.f10819j);
            jSONObject.put("interfacever", this.f10820k);
            jSONObject.put("expandparams", this.f10821l);
            jSONObject.put("msgid", this.f10822m);
            jSONObject.put("timestamp", this.f10823n);
            jSONObject.put("subimsi", this.f10824o);
            jSONObject.put(Constant.MD5, this.f10825p);
            jSONObject.put("apppackage", this.f10826q);
            jSONObject.put("appsign", this.f10827r);
            jSONObject.put("ipv4_list", this.f10828s);
            jSONObject.put("ipv6_list", this.f10829t);
            jSONObject.put("sdkType", this.f10830u);
            jSONObject.put("tempPDR", this.f10831v);
            jSONObject.put("scrip", this.f10860x);
            jSONObject.put("userCapaid", this.f10861y);
            jSONObject.put("funcType", this.f10832w);
        } catch (JSONException e4) {
            e4.printStackTrace();
        }
        return jSONObject;
    }

    public String toString() {
        return this.f10810a + m.a.f72566d + this.f10811b + m.a.f72566d + this.f10812c + m.a.f72566d + this.f10813d + m.a.f72566d + this.f10814e + m.a.f72566d + this.f10815f + m.a.f72566d + this.f10816g + m.a.f72566d + this.f10817h + m.a.f72566d + this.f10818i + m.a.f72566d + this.f10819j + m.a.f72566d + this.f10820k + m.a.f72566d + this.f10821l + m.a.f72566d + this.f10822m + m.a.f72566d + this.f10823n + m.a.f72566d + this.f10824o + m.a.f72566d + this.f10825p + m.a.f72566d + this.f10826q + m.a.f72566d + this.f10827r + "&&" + this.f10828s + m.a.f72566d + this.f10829t + m.a.f72566d + this.f10830u + m.a.f72566d + this.f10831v + m.a.f72566d + this.f10860x + m.a.f72566d + this.f10861y + m.a.f72566d + this.f10832w;
    }

    public void v(String str) {
        this.f10860x = t(str);
    }

    public void w(String str) {
        this.f10861y = t(str);
    }
}
