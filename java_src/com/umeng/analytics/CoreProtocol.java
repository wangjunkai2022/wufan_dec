package com.umeng.analytics;

import android.content.Context;
import com.umeng.analytics.pro.n;
import com.umeng.commonsdk.framework.UMLogDataProtocol;
import com.umeng.commonsdk.framework.UMSenderStateNotify;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class CoreProtocol implements UMLogDataProtocol, UMSenderStateNotify {

    /* renamed from: a  reason: collision with root package name */
    private static Context f60328a;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private static final CoreProtocol f60329a = new CoreProtocol();

        private a() {
        }
    }

    public static CoreProtocol getInstance(Context context) {
        if (f60328a == null && context != null) {
            f60328a = context.getApplicationContext();
        }
        return a.f60329a;
    }

    @Override // com.umeng.commonsdk.framework.UMSenderStateNotify
    public void onConnectionAvailable() {
        n.a(f60328a).a();
    }

    @Override // com.umeng.commonsdk.framework.UMSenderStateNotify
    public void onSenderIdle() {
        n.a(f60328a).b();
    }

    @Override // com.umeng.commonsdk.framework.UMLogDataProtocol
    public void removeCacheData(Object obj) {
        n.a(f60328a).a(obj);
    }

    @Override // com.umeng.commonsdk.framework.UMLogDataProtocol
    public JSONObject setupReportData(long j4) {
        return n.a(f60328a).a(j4);
    }

    @Override // com.umeng.commonsdk.framework.UMLogDataProtocol
    public void workEvent(Object obj, int i2) {
        n.a(f60328a).a(obj, i2);
    }

    private CoreProtocol() {
    }
}
