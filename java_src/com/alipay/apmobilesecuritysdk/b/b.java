package com.alipay.apmobilesecuritysdk.b;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.alipay.apmobilesecuritysdk.e.e;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private File f9527a;

    /* renamed from: b  reason: collision with root package name */
    private com.alipay.security.mobile.module.a.c.a f9528b;

    public b(String str, com.alipay.security.mobile.module.a.c.a aVar) {
        this.f9527a = null;
        this.f9528b = null;
        this.f9527a = new File(str);
        this.f9528b = aVar;
    }

    private static String a(String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("type", "id");
            jSONObject.put("error", str);
            return jSONObject.toString();
        } catch (JSONException unused) {
            return "";
        }
    }

    private void c(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        NetworkInfo activeNetworkInfo = connectivityManager == null ? null : connectivityManager.getActiveNetworkInfo();
        boolean z3 = true;
        z3 = (activeNetworkInfo != null && activeNetworkInfo.isConnected() && activeNetworkInfo.getType() == 1) ? false : false;
        boolean b4 = e.b(context);
        if (z3 && b4) {
            new Thread(new c(this)).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized void b() {
        File file = this.f9527a;
        if (file == null) {
            return;
        }
        if (file.exists() && this.f9527a.isDirectory() && this.f9527a.list().length != 0) {
            ArrayList arrayList = new ArrayList();
            for (String str : this.f9527a.list()) {
                arrayList.add(str);
            }
            Collections.sort(arrayList);
            String str2 = (String) arrayList.get(arrayList.size() - 1);
            int size = arrayList.size();
            if (str2.equals(new SimpleDateFormat("yyyyMMdd").format(Calendar.getInstance().getTime()) + ".log")) {
                if (arrayList.size() < 2) {
                    return;
                }
                str2 = (String) arrayList.get(arrayList.size() - 2);
                size--;
            }
            if (!this.f9528b.a(a(com.alipay.security.mobile.module.commonutils.c.a(this.f9527a.getAbsolutePath(), str2)))) {
                size--;
            }
            for (int i2 = 0; i2 < size; i2++) {
                new File(this.f9527a, (String) arrayList.get(i2)).delete();
            }
        }
    }
}
