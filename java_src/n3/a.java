package n3;

import android.content.Context;
import org.repackage.a.a.a.a.b;
/* compiled from: OpenIDSDK.java */
/* loaded from: classes5.dex */
public class a {
    public static void a(Context context) {
        org.repackage.a.a.a.a.a.f73876b = b.C0495b.f73883a.b(context.getApplicationContext());
        org.repackage.a.a.a.a.a.f73875a = true;
    }

    public static boolean b() {
        if (org.repackage.a.a.a.a.a.f73875a) {
            return org.repackage.a.a.a.a.a.f73876b;
        }
        throw new RuntimeException("SDK Need Init First!");
    }

    public static String c(Context context) {
        if (org.repackage.a.a.a.a.a.f73875a) {
            return b.C0495b.f73883a.a(context.getApplicationContext(), "GUID");
        }
        throw new RuntimeException("SDK Need Init First!");
    }

    public static String d(Context context) {
        if (org.repackage.a.a.a.a.a.f73875a) {
            return b.C0495b.f73883a.a(context.getApplicationContext(), "OUID");
        }
        throw new RuntimeException("SDK Need Init First!");
    }

    public static String e(Context context) {
        if (org.repackage.a.a.a.a.a.f73875a) {
            return b.C0495b.f73883a.a(context.getApplicationContext(), "DUID");
        }
        throw new RuntimeException("SDK Need Init First!");
    }

    public static String f(Context context) {
        if (org.repackage.a.a.a.a.a.f73875a) {
            return b.C0495b.f73883a.a(context.getApplicationContext(), "AUID");
        }
        throw new RuntimeException("SDK Need Init First!");
    }
}
