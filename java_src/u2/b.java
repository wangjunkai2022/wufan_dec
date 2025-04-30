package u2;

import android.content.Context;
/* compiled from: dp2pxUtils.java */
/* loaded from: classes3.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static final String f74236a = "dp2pxUtils";

    public static int a(float f4, float f5) {
        return (int) ((f5 * f4) + 0.5f);
    }

    public static int b(Context context, float f4) {
        return (int) ((f4 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static int c(float f4, float f5) {
        return (int) ((f5 / f4) + 0.5f);
    }

    public static int d(Context context, float f4) {
        return (int) ((f4 / context.getResources().getDisplayMetrics().density) + 0.5f);
    }
}
