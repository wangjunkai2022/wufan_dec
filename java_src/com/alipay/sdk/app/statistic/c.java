package com.alipay.sdk.app.statistic;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.j256.ormlite.stmt.query.SimpleComparison;
import java.text.SimpleDateFormat;
import java.util.Date;
/* loaded from: classes2.dex */
public final class c {

    /* renamed from: k  reason: collision with root package name */
    public static final String f9616k = "net";

    /* renamed from: l  reason: collision with root package name */
    public static final String f9617l = "biz";

    /* renamed from: m  reason: collision with root package name */
    public static final String f9618m = "cp";

    /* renamed from: n  reason: collision with root package name */
    public static final String f9619n = "H5PayNetworkError";

    /* renamed from: o  reason: collision with root package name */
    public static final String f9620o = "H5AuthNetworkError";

    /* renamed from: p  reason: collision with root package name */
    public static final String f9621p = "SSLError";

    /* renamed from: q  reason: collision with root package name */
    public static final String f9622q = "H5PayDataAnalysisError";

    /* renamed from: r  reason: collision with root package name */
    public static final String f9623r = "H5AuthDataAnalysisError";

    /* renamed from: s  reason: collision with root package name */
    public static final String f9624s = "ClientSignError";

    /* renamed from: t  reason: collision with root package name */
    public static final String f9625t = "ClientBindFailed";

    /* renamed from: u  reason: collision with root package name */
    public static final String f9626u = "TriDesEncryptError";

    /* renamed from: v  reason: collision with root package name */
    public static final String f9627v = "TriDesDecryptError";

    /* renamed from: w  reason: collision with root package name */
    public static final String f9628w = "ClientBindException";

    /* renamed from: x  reason: collision with root package name */
    public static final String f9629x = "partner";

    /* renamed from: y  reason: collision with root package name */
    public static final String f9630y = "out_trade_no";

    /* renamed from: z  reason: collision with root package name */
    public static final String f9631z = "trade_no";

    /* renamed from: b  reason: collision with root package name */
    String f9633b;

    /* renamed from: c  reason: collision with root package name */
    String f9634c;

    /* renamed from: f  reason: collision with root package name */
    String f9637f;

    /* renamed from: i  reason: collision with root package name */
    String f9640i = "";

    /* renamed from: a  reason: collision with root package name */
    String f9632a = String.format("123456789,%s", new SimpleDateFormat("yyyy-MM-dd-HH:mm:ss").format(new Date()));

    /* renamed from: d  reason: collision with root package name */
    String f9635d = String.format("android,3,%s,%s,com.alipay.mcpay,5.0,-,-,-", b("15.0.8"), b(com.alipay.sdk.cons.a.f9705f));

    /* renamed from: e  reason: collision with root package name */
    String f9636e = String.format("%s,%s,-,-,-", b(n.b.a().f72750a), b(m.b.b().e()));

    /* renamed from: g  reason: collision with root package name */
    String f9638g = "-";

    /* renamed from: h  reason: collision with root package name */
    String f9639h = "-";

    /* renamed from: j  reason: collision with root package name */
    String f9641j = "-";

    public c(Context context) {
        this.f9634c = a(context);
        this.f9637f = String.format("%s,%s,%s,%s,%s,%s,%s,%s,%s,-", b(com.alipay.sdk.util.b.j(context)), q.a.f73954a, b(Build.VERSION.RELEASE), b(Build.MODEL), "-", b(com.alipay.sdk.util.b.a(context).b()), b(com.alipay.sdk.util.b.d(context).a()), "gw", b(com.alipay.sdk.util.b.a(context).e()));
    }

    private static String a(Context context) {
        String str;
        String str2;
        String str3 = "-";
        if (context != null) {
            try {
                Context applicationContext = context.getApplicationContext();
                str = applicationContext.getPackageName();
                try {
                    str3 = applicationContext.getPackageManager().getPackageInfo(str, 0).versionName;
                } catch (Throwable unused) {
                }
            } catch (Throwable unused2) {
                str = "-";
            }
            str2 = str3;
            str3 = str;
        } else {
            str2 = "-";
        }
        return String.format("%s,%s,-,-,-", str3, str2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String b(String str) {
        return TextUtils.isEmpty(str) ? "" : str.replace("[", "【").replace("]", "】").replace("(", "（").replace(")", "）").replace(",", "，").replace("-", SimpleComparison.EQUAL_TO_OPERATION).replace("^", "~");
    }

    private static String c(Throwable th) {
        if (th == null) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer();
        try {
            stringBuffer.append(th.getClass().getName());
            stringBuffer.append(":");
            stringBuffer.append(th.getMessage());
            stringBuffer.append(" 》 ");
            StackTraceElement[] stackTrace = th.getStackTrace();
            if (stackTrace != null) {
                for (int i2 = 0; i2 < stackTrace.length; i2++) {
                    stringBuffer.append(stackTrace[i2].toString() + " 》 ");
                }
            }
        } catch (Throwable unused) {
        }
        return stringBuffer.toString();
    }

    private boolean f() {
        return TextUtils.isEmpty(this.f9640i);
    }

    @SuppressLint({"SimpleDateFormat"})
    private static String g() {
        return String.format("123456789,%s", new SimpleDateFormat("yyyy-MM-dd-HH:mm:ss").format(new Date()));
    }

    private static String h(Context context) {
        return String.format("%s,%s,%s,%s,%s,%s,%s,%s,%s,-", b(com.alipay.sdk.util.b.j(context)), q.a.f73954a, b(Build.VERSION.RELEASE), b(Build.MODEL), "-", b(com.alipay.sdk.util.b.a(context).b()), b(com.alipay.sdk.util.b.d(context).a()), "gw", b(com.alipay.sdk.util.b.a(context).e()));
    }

    private String i(String str) {
        String str2;
        if (TextUtils.isEmpty(this.f9640i)) {
            return "";
        }
        String[] split = str.split(m.a.f72566d);
        String str3 = null;
        if (split != null) {
            String str4 = null;
            for (String str5 : split) {
                String[] split2 = str5.split(SimpleComparison.EQUAL_TO_OPERATION);
                if (split2 != null && split2.length == 2) {
                    if (split2[0].equalsIgnoreCase("partner")) {
                        split2[1].replace(m.a.f72569g, "");
                    } else if (split2[0].equalsIgnoreCase("out_trade_no")) {
                        str3 = split2[1].replace(m.a.f72569g, "");
                    } else if (split2[0].equalsIgnoreCase(f9631z)) {
                        str4 = split2[1].replace(m.a.f72569g, "");
                    }
                }
            }
            str2 = str3;
            str3 = str4;
        } else {
            str2 = null;
        }
        String b4 = b(str3);
        String b5 = b(str2);
        String format = String.format("%s,%s,-,%s,-,-,-", b4, b5, b(b5));
        this.f9633b = format;
        return String.format("[(%s),(%s),(%s),(%s),(%s),(%s),(%s),(%s),(%s),(%s)]", this.f9632a, format, this.f9634c, this.f9635d, this.f9636e, this.f9637f, this.f9638g, this.f9639h, this.f9640i, this.f9641j);
    }

    private static String j() {
        return String.format("android,3,%s,%s,com.alipay.mcpay,5.0,-,-,-", b("15.0.8"), b(com.alipay.sdk.cons.a.f9705f));
    }

    private static String k(String str) {
        String str2;
        String[] split = str.split(m.a.f72566d);
        String str3 = null;
        if (split != null) {
            String str4 = null;
            for (String str5 : split) {
                String[] split2 = str5.split(SimpleComparison.EQUAL_TO_OPERATION);
                if (split2 != null && split2.length == 2) {
                    if (split2[0].equalsIgnoreCase("partner")) {
                        split2[1].replace(m.a.f72569g, "");
                    } else if (split2[0].equalsIgnoreCase("out_trade_no")) {
                        str3 = split2[1].replace(m.a.f72569g, "");
                    } else if (split2[0].equalsIgnoreCase(f9631z)) {
                        str4 = split2[1].replace(m.a.f72569g, "");
                    }
                }
            }
            str2 = str3;
            str3 = str4;
        } else {
            str2 = null;
        }
        String b4 = b(str3);
        String b5 = b(str2);
        return String.format("%s,%s,-,%s,-,-,-", b4, b5, b(b5));
    }

    private static String l() {
        return String.format("%s,%s,-,-,-", b(n.b.a().f72750a), b(m.b.b().e()));
    }

    public final void d(String str, String str2, String str3) {
        String str4 = "";
        if (!TextUtils.isEmpty(this.f9640i)) {
            str4 = "^";
        }
        this.f9640i += (str4 + String.format("%s,%s,%s,-", str, str2, b(str3)));
    }

    public final void e(String str, String str2, Throwable th) {
        d(str, str2, c(th));
    }
}
