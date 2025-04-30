package com.efs.sdk.base.core.a;

import android.text.TextUtils;
import com.efs.sdk.base.BuildConfig;
import com.efs.sdk.base.core.controller.ControllerCenter;
import com.efs.sdk.base.core.util.PackageUtil;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.tencent.stat.DeviceInfo;
import com.umeng.analytics.pro.ai;
import io.netty.handler.codec.rtsp.RtspHeaders;
import java.util.Locale;
import java.util.Map;
import java.util.Random;
import java.util.TreeMap;
/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    String f11244a;

    /* renamed from: b  reason: collision with root package name */
    String f11245b;

    /* renamed from: c  reason: collision with root package name */
    String f11246c;

    /* renamed from: d  reason: collision with root package name */
    public String f11247d;

    /* renamed from: e  reason: collision with root package name */
    public int f11248e;

    /* renamed from: f  reason: collision with root package name */
    public String f11249f;

    /* renamed from: g  reason: collision with root package name */
    public byte f11250g;

    /* renamed from: h  reason: collision with root package name */
    public String f11251h;

    /* renamed from: i  reason: collision with root package name */
    String f11252i;

    /* renamed from: j  reason: collision with root package name */
    String f11253j;

    /* renamed from: k  reason: collision with root package name */
    String f11254k;

    /* renamed from: l  reason: collision with root package name */
    public long f11255l = 0;

    public static c a() {
        c cVar = new c();
        cVar.f11244a = ControllerCenter.getGlobalEnvStruct().getAppid();
        cVar.f11245b = ControllerCenter.getGlobalEnvStruct().getSecret();
        cVar.f11254k = ControllerCenter.getGlobalEnvStruct().getUid();
        cVar.f11253j = BuildConfig.VERSION_NAME;
        cVar.f11246c = PackageUtil.getAppVersionName(ControllerCenter.getGlobalEnvStruct().mAppContext);
        cVar.f11252i = String.valueOf(com.efs.sdk.base.core.config.a.c.a().f11319d.f11310a);
        return cVar;
    }

    public final String b() {
        a.a();
        String valueOf = String.valueOf(a.b() / 1000);
        String a4 = com.efs.sdk.base.core.util.c.b.a(com.efs.sdk.base.core.util.c.a.a(this.f11254k + valueOf, this.f11245b));
        TreeMap treeMap = new TreeMap();
        treeMap.put("app", this.f11244a);
        treeMap.put("sd", a4);
        if (!TextUtils.isEmpty(this.f11247d)) {
            treeMap.put(com.alipay.sdk.app.statistic.c.f9618m, this.f11247d);
        }
        if (this.f11250g != 0) {
            treeMap.put("de", String.valueOf(this.f11248e));
            treeMap.put("type", this.f11251h);
            String str = this.f11249f;
            if (TextUtils.isEmpty(str)) {
                a.a();
                long b4 = a.b();
                str = String.format(Locale.SIMPLIFIED_CHINESE, "%d%04d", Long.valueOf(b4), Integer.valueOf(new Random(b4).nextInt(10000)));
            }
            treeMap.put(RtspHeaders.Values.SEQ, str);
        }
        treeMap.put("cver", this.f11252i);
        treeMap.put(ai.f60424x, q.a.f73954a);
        treeMap.put("sver", this.f11252i);
        treeMap.put("tm", valueOf);
        treeMap.put(DeviceInfo.TAG_VERSION, this.f11246c);
        StringBuilder sb = new StringBuilder();
        StringBuilder sb2 = new StringBuilder();
        for (Map.Entry entry : treeMap.entrySet()) {
            String str2 = ((String) entry.getKey()) + SimpleComparison.EQUAL_TO_OPERATION + ((String) entry.getValue());
            sb2.append(str2);
            sb.append(str2);
            sb.append(m.a.f72566d);
        }
        String a5 = com.efs.sdk.base.core.util.c.b.a(sb2.toString() + this.f11245b);
        sb.append("sign=");
        sb.append(a5);
        return com.efs.sdk.base.core.util.c.b.b(sb.toString());
    }
}
