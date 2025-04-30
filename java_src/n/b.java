package n;

import android.content.Context;
import android.text.TextUtils;
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: c  reason: collision with root package name */
    private static b f72749c;

    /* renamed from: a  reason: collision with root package name */
    public String f72750a;

    /* renamed from: b  reason: collision with root package name */
    public String f72751b;

    private b() {
    }

    public static synchronized b a() {
        b bVar;
        synchronized (b.class) {
            if (f72749c == null) {
                f72749c = new b();
                Context context = m.b.b().f72580a;
                a aVar = new a(context);
                String b4 = com.alipay.sdk.util.b.a(context).b();
                String e4 = com.alipay.sdk.util.b.a(context).e();
                f72749c.f72750a = aVar.k(b4, e4);
                f72749c.f72751b = aVar.n(b4, e4);
                if (TextUtils.isEmpty(f72749c.f72751b)) {
                    b bVar2 = f72749c;
                    String hexString = Long.toHexString(System.currentTimeMillis());
                    if (hexString.length() > 10) {
                        hexString = hexString.substring(hexString.length() - 10);
                    }
                    bVar2.f72751b = hexString;
                }
                b bVar3 = f72749c;
                aVar.h(b4, e4, bVar3.f72750a, bVar3.f72751b);
            }
            bVar = f72749c;
        }
        return bVar;
    }

    private void b(Context context) {
        a aVar = new a(context);
        try {
            aVar.h(com.alipay.sdk.util.b.a(context).b(), com.alipay.sdk.util.b.a(context).e(), this.f72750a, this.f72751b);
        } catch (Exception unused) {
        } finally {
            aVar.close();
        }
    }

    private void c(String str) {
        this.f72750a = str;
    }

    private String d() {
        return this.f72750a;
    }

    private void e(String str) {
        this.f72751b = str;
    }

    private String f() {
        return this.f72751b;
    }

    private boolean g() {
        return TextUtils.isEmpty(this.f72750a);
    }

    private static void h() {
        Context context = m.b.b().f72580a;
        String b4 = com.alipay.sdk.util.b.a(context).b();
        String e4 = com.alipay.sdk.util.b.a(context).e();
        a aVar = new a(context);
        aVar.g(b4, e4);
        aVar.close();
    }

    private static String i() {
        String hexString = Long.toHexString(System.currentTimeMillis());
        return hexString.length() > 10 ? hexString.substring(hexString.length() - 10) : hexString;
    }
}
