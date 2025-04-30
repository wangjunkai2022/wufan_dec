package notchtools.geek.com.notchtools.helper;

import android.os.Build;
import android.text.TextUtils;
/* compiled from: DeviceBrandTools.java */
/* loaded from: classes5.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static a f73096a;

    public static a a() {
        if (f73096a == null) {
            synchronized (a.class) {
                if (f73096a == null) {
                    f73096a = new a();
                }
            }
        }
        return f73096a;
    }

    private String b(String str) {
        return c.c().a(str);
    }

    public final boolean c() {
        String str = Build.MANUFACTURER;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.contains("HUAWEI");
    }

    public final boolean d() {
        return !TextUtils.isEmpty(b("ro.miui.ui.version.name"));
    }

    public final boolean e() {
        return !TextUtils.isEmpty(b("ro.product.brand"));
    }

    public final boolean f() {
        return !TextUtils.isEmpty(b("ro.vivo.os.name"));
    }
}
