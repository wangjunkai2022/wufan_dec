package com.cmic.sso.sdk.c.c;

import android.os.SystemClock;
import com.cmic.sso.sdk.b;
import com.cmic.sso.sdk.c.b.e;
import com.cmic.sso.sdk.c.b.f;
import com.cmic.sso.sdk.c.b.h;
import com.cmic.sso.sdk.e.i;
import com.cmic.sso.sdk.e.k;
import com.cmic.sso.sdk.e.m;
import com.cmic.sso.sdk.e.o;
import com.cmic.sso.sdk.e.p;
import com.cmic.sso.sdk.e.q;
import com.join.mgps.dto.PayCenterOrderRequest;
import com.qq.e.comm.pi.ACTD;
import org.json.JSONObject;
/* compiled from: BaseRequest.java */
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static a f10862a;

    private a() {
    }

    public static a a() {
        if (f10862a == null) {
            synchronized (a.class) {
                if (f10862a == null) {
                    f10862a = new a();
                }
            }
        }
        return f10862a;
    }

    public void a(boolean z3, com.cmic.sso.sdk.a aVar, d dVar) {
        com.cmic.sso.sdk.c.b.b bVar = new com.cmic.sso.sdk.c.b.b();
        bVar.b("1.0");
        bVar.c("Android");
        bVar.d(k.b("AID", ""));
        bVar.e(z3 ? "1" : "0");
        bVar.f(com.cmic.sso.sdk.auth.c.SDK_VERSION);
        bVar.g(aVar.b(ACTD.APPID_KEY));
        bVar.h(bVar.u("iYm0HAnkxQtpvN44"));
        com.cmic.sso.sdk.a.a b4 = aVar.b();
        a(new c("https://" + b4.c() + "/client/uniConfig", bVar, "POST", aVar.b("traceId")), dVar, aVar);
    }

    public void a(com.cmic.sso.sdk.a aVar, d dVar) {
        String a4;
        c bVar;
        int c4 = aVar.c("networktype");
        h hVar = new h();
        hVar.b("1.0");
        hVar.c(com.cmic.sso.sdk.auth.c.SDK_VERSION);
        hVar.d(aVar.b(ACTD.APPID_KEY));
        hVar.e(aVar.b("operatortype"));
        hVar.f(c4 + "");
        hVar.g(m.a());
        hVar.h(m.b());
        hVar.i(m.c());
        hVar.j("0");
        hVar.k("2.0");
        hVar.l(q.b());
        hVar.m(o.a());
        hVar.o(aVar.b("apppackage"));
        hVar.p(aVar.b("appsign"));
        hVar.a_(k.b("AID", ""));
        if (aVar.c("logintype") == 3) {
            hVar.s("pre");
        } else {
            hVar.w(aVar.b("userCapaid"));
            if (aVar.c("logintype") == 1) {
                hVar.w("200");
            } else {
                hVar.w("50");
            }
            hVar.s("authz");
        }
        q.a(aVar, "scripAndTokenForHttps");
        com.cmic.sso.sdk.a.a b4 = aVar.b();
        if (aVar.b("isCacheScrip", false)) {
            hVar.q(p.a(false));
            hVar.r(p.b(false));
            hVar.v(aVar.b("phonescrip"));
            hVar.n(hVar.u(aVar.b("appkey")));
            bVar = new c("https://" + b4.a() + "/unisdk/rs/scripAndTokenForHttps", hVar, "POST", aVar.b("traceId"));
            bVar.a("defendEOF", "0");
        } else {
            e eVar = new e();
            eVar.a(aVar.a(b.a.f10778a));
            eVar.b(aVar.a(b.a.f10779b));
            eVar.a(hVar);
            eVar.a(false);
            aVar.a("isCloseIpv4", b4.h());
            aVar.a("isCloseIpv6", b4.i());
            String str = "https://" + b4.b() + "/unisdk/rs/scripAndTokenForHttps";
            if (aVar.b("use2048PublicKey", false)) {
                com.cmic.sso.sdk.e.c.a("BaseRequest", "使用2对应的编码");
                eVar.b(PayCenterOrderRequest.PAY_TYPE_RECHARGE);
                a4 = i.a().b(aVar.a(b.a.f10778a));
            } else {
                a4 = i.a().a(aVar.a(b.a.f10778a));
            }
            eVar.c(a4);
            bVar = new b(str, eVar, "POST", aVar.b("traceId"));
            bVar.a("defendEOF", "1");
            if (c4 == 3) {
                bVar.a(true);
                aVar.a("doNetworkSwitch", true);
            } else {
                bVar.a(false);
                aVar.a("doNetworkSwitch", false);
            }
        }
        bVar.a("interfaceVersion", "2.0");
        a(bVar, dVar, aVar);
    }

    public void a(JSONObject jSONObject, com.cmic.sso.sdk.a aVar, d dVar) {
        f fVar = new f();
        f.a aVar2 = new f.a();
        f.b bVar = new f.b();
        bVar.e(q.b());
        bVar.f(o.a());
        bVar.b("2.0");
        bVar.c(aVar.b(ACTD.APPID_KEY, ""));
        bVar.d(bVar.u(""));
        aVar2.a(jSONObject);
        fVar.a(aVar2);
        fVar.a(bVar);
        com.cmic.sso.sdk.a.a b4 = aVar.b();
        a(new c("https://" + b4.d() + "/log/logReport", fVar, "POST", aVar.b("traceId")), dVar, aVar);
    }

    private void a(final c cVar, final d dVar, final com.cmic.sso.sdk.a aVar) {
        com.cmic.sso.sdk.c.a.d dVar2 = new com.cmic.sso.sdk.c.a.d();
        com.cmic.sso.sdk.c.a.c cVar2 = new com.cmic.sso.sdk.c.a.c();
        com.cmic.sso.sdk.c.a.a aVar2 = new com.cmic.sso.sdk.c.a.a();
        dVar2.a(cVar2);
        cVar2.a(aVar2);
        cVar.a(SystemClock.elapsedRealtime());
        dVar2.a(cVar, new com.cmic.sso.sdk.c.d.c() { // from class: com.cmic.sso.sdk.c.c.a.1
            @Override // com.cmic.sso.sdk.c.d.c
            public void a(com.cmic.sso.sdk.c.d.b bVar) {
                String string;
                if (cVar.g()) {
                    try {
                        a();
                        JSONObject jSONObject = new JSONObject(bVar.c());
                        if (jSONObject.has("resultcode")) {
                            string = jSONObject.getString("resultcode");
                        } else {
                            string = jSONObject.getString("resultCode");
                        }
                        q.b(aVar, string);
                        dVar.a(string, jSONObject.optString("desc"), jSONObject);
                    } catch (Exception e4) {
                        e4.printStackTrace();
                        a(com.cmic.sso.sdk.c.d.a.a(102223));
                    }
                }
            }

            @Override // com.cmic.sso.sdk.c.d.c
            public void a(com.cmic.sso.sdk.c.d.a aVar3) {
                if (cVar.g()) {
                    a();
                    q.b(aVar, String.valueOf(aVar3.a()));
                    dVar.a(String.valueOf(aVar3.a()), aVar3.b(), com.cmic.sso.sdk.auth.d.a(String.valueOf(aVar3.a()), aVar3.b()));
                }
            }

            private void a() {
                if (cVar.a().contains("uniConfig")) {
                    return;
                }
                q.c(aVar, String.valueOf(SystemClock.elapsedRealtime() - cVar.i()));
            }
        }, aVar);
    }
}
