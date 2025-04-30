package com.danikula.videocache;

import java.util.Objects;
/* compiled from: Preconditions.java */
/* loaded from: classes2.dex */
public final class n {
    public static void a(Object... objArr) {
        for (Object obj : objArr) {
            Objects.requireNonNull(obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(boolean z3) {
        if (!z3) {
            throw new IllegalArgumentException();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void c(boolean z3, String str) {
        if (!z3) {
            throw new IllegalArgumentException(str);
        }
    }

    public static <T> T d(T t3) {
        Objects.requireNonNull(t3);
        return t3;
    }

    public static <T> T e(T t3, String str) {
        Objects.requireNonNull(t3, str);
        return t3;
    }
}
