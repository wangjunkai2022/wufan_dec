package org.apache.http.util;
/* loaded from: classes5.dex */
public class Asserts {
    public static void check(boolean z3, String str) {
        if (!z3) {
            throw new IllegalStateException(str);
        }
    }

    public static void notBlank(CharSequence charSequence, String str) {
        if (TextUtils.isBlank(charSequence)) {
            throw new IllegalStateException(str + " is blank");
        }
    }

    public static void notEmpty(CharSequence charSequence, String str) {
        if (TextUtils.isEmpty(charSequence)) {
            throw new IllegalStateException(str + " is empty");
        }
    }

    public static void notNull(Object obj, String str) {
        if (obj != null) {
            return;
        }
        throw new IllegalStateException(str + " is null");
    }

    public static void check(boolean z3, String str, Object... objArr) {
        if (!z3) {
            throw new IllegalStateException(String.format(str, objArr));
        }
    }
}
