package com.switfpass.pay.service;

import com.switfpass.pay.enmu.LocalRetCode;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public LocalRetCode f58879a = LocalRetCode.ERR_OTHER;

    /* renamed from: b  reason: collision with root package name */
    public String f58880b;

    /* renamed from: c  reason: collision with root package name */
    public int f58881c;

    /* renamed from: d  reason: collision with root package name */
    public String f58882d;

    public void a(String str) {
        LocalRetCode localRetCode;
        if (str != null && str.length() > 0) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.has("prepayid")) {
                    this.f58880b = jSONObject.getString("prepayid");
                    localRetCode = LocalRetCode.ERR_OK;
                } else {
                    localRetCode = LocalRetCode.ERR_JSON;
                }
                this.f58879a = localRetCode;
                this.f58881c = jSONObject.getInt("errcode");
                this.f58882d = jSONObject.getString("errmsg");
                return;
            } catch (Exception unused) {
            }
        }
        this.f58879a = LocalRetCode.ERR_JSON;
    }
}
