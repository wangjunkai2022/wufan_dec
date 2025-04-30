package io.reactivex.internal.util;
/* compiled from: Pow2.java */
/* loaded from: classes5.dex */
public final class l {
    private l() {
        throw new IllegalStateException("No instances!");
    }

    public static boolean a(int i2) {
        return (i2 & (i2 + (-1))) == 0;
    }

    public static int b(int i2) {
        return 1 << (32 - Integer.numberOfLeadingZeros(i2 - 1));
    }
}
