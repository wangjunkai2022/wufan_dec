package com.facebook.common.internal;

import java.util.Objects;
import javax.annotation.Nullable;
/* compiled from: Preconditions.java */
/* loaded from: classes.dex */
public final class h {
    private h() {
    }

    private static String a(int i2, int i4, @Nullable String str) {
        if (i2 < 0) {
            return r("%s (%s) must not be negative", str, Integer.valueOf(i2));
        }
        if (i4 >= 0) {
            return r("%s (%s) must be less than size (%s)", str, Integer.valueOf(i2), Integer.valueOf(i4));
        }
        throw new IllegalArgumentException("negative size: " + i4);
    }

    private static String b(int i2, int i4, @Nullable String str) {
        if (i2 < 0) {
            return r("%s (%s) must not be negative", str, Integer.valueOf(i2));
        }
        if (i4 >= 0) {
            return r("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i2), Integer.valueOf(i4));
        }
        throw new IllegalArgumentException("negative size: " + i4);
    }

    private static String c(int i2, int i4, int i5) {
        if (i2 < 0 || i2 > i5) {
            return b(i2, i5, "start index");
        }
        return (i4 < 0 || i4 > i5) ? b(i4, i5, "end index") : r("end index (%s) must not be less than start index (%s)", Integer.valueOf(i4), Integer.valueOf(i2));
    }

    public static void d(boolean z3) {
        if (!z3) {
            throw new IllegalArgumentException();
        }
    }

    public static void e(boolean z3, @Nullable Object obj) {
        if (!z3) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }

    public static void f(boolean z3, @Nullable String str, @Nullable Object... objArr) {
        if (!z3) {
            throw new IllegalArgumentException(r(str, objArr));
        }
    }

    public static int g(int i2, int i4) {
        return h(i2, i4, "index");
    }

    public static int h(int i2, int i4, @Nullable String str) {
        if (i2 < 0 || i2 >= i4) {
            throw new IndexOutOfBoundsException(a(i2, i4, str));
        }
        return i2;
    }

    public static <T> T i(T t3) {
        Objects.requireNonNull(t3);
        return t3;
    }

    public static <T> T j(T t3, @Nullable Object obj) {
        if (t3 != null) {
            return t3;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    public static <T> T k(T t3, @Nullable String str, @Nullable Object... objArr) {
        if (t3 != null) {
            return t3;
        }
        throw new NullPointerException(r(str, objArr));
    }

    public static int l(int i2, int i4) {
        return m(i2, i4, "index");
    }

    public static int m(int i2, int i4, @Nullable String str) {
        if (i2 < 0 || i2 > i4) {
            throw new IndexOutOfBoundsException(b(i2, i4, str));
        }
        return i2;
    }

    public static void n(int i2, int i4, int i5) {
        if (i2 < 0 || i4 < i2 || i4 > i5) {
            throw new IndexOutOfBoundsException(c(i2, i4, i5));
        }
    }

    public static void o(boolean z3) {
        if (!z3) {
            throw new IllegalStateException();
        }
    }

    public static void p(boolean z3, @Nullable Object obj) {
        if (!z3) {
            throw new IllegalStateException(String.valueOf(obj));
        }
    }

    public static void q(boolean z3, @Nullable String str, @Nullable Object... objArr) {
        if (!z3) {
            throw new IllegalStateException(r(str, objArr));
        }
    }

    static String r(@Nullable String str, @Nullable Object... objArr) {
        int indexOf;
        String valueOf = String.valueOf(str);
        StringBuilder sb = new StringBuilder(valueOf.length() + (objArr.length * 16));
        int i2 = 0;
        int i4 = 0;
        while (i2 < objArr.length && (indexOf = valueOf.indexOf("%s", i4)) != -1) {
            sb.append(valueOf.substring(i4, indexOf));
            sb.append(objArr[i2]);
            i4 = indexOf + 2;
            i2++;
        }
        sb.append(valueOf.substring(i4));
        if (i2 < objArr.length) {
            sb.append(" [");
            sb.append(objArr[i2]);
            for (int i5 = i2 + 1; i5 < objArr.length; i5++) {
                sb.append(", ");
                sb.append(objArr[i5]);
            }
            sb.append(']');
        }
        return sb.toString();
    }
}
