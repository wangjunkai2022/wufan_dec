package com.alipay.sdk.authjs;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.widget.Toast;
import com.alipay.sdk.authjs.a;
import java.util.Timer;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    c f9694a;

    /* renamed from: b  reason: collision with root package name */
    Context f9695b;

    public d(Context context, c cVar) {
        this.f9695b = context;
        this.f9694a = cVar;
    }

    private static /* synthetic */ a.EnumC0025a a(d dVar, a aVar) {
        if (aVar != null && com.papa.controller.component.bluetooth.spp.c.f54675o.equals(aVar.f9683c)) {
            JSONObject jSONObject = aVar.f9685e;
            String optString = jSONObject.optString("content");
            int i2 = jSONObject.optInt("duration") < 2500 ? 0 : 1;
            Toast.makeText(dVar.f9695b, optString, i2).show();
            new Timer().schedule(new f(dVar, aVar), i2);
        }
        return a.EnumC0025a.NONE_ERROR;
    }

    private static void e(Runnable runnable) {
        if (runnable == null) {
            return;
        }
        if (Looper.getMainLooper() == Looper.myLooper()) {
            runnable.run();
        } else {
            new Handler(Looper.getMainLooper()).post(runnable);
        }
    }

    private void f(String str) {
        JSONObject jSONObject;
        String string;
        String str2 = null;
        try {
            jSONObject = new JSONObject(str);
            string = jSONObject.getString(a.f9677k);
        } catch (Exception unused) {
        }
        try {
            if (TextUtils.isEmpty(string)) {
                return;
            }
            JSONObject jSONObject2 = jSONObject.getJSONObject(a.f9678l);
            JSONObject jSONObject3 = jSONObject2 instanceof JSONObject ? jSONObject2 : null;
            String string2 = jSONObject.getString(a.f9679m);
            String string3 = jSONObject.getString(a.f9676j);
            a aVar = new a("call");
            aVar.f9682b = string3;
            aVar.f9683c = string2;
            aVar.f9685e = jSONObject3;
            aVar.f9681a = string;
            c(aVar);
        } catch (Exception unused2) {
            str2 = string;
            if (TextUtils.isEmpty(str2)) {
                return;
            }
            try {
                g(str2, a.EnumC0025a.RUNTIME_ERROR);
            } catch (JSONException unused3) {
            }
        }
    }

    private a.EnumC0025a h(a aVar) {
        if (aVar != null && com.papa.controller.component.bluetooth.spp.c.f54675o.equals(aVar.f9683c)) {
            JSONObject jSONObject = aVar.f9685e;
            String optString = jSONObject.optString("content");
            int i2 = jSONObject.optInt("duration") < 2500 ? 0 : 1;
            Toast.makeText(this.f9695b, optString, i2).show();
            new Timer().schedule(new f(this, aVar), i2);
        }
        return a.EnumC0025a.NONE_ERROR;
    }

    private void i(a aVar) {
        JSONObject jSONObject = aVar.f9685e;
        String optString = jSONObject.optString("content");
        int i2 = jSONObject.optInt("duration") < 2500 ? 0 : 1;
        Toast.makeText(this.f9695b, optString, i2).show();
        new Timer().schedule(new f(this, aVar), i2);
    }

    public final void c(a aVar) throws JSONException {
        if (aVar == null) {
            return;
        }
        if (TextUtils.isEmpty(aVar.f9683c)) {
            g(aVar.f9681a, a.EnumC0025a.INVALID_PARAMETER);
            return;
        }
        e eVar = new e(this, aVar);
        if (Looper.getMainLooper() == Looper.myLooper()) {
            eVar.run();
        } else {
            new Handler(Looper.getMainLooper()).post(eVar);
        }
    }

    public final void g(String str, a.EnumC0025a enumC0025a) throws JSONException {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("error", enumC0025a.ordinal());
        a aVar = new a(a.f9675i);
        aVar.f9685e = jSONObject;
        aVar.f9681a = str;
        this.f9694a.a(aVar);
    }
}
