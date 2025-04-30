package com.efs.sdk.memoryinfo;

import android.content.Context;
import android.text.TextUtils;
import com.efs.sdk.base.EfsReporter;
import com.efs.sdk.base.protocol.record.EfsJSONLog;
import com.umeng.analytics.pro.ai;
import com.umeng.commonsdk.statistics.idtracking.ImprintHandler;
import com.umeng.commonsdk.statistics.internal.UMImprintChangeCallback;
import com.umeng.commonsdk.utils.UMUtils;
import com.umeng.umcrash.UMCrash;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class e {
    final List<EfsJSONLog> B = new ArrayList();
    volatile boolean C;

    /* renamed from: a  reason: collision with root package name */
    private final EfsReporter f11470a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(final Context context, EfsReporter efsReporter) {
        this.f11470a = efsReporter;
        String uMId = UMUtils.getUMId(context);
        this.C = !TextUtils.isEmpty(uMId);
        if (!this.C) {
            ImprintHandler.getImprintService(context).registImprintCallback(ai.f60407g, new UMImprintChangeCallback() { // from class: com.efs.sdk.memoryinfo.e.1
                @Override // com.umeng.commonsdk.statistics.internal.UMImprintChangeCallback
                public final void onImprintValueChanged(String str, String str2) {
                    try {
                        if (ai.f60407g.equals(str)) {
                            HashMap hashMap = new HashMap(1);
                            hashMap.put(UMCrash.KEY_HEADER_UMID, str2);
                            e.this.f11470a.addPublicParams(hashMap);
                            synchronized (e.class) {
                                e.b(e.this);
                            }
                            for (EfsJSONLog efsJSONLog : e.this.B) {
                                e.this.a(efsJSONLog);
                            }
                            new StringBuilder("send cache:").append(e.this.B.size());
                            boolean z3 = a.DEBUG;
                            e.this.B.clear();
                            ImprintHandler.getImprintService(context).unregistImprintCallback(ai.f60407g, this);
                        }
                    } catch (Throwable th) {
                        f.a("umid ", th);
                    }
                }
            });
            return;
        }
        HashMap hashMap = new HashMap(1);
        hashMap.put(UMCrash.KEY_HEADER_UMID, uMId);
        efsReporter.addPublicParams(hashMap);
    }

    static /* synthetic */ boolean b(e eVar) {
        eVar.C = true;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(EfsJSONLog efsJSONLog) {
        try {
            this.f11470a.send(efsJSONLog);
        } catch (Throwable th) {
            f.a("send", th);
        }
    }
}
