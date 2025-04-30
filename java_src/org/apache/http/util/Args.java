package org.apache.http.util;

import java.util.Collection;
/* loaded from: classes5.dex */
public class Args {
    public static void check(boolean z3, String str) {
        if (!z3) {
            throw new IllegalArgumentException(str);
        }
    }

    public static <T extends CharSequence> T notBlank(T t3, String str) {
        if (t3 != null) {
            if (TextUtils.isBlank(t3)) {
                throw new IllegalArgumentException(str + " may not be blank");
            }
            return t3;
        }
        throw new IllegalArgumentException(str + " may not be null");
    }

    public static <T extends CharSequence> T notEmpty(T t3, String str) {
        if (t3 != null) {
            if (TextUtils.isEmpty(t3)) {
                throw new IllegalArgumentException(str + " may not be empty");
            }
            return t3;
        }
        throw new IllegalArgumentException(str + " may not be null");
    }

    public static int notNegative(int i2, String str) {
        if (i2 >= 0) {
            return i2;
        }
        throw new IllegalArgumentException(str + " may not be negative");
    }

    public static <T> T notNull(T t3, String str) {
        if (t3 != null) {
            return t3;
        }
        throw new IllegalArgumentException(str + " may not be null");
    }

    public static int positive(int i2, String str) {
        if (i2 > 0) {
            return i2;
        }
        throw new IllegalArgumentException(str + " may not be negative or zero");
    }

    public static void check(boolean z3, String str, Object... objArr) {
        if (!z3) {
            throw new IllegalArgumentException(String.format(str, objArr));
        }
    }

    public static long notNegative(long j4, String str) {
        if (j4 >= 0) {
            return j4;
        }
        throw new IllegalArgumentException(str + " may not be negative");
    }

    public static long positive(long j4, String str) {
        if (j4 > 0) {
            return j4;
        }
        throw new IllegalArgumentException(str + " may not be negative or zero");
    }

    public static <E, T extends Collection<E>> T notEmpty(T t3, String str) {
        if (t3 != null) {
            if (t3.isEmpty()) {
                throw new IllegalArgumentException(str + " may not be empty");
            }
            return t3;
        }
        throw new IllegalArgumentException(str + " may not be null");
    }
}
