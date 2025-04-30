package com.alipay.security.mobile.module.a;

import android.content.Context;
import com.alipay.android.phone.mrpc.core.g;
import com.alipay.android.phone.mrpc.core.l;
import com.alipay.android.phone.mrpc.core.v;
import com.alipay.tscenter.biz.rpc.vkeydfp.request.AppListCmdRequest;
import com.alipay.tscenter.biz.rpc.vkeydfp.request.DeviceDataReportRequest;
import com.alipay.tscenter.biz.rpc.vkeydfp.result.AppListResult;
import com.alipay.tscenter.biz.rpc.vkeydfp.result.DeviceDataReportResult;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class b implements a {

    /* renamed from: f  reason: collision with root package name */
    private static b f9869f;

    /* renamed from: g  reason: collision with root package name */
    private static DeviceDataReportResult f9870g;

    /* renamed from: a  reason: collision with root package name */
    private Context f9871a;

    /* renamed from: b  reason: collision with root package name */
    private g f9872b;

    /* renamed from: c  reason: collision with root package name */
    private u.a f9873c;

    /* renamed from: d  reason: collision with root package name */
    private v.b f9874d;

    /* renamed from: e  reason: collision with root package name */
    private v.a f9875e;

    private b(Context context) {
        this.f9871a = null;
        this.f9872b = null;
        this.f9873c = null;
        this.f9874d = null;
        this.f9875e = null;
        this.f9871a = context;
        try {
            l lVar = new l();
            lVar.f9479a = com.alipay.security.mobile.module.a.a.a.a();
            v vVar = new v(context);
            this.f9872b = vVar;
            this.f9873c = (u.a) vVar.a(u.a.class, lVar);
            this.f9874d = (v.b) this.f9872b.a(v.b.class, lVar);
            this.f9875e = (v.a) this.f9872b.a(v.a.class, lVar);
        } catch (Exception e4) {
            com.alipay.security.mobile.module.commonutils.d.c(e4);
        }
    }

    public static synchronized b b(Context context) {
        b bVar;
        synchronized (b.class) {
            if (f9869f == null) {
                f9869f = new b(context);
            }
            bVar = f9869f;
        }
        return bVar;
    }

    @Override // com.alipay.security.mobile.module.a.a
    public final AppListResult a(String str, String str2, String str3, String str4) {
        try {
            AppListCmdRequest appListCmdRequest = new AppListCmdRequest();
            appListCmdRequest.f9920a = str;
            appListCmdRequest.f9922c = str4;
            appListCmdRequest.f9921b = str2;
            appListCmdRequest.f9923d = str3;
            return this.f9875e.a(appListCmdRequest);
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // com.alipay.security.mobile.module.a.a
    public final DeviceDataReportResult a(DeviceDataReportRequest deviceDataReportRequest) {
        if (this.f9874d != null) {
            try {
                f9870g = null;
                new Thread(new c(this, deviceDataReportRequest)).start();
                for (int i2 = 300000; f9870g == null && i2 >= 0; i2 -= 50) {
                    Thread.sleep(50L);
                }
            } catch (Exception e4) {
                com.alipay.security.mobile.module.commonutils.d.c(e4);
            }
        }
        return f9870g;
    }

    @Override // com.alipay.security.mobile.module.a.a
    public final boolean a(String str) {
        u.a aVar;
        if (com.alipay.security.mobile.module.commonutils.a.b(str) || (aVar = this.f9873c) == null) {
            return false;
        }
        String str2 = null;
        try {
            str2 = aVar.a(com.alipay.security.mobile.module.commonutils.a.h(str));
        } catch (Exception unused) {
        }
        if (com.alipay.security.mobile.module.commonutils.a.b(str2)) {
            return false;
        }
        try {
            return ((Boolean) new JSONObject(str2).get("success")).booleanValue();
        } catch (JSONException e4) {
            com.alipay.security.mobile.module.commonutils.d.c(e4);
            return false;
        }
    }
}
