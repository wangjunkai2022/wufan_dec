package com.alipay.sdk.net;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Proxy;
import android.os.Build;
import android.text.TextUtils;
import com.efs.sdk.base.core.util.NetworkUtil;
import java.net.URL;
import org.apache.http.HttpHost;
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: c  reason: collision with root package name */
    public static final String f9772c = "application/octet-stream;binary/octet-stream";

    /* renamed from: a  reason: collision with root package name */
    private Context f9773a;

    /* renamed from: b  reason: collision with root package name */
    public String f9774b;

    private a(Context context) {
        this(context, null);
    }

    private String a() {
        return this.f9774b;
    }

    private void c(String str) {
        this.f9774b = str;
    }

    private URL d() {
        try {
            return new URL(this.f9774b);
        } catch (Exception unused) {
            return null;
        }
    }

    private HttpHost e() {
        URL d4;
        if (Build.VERSION.SDK_INT >= 11) {
            String i2 = i();
            if ((i2 == null || i2.contains("wap")) && (d4 = d()) != null) {
                "https".equalsIgnoreCase(d4.getProtocol());
                String property = System.getProperty("https.proxyHost");
                String property2 = System.getProperty("https.proxyPort");
                if (TextUtils.isEmpty(property)) {
                    return null;
                }
                return new HttpHost(property, Integer.parseInt(property2));
            }
            return null;
        }
        NetworkInfo h4 = h();
        if (h4 != null && h4.isAvailable() && h4.getType() == 0) {
            String defaultHost = Proxy.getDefaultHost();
            int defaultPort = Proxy.getDefaultPort();
            if (defaultHost != null) {
                return new HttpHost(defaultHost, defaultPort);
            }
            return null;
        }
        return null;
    }

    private HttpHost f() {
        NetworkInfo h4 = h();
        if (h4 != null && h4.isAvailable() && h4.getType() == 0) {
            String defaultHost = Proxy.getDefaultHost();
            int defaultPort = Proxy.getDefaultPort();
            if (defaultHost != null) {
                return new HttpHost(defaultHost, defaultPort);
            }
        }
        return null;
    }

    private HttpHost g() {
        URL d4;
        String i2 = i();
        if ((i2 == null || i2.contains("wap")) && (d4 = d()) != null) {
            "https".equalsIgnoreCase(d4.getProtocol());
            String property = System.getProperty("https.proxyHost");
            String property2 = System.getProperty("https.proxyPort");
            if (TextUtils.isEmpty(property)) {
                return null;
            }
            return new HttpHost(property, Integer.parseInt(property2));
        }
        return null;
    }

    private NetworkInfo h() {
        try {
            return ((ConnectivityManager) this.f9773a.getSystemService("connectivity")).getActiveNetworkInfo();
        } catch (Exception unused) {
            return null;
        }
    }

    private String i() {
        try {
            NetworkInfo h4 = h();
            return (h4 == null || !h4.isAvailable()) ? "none" : h4.getType() == 1 ? NetworkUtil.NETWORK_TYPE_WIFI : h4.getExtraInfo().toLowerCase();
        } catch (Exception unused) {
            return "none";
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(7:(3:5|6|(12:8|(2:45|(10:47|(1:14)|(7:19|(3:21|(2:24|22)|25)|26|(1:32)|33|(1:39)|41)|42|(0)|26|(3:28|30|32)|33|(3:35|37|39)|41))|12|(0)|(8:16|19|(0)|26|(0)|33|(0)|41)|42|(0)|26|(0)|33|(0)|41)(12:48|(2:54|(10:56|(0)|(0)|42|(0)|26|(0)|33|(0)|41))|12|(0)|(0)|42|(0)|26|(0)|33|(0)|41))|57|58|59|(1:61)|63|64) */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0079 A[Catch: all -> 0x00f9, TryCatch #1 {all -> 0x00f9, blocks: (B:5:0x000e, B:7:0x001a, B:9:0x0020, B:27:0x0079, B:29:0x0080, B:32:0x0084, B:35:0x00b3, B:36:0x00b7, B:38:0x00bd, B:39:0x00c7, B:41:0x00d2, B:43:0x00d5, B:45:0x00d9, B:46:0x00e2, B:48:0x00e8, B:50:0x00eb, B:52:0x00ef, B:33:0x00aa, B:12:0x002b, B:14:0x0031, B:16:0x004c, B:17:0x0056, B:19:0x005c, B:21:0x0062, B:23:0x0068, B:25:0x0072), top: B:64:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0080 A[Catch: all -> 0x00f9, TryCatch #1 {all -> 0x00f9, blocks: (B:5:0x000e, B:7:0x001a, B:9:0x0020, B:27:0x0079, B:29:0x0080, B:32:0x0084, B:35:0x00b3, B:36:0x00b7, B:38:0x00bd, B:39:0x00c7, B:41:0x00d2, B:43:0x00d5, B:45:0x00d9, B:46:0x00e2, B:48:0x00e8, B:50:0x00eb, B:52:0x00ef, B:33:0x00aa, B:12:0x002b, B:14:0x0031, B:16:0x004c, B:17:0x0056, B:19:0x005c, B:21:0x0062, B:23:0x0068, B:25:0x0072), top: B:64:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00b3 A[Catch: all -> 0x00f9, TryCatch #1 {all -> 0x00f9, blocks: (B:5:0x000e, B:7:0x001a, B:9:0x0020, B:27:0x0079, B:29:0x0080, B:32:0x0084, B:35:0x00b3, B:36:0x00b7, B:38:0x00bd, B:39:0x00c7, B:41:0x00d2, B:43:0x00d5, B:45:0x00d9, B:46:0x00e2, B:48:0x00e8, B:50:0x00eb, B:52:0x00ef, B:33:0x00aa, B:12:0x002b, B:14:0x0031, B:16:0x004c, B:17:0x0056, B:19:0x005c, B:21:0x0062, B:23:0x0068, B:25:0x0072), top: B:64:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00d2 A[Catch: all -> 0x00f9, TryCatch #1 {all -> 0x00f9, blocks: (B:5:0x000e, B:7:0x001a, B:9:0x0020, B:27:0x0079, B:29:0x0080, B:32:0x0084, B:35:0x00b3, B:36:0x00b7, B:38:0x00bd, B:39:0x00c7, B:41:0x00d2, B:43:0x00d5, B:45:0x00d9, B:46:0x00e2, B:48:0x00e8, B:50:0x00eb, B:52:0x00ef, B:33:0x00aa, B:12:0x002b, B:14:0x0031, B:16:0x004c, B:17:0x0056, B:19:0x005c, B:21:0x0062, B:23:0x0068, B:25:0x0072), top: B:64:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00e8 A[Catch: all -> 0x00f9, TryCatch #1 {all -> 0x00f9, blocks: (B:5:0x000e, B:7:0x001a, B:9:0x0020, B:27:0x0079, B:29:0x0080, B:32:0x0084, B:35:0x00b3, B:36:0x00b7, B:38:0x00bd, B:39:0x00c7, B:41:0x00d2, B:43:0x00d5, B:45:0x00d9, B:46:0x00e2, B:48:0x00e8, B:50:0x00eb, B:52:0x00ef, B:33:0x00aa, B:12:0x002b, B:14:0x0031, B:16:0x004c, B:17:0x0056, B:19:0x005c, B:21:0x0062, B:23:0x0068, B:25:0x0072), top: B:64:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0102 A[Catch: all -> 0x0107, TRY_LEAVE, TryCatch #0 {all -> 0x0107, blocks: (B:55:0x00fa, B:57:0x0102), top: B:62:0x00fa }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final org.apache.http.HttpResponse b(byte[] r10, java.util.List<org.apache.http.Header> r11) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 266
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alipay.sdk.net.a.b(byte[], java.util.List):org.apache.http.HttpResponse");
    }

    public a(Context context, String str) {
        this.f9773a = context;
        this.f9774b = str;
    }
}
