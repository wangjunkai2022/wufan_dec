package com.facebook.imagepipeline.memory;

import android.util.SparseIntArray;
/* compiled from: DefaultFlexByteArrayPoolParams.java */
/* loaded from: classes2.dex */
public class m {

    /* renamed from: a  reason: collision with root package name */
    public static final int f12896a = 4194304;

    /* renamed from: b  reason: collision with root package name */
    private static final int f12897b = 131072;

    /* renamed from: c  reason: collision with root package name */
    public static final int f12898c = Runtime.getRuntime().availableProcessors();

    private m() {
    }

    public static SparseIntArray a(int i2, int i4, int i5) {
        SparseIntArray sparseIntArray = new SparseIntArray();
        while (i2 <= i4) {
            sparseIntArray.put(i2, i5);
            i2 *= 2;
        }
        return sparseIntArray;
    }

    public static e0 b() {
        int i2 = f12898c;
        return new e0(4194304, i2 * 4194304, a(131072, 4194304, i2), 131072, 4194304, i2);
    }
}
