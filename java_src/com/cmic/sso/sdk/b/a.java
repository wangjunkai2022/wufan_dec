package com.cmic.sso.sdk.b;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import com.cmic.sso.sdk.e.c;
import com.cmic.sso.sdk.e.g;
import com.cmic.sso.sdk.e.m;
import com.join.mgps.dto.PayCenterOrderRequest;
import java.lang.reflect.Method;
/* compiled from: UMCTelephonyManagement.java */
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static a f10780a;

    /* renamed from: b  reason: collision with root package name */
    private static long f10781b;

    /* renamed from: c  reason: collision with root package name */
    private C0048a f10782c = null;

    /* compiled from: UMCTelephonyManagement.java */
    /* renamed from: com.cmic.sso.sdk.b.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class C0048a {

        /* renamed from: a  reason: collision with root package name */
        private int f10783a = -1;

        /* renamed from: b  reason: collision with root package name */
        private int f10784b = -1;

        public int a() {
            return this.f10784b;
        }
    }

    private a() {
    }

    public static a a() {
        if (f10780a == null) {
            f10780a = new a();
        }
        return f10780a;
    }

    @SuppressLint({"MissingPermission"})
    private int c(Context context) {
        TelephonyManager telephonyManager;
        if (!g.a(context, "android.permission.READ_PHONE_STATE") || (telephonyManager = (TelephonyManager) context.getApplicationContext().getSystemService("phone")) == null) {
            return -1;
        }
        if (m.d()) {
            try {
                Method method = telephonyManager.getClass().getMethod("getDataNetworkType", Integer.TYPE);
                c.b("UMCTelephonyManagement", "data dataNetworkType defaultDataSubId = " + this.f10782c.f10784b);
                int intValue = ((Integer) method.invoke(telephonyManager, Integer.valueOf(this.f10782c.f10784b))).intValue();
                c.b("UMCTelephonyManagement", "data dataNetworkType ---------" + intValue);
                if (intValue != 0 || Build.VERSION.SDK_INT < 24) {
                    return intValue;
                }
                c.b("UMCTelephonyManagement", "data dataNetworkType ---->=N " + intValue);
                return telephonyManager.getDataNetworkType();
            } catch (Exception e4) {
                c.a("UMCTelephonyManagement", "data dataNetworkType ----反射出错-----");
                e4.printStackTrace();
                return -1;
            }
        }
        return telephonyManager.getDataNetworkType();
    }

    public C0048a b() {
        C0048a c0048a = this.f10782c;
        return c0048a == null ? new C0048a() : c0048a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0080, code lost:
        if (r11 != null) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0088, code lost:
        if (r11 == null) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x008a, code lost:
        r11.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x008d, code lost:
        com.cmic.sso.sdk.e.c.b("UMCTelephonyManagement", "readSimInfoDbEnd");
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0092, code lost:
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void b(android.content.Context r11) {
        /*
            r10 = this;
            java.lang.String r0 = "sim_id"
            java.lang.String r1 = "_id"
            java.lang.String r2 = "UMCTelephonyManagement"
            java.lang.String r3 = "readSimInfoDbStart"
            com.cmic.sso.sdk.e.c.b(r2, r3)
            java.lang.String r3 = "content://telephony/siminfo"
            android.net.Uri r5 = android.net.Uri.parse(r3)
            android.content.ContentResolver r4 = r11.getContentResolver()
            r11 = 0
            java.lang.String[] r6 = new java.lang.String[]{r1, r0}     // Catch: java.lang.Exception -> L83 java.lang.Throwable -> L93
            java.lang.String r7 = "sim_id>=?"
            java.lang.String r3 = "0"
            java.lang.String[] r8 = new java.lang.String[]{r3}     // Catch: java.lang.Exception -> L83 java.lang.Throwable -> L93
            r9 = 0
            android.database.Cursor r11 = r4.query(r5, r6, r7, r8, r9)     // Catch: java.lang.Exception -> L83 java.lang.Throwable -> L93
            if (r11 == 0) goto L80
        L29:
            boolean r3 = r11.moveToNext()     // Catch: java.lang.Exception -> L83 java.lang.Throwable -> L93
            if (r3 == 0) goto L80
            int r3 = r11.getColumnIndex(r0)     // Catch: java.lang.Exception -> L83 java.lang.Throwable -> L93
            int r3 = r11.getInt(r3)     // Catch: java.lang.Exception -> L83 java.lang.Throwable -> L93
            int r4 = r11.getColumnIndex(r1)     // Catch: java.lang.Exception -> L83 java.lang.Throwable -> L93
            int r4 = r11.getInt(r4)     // Catch: java.lang.Exception -> L83 java.lang.Throwable -> L93
            com.cmic.sso.sdk.b.a$a r5 = r10.f10782c     // Catch: java.lang.Exception -> L83 java.lang.Throwable -> L93
            int r5 = com.cmic.sso.sdk.b.a.C0048a.b(r5)     // Catch: java.lang.Exception -> L83 java.lang.Throwable -> L93
            r6 = -1
            if (r5 != r6) goto L72
            com.cmic.sso.sdk.b.a$a r5 = r10.f10782c     // Catch: java.lang.Exception -> L83 java.lang.Throwable -> L93
            int r5 = com.cmic.sso.sdk.b.a.C0048a.a(r5)     // Catch: java.lang.Exception -> L83 java.lang.Throwable -> L93
            if (r5 == r6) goto L72
            com.cmic.sso.sdk.b.a$a r5 = r10.f10782c     // Catch: java.lang.Exception -> L83 java.lang.Throwable -> L93
            int r5 = com.cmic.sso.sdk.b.a.C0048a.a(r5)     // Catch: java.lang.Exception -> L83 java.lang.Throwable -> L93
            if (r5 != r4) goto L72
            com.cmic.sso.sdk.b.a$a r5 = r10.f10782c     // Catch: java.lang.Exception -> L83 java.lang.Throwable -> L93
            com.cmic.sso.sdk.b.a.C0048a.a(r5, r3)     // Catch: java.lang.Exception -> L83 java.lang.Throwable -> L93
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L83 java.lang.Throwable -> L93
            r5.<init>()     // Catch: java.lang.Exception -> L83 java.lang.Throwable -> L93
            java.lang.String r6 = "通过读取sim db获取数据流量卡的卡槽值："
            r5.append(r6)     // Catch: java.lang.Exception -> L83 java.lang.Throwable -> L93
            r5.append(r3)     // Catch: java.lang.Exception -> L83 java.lang.Throwable -> L93
            java.lang.String r5 = r5.toString()     // Catch: java.lang.Exception -> L83 java.lang.Throwable -> L93
            com.cmic.sso.sdk.e.c.b(r2, r5)     // Catch: java.lang.Exception -> L83 java.lang.Throwable -> L93
        L72:
            com.cmic.sso.sdk.b.a$a r5 = r10.f10782c     // Catch: java.lang.Exception -> L83 java.lang.Throwable -> L93
            int r5 = com.cmic.sso.sdk.b.a.C0048a.b(r5)     // Catch: java.lang.Exception -> L83 java.lang.Throwable -> L93
            if (r5 != r3) goto L29
            com.cmic.sso.sdk.b.a$a r3 = r10.f10782c     // Catch: java.lang.Exception -> L83 java.lang.Throwable -> L93
            com.cmic.sso.sdk.b.a.C0048a.b(r3, r4)     // Catch: java.lang.Exception -> L83 java.lang.Throwable -> L93
            goto L29
        L80:
            if (r11 == 0) goto L8d
            goto L8a
        L83:
            java.lang.String r0 = "readSimInfoDb error"
            com.cmic.sso.sdk.e.c.a(r2, r0)     // Catch: java.lang.Throwable -> L93
            if (r11 == 0) goto L8d
        L8a:
            r11.close()
        L8d:
            java.lang.String r11 = "readSimInfoDbEnd"
            com.cmic.sso.sdk.e.c.b(r2, r11)
            return
        L93:
            r0 = move-exception
            if (r11 == 0) goto L99
            r11.close()
        L99:
            goto L9b
        L9a:
            throw r0
        L9b:
            goto L9a
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cmic.sso.sdk.b.a.b(android.content.Context):void");
    }

    public void a(Context context, boolean z3, boolean z4) {
        long currentTimeMillis = System.currentTimeMillis() - f10781b;
        if (currentTimeMillis >= 5000 || currentTimeMillis <= 0) {
            this.f10782c = new C0048a();
            if (z4) {
                a(context, z3);
                if (m.e() && m.d()) {
                    c.b("UMCTelephonyManagement", "华为手机兼容性处理");
                    if (this.f10782c.f10784b == 0 || this.f10782c.f10784b == 1) {
                        if (this.f10782c.f10783a == -1) {
                            C0048a c0048a = this.f10782c;
                            c0048a.f10783a = c0048a.f10784b;
                        }
                        this.f10782c.f10784b = -1;
                    }
                    if ((this.f10782c.f10783a != -1 || this.f10782c.f10784b != -1) && Build.VERSION.SDK_INT >= 21) {
                        b(context);
                    }
                }
                f10781b = System.currentTimeMillis();
            }
        }
    }

    private void a(Context context, boolean z3) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 22) {
            this.f10782c.f10783a = -1;
            return;
        }
        SubscriptionManager from = SubscriptionManager.from(context.getApplicationContext());
        if (from != null) {
            try {
                if (this.f10782c.f10783a == -1 && i2 >= 24) {
                    this.f10782c.f10784b = SubscriptionManager.getDefaultDataSubscriptionId();
                    c.b("UMCTelephonyManagement", "android 7.0及以上手机getDefaultDataSubscriptionId适配成功: dataSubId = " + this.f10782c.f10784b);
                    return;
                }
            } catch (Exception unused) {
                c.a("UMCTelephonyManagement", "android 7.0及以上手机getDefaultDataSubscriptionId适配失败");
            }
            try {
                Object invoke = from.getClass().getMethod("getDefaultDataSubId", new Class[0]).invoke(from, new Object[0]);
                if ((invoke instanceof Integer) || (invoke instanceof Long)) {
                    this.f10782c.f10784b = ((Integer) invoke).intValue();
                    c.b("UMCTelephonyManagement", "android 7.0以下手机getDefaultDataSubId适配成功: dataSubId = " + this.f10782c.f10784b);
                    return;
                }
            } catch (Exception unused2) {
                c.a("UMCTelephonyManagement", "readDefaultDataSubId-->getDefaultDataSubId 反射出错");
            }
            try {
                Object invoke2 = from.getClass().getMethod("getDefaultDataSubscriptionId", new Class[0]).invoke(from, new Object[0]);
                if ((invoke2 instanceof Integer) || (invoke2 instanceof Long)) {
                    this.f10782c.f10784b = ((Integer) invoke2).intValue();
                    c.b("UMCTelephonyManagement", "反射getDefaultDataSubscriptionId适配成功: dataSubId = " + this.f10782c.f10784b);
                }
            } catch (Exception unused3) {
                c.a("UMCTelephonyManagement", "getDefaultDataSubscriptionId-->getDefaultDataSubscriptionId 反射出错");
            }
        }
    }

    public String a(Context context) {
        switch (c(context)) {
            case 1:
            case 2:
            case 4:
            case 7:
            case 11:
            case 16:
                return "1";
            case 3:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 12:
            case 14:
            case 15:
            case 17:
                return PayCenterOrderRequest.PAY_TYPE_RECHARGE;
            case 13:
            case 18:
            case 19:
                return "3";
            case 20:
                return "4";
            default:
                return "0";
        }
    }
}
