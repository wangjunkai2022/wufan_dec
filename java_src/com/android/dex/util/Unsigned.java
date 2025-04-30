package com.android.dex.util;

import kotlin.UShort;
/* loaded from: classes2.dex */
public final class Unsigned {
    private Unsigned() {
    }

    public static int compare(int i2, int i4) {
        if (i2 == i4) {
            return 0;
        }
        return (((long) i2) & 4294967295L) < (((long) i4) & 4294967295L) ? -1 : 1;
    }

    public static int compare(short s3, short s4) {
        if (s3 == s4) {
            return 0;
        }
        return (s3 & UShort.MAX_VALUE) < (s4 & UShort.MAX_VALUE) ? -1 : 1;
    }
}
