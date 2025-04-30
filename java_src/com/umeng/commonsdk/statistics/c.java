package com.umeng.commonsdk.statistics;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.umeng.analytics.pro.au;
import com.umeng.analytics.pro.bj;
import com.umeng.commonsdk.UMConfigure;
import com.umeng.commonsdk.config.FieldManager;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.framework.UMFrUtils;
import com.umeng.commonsdk.framework.UMWorkDispatch;
import com.umeng.commonsdk.internal.crash.UMCrashManager;
import com.umeng.commonsdk.statistics.common.MLog;
import com.umeng.commonsdk.statistics.idtracking.ImprintHandler;
import com.umeng.commonsdk.statistics.idtracking.e;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import com.umeng.commonsdk.statistics.internal.StatTracer;
import com.umeng.commonsdk.statistics.internal.d;
import com.umeng.commonsdk.statistics.noise.ABTest;
import com.umeng.commonsdk.statistics.noise.Defcon;
import com.umeng.commonsdk.statistics.proto.Response;
import java.io.File;
/* compiled from: NetWorkManager.java */
/* loaded from: classes4.dex */
public class c {

    /* renamed from: b  reason: collision with root package name */
    private static final int f61289b = 1;

    /* renamed from: c  reason: collision with root package name */
    private static final int f61290c = 2;

    /* renamed from: d  reason: collision with root package name */
    private static final int f61291d = 3;

    /* renamed from: o  reason: collision with root package name */
    private static final String f61292o = "thtstart";

    /* renamed from: p  reason: collision with root package name */
    private static final String f61293p = "gkvc";

    /* renamed from: q  reason: collision with root package name */
    private static final String f61294q = "ekvc";

    /* renamed from: a  reason: collision with root package name */
    String f61295a;

    /* renamed from: f  reason: collision with root package name */
    private com.umeng.commonsdk.statistics.internal.c f61297f;

    /* renamed from: g  reason: collision with root package name */
    private ImprintHandler f61298g;

    /* renamed from: h  reason: collision with root package name */
    private e f61299h;

    /* renamed from: i  reason: collision with root package name */
    private ImprintHandler.a f61300i;

    /* renamed from: k  reason: collision with root package name */
    private Defcon f61302k;

    /* renamed from: l  reason: collision with root package name */
    private long f61303l;

    /* renamed from: m  reason: collision with root package name */
    private int f61304m;

    /* renamed from: n  reason: collision with root package name */
    private int f61305n;

    /* renamed from: r  reason: collision with root package name */
    private Context f61306r;

    /* renamed from: e  reason: collision with root package name */
    private final int f61296e = 1;

    /* renamed from: j  reason: collision with root package name */
    private ABTest f61301j = null;

    public c(Context context) {
        this.f61299h = null;
        this.f61300i = null;
        this.f61302k = null;
        this.f61303l = 0L;
        this.f61304m = 0;
        this.f61305n = 0;
        this.f61295a = null;
        this.f61306r = context;
        this.f61300i = ImprintHandler.getImprintService(context).c();
        this.f61302k = Defcon.getService(this.f61306r);
        SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(this.f61306r);
        this.f61303l = sharedPreferences.getLong(f61292o, 0L);
        this.f61304m = sharedPreferences.getInt(f61293p, 0);
        this.f61305n = sharedPreferences.getInt(f61294q, 0);
        this.f61295a = UMEnvelopeBuild.imprintProperty(this.f61306r, "track_list", null);
        ImprintHandler imprintService = ImprintHandler.getImprintService(this.f61306r);
        this.f61298g = imprintService;
        imprintService.a(new d() { // from class: com.umeng.commonsdk.statistics.c.1
            @Override // com.umeng.commonsdk.statistics.internal.d
            public void onImprintChanged(ImprintHandler.a aVar) {
                c.this.f61302k.onImprintChanged(aVar);
                c cVar = c.this;
                cVar.f61295a = UMEnvelopeBuild.imprintProperty(cVar.f61306r, "track_list", null);
            }
        });
        if (!UMConfigure.needSendZcfgEnv(this.f61306r)) {
            this.f61299h = e.a(this.f61306r);
        }
        com.umeng.commonsdk.statistics.internal.c cVar = new com.umeng.commonsdk.statistics.internal.c(this.f61306r);
        this.f61297f = cVar;
        cVar.a(StatTracer.getInstance(this.f61306r));
    }

    public boolean a(File file) {
        String str;
        if (file == null) {
            return false;
        }
        try {
            byte[] byteArray = UMFrUtils.toByteArray(file.getPath());
            if (byteArray == null) {
                return false;
            }
            String name = file.getName();
            if (TextUtils.isEmpty(name)) {
                return false;
            }
            com.umeng.commonsdk.statistics.internal.a a4 = com.umeng.commonsdk.statistics.internal.a.a(this.f61306r);
            a4.d(name);
            boolean a5 = a4.a(name);
            boolean b4 = a4.b(name);
            boolean c4 = a4.c(name);
            String d4 = com.umeng.commonsdk.stateless.d.d(name);
            if (!TextUtils.isEmpty(d4)) {
                str = com.umeng.commonsdk.stateless.d.c(d4);
            } else if (c4) {
                str = UMServerURL.ZCFG_PATH;
            } else {
                str = UMServerURL.PATH_ANALYTICS;
            }
            byte[] a6 = this.f61297f.a(byteArray, a5, c4, str);
            int a7 = a6 == null ? 1 : a(a6);
            if (UMConfigure.isDebugLog()) {
                if (c4 && a7 == 2) {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "Zero req: succeed.");
                } else if (b4 && a7 == 2) {
                    MLog.d("本次启动数据: 发送成功!");
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "Send instant data: succeed.");
                } else if (a5 && a7 == 2) {
                    MLog.d("普通统计数据: 发送成功!");
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "Send analytics data: succeed.");
                } else {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "Inner req: succeed.");
                }
            }
            if (a7 == 2) {
                e eVar = this.f61299h;
                if (eVar != null) {
                    eVar.e();
                }
                StatTracer.getInstance(this.f61306r).saveSate();
            } else if (a7 == 3) {
                StatTracer.getInstance(this.f61306r).saveSate();
                if (c4) {
                    FieldManager.a().a(this.f61306r);
                    UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 零号报文应答内容报错!!! ，特殊处理!，继续正常流程。");
                    Context context = this.f61306r;
                    UMWorkDispatch.sendEvent(context, com.umeng.commonsdk.internal.a.f61144s, com.umeng.commonsdk.internal.b.a(context).a(), null);
                    return true;
                }
            }
            return a7 == 2;
        } catch (Throwable th) {
            UMCrashManager.reportCrash(this.f61306r, th);
            return false;
        }
    }

    private int a(byte[] bArr) {
        Response response = new Response();
        try {
            new au(new bj.a()).a(response, bArr);
            if (response.resp_code == 1) {
                this.f61298g.b(response.getImprint());
                this.f61298g.d();
            }
        } catch (Throwable th) {
            UMCrashManager.reportCrash(this.f61306r, th);
        }
        return response.resp_code == 1 ? 2 : 3;
    }
}
