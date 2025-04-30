package com.alipay.sdk.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import com.alipay.sdk.util.f;
import com.alipay.sdk.util.j;
import java.io.IOException;
import java.util.List;
/* loaded from: classes2.dex */
public class AuthTask {

    /* renamed from: c  reason: collision with root package name */
    private static final int f9571c = 73;

    /* renamed from: d  reason: collision with root package name */
    static final Object f9572d = com.alipay.sdk.util.f.class;

    /* renamed from: a  reason: collision with root package name */
    private Activity f9573a;

    /* renamed from: b  reason: collision with root package name */
    private com.alipay.sdk.widget.a f9574b;

    public AuthTask(Activity activity) {
        this.f9573a = activity;
        m.b b4 = m.b.b();
        Activity activity2 = this.f9573a;
        com.alipay.sdk.data.c.a();
        b4.c(activity2);
        com.alipay.sdk.app.statistic.a.a(activity);
        this.f9574b = new com.alipay.sdk.widget.a(activity, com.alipay.sdk.widget.a.f9859f);
    }

    private f.a a() {
        return new a(this);
    }

    private String b(Activity activity, String str) {
        String a4 = new m.a(this.f9573a).a(str);
        if (e(activity)) {
            String c4 = new com.alipay.sdk.util.f(activity, new a(this)).c(a4);
            if (TextUtils.equals(c4, com.alipay.sdk.util.f.f9840h)) {
                return f(activity, a4);
            }
            return TextUtils.isEmpty(c4) ? h.a() : c4;
        }
        return f(activity, a4);
    }

    private String c(com.alipay.sdk.protocol.b bVar) {
        String[] strArr = bVar.f9812c;
        Bundle bundle = new Bundle();
        bundle.putString("url", strArr[0]);
        Intent intent = new Intent(this.f9573a, H5AuthActivity.class);
        intent.putExtras(bundle);
        this.f9573a.startActivity(intent);
        Object obj = f9572d;
        synchronized (obj) {
            try {
                obj.wait();
            } catch (InterruptedException unused) {
                return h.a();
            }
        }
        String str = h.f9601a;
        return TextUtils.isEmpty(str) ? h.a() : str;
    }

    private static boolean e(Context context) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(j.f9851b, 128);
            if (packageInfo == null) {
                return false;
            }
            return packageInfo.versionCode >= 73;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    private String f(Activity activity, String str) {
        i iVar;
        g();
        try {
            try {
                List<com.alipay.sdk.protocol.b> b4 = com.alipay.sdk.protocol.b.b(new com.alipay.sdk.packet.impl.a().b(activity, str).a().optJSONObject(com.alipay.sdk.cons.c.f9728c).optJSONObject(com.alipay.sdk.cons.c.f9729d));
                h();
                for (int i2 = 0; i2 < b4.size(); i2++) {
                    if (b4.get(i2).f9810a == com.alipay.sdk.protocol.a.WapPay) {
                        String c4 = c(b4.get(i2));
                        h();
                        return c4;
                    }
                }
                h();
                iVar = null;
            } catch (IOException e4) {
                i a4 = i.a(i.NETWORK_ERROR.a());
                com.alipay.sdk.app.statistic.a.e(com.alipay.sdk.app.statistic.c.f9616k, e4);
                h();
                iVar = a4;
            }
            if (iVar == null) {
                iVar = i.a(i.FAILED.a());
            }
            return h.b(iVar.a(), iVar.b(), "");
        }
    }

    private void g() {
        com.alipay.sdk.widget.a aVar = this.f9574b;
        if (aVar != null) {
            aVar.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        com.alipay.sdk.widget.a aVar = this.f9574b;
        if (aVar != null) {
            aVar.f();
        }
    }

    public synchronized String auth(String str, boolean z3) {
        String a4;
        Activity activity;
        Activity activity2;
        String a5;
        if (z3) {
            g();
        }
        m.b b4 = m.b.b();
        Activity activity3 = this.f9573a;
        com.alipay.sdk.data.c.a();
        b4.c(activity3);
        a4 = h.a();
        try {
            activity2 = this.f9573a;
            a5 = new m.a(activity2).a(str);
        } catch (Exception unused) {
            com.alipay.sdk.data.a.f().b(this.f9573a);
            h();
            activity = this.f9573a;
        } catch (Throwable th) {
            com.alipay.sdk.data.a.f().b(this.f9573a);
            h();
            com.alipay.sdk.app.statistic.a.b(this.f9573a, str);
            throw th;
        }
        if (e(activity2)) {
            String c4 = new com.alipay.sdk.util.f(activity2, new a(this)).c(a5);
            if (!TextUtils.equals(c4, com.alipay.sdk.util.f.f9840h)) {
                a4 = TextUtils.isEmpty(c4) ? h.a() : c4;
                com.alipay.sdk.data.a.f().b(this.f9573a);
                h();
                activity = this.f9573a;
                com.alipay.sdk.app.statistic.a.b(activity, str);
            }
        }
        a4 = f(activity2, a5);
        com.alipay.sdk.data.a.f().b(this.f9573a);
        h();
        activity = this.f9573a;
        com.alipay.sdk.app.statistic.a.b(activity, str);
        return a4;
    }
}
