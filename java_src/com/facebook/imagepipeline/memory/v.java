package com.facebook.imagepipeline.memory;
/* compiled from: MemoryChunkUtil.java */
/* loaded from: classes2.dex */
public class v {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i2, int i4, int i5) {
        return Math.min(Math.max(0, i5 - i2), i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(int i2, int i4, int i5, int i6, int i7) {
        com.facebook.common.internal.h.d(i6 >= 0);
        com.facebook.common.internal.h.d(i2 >= 0);
        com.facebook.common.internal.h.d(i5 >= 0);
        com.facebook.common.internal.h.d(i2 + i6 <= i7);
        com.facebook.common.internal.h.d(i5 + i6 <= i4);
    }
}
