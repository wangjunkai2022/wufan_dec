package com.cmic.sso.sdk.c.b;

import com.tencent.stat.DeviceInfo;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: GetPhoneNubmerNotify.java */
/* loaded from: classes2.dex */
public class d extends g {

    /* renamed from: a  reason: collision with root package name */
    private final String f10841a;

    /* renamed from: b  reason: collision with root package name */
    private final String f10842b;

    /* renamed from: c  reason: collision with root package name */
    private final String f10843c;

    /* renamed from: d  reason: collision with root package name */
    private String f10844d = "authz";

    /* renamed from: e  reason: collision with root package name */
    private String f10845e;

    public d(String str, String str2, String str3) {
        this.f10841a = str;
        this.f10842b = str2;
        this.f10843c = str3;
    }

    @Override // com.cmic.sso.sdk.c.b.g
    public String a() {
        return this.f10841a;
    }

    @Override // com.cmic.sso.sdk.c.b.g
    protected String a(String str) {
        return null;
    }

    public void b(String str) {
        this.f10844d = str;
    }

    public void c(String str) {
        this.f10845e = str;
    }

    @Override // com.cmic.sso.sdk.c.b.g
    public JSONObject b() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(DeviceInfo.TAG_VERSION, this.f10842b);
            jSONObject.put("data", this.f10843c);
            jSONObject.put("userCapaid", this.f10845e);
            jSONObject.put("funcType", this.f10844d);
        } catch (JSONException e4) {
            e4.printStackTrace();
        }
        return jSONObject;
    }
}
