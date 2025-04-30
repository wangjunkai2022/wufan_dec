package androidx.tracing;

import android.annotation.SuppressLint;
import android.os.Build;
import androidx.annotation.NonNull;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes2.dex */
public final class Trace {

    /* renamed from: a  reason: collision with root package name */
    static final String f7529a = "Trace";

    /* renamed from: b  reason: collision with root package name */
    private static long f7530b;

    /* renamed from: c  reason: collision with root package name */
    private static Method f7531c;

    /* renamed from: d  reason: collision with root package name */
    private static Method f7532d;

    /* renamed from: e  reason: collision with root package name */
    private static Method f7533e;

    /* renamed from: f  reason: collision with root package name */
    private static Method f7534f;

    private Trace() {
    }

    private static void a(@NonNull String str, int i2) {
        if (Build.VERSION.SDK_INT >= 18) {
            try {
                if (f7532d == null) {
                    f7532d = android.os.Trace.class.getMethod("asyncTraceBegin", Long.TYPE, String.class, Integer.TYPE);
                }
                f7532d.invoke(null, Long.valueOf(f7530b), str, Integer.valueOf(i2));
            } catch (Exception e4) {
                c("asyncTraceBegin", e4);
            }
        }
    }

    private static void b(@NonNull String str, int i2) {
        if (Build.VERSION.SDK_INT >= 18) {
            try {
                if (f7533e == null) {
                    f7533e = android.os.Trace.class.getMethod("asyncTraceEnd", Long.TYPE, String.class, Integer.TYPE);
                }
                f7533e.invoke(null, Long.valueOf(f7530b), str, Integer.valueOf(i2));
            } catch (Exception e4) {
                c("asyncTraceEnd", e4);
            }
        }
    }

    @SuppressLint({"NewApi"})
    public static void beginAsyncSection(@NonNull String str, int i2) {
        try {
            if (f7532d == null) {
                TraceApi29Impl.beginAsyncSection(str, i2);
                return;
            }
        } catch (NoClassDefFoundError | NoSuchMethodError unused) {
        }
        a(str, i2);
    }

    public static void beginSection(@NonNull String str) {
        if (Build.VERSION.SDK_INT >= 18) {
            TraceApi18Impl.beginSection(str);
        }
    }

    private static void c(@NonNull String str, @NonNull Exception exc) {
        if (exc instanceof InvocationTargetException) {
            Throwable cause = exc.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            throw new RuntimeException(cause);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Unable to call ");
        sb.append(str);
        sb.append(" via reflection");
    }

    private static boolean d() {
        if (Build.VERSION.SDK_INT >= 18) {
            try {
                if (f7531c == null) {
                    f7530b = android.os.Trace.class.getField("TRACE_TAG_APP").getLong(null);
                    f7531c = android.os.Trace.class.getMethod("isTagEnabled", Long.TYPE);
                }
                return ((Boolean) f7531c.invoke(null, Long.valueOf(f7530b))).booleanValue();
            } catch (Exception e4) {
                c("isTagEnabled", e4);
            }
        }
        return false;
    }

    private static void e(@NonNull String str, int i2) {
        if (Build.VERSION.SDK_INT >= 18) {
            try {
                if (f7534f == null) {
                    f7534f = android.os.Trace.class.getMethod("traceCounter", Long.TYPE, String.class, Integer.TYPE);
                }
                f7534f.invoke(null, Long.valueOf(f7530b), str, Integer.valueOf(i2));
            } catch (Exception e4) {
                c("traceCounter", e4);
            }
        }
    }

    @SuppressLint({"NewApi"})
    public static void endAsyncSection(@NonNull String str, int i2) {
        try {
            if (f7533e == null) {
                TraceApi29Impl.endAsyncSection(str, i2);
                return;
            }
        } catch (NoClassDefFoundError | NoSuchMethodError unused) {
        }
        b(str, i2);
    }

    public static void endSection() {
        if (Build.VERSION.SDK_INT >= 18) {
            TraceApi18Impl.endSection();
        }
    }

    @SuppressLint({"NewApi"})
    public static boolean isEnabled() {
        try {
            if (f7531c == null) {
                return android.os.Trace.isEnabled();
            }
        } catch (NoClassDefFoundError | NoSuchMethodError unused) {
        }
        return d();
    }

    @SuppressLint({"NewApi"})
    public static void setCounter(@NonNull String str, int i2) {
        try {
            if (f7534f == null) {
                TraceApi29Impl.setCounter(str, i2);
                return;
            }
        } catch (NoClassDefFoundError | NoSuchMethodError unused) {
        }
        e(str, i2);
    }
}
