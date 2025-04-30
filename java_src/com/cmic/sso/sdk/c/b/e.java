package com.cmic.sso.sdk.c.b;

import android.util.Base64;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: GetPrePhoneScripParameter.java */
/* loaded from: classes2.dex */
public class e extends g {

    /* renamed from: a  reason: collision with root package name */
    private a f10846a;

    /* renamed from: b  reason: collision with root package name */
    private byte[] f10847b;

    /* renamed from: c  reason: collision with root package name */
    private String f10848c;

    /* renamed from: d  reason: collision with root package name */
    private byte[] f10849d;

    /* renamed from: e  reason: collision with root package name */
    private String f10850e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f10851f = false;

    @Override // com.cmic.sso.sdk.c.b.g
    protected String a(String str) {
        return null;
    }

    public void a(boolean z3) {
        this.f10851f = z3;
    }

    public void b(String str) {
        this.f10850e = str;
    }

    public void c(String str) {
        this.f10848c = str;
    }

    public void a(byte[] bArr) {
        this.f10847b = bArr;
    }

    public void b(byte[] bArr) {
        this.f10849d = bArr;
    }

    public a c() {
        return this.f10846a;
    }

    public void a(a aVar) {
        this.f10846a = aVar;
    }

    @Override // com.cmic.sso.sdk.c.b.g
    public JSONObject b() {
        JSONObject jSONObject = new JSONObject();
        if (this.f10851f) {
            try {
                jSONObject.put("encrypted", this.f10848c);
                jSONObject.put("encryptedIV", Base64.encodeToString(this.f10849d, 0));
                jSONObject.put("reqdata", com.cmic.sso.sdk.e.a.a(this.f10847b, this.f10846a.toString(), this.f10849d));
                jSONObject.put("securityreinforce", this.f10850e);
            } catch (JSONException e4) {
                e4.printStackTrace();
            }
        }
        return jSONObject;
    }

    @Override // com.cmic.sso.sdk.c.b.g
    public String a() {
        return this.f10846a.a();
    }
}
