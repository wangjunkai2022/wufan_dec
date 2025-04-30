package com.heepay.plugin.domain;

import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.util.zip.GZIPInputStream;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    public Exception f16832a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f16833b;

    /* renamed from: c  reason: collision with root package name */
    public String f16834c;

    /* renamed from: d  reason: collision with root package name */
    public String f16835d;

    /* renamed from: e  reason: collision with root package name */
    public String f16836e;

    /* renamed from: f  reason: collision with root package name */
    public String f16837f;

    /* renamed from: g  reason: collision with root package name */
    public String f16838g;

    /* renamed from: h  reason: collision with root package name */
    public String f16839h;

    /* renamed from: i  reason: collision with root package name */
    public String f16840i;

    /* renamed from: j  reason: collision with root package name */
    public String f16841j;

    /* renamed from: k  reason: collision with root package name */
    public String f16842k;

    /* renamed from: l  reason: collision with root package name */
    public String f16843l;

    /* renamed from: m  reason: collision with root package name */
    public String f16844m;

    /* renamed from: n  reason: collision with root package name */
    public int f16845n;

    public g() {
        this.f16833b = false;
    }

    public g(boolean z3, String str, String str2) {
        this.f16833b = false;
        this.f16833b = z3;
        this.f16834c = str2;
        this.f16835d = str;
    }

    private String a(String str) {
        String str2 = this.f16837f;
        if (str2 != null && str2.length() > 0) {
            int i2 = 0;
            try {
                i2 = Integer.parseInt(this.f16837f);
            } catch (Exception unused) {
            }
            if (i2 == 1) {
                try {
                    GZIPInputStream gZIPInputStream = new GZIPInputStream(new ByteArrayInputStream(com.heepay.plugin.a.c.a(str)));
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(gZIPInputStream, Charset.forName("UTF-8")));
                    StringBuffer stringBuffer = new StringBuffer();
                    while (true) {
                        String readLine = bufferedReader.readLine();
                        if (readLine == null) {
                            String stringBuffer2 = stringBuffer.toString();
                            com.heepay.plugin.c.c.b("GetUnzipValue", "unzipped data is: " + stringBuffer2);
                            gZIPInputStream.close();
                            return stringBuffer2;
                        }
                        stringBuffer.append(readLine);
                    }
                } catch (Exception e4) {
                    com.heepay.plugin.c.c.e("ServiceReturn", com.heepay.plugin.c.b.a(e4));
                }
            }
        }
        return str;
    }

    public String a() {
        return a(this.f16836e);
    }

    public String b() {
        String str = this.f16834c;
        return (str == null || str.length() == 0) ? this.f16835d : str;
    }

    public JSONObject c() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("hasError", this.f16833b);
            jSONObject.put("message", this.f16834c);
            jSONObject.put("errorCode", this.f16835d);
            jSONObject.put("returnValue", this.f16836e);
            jSONObject.put("returnStatus", this.f16845n);
            jSONObject.put("extValue1", this.f16837f);
            jSONObject.put("extValue2", this.f16838g);
            jSONObject.put("extValue3", this.f16839h);
            jSONObject.put("extValue4", this.f16840i);
            jSONObject.put("extValue5", this.f16841j);
            jSONObject.put("extValue6", this.f16842k);
            jSONObject.put("extValue7", this.f16843l);
            jSONObject.put("extValue8", this.f16844m);
            return jSONObject;
        } catch (Exception unused) {
            return null;
        }
    }

    public String toString() {
        return c().toString();
    }
}
