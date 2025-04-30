package com.cmic.sso.sdk.c.b;

import java.net.URLEncoder;
/* compiled from: BaseScripParameter.java */
/* loaded from: classes2.dex */
public abstract class a extends g {

    /* renamed from: a  reason: collision with root package name */
    protected String f10810a = "";

    /* renamed from: b  reason: collision with root package name */
    protected String f10811b = "";

    /* renamed from: c  reason: collision with root package name */
    protected String f10812c = "";

    /* renamed from: d  reason: collision with root package name */
    protected String f10813d = "";

    /* renamed from: e  reason: collision with root package name */
    protected String f10814e = "";

    /* renamed from: f  reason: collision with root package name */
    protected String f10815f = "";

    /* renamed from: g  reason: collision with root package name */
    protected String f10816g = "";

    /* renamed from: h  reason: collision with root package name */
    protected String f10817h = "";

    /* renamed from: i  reason: collision with root package name */
    protected String f10818i = "";

    /* renamed from: j  reason: collision with root package name */
    protected String f10819j = "0";

    /* renamed from: k  reason: collision with root package name */
    protected String f10820k = "1.0";

    /* renamed from: l  reason: collision with root package name */
    protected String f10821l = "";

    /* renamed from: m  reason: collision with root package name */
    protected String f10822m = "";

    /* renamed from: n  reason: collision with root package name */
    protected String f10823n = "";

    /* renamed from: o  reason: collision with root package name */
    protected String f10824o = "";

    /* renamed from: p  reason: collision with root package name */
    protected String f10825p = "";

    /* renamed from: q  reason: collision with root package name */
    protected String f10826q = "";

    /* renamed from: r  reason: collision with root package name */
    protected String f10827r = "";

    /* renamed from: s  reason: collision with root package name */
    protected String f10828s = "";

    /* renamed from: t  reason: collision with root package name */
    protected String f10829t = "";

    /* renamed from: u  reason: collision with root package name */
    protected String f10830u = "001";

    /* renamed from: v  reason: collision with root package name */
    protected String f10831v = "";

    /* renamed from: w  reason: collision with root package name */
    protected String f10832w = "";

    @Override // com.cmic.sso.sdk.c.b.g
    public String a() {
        return this.f10812c;
    }

    public void a_(String str) {
        this.f10831v = str;
    }

    public void b(String str) {
        this.f10810a = t(str);
    }

    public void c(String str) {
        this.f10811b = t(str);
    }

    public void d(String str) {
        this.f10812c = t(str);
    }

    public void e(String str) {
        this.f10814e = t(str);
    }

    public void f(String str) {
        this.f10815f = t(str);
    }

    public void g(String str) {
        this.f10816g = URLEncoder.encode(t(str));
    }

    public void h(String str) {
        this.f10817h = URLEncoder.encode(t(str));
    }

    public void i(String str) {
        this.f10818i = URLEncoder.encode(t(str));
    }

    public void j(String str) {
        this.f10819j = t(str);
    }

    public void k(String str) {
        this.f10820k = t(str);
    }

    public void l(String str) {
        this.f10822m = t(str);
    }

    public void m(String str) {
        this.f10823n = t(str);
    }

    public void n(String str) {
        this.f10825p = t(str);
    }

    public void o(String str) {
        this.f10826q = t(str);
    }

    public void p(String str) {
        this.f10827r = t(str);
    }

    public void q(String str) {
        this.f10828s = t(str);
    }

    public void r(String str) {
        this.f10829t = t(str);
    }

    public void s(String str) {
        this.f10832w = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final String t(String str) {
        return str == null ? "" : str;
    }
}
