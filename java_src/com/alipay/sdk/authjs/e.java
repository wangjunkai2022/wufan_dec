package com.alipay.sdk.authjs;

import android.widget.Toast;
import com.alipay.sdk.authjs.a;
import java.util.Timer;
import org.json.JSONObject;
/* loaded from: classes2.dex */
final class e implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ a f9696a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ d f9697b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(d dVar, a aVar) {
        this.f9697b = dVar;
        this.f9696a = aVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        d dVar = this.f9697b;
        a aVar = this.f9696a;
        if (aVar != null && com.papa.controller.component.bluetooth.spp.c.f54675o.equals(aVar.f9683c)) {
            JSONObject jSONObject = aVar.f9685e;
            String optString = jSONObject.optString("content");
            int i2 = jSONObject.optInt("duration") < 2500 ? 0 : 1;
            Toast.makeText(dVar.f9695b, optString, i2).show();
            new Timer().schedule(new f(dVar, aVar), i2);
        }
        a.EnumC0025a enumC0025a = a.EnumC0025a.NONE_ERROR;
    }
}
