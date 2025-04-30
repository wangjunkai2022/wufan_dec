package com.efs.sdk.memoryinfo;

import android.content.Context;
import com.efs.sdk.base.EfsReporter;
import com.efs.sdk.base.protocol.record.EfsJSONLog;
/* loaded from: classes2.dex */
final class b {

    /* renamed from: a  reason: collision with root package name */
    final EfsReporter f11441a;

    /* renamed from: b  reason: collision with root package name */
    boolean f11442b = false;
    final Context mContext;

    public b(Context context, EfsReporter efsReporter) {
        this.mContext = context.getApplicationContext();
        this.f11441a = efsReporter;
    }

    static /* synthetic */ void a(b bVar, e eVar, String str) {
        c cVar = new c(bVar.mContext);
        EfsJSONLog efsJSONLog = new EfsJSONLog("memperf");
        efsJSONLog.put("w_pgid", str);
        efsJSONLog.put("crver", "0.0.1.umeng");
        efsJSONLog.put("k_st", cVar.bg);
        efsJSONLog.put("w_url", cVar.activity);
        efsJSONLog.put("wl_tpss", Long.valueOf(cVar.f11457n));
        efsJSONLog.put("wl_jpss", Long.valueOf(cVar.f11458o));
        efsJSONLog.put("wl_npss", Long.valueOf(cVar.f11459p));
        efsJSONLog.put("wl_heap", Long.valueOf(cVar.f11460q));
        efsJSONLog.put("wf_heap_used_rate", Float.valueOf(cVar.f11461r));
        efsJSONLog.put("wl_graphics", Long.valueOf(cVar.f11462s));
        efsJSONLog.put("wl_vmsize", Long.valueOf(cVar.f11463t));
        synchronized (e.class) {
            if (eVar.C) {
                eVar.a(efsJSONLog);
            } else {
                eVar.B.add(efsJSONLog);
            }
        }
    }
}
