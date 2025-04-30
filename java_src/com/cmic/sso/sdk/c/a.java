package com.cmic.sso.sdk.c;

import android.text.TextUtils;
import com.cmic.sso.sdk.c.b.d;
import com.cmic.sso.sdk.c.b.g;
import com.cmic.sso.sdk.c.c.c;
import com.cmic.sso.sdk.e.q;
import com.join.mgps.dto.PayCenterOrderRequest;
import java.util.List;
import java.util.Map;
/* compiled from: RedirectHandler.java */
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private String f10789a;

    /* renamed from: b  reason: collision with root package name */
    private String f10790b;

    public c a(c cVar, com.cmic.sso.sdk.c.d.b bVar, com.cmic.sso.sdk.a aVar) {
        List<String> list;
        Map<String, List<String>> b4 = bVar.b();
        if (TextUtils.isEmpty(this.f10789a) && (list = b4.get("pplocation")) != null && list.size() > 0) {
            this.f10789a = list.get(0);
        }
        q.b(aVar, String.valueOf(bVar.a()));
        List<String> list2 = b4.get("Location");
        if (list2 == null || list2.isEmpty()) {
            list2 = b4.get("Location".toLowerCase());
        }
        if (list2 != null && list2.size() > 0) {
            String str = list2.get(0);
            this.f10790b = str;
            if (!TextUtils.isEmpty(str)) {
                String b5 = aVar.b("operatortype", "0");
                if (PayCenterOrderRequest.PAY_TYPE_RECHARGE.equals(b5)) {
                    q.a(aVar, "getUnicomMobile");
                } else if ("3".equals(b5)) {
                    q.a(aVar, "getTelecomMobile");
                } else {
                    q.a(aVar, "NONE");
                }
            }
        }
        c a4 = a(this.f10790b, cVar.f(), "GET", new com.cmic.sso.sdk.c.b.c(cVar.k().a()));
        a4.a(cVar.h());
        return a4;
    }

    public c b(c cVar, com.cmic.sso.sdk.c.d.b bVar, com.cmic.sso.sdk.a aVar) {
        String b4 = aVar.b("operatortype", "0");
        if (PayCenterOrderRequest.PAY_TYPE_RECHARGE.equals(b4)) {
            q.a(aVar, "getNewUnicomPhoneNumberNotify");
        } else if ("3".equals(b4)) {
            q.a(aVar, "getNewTelecomPhoneNumberNotify");
        } else {
            q.a(aVar, "NONE");
        }
        q.b(aVar, String.valueOf(bVar.a()));
        d dVar = new d(cVar.k().a(), "1.0", bVar.c());
        dVar.c(aVar.b("userCapaid"));
        if (aVar.c("logintype") != 3) {
            dVar.b("authz");
        } else {
            dVar.b("pre");
        }
        c a4 = a(this.f10789a, cVar.f(), "POST", dVar);
        a4.a(cVar.h());
        this.f10789a = null;
        return a4;
    }

    private c a(String str, String str2, String str3, g gVar) {
        c cVar = new c(str, gVar, str3, str2);
        if (str3.equals("GET")) {
            cVar.a("Content-Type", "application/x-www-form-urlencoded");
        }
        return cVar;
    }

    public String a() {
        return this.f10789a;
    }
}
