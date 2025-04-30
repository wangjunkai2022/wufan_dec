package u2;

import android.os.Build;
import android.view.View;
/* compiled from: ViewUtils.java */
/* loaded from: classes3.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f74230a = "getMaxWidth";

    /* renamed from: b  reason: collision with root package name */
    private static final String f74231b = "getMaxHeight";

    /* renamed from: c  reason: collision with root package name */
    private static final String f74232c = "getMinWidth";

    /* renamed from: d  reason: collision with root package name */
    private static final String f74233d = "getMinHeight";

    /* renamed from: e  reason: collision with root package name */
    private static final String f74234e = "setMaxWidth";

    /* renamed from: f  reason: collision with root package name */
    private static final String f74235f = "setMaxHeight";

    public static int a(View view) {
        return e(view, f74231b);
    }

    public static int b(View view) {
        return e(view, f74230a);
    }

    public static int c(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.getMinimumHeight();
        }
        return e(view, f74233d);
    }

    public static int d(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.getMinimumWidth();
        }
        return e(view, f74232c);
    }

    private static int e(View view, String str) {
        try {
            return ((Integer) view.getClass().getMethod(str, new Class[0]).invoke(view, new Object[0])).intValue();
        } catch (Exception unused) {
            return 0;
        }
    }

    public static void f(View view, int i2) {
        j(view, f74235f, i2);
    }

    public static void g(View view, int i2) {
        j(view, f74234e, i2);
    }

    public static void h(View view, int i2) {
        view.setMinimumHeight(i2);
    }

    public static void i(View view, int i2) {
        view.setMinimumWidth(i2);
    }

    private static void j(View view, String str, int i2) {
        try {
            view.getClass().getMethod(str, new Class[0]).invoke(view, Integer.valueOf(i2));
        } catch (Exception unused) {
        }
    }
}
