package com.facebook.imagepipeline.cache;

import com.facebook.common.memory.MemoryTrimType;
import com.facebook.imagepipeline.cache.h;
/* compiled from: NativeMemoryCacheTrimStrategy.java */
/* loaded from: classes2.dex */
public class s implements h.c {

    /* renamed from: a  reason: collision with root package name */
    private static final String f12530a = "NativeMemoryCacheTrimStrategy";

    /* compiled from: NativeMemoryCacheTrimStrategy.java */
    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f12531a;

        static {
            int[] iArr = new int[MemoryTrimType.values().length];
            f12531a = iArr;
            try {
                iArr[MemoryTrimType.OnCloseToDalvikHeapLimit.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12531a[MemoryTrimType.OnAppBackgrounded.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f12531a[MemoryTrimType.OnSystemMemoryCriticallyLowWhileAppInForeground.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f12531a[MemoryTrimType.OnSystemLowMemoryWhileAppInForeground.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f12531a[MemoryTrimType.OnSystemLowMemoryWhileAppInBackground.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    @Override // com.facebook.imagepipeline.cache.h.c
    public double a(MemoryTrimType memoryTrimType) {
        int i2 = a.f12531a[memoryTrimType.ordinal()];
        if (i2 != 1) {
            if (i2 == 2 || i2 == 3 || i2 == 4 || i2 == 5) {
                return 1.0d;
            }
            com.facebook.common.logging.a.y0(f12530a, "unknown trim type: %s", memoryTrimType);
            return 0.0d;
        }
        return 0.0d;
    }
}
