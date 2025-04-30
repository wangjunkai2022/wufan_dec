package com.switfpass.pay.service;

import com.switfpass.pay.enmu.LocalRetCode;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public LocalRetCode f58874a = LocalRetCode.ERR_OTHER;

    /* renamed from: b  reason: collision with root package name */
    public String f58875b;

    /* renamed from: c  reason: collision with root package name */
    public int f58876c;

    /* renamed from: d  reason: collision with root package name */
    public int f58877d;

    /* renamed from: e  reason: collision with root package name */
    public String f58878e;

    public void a(String str) {
        if (str != null && str.length() > 0) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.has("access_token")) {
                    this.f58875b = jSONObject.getString("access_token");
                    this.f58876c = jSONObject.getInt("expires_in");
                    this.f58874a = LocalRetCode.ERR_OK;
                    return;
                }
                this.f58877d = jSONObject.getInt("errcode");
                this.f58878e = jSONObject.getString("errmsg");
                this.f58874a = LocalRetCode.ERR_JSON;
                return;
            } catch (Exception unused) {
            }
        }
        this.f58874a = LocalRetCode.ERR_JSON;
    }
}
