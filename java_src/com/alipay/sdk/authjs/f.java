package com.alipay.sdk.authjs;

import java.util.TimerTask;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
final class f extends TimerTask {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ a f9698a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ d f9699b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(d dVar, a aVar) {
        this.f9699b = dVar;
        this.f9698a = aVar;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public final void run() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("toastCallBack", "true");
        } catch (JSONException unused) {
        }
        a aVar = new a(a.f9675i);
        aVar.f9681a = this.f9698a.f9681a;
        aVar.f9685e = jSONObject;
        this.f9699b.f9694a.a(aVar);
    }
}
