package com.alipay.sdk.data;

import android.content.Context;
import com.alipay.sdk.util.i;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class b implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Context f9751a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ a f9752b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(a aVar, Context context) {
        this.f9752b = aVar;
        this.f9751a = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            com.alipay.sdk.packet.b a4 = new com.alipay.sdk.packet.impl.b().a(this.f9751a);
            if (a4 != null) {
                this.f9752b.e(a4.f9779b);
                a aVar = this.f9752b;
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("timeout", aVar.a());
                jSONObject.put(a.f9747j, aVar.f9750b);
                i.c(m.b.b().f72580a, a.f9744g, jSONObject.toString());
            }
        } catch (Throwable unused) {
        }
    }
}
