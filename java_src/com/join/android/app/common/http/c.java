package com.join.android.app.common.http;

import android.content.Context;
import android.content.Intent;
import com.join.android.app.common.utils.JsonMapper;
import com.join.mgps.Util.AESUtils;
import com.join.mgps.Util.d2;
import com.join.mgps.Util.n0;
import com.join.mgps.Util.t0;
import com.join.mgps.Util.v0;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
/* compiled from: HttpDNSUtil.java */
/* loaded from: classes.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    public static Context f17004a = null;

    /* renamed from: b  reason: collision with root package name */
    public static String f17005b = "app-resource.5fun.com";

    /* renamed from: c  reason: collision with root package name */
    public static boolean f17006c;

    public static String a(String str) {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec("3CXDWhPx".getBytes("utf-8"), "DES");
            Cipher cipher = Cipher.getInstance("DES/ECB/PKCS5Padding");
            cipher.init(2, secretKeySpec);
            return new String(cipher.doFinal(AESUtils.g(str)));
        } catch (Exception e4) {
            e4.printStackTrace();
            return "";
        }
    }

    public static void b() {
    }

    public static boolean c(String str, String str2) {
        t0.c("DNS 1 getWufunData 1");
        String d4 = d(str, str2);
        t0.c("DNS 2 ");
        if (d2.i(d4)) {
            try {
                ((DNSDataResult) JsonMapper.getInstance().fromJson(d4, DNSDataResult.class)).updateRpcConstant();
                Context context = f17004a;
                if (context != null) {
                    com.join.mgps.pref.h.n(context).R(d4);
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            t0.c("DNS 3 " + d4);
            return true;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x004d A[Catch: Exception -> 0x003a, TRY_ENTER, TryCatch #1 {Exception -> 0x003a, blocks: (B:3:0x0003, B:4:0x002b, B:13:0x0043, B:16:0x004d, B:18:0x00a6, B:20:0x00d0, B:21:0x00d9, B:23:0x00e0, B:24:0x00e4, B:17:0x007a, B:12:0x003f), top: B:30:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x007a A[Catch: Exception -> 0x003a, TryCatch #1 {Exception -> 0x003a, blocks: (B:3:0x0003, B:4:0x002b, B:13:0x0043, B:16:0x004d, B:18:0x00a6, B:20:0x00d0, B:21:0x00d9, B:23:0x00e0, B:24:0x00e4, B:17:0x007a, B:12:0x003f), top: B:30:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00d0 A[Catch: Exception -> 0x003a, TryCatch #1 {Exception -> 0x003a, blocks: (B:3:0x0003, B:4:0x002b, B:13:0x0043, B:16:0x004d, B:18:0x00a6, B:20:0x00d0, B:21:0x00d9, B:23:0x00e0, B:24:0x00e4, B:17:0x007a, B:12:0x003f), top: B:30:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String d(java.lang.String r10, java.lang.String r11) {
        /*
            java.lang.String r10 = ""
            r0 = 0
            android.content.Context r1 = com.join.android.app.common.http.c.f17004a     // Catch: java.lang.Exception -> L3a android.content.pm.PackageManager.NameNotFoundException -> L3d
            android.content.pm.PackageManager r1 = r1.getPackageManager()     // Catch: java.lang.Exception -> L3a android.content.pm.PackageManager.NameNotFoundException -> L3d
            android.content.Context r2 = com.join.android.app.common.http.c.f17004a     // Catch: java.lang.Exception -> L3a android.content.pm.PackageManager.NameNotFoundException -> L3d
            java.lang.String r2 = r2.getPackageName()     // Catch: java.lang.Exception -> L3a android.content.pm.PackageManager.NameNotFoundException -> L3d
            android.content.pm.PackageInfo r1 = r1.getPackageInfo(r2, r0)     // Catch: java.lang.Exception -> L3a android.content.pm.PackageManager.NameNotFoundException -> L3d
            int r2 = r1.versionCode     // Catch: java.lang.Exception -> L3a android.content.pm.PackageManager.NameNotFoundException -> L3d
            java.lang.String r1 = r1.versionName     // Catch: java.lang.Exception -> L3a android.content.pm.PackageManager.NameNotFoundException -> L3d
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L3a android.content.pm.PackageManager.NameNotFoundException -> L3d
            r3.<init>()     // Catch: java.lang.Exception -> L3a android.content.pm.PackageManager.NameNotFoundException -> L3d
            r3.append(r2)     // Catch: java.lang.Exception -> L3a android.content.pm.PackageManager.NameNotFoundException -> L3d
            java.lang.String r2 = "_"
            r3.append(r2)     // Catch: java.lang.Exception -> L3a android.content.pm.PackageManager.NameNotFoundException -> L3d
            r3.append(r1)     // Catch: java.lang.Exception -> L3a android.content.pm.PackageManager.NameNotFoundException -> L3d
            java.lang.String r1 = r3.toString()     // Catch: java.lang.Exception -> L3a android.content.pm.PackageManager.NameNotFoundException -> L3d
            android.content.Context r2 = com.join.android.app.common.http.c.f17004a     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L38 java.lang.Exception -> L3a
            android.content.ContentResolver r2 = r2.getContentResolver()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L38 java.lang.Exception -> L3a
            java.lang.String r3 = "android_id"
            java.lang.String r2 = android.provider.Settings.System.getString(r2, r3)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L38 java.lang.Exception -> L3a
            goto L43
        L38:
            r2 = move-exception
            goto L3f
        L3a:
            r11 = move-exception
            goto Lf8
        L3d:
            r2 = move-exception
            r1 = r10
        L3f:
            r2.printStackTrace()     // Catch: java.lang.Exception -> L3a
            r2 = r10
        L43:
            boolean r3 = com.join.android.app.common.http.c.f17006c     // Catch: java.lang.Exception -> L3a
            java.lang.String r4 = "&anid="
            java.lang.String r5 = "&version="
            java.lang.String r6 = "http://"
            if (r3 == 0) goto L7a
            java.net.URL r3 = new java.net.URL     // Catch: java.lang.Exception -> L3a
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L3a
            r7.<init>()     // Catch: java.lang.Exception -> L3a
            r7.append(r6)     // Catch: java.lang.Exception -> L3a
            r7.append(r11)     // Catch: java.lang.Exception -> L3a
            java.lang.String r11 = "/wf_hj.json?t="
            r7.append(r11)     // Catch: java.lang.Exception -> L3a
            long r8 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Exception -> L3a
            r7.append(r8)     // Catch: java.lang.Exception -> L3a
            r7.append(r5)     // Catch: java.lang.Exception -> L3a
            r7.append(r1)     // Catch: java.lang.Exception -> L3a
            r7.append(r4)     // Catch: java.lang.Exception -> L3a
            r7.append(r2)     // Catch: java.lang.Exception -> L3a
            java.lang.String r11 = r7.toString()     // Catch: java.lang.Exception -> L3a
            r3.<init>(r11)     // Catch: java.lang.Exception -> L3a
            goto La6
        L7a:
            java.net.URL r3 = new java.net.URL     // Catch: java.lang.Exception -> L3a
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L3a
            r7.<init>()     // Catch: java.lang.Exception -> L3a
            r7.append(r6)     // Catch: java.lang.Exception -> L3a
            r7.append(r11)     // Catch: java.lang.Exception -> L3a
            java.lang.String r11 = "/wf26.json?t="
            r7.append(r11)     // Catch: java.lang.Exception -> L3a
            long r8 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Exception -> L3a
            r7.append(r8)     // Catch: java.lang.Exception -> L3a
            r7.append(r5)     // Catch: java.lang.Exception -> L3a
            r7.append(r1)     // Catch: java.lang.Exception -> L3a
            r7.append(r4)     // Catch: java.lang.Exception -> L3a
            r7.append(r2)     // Catch: java.lang.Exception -> L3a
            java.lang.String r11 = r7.toString()     // Catch: java.lang.Exception -> L3a
            r3.<init>(r11)     // Catch: java.lang.Exception -> L3a
        La6:
            java.lang.StringBuilder r11 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L3a
            r11.<init>()     // Catch: java.lang.Exception -> L3a
            java.lang.String r1 = "yuming "
            r11.append(r1)     // Catch: java.lang.Exception -> L3a
            r11.append(r3)     // Catch: java.lang.Exception -> L3a
            java.lang.String r11 = r11.toString()     // Catch: java.lang.Exception -> L3a
            com.join.mgps.Util.t0.c(r11)     // Catch: java.lang.Exception -> L3a
            java.net.URLConnection r11 = r3.openConnection()     // Catch: java.lang.Exception -> L3a
            java.net.HttpURLConnection r11 = (java.net.HttpURLConnection) r11     // Catch: java.lang.Exception -> L3a
            java.lang.String r1 = "GET"
            r11.setRequestMethod(r1)     // Catch: java.lang.Exception -> L3a
            r11.connect()     // Catch: java.lang.Exception -> L3a
            int r1 = r11.getResponseCode()     // Catch: java.lang.Exception -> L3a
            r2 = 200(0xc8, float:2.8E-43)
            if (r1 != r2) goto Lfb
            java.io.ByteArrayOutputStream r1 = new java.io.ByteArrayOutputStream     // Catch: java.lang.Exception -> L3a
            r1.<init>()     // Catch: java.lang.Exception -> L3a
            java.io.InputStream r11 = r11.getInputStream()     // Catch: java.lang.Exception -> L3a
        Ld9:
            int r2 = r11.read()     // Catch: java.lang.Exception -> L3a
            r3 = -1
            if (r2 == r3) goto Le4
            r1.write(r2)     // Catch: java.lang.Exception -> L3a
            goto Ld9
        Le4:
            r1.flush()     // Catch: java.lang.Exception -> L3a
            byte[] r2 = r1.toByteArray()     // Catch: java.lang.Exception -> L3a
            java.lang.String r3 = new java.lang.String     // Catch: java.lang.Exception -> L3a
            int r4 = r2.length     // Catch: java.lang.Exception -> L3a
            r3.<init>(r2, r0, r4)     // Catch: java.lang.Exception -> L3a
            r11.close()     // Catch: java.lang.Exception -> L3a
            r1.close()     // Catch: java.lang.Exception -> L3a
            return r3
        Lf8:
            r11.printStackTrace()
        Lfb:
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.android.app.common.http.c.d(java.lang.String, java.lang.String):java.lang.String");
    }

    public static void e(Context context) {
        f17004a = context;
        try {
            if (f17006c) {
                Intent intent = new Intent("com.join.intent.showtoast");
                intent.putExtra("message", "这个是测试版本");
                context.sendBroadcast(intent);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        String g4 = g(f17005b);
        if (d2.h(g4)) {
            b();
            return;
        }
        String a4 = a(g4);
        if (d2.i(a4)) {
            String[] split = a4.split(",");
            if (split != null && split.length > 0) {
                if (c(f17005b, split[0])) {
                    return;
                }
                b();
                return;
            }
            b();
        }
    }

    public static String f(String str) {
        long currentTimeMillis = (System.currentTimeMillis() / 1000) + 300;
        return n0.a("http://203.107.1.33/108593/sign_d?host=" + str + "&t=" + currentTimeMillis + "&s=" + h(str, currentTimeMillis), false);
    }

    public static String g(String str) {
        return n0.a("http://119.29.29.98/d?dn=" + i(str) + "&id=7794&ttl=1", false);
    }

    public static String h(String str, long j4) {
        return v0.d(str + "-880c86a5ef4e520a88c0cca16af9e8ff-" + j4);
    }

    public static String i(String str) {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec("3CXDWhPx".getBytes("utf-8"), "DES");
            Cipher cipher = Cipher.getInstance("DES/ECB/PKCS5Padding");
            cipher.init(1, secretKeySpec);
            return AESUtils.a(cipher.doFinal(str.getBytes("utf-8")));
        } catch (Exception e4) {
            e4.printStackTrace();
            return "";
        }
    }
}
