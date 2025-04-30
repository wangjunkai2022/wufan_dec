package com.alipay.apmobilesecuritysdk.b;

import java.text.SimpleDateFormat;
import java.util.Calendar;
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private String f9520a;

    /* renamed from: b  reason: collision with root package name */
    private String f9521b;

    /* renamed from: c  reason: collision with root package name */
    private String f9522c;

    /* renamed from: d  reason: collision with root package name */
    private String f9523d;

    /* renamed from: e  reason: collision with root package name */
    private String f9524e;

    /* renamed from: f  reason: collision with root package name */
    private String f9525f;

    /* renamed from: g  reason: collision with root package name */
    private String f9526g;

    public a(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        this.f9520a = str;
        this.f9521b = str2;
        this.f9522c = str3;
        this.f9523d = str4;
        this.f9524e = str5;
        this.f9525f = str6;
        this.f9526g = str7;
    }

    public final String toString() {
        StringBuilder sb;
        String str;
        StringBuilder sb2;
        String str2;
        StringBuilder sb3;
        String str3;
        StringBuffer stringBuffer = new StringBuffer(new SimpleDateFormat("yyyyMMddHHmmssSSS").format(Calendar.getInstance().getTime()));
        stringBuffer.append("," + this.f9520a);
        stringBuffer.append("," + this.f9521b);
        stringBuffer.append("," + this.f9522c);
        stringBuffer.append("," + this.f9523d);
        if (com.alipay.security.mobile.module.commonutils.a.b(this.f9524e) || this.f9524e.length() < 20) {
            sb = new StringBuilder(",");
            str = this.f9524e;
        } else {
            sb = new StringBuilder(",");
            str = this.f9524e.substring(0, 20);
        }
        sb.append(str);
        stringBuffer.append(sb.toString());
        if (com.alipay.security.mobile.module.commonutils.a.b(this.f9525f) || this.f9525f.length() < 20) {
            sb2 = new StringBuilder(",");
            str2 = this.f9525f;
        } else {
            sb2 = new StringBuilder(",");
            str2 = this.f9525f.substring(0, 20);
        }
        sb2.append(str2);
        stringBuffer.append(sb2.toString());
        if (com.alipay.security.mobile.module.commonutils.a.b(this.f9526g) || this.f9526g.length() < 20) {
            sb3 = new StringBuilder(",");
            str3 = this.f9526g;
        } else {
            sb3 = new StringBuilder(",");
            str3 = this.f9526g.substring(0, 20);
        }
        sb3.append(str3);
        stringBuffer.append(sb3.toString());
        return stringBuffer.toString();
    }
}
