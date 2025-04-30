package io.netty.util.internal.shaded.org.jctools.queues.atomic;

import java.util.concurrent.atomic.AtomicLongArray;
import java.util.concurrent.atomic.AtomicReferenceArray;
/* loaded from: classes5.dex */
final class AtomicQueueUtil {
    AtomicQueueUtil() {
    }

    static AtomicLongArray allocateLongArray(int i2) {
        return new AtomicLongArray(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> AtomicReferenceArray<E> allocateRefArray(int i2) {
        return new AtomicReferenceArray<>(i2);
    }

    static int calcCircularLongElementOffset(long j4, int i2) {
        return (int) (j4 & i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int calcCircularRefElementOffset(long j4, long j5) {
        return (int) (j4 & j5);
    }

    static int calcLongElementOffset(long j4) {
        return (int) j4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int calcRefElementOffset(long j4) {
        return (int) j4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int length(AtomicReferenceArray<?> atomicReferenceArray) {
        return atomicReferenceArray.length();
    }

    static long lpLongElement(AtomicLongArray atomicLongArray, int i2) {
        return atomicLongArray.get(i2);
    }

    static <E> E lpRefElement(AtomicReferenceArray<E> atomicReferenceArray, int i2) {
        return atomicReferenceArray.get(i2);
    }

    static long lvLongElement(AtomicLongArray atomicLongArray, int i2) {
        return atomicLongArray.get(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> E lvRefElement(AtomicReferenceArray<E> atomicReferenceArray, int i2) {
        return atomicReferenceArray.get(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int modifiedCalcCircularRefElementOffset(long j4, long j5) {
        return ((int) (j4 & j5)) >> 1;
    }

    static int nextArrayOffset(AtomicReferenceArray<?> atomicReferenceArray) {
        return length(atomicReferenceArray) - 1;
    }

    static void soLongElement(AtomicLongArray atomicLongArray, int i2, long j4) {
        atomicLongArray.lazySet(i2, j4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void soRefElement(AtomicReferenceArray atomicReferenceArray, int i2, Object obj) {
        atomicReferenceArray.lazySet(i2, obj);
    }

    static void spLongElement(AtomicLongArray atomicLongArray, int i2, long j4) {
        atomicLongArray.lazySet(i2, j4);
    }

    static <E> void spRefElement(AtomicReferenceArray<E> atomicReferenceArray, int i2, E e4) {
        atomicReferenceArray.lazySet(i2, e4);
    }

    static <E> void svRefElement(AtomicReferenceArray<E> atomicReferenceArray, int i2, E e4) {
        atomicReferenceArray.set(i2, e4);
    }
}
