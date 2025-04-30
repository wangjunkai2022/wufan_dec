package io.netty.util.internal.shaded.org.jctools.util;

import sun.misc.Unsafe;
/* loaded from: classes5.dex */
public final class UnsafeRefArrayAccess {
    public static final long REF_ARRAY_BASE;
    public static final int REF_ELEMENT_SHIFT;

    static {
        Unsafe unsafe = UnsafeAccess.UNSAFE;
        int arrayIndexScale = unsafe.arrayIndexScale(Object[].class);
        if (4 == arrayIndexScale) {
            REF_ELEMENT_SHIFT = 2;
        } else if (8 == arrayIndexScale) {
            REF_ELEMENT_SHIFT = 3;
        } else {
            throw new IllegalStateException("Unknown pointer size: " + arrayIndexScale);
        }
        REF_ARRAY_BASE = unsafe.arrayBaseOffset(Object[].class);
    }

    public static <E> E[] allocateRefArray(int i2) {
        return (E[]) new Object[i2];
    }

    public static long calcCircularRefElementOffset(long j4, long j5) {
        return REF_ARRAY_BASE + ((j4 & j5) << REF_ELEMENT_SHIFT);
    }

    public static long calcRefElementOffset(long j4) {
        return REF_ARRAY_BASE + (j4 << REF_ELEMENT_SHIFT);
    }

    public static <E> E lpRefElement(E[] eArr, long j4) {
        return (E) UnsafeAccess.UNSAFE.getObject(eArr, j4);
    }

    public static <E> E lvRefElement(E[] eArr, long j4) {
        return (E) UnsafeAccess.UNSAFE.getObjectVolatile(eArr, j4);
    }

    public static <E> void soRefElement(E[] eArr, long j4, E e4) {
        UnsafeAccess.UNSAFE.putOrderedObject(eArr, j4, e4);
    }

    public static <E> void spRefElement(E[] eArr, long j4, E e4) {
        UnsafeAccess.UNSAFE.putObject(eArr, j4, e4);
    }
}
