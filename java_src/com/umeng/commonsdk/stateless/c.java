package com.umeng.commonsdk.stateless;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.text.TextUtils;
import com.join.android.app.common.utils.f;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.internal.crash.UMCrashManager;
import com.umeng.commonsdk.statistics.common.DataHelper;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
/* compiled from: UMSLNetWorkSenderHelper.java */
/* loaded from: classes4.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private String f61268a = "10.0.0.172";

    /* renamed from: b  reason: collision with root package name */
    private int f61269b = 80;

    /* renamed from: c  reason: collision with root package name */
    private Context f61270c;

    public c(Context context) {
        this.f61270c = context;
    }

    private void a() {
        String imprintProperty = UMEnvelopeBuild.imprintProperty(this.f61270c, "sl_domain_p", "");
        if (TextUtils.isEmpty(imprintProperty)) {
            return;
        }
        a.f61251i = DataHelper.assembleStatelessURL(imprintProperty);
    }

    private void b() {
        String imprintProperty = UMEnvelopeBuild.imprintProperty(this.f61270c, "sl_domain_p", "");
        String imprintProperty2 = UMEnvelopeBuild.imprintProperty(this.f61270c, "oversea_sl_domain_p", "");
        if (!TextUtils.isEmpty(imprintProperty)) {
            a.f61250h = DataHelper.assembleStatelessURL(imprintProperty);
        }
        if (!TextUtils.isEmpty(imprintProperty2)) {
            a.f61253k = DataHelper.assembleStatelessURL(imprintProperty2);
        }
        a.f61251i = a.f61253k;
        if (TextUtils.isEmpty(com.umeng.commonsdk.statistics.b.f61279b)) {
            return;
        }
        if (com.umeng.commonsdk.statistics.b.f61279b.startsWith("460") || com.umeng.commonsdk.statistics.b.f61279b.startsWith("461")) {
            a.f61251i = a.f61250h;
        }
    }

    private boolean c() {
        NetworkInfo activeNetworkInfo;
        String extraInfo;
        Context context = this.f61270c;
        if (context == null || context.getPackageManager().checkPermission("android.permission.ACCESS_NETWORK_STATE", this.f61270c.getPackageName()) != 0) {
            return false;
        }
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) this.f61270c.getSystemService("connectivity");
            if (DeviceConfig.checkPermission(this.f61270c, "android.permission.ACCESS_NETWORK_STATE") && connectivityManager != null && (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) != null && activeNetworkInfo.getType() != 1 && (extraInfo = activeNetworkInfo.getExtraInfo()) != null) {
                if (!extraInfo.equals(f.f17228c) && !extraInfo.equals(f.f17229d)) {
                    if (extraInfo.equals(f.f17230e)) {
                    }
                }
                return true;
            }
        } catch (Throwable th) {
            UMCrashManager.reportCrash(this.f61270c, th);
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x0136, code lost:
        if (r13 == null) goto L28;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v1, types: [javax.net.ssl.HttpsURLConnection, java.lang.String] */
    /* JADX WARN: Type inference failed for: r13v16 */
    /* JADX WARN: Type inference failed for: r13v17 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean a(byte[] r11, java.lang.String r12, java.lang.String r13, java.lang.String r14) {
        /*
            Method dump skipped, instructions count: 343
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.stateless.c.a(byte[], java.lang.String, java.lang.String, java.lang.String):boolean");
    }
}
