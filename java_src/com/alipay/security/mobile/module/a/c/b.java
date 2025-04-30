package com.alipay.security.mobile.module.a.c;

import android.content.Context;
import com.alipay.tscenter.biz.rpc.vkeydfp.request.DeviceDataReportRequest;
import com.alipay.tscenter.biz.rpc.vkeydfp.result.AppListResult;
import com.alipay.tscenter.biz.rpc.vkeydfp.result.DeviceDataReportResult;
import java.util.HashMap;
import java.util.Map;
import o.c;
import o.d;
/* loaded from: classes2.dex */
public final class b implements a {

    /* renamed from: a  reason: collision with root package name */
    private static a f9878a;

    /* renamed from: b  reason: collision with root package name */
    private static com.alipay.security.mobile.module.a.a f9879b;

    public static a b(Context context) {
        if (context == null) {
            return null;
        }
        if (f9878a == null) {
            f9879b = com.alipay.security.mobile.module.a.b.b(context);
            f9878a = new b();
        }
        return f9878a;
    }

    @Override // com.alipay.security.mobile.module.a.c.a
    public final o.a a(String str, String str2, String str3, String str4) {
        AppListResult a4 = f9879b.a(str, str2, str3, str4);
        if (a4 == null) {
            return null;
        }
        o.a aVar = new o.a(a4.f9936d, a4.f9935c);
        aVar.f73124a = a4.f9937a;
        aVar.f73125b = a4.f9938b;
        return aVar;
    }

    @Override // com.alipay.security.mobile.module.a.c.a
    public final c a(d dVar) {
        DeviceDataReportRequest deviceDataReportRequest = new DeviceDataReportRequest();
        deviceDataReportRequest.f9925a = com.alipay.security.mobile.module.commonutils.a.f(dVar.f73133a);
        deviceDataReportRequest.f9926b = com.alipay.security.mobile.module.commonutils.a.f(dVar.f73134b);
        deviceDataReportRequest.f9927c = com.alipay.security.mobile.module.commonutils.a.f(dVar.f73135c);
        deviceDataReportRequest.f9928d = com.alipay.security.mobile.module.commonutils.a.f(dVar.f73136d);
        deviceDataReportRequest.f9929e = com.alipay.security.mobile.module.commonutils.a.f(dVar.f73137e);
        deviceDataReportRequest.f9930f = com.alipay.security.mobile.module.commonutils.a.f(dVar.f73138f);
        deviceDataReportRequest.f9931g = com.alipay.security.mobile.module.commonutils.a.f(dVar.f73139g);
        deviceDataReportRequest.f9932h = com.alipay.security.mobile.module.commonutils.a.f(dVar.f73140h);
        Map<String, String> map = dVar.f73141i;
        if (map == null) {
            map = new HashMap<>();
        }
        deviceDataReportRequest.f9933i = map;
        DeviceDataReportResult a4 = f9879b.a(deviceDataReportRequest);
        c cVar = new c();
        if (a4 == null) {
            return null;
        }
        cVar.f73124a = a4.f9937a;
        cVar.f73125b = a4.f9938b;
        cVar.f73126c = a4.f9939c;
        cVar.f73127d = a4.f9940d;
        cVar.f73128e = a4.f9941e;
        cVar.f73129f = a4.f9942f;
        cVar.f73130g = a4.f9943g;
        cVar.f73131h = a4.f9944h;
        cVar.f73132i = a4.f9945i;
        return cVar;
    }

    @Override // com.alipay.security.mobile.module.a.c.a
    public final boolean a(String str) {
        return f9879b.a(str);
    }
}
