package com.facebook.imagepipeline.memory;

import android.util.SparseIntArray;
/* compiled from: DefaultBitmapPoolParams.java */
/* loaded from: classes2.dex */
public class k {

    /* renamed from: a  reason: collision with root package name */
    private static final int f12890a = 0;

    /* renamed from: b  reason: collision with root package name */
    private static final SparseIntArray f12891b = new SparseIntArray(0);

    private k() {
    }

    public static e0 a() {
        return new e0(0, b(), f12891b);
    }

    private static int b() {
        int min = (int) Math.min(Runtime.getRuntime().maxMemory(), 2147483647L);
        if (min > 16777216) {
            return (min / 4) * 3;
        }
        return min / 2;
    }
}
