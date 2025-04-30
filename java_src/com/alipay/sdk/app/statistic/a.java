package com.alipay.sdk.app.statistic;

import android.content.Context;
import android.text.TextUtils;
import com.j256.ormlite.stmt.query.SimpleComparison;
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static c f9612a = null;

    /* renamed from: b  reason: collision with root package name */
    public static final String f9613b = "alipay_cashier_statistic_record";

    public static void a(Context context) {
        if (f9612a != null) {
            return;
        }
        f9612a = new c(context);
    }

    public static synchronized void b(Context context, String str) {
        String str2;
        String str3;
        String format;
        synchronized (a.class) {
            c cVar = f9612a;
            if (cVar == null) {
                return;
            }
            if (TextUtils.isEmpty(cVar.f9640i)) {
                format = "";
            } else {
                String[] split = str.split(m.a.f72566d);
                if (split != null) {
                    str2 = null;
                    str3 = null;
                    for (String str4 : split) {
                        String[] split2 = str4.split(SimpleComparison.EQUAL_TO_OPERATION);
                        if (split2 != null && split2.length == 2) {
                            if (split2[0].equalsIgnoreCase("partner")) {
                                split2[1].replace(m.a.f72569g, "");
                            } else if (split2[0].equalsIgnoreCase("out_trade_no")) {
                                str2 = split2[1].replace(m.a.f72569g, "");
                            } else if (split2[0].equalsIgnoreCase(c.f9631z)) {
                                str3 = split2[1].replace(m.a.f72569g, "");
                            }
                        }
                    }
                } else {
                    str2 = null;
                    str3 = null;
                }
                String b4 = c.b(str3);
                String b5 = c.b(str2);
                String format2 = String.format("%s,%s,-,%s,-,-,-", b4, b5, c.b(b5));
                cVar.f9633b = format2;
                format = String.format("[(%s),(%s),(%s),(%s),(%s),(%s),(%s),(%s),(%s),(%s)]", cVar.f9632a, format2, cVar.f9634c, cVar.f9635d, cVar.f9636e, cVar.f9637f, cVar.f9638g, cVar.f9639h, cVar.f9640i, cVar.f9641j);
            }
            new Thread(new b(context, format)).start();
            f9612a = null;
        }
    }

    public static void c(String str, String str2, String str3) {
        c cVar = f9612a;
        if (cVar == null) {
            return;
        }
        cVar.d(str, str2, str3);
    }

    public static void d(String str, String str2, Throwable th) {
        c cVar = f9612a;
        if (cVar == null) {
            return;
        }
        cVar.e(str, str2, th);
    }

    public static void e(String str, Throwable th) {
        if (f9612a == null || th == null) {
            return;
        }
        f9612a.e(str, th.getClass().getSimpleName(), th);
    }

    private static void f(Context context, String str) {
        new Thread(new b(context, str)).start();
    }
}
