package com.sdk.m;

import com.sdk.f.g;
import com.sdk.o.b;
import java.net.HttpURLConnection;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.net.URL;
import java.util.Enumeration;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static final String f56672a = "com.sdk.m.a";

    /* renamed from: b  reason: collision with root package name */
    public static final Boolean f56673b = Boolean.valueOf(g.f56647b);

    public static String a() {
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
                Enumeration<InetAddress> inetAddresses = networkInterfaces.nextElement().getInetAddresses();
                while (inetAddresses.hasMoreElements()) {
                    InetAddress nextElement = inetAddresses.nextElement();
                    if (!nextElement.isLoopbackAddress() && (nextElement instanceof Inet4Address)) {
                        return nextElement.getHostAddress();
                    }
                }
            }
            return null;
        } catch (SocketException unused) {
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x002c A[Catch: all -> 0x0058, TryCatch #1 {all -> 0x0058, blocks: (B:5:0x000e, B:8:0x0014, B:12:0x001f, B:14:0x002c, B:19:0x0039, B:23:0x004f, B:20:0x003d, B:22:0x0048, B:24:0x0052, B:11:0x001b), top: B:34:0x000e }] */
    @android.annotation.SuppressLint({"DefaultLocale", "NewApi"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String a(android.content.Context r7) {
        /*
            java.lang.String r0 = com.sdk.Unicorn.base.module.manager.SDKManager.userAgent
            java.lang.Boolean r1 = com.sdk.o.b.a(r0)
            boolean r1 = r1.booleanValue()
            if (r1 == 0) goto L65
            if (r7 == 0) goto L59
            int r1 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Throwable -> L58
            r2 = 17
            if (r1 < r2) goto L19
            java.lang.String r7 = android.webkit.WebSettings.getDefaultUserAgent(r7)     // Catch: java.lang.Exception -> L19 java.lang.Throwable -> L58
            goto L1f
        L19:
            java.lang.String r7 = "http.agent"
            java.lang.String r7 = java.lang.System.getProperty(r7)     // Catch: java.lang.Throwable -> L58
        L1f:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L58
            r1.<init>()     // Catch: java.lang.Throwable -> L58
            int r2 = r7.length()     // Catch: java.lang.Throwable -> L58
            r3 = 0
            r4 = 0
        L2a:
            if (r4 >= r2) goto L52
            char r5 = r7.charAt(r4)     // Catch: java.lang.Throwable -> L58
            r6 = 31
            if (r5 <= r6) goto L3d
            r6 = 127(0x7f, float:1.78E-43)
            if (r5 < r6) goto L39
            goto L3d
        L39:
            r1.append(r5)     // Catch: java.lang.Throwable -> L58
            goto L4f
        L3d:
            r6 = 1
            java.lang.Object[] r6 = new java.lang.Object[r6]     // Catch: java.lang.Throwable -> L58
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)     // Catch: java.lang.Throwable -> L58
            r6[r3] = r5     // Catch: java.lang.Throwable -> L58
            java.lang.String r5 = "\\u%04x"
            java.lang.String r5 = java.lang.String.format(r5, r6)     // Catch: java.lang.Throwable -> L58
            r1.append(r5)     // Catch: java.lang.Throwable -> L58
        L4f:
            int r4 = r4 + 1
            goto L2a
        L52:
            java.lang.String r7 = r1.toString()     // Catch: java.lang.Throwable -> L58
            r0 = r7
            goto L59
        L58:
        L59:
            java.lang.Boolean r7 = com.sdk.o.b.a(r0)
            boolean r7 = r7.booleanValue()
            if (r7 == 0) goto L65
            java.lang.String r0 = "Mozilla/5.0 (Linux; U; Android %s) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 %sSafari/533.1"
        L65:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sdk.m.a.a(android.content.Context):java.lang.String");
    }

    public static String a(HttpURLConnection httpURLConnection) {
        if (httpURLConnection != null) {
            try {
                String headerField = httpURLConnection.getHeaderField("Content-Disposition");
                if (b.b(headerField).booleanValue()) {
                    String str = new String(headerField.getBytes("ISO-8859-1"), "GBK");
                    if (b.b(str).booleanValue()) {
                        return str.substring(str.indexOf(34) + 1, str.lastIndexOf(m.a.f72569g));
                    }
                }
            } catch (Throwable th) {
                b.a(f56672a, th.getMessage(), f56673b);
            }
        }
        return null;
    }

    public static boolean a(String str) {
        String[] split;
        try {
            for (String str2 : new URL(str).getHost().split("\\.")) {
                for (int i2 = 0; i2 < str2.length(); i2++) {
                    if (!Character.isDigit(str2.charAt(i2))) {
                        return false;
                    }
                }
            }
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean b(HttpURLConnection httpURLConnection) {
        if (httpURLConnection == null) {
            return false;
        }
        String headerField = httpURLConnection.getHeaderField("Accept-Ranges");
        if (b.b(headerField).booleanValue()) {
            return "bytes".equals(headerField);
        }
        if (b.b(httpURLConnection.getHeaderField("Content-Range")).booleanValue()) {
            return headerField.startsWith("bytes");
        }
        return false;
    }
}
