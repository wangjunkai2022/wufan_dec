package com.alipay.sdk.util;

import android.app.Activity;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageInfo;
import android.text.TextUtils;
import com.alipay.android.app.IAlixPay;
import com.alipay.android.app.IRemoteServiceCallback;
import com.alipay.sdk.util.j;
import java.util.List;
/* loaded from: classes2.dex */
public class f {

    /* renamed from: h  reason: collision with root package name */
    public static final String f9840h = "failed";

    /* renamed from: a  reason: collision with root package name */
    private Activity f9841a;

    /* renamed from: b  reason: collision with root package name */
    private IAlixPay f9842b;

    /* renamed from: d  reason: collision with root package name */
    private boolean f9844d;

    /* renamed from: e  reason: collision with root package name */
    private a f9845e;

    /* renamed from: c  reason: collision with root package name */
    private final Object f9843c = IAlixPay.class;

    /* renamed from: f  reason: collision with root package name */
    private ServiceConnection f9846f = new g(this);

    /* renamed from: g  reason: collision with root package name */
    private IRemoteServiceCallback f9847g = new h(this);

    /* loaded from: classes2.dex */
    public interface a {
        void a();
    }

    public f(Activity activity, a aVar) {
        this.f9841a = activity;
        this.f9845e = aVar;
    }

    /* JADX WARN: Type inference failed for: r1v4, types: [com.alipay.android.app.IAlixPay, android.content.ServiceConnection, com.alipay.android.app.IRemoteServiceCallback] */
    private String d(String str, Intent intent) {
        String str2;
        String u3 = j.u(this.f9841a);
        this.f9841a.getApplicationContext().bindService(intent, this.f9846f, 1);
        synchronized (this.f9843c) {
            if (this.f9842b == null) {
                try {
                    this.f9843c.wait(com.alipay.sdk.data.a.f().a());
                } catch (InterruptedException unused) {
                }
            }
        }
        try {
            if (this.f9842b == null) {
                String u4 = j.u(this.f9841a);
                List<PackageInfo> installedPackages = this.f9841a.getPackageManager().getInstalledPackages(0);
                StringBuilder sb = new StringBuilder();
                for (int i2 = 0; i2 < installedPackages.size(); i2++) {
                    PackageInfo packageInfo = installedPackages.get(i2);
                    int i4 = packageInfo.applicationInfo.flags;
                    if ((i4 & 1) == 0 && (i4 & 128) == 0) {
                        if (packageInfo.packageName.equals(j.f9851b)) {
                            sb.append(packageInfo.packageName);
                            sb.append(packageInfo.versionCode);
                            str2 = "-";
                        } else if (!packageInfo.packageName.contains("theme") && !packageInfo.packageName.startsWith("com.google.") && !packageInfo.packageName.startsWith("com.android.")) {
                            sb.append(packageInfo.packageName);
                            str2 = "-";
                        }
                        sb.append(str2);
                    }
                }
                String sb2 = sb.toString();
                com.alipay.sdk.app.statistic.a.c(com.alipay.sdk.app.statistic.c.f9617l, com.alipay.sdk.app.statistic.c.f9625t, u3 + "|" + u4 + "|" + sb2);
                return f9840h;
            }
            a aVar = this.f9845e;
            if (aVar != null) {
                aVar.a();
            }
            if (this.f9841a.getRequestedOrientation() == 0) {
                this.f9841a.setRequestedOrientation(1);
                this.f9844d = true;
            }
            this.f9842b.registerCallback(this.f9847g);
            String Pay = this.f9842b.Pay(str);
            this.f9842b.unregisterCallback(this.f9847g);
            try {
                this.f9841a.unbindService(this.f9846f);
            } catch (Throwable unused2) {
            }
            this.f9847g = null;
            this.f9846f = null;
            this.f9842b = null;
            if (this.f9844d) {
                this.f9841a.setRequestedOrientation(0);
                this.f9844d = false;
            }
            return Pay;
        } catch (Throwable th) {
            try {
                com.alipay.sdk.app.statistic.a.d(com.alipay.sdk.app.statistic.c.f9617l, com.alipay.sdk.app.statistic.c.f9628w, th);
                try {
                    this.f9841a.unbindService(this.f9846f);
                } catch (Throwable unused3) {
                }
                this.f9847g = null;
                this.f9846f = null;
                this.f9842b = null;
                if (this.f9844d) {
                    this.f9841a.setRequestedOrientation(0);
                    this.f9844d = false;
                }
                return f9840h;
            } finally {
                try {
                    this.f9841a.unbindService(this.f9846f);
                } catch (Throwable unused4) {
                }
                this.f9847g = null;
                this.f9846f = null;
                this.f9842b = null;
                if (this.f9844d) {
                    this.f9841a.setRequestedOrientation(0);
                    this.f9844d = false;
                }
            }
        }
    }

    public final String c(String str) {
        j.a c4;
        String f4;
        try {
            c4 = j.c(this.f9841a, j.f9851b);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        if (c4 != null && (f4 = j.f(c4.f9853a)) != null && !TextUtils.equals(f4, com.alipay.sdk.cons.a.f9707h)) {
            com.alipay.sdk.app.statistic.a.c(com.alipay.sdk.app.statistic.c.f9617l, com.alipay.sdk.app.statistic.c.f9624s, f4);
            return f9840h;
        }
        if (c4.f9854b > 78) {
            Intent intent = new Intent();
            intent.setClassName(j.f9851b, "com.alipay.android.app.TransProcessPayActivity");
            this.f9841a.startActivity(intent);
            Thread.sleep(150L);
        }
        Intent intent2 = new Intent();
        intent2.setPackage(j.f9851b);
        intent2.setAction("com.eg.android.AlipayGphone.IAlixPay");
        return d(str, intent2);
    }

    public final void e() {
        this.f9841a = null;
    }
}
