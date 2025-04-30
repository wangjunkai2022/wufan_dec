package com.cmic.sso.sdk.c.c;

import com.cmic.sso.sdk.c.b.e;
import com.cmic.sso.sdk.e.p;
/* compiled from: HttpGetPrephoneRequest.java */
/* loaded from: classes2.dex */
public class b extends c {

    /* renamed from: b  reason: collision with root package name */
    private final e f10867b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f10868c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(String str, e eVar, String str2, String str3) {
        super(str, eVar, str2, str3);
        this.f10868c = false;
        this.f10867b = eVar;
    }

    public void a(com.cmic.sso.sdk.a aVar) {
        if (this.f10868c) {
            return;
        }
        com.cmic.sso.sdk.c.b.a c4 = this.f10867b.c();
        if (!aVar.b("isCloseIpv4", false)) {
            c4.q(p.a(true));
        }
        if (!aVar.b("isCloseIpv6", false)) {
            c4.r(p.b(true));
        }
        c4.n(c4.u(aVar.b("appkey")));
        this.f10867b.a(c4);
        this.f10867b.a(true);
        this.f10869a = this.f10867b.b().toString();
        this.f10868c = true;
    }
}
