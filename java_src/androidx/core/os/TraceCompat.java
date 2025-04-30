package androidx.core.os;

import android.os.Build;
import android.os.Trace;
import androidx.annotation.NonNull;
import java.lang.reflect.Method;
@Deprecated
/* loaded from: classes.dex */
public final class TraceCompat {

    /* renamed from: a  reason: collision with root package name */
    private static final String f4511a = "TraceCompat";

    /* renamed from: b  reason: collision with root package name */
    private static long f4512b;

    /* renamed from: c  reason: collision with root package name */
    private static Method f4513c;

    /* renamed from: d  reason: collision with root package name */
    private static Method f4514d;

    /* renamed from: e  reason: collision with root package name */
    private static Method f4515e;

    /* renamed from: f  reason: collision with root package name */
    private static Method f4516f;

    static {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 18 || i2 >= 29) {
            return;
        }
        try {
            f4512b = Trace.class.getField("TRACE_TAG_APP").getLong(null);
            Class cls = Long.TYPE;
            f4513c = Trace.class.getMethod("isTagEnabled", cls);
            Class cls2 = Integer.TYPE;
            f4514d = Trace.class.getMethod("asyncTraceBegin", cls, String.class, cls2);
            f4515e = Trace.class.getMethod("asyncTraceEnd", cls, String.class, cls2);
            f4516f = Trace.class.getMethod("traceCounter", cls, String.class, cls2);
        } catch (Exception unused) {
        }
    }

    private TraceCompat() {
    }

    public static void beginAsyncSection(@NonNull String str, int i2) {
        int i4 = Build.VERSION.SDK_INT;
        if (i4 >= 29) {
            Trace.beginAsyncSection(str, i2);
        } else if (i4 >= 18) {
            try {
                f4514d.invoke(null, Long.valueOf(f4512b), str, Integer.valueOf(i2));
            } catch (Exception unused) {
            }
        }
    }

    public static void beginSection(@NonNull String str) {
        if (Build.VERSION.SDK_INT >= 18) {
            Trace.beginSection(str);
        }
    }

    public static void endAsyncSection(@NonNull String str, int i2) {
        int i4 = Build.VERSION.SDK_INT;
        if (i4 >= 29) {
            Trace.endAsyncSection(str, i2);
        } else if (i4 >= 18) {
            try {
                f4515e.invoke(null, Long.valueOf(f4512b), str, Integer.valueOf(i2));
            } catch (Exception unused) {
            }
        }
    }

    public static void endSection() {
        if (Build.VERSION.SDK_INT >= 18) {
            Trace.endSection();
        }
    }

    public static boolean isEnabled() {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 29) {
            return Trace.isEnabled();
        }
        if (i2 >= 18) {
            try {
                return ((Boolean) f4513c.invoke(null, Long.valueOf(f4512b))).booleanValue();
            } catch (Exception unused) {
            }
        }
        return false;
    }

    public static void setCounter(@NonNull String str, int i2) {
        int i4 = Build.VERSION.SDK_INT;
        if (i4 >= 29) {
            Trace.setCounter(str, i2);
        } else if (i4 >= 18) {
            try {
                f4516f.invoke(null, Long.valueOf(f4512b), str, Integer.valueOf(i2));
            } catch (Exception unused) {
            }
        }
    }
}
