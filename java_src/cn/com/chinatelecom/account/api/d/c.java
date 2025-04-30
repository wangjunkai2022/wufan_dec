package cn.com.chinatelecom.account.api.d;

import android.content.Context;
import android.text.TextUtils;
import cn.com.chinatelecom.account.api.e.j;
import java.net.InetAddress;
/* loaded from: classes2.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static final String f8581a = "c";

    /* renamed from: b  reason: collision with root package name */
    private static String f8582b = null;

    /* renamed from: c  reason: collision with root package name */
    private static long f8583c = 0;

    /* renamed from: d  reason: collision with root package name */
    private static long f8584d = 1800000;

    public static synchronized String a() {
        synchronized (c.class) {
            if (System.currentTimeMillis() >= f8583c || !cn.com.chinatelecom.account.api.e.d.a(f8582b)) {
                return null;
            }
            return f8582b;
        }
    }

    public static void a(final Context context) {
        if (f8582b == null && cn.com.chinatelecom.account.api.e.g.a() == null) {
            new cn.com.chinatelecom.account.api.c.d().a(new cn.com.chinatelecom.account.api.c.e() { // from class: cn.com.chinatelecom.account.api.d.c.1
                @Override // cn.com.chinatelecom.account.api.c.e
                public void a() {
                    cn.com.chinatelecom.account.api.e.e a4;
                    String a5;
                    try {
                        String a6 = cn.com.chinatelecom.account.api.e.d.a();
                        cn.com.chinatelecom.account.api.e.f.a(a6).a(cn.com.chinatelecom.account.api.e.d.a(context)).c("dns").b(cn.com.chinatelecom.account.api.e.g.f(context));
                        String a7 = cn.com.chinatelecom.account.api.a.d.a(cn.com.chinatelecom.account.api.e.b.f8625f);
                        String b4 = c.b(a7, a6, 0);
                        if (TextUtils.isEmpty(b4)) {
                            b4 = c.b(a7, a6, 1);
                        }
                        synchronized (c.class) {
                            if (TextUtils.isEmpty(b4)) {
                                a4 = cn.com.chinatelecom.account.api.e.f.a(a6).a(80011);
                                a5 = cn.com.chinatelecom.account.api.a.d.a(j.f8684q);
                            } else {
                                String unused = c.f8582b = b4;
                                long unused2 = c.f8583c = System.currentTimeMillis() + c.f8584d;
                                a4 = cn.com.chinatelecom.account.api.e.f.a(a6).a(0);
                                a5 = "success";
                            }
                            a4.e(a5);
                        }
                        cn.com.chinatelecom.account.api.e.f.b(a6);
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String b(String str, String str2, int i2) {
        StringBuilder sb;
        String str3;
        try {
            cn.com.chinatelecom.account.api.e.f.a(str2).b(i2);
            return InetAddress.getByName(str).getHostAddress();
        } catch (Exception e4) {
            if (i2 == 0) {
                sb = new StringBuilder();
                str3 = "first exception: ";
            } else {
                sb = new StringBuilder();
                str3 = "retry exception: ";
            }
            sb.append(str3);
            sb.append(e4.getMessage());
            cn.com.chinatelecom.account.api.e.f.a(str2).g(sb.toString());
            return null;
        }
    }
}
