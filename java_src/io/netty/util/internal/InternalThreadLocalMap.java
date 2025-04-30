package io.netty.util.internal;

import io.netty.util.concurrent.FastThreadLocalThread;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.IdentityHashMap;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes5.dex */
public final class InternalThreadLocalMap extends UnpaddedInternalThreadLocalMap {
    private static final int DEFAULT_ARRAY_LIST_INITIAL_CAPACITY = 8;
    private static final int STRING_BUILDER_INITIAL_SIZE;
    private static final int STRING_BUILDER_MAX_SIZE;
    public static final Object UNSET;
    private static final InternalLogger logger;
    private BitSet cleanerFlags;
    public long rp1;
    public long rp2;
    public long rp3;
    public long rp4;
    public long rp5;
    public long rp6;
    public long rp7;
    public long rp8;
    public long rp9;

    static {
        InternalLogger internalLoggerFactory = InternalLoggerFactory.getInstance(InternalThreadLocalMap.class);
        logger = internalLoggerFactory;
        UNSET = new Object();
        int i2 = SystemPropertyUtil.getInt("io.netty.threadLocalMap.stringBuilder.initialSize", 1024);
        STRING_BUILDER_INITIAL_SIZE = i2;
        internalLoggerFactory.debug("-Dio.netty.threadLocalMap.stringBuilder.initialSize: {}", Integer.valueOf(i2));
        int i4 = SystemPropertyUtil.getInt("io.netty.threadLocalMap.stringBuilder.maxSize", 4096);
        STRING_BUILDER_MAX_SIZE = i4;
        internalLoggerFactory.debug("-Dio.netty.threadLocalMap.stringBuilder.maxSize: {}", Integer.valueOf(i4));
    }

    private InternalThreadLocalMap() {
        super(newIndexedVariableTable());
    }

    public static void destroy() {
        UnpaddedInternalThreadLocalMap.slowThreadLocalMap.remove();
    }

    private void expandIndexedVariableTableAndSet(int i2, Object obj) {
        Object[] objArr = this.indexedVariables;
        int length = objArr.length;
        int i4 = (i2 >>> 1) | i2;
        int i5 = i4 | (i4 >>> 2);
        int i6 = i5 | (i5 >>> 4);
        int i7 = i6 | (i6 >>> 8);
        Object[] copyOf = Arrays.copyOf(objArr, (i7 | (i7 >>> 16)) + 1);
        Arrays.fill(copyOf, length, copyOf.length, UNSET);
        copyOf[i2] = obj;
        this.indexedVariables = copyOf;
    }

    private static InternalThreadLocalMap fastGet(FastThreadLocalThread fastThreadLocalThread) {
        InternalThreadLocalMap threadLocalMap = fastThreadLocalThread.threadLocalMap();
        if (threadLocalMap == null) {
            InternalThreadLocalMap internalThreadLocalMap = new InternalThreadLocalMap();
            fastThreadLocalThread.setThreadLocalMap(internalThreadLocalMap);
            return internalThreadLocalMap;
        }
        return threadLocalMap;
    }

    public static InternalThreadLocalMap get() {
        Thread currentThread = Thread.currentThread();
        if (currentThread instanceof FastThreadLocalThread) {
            return fastGet((FastThreadLocalThread) currentThread);
        }
        return slowGet();
    }

    public static InternalThreadLocalMap getIfSet() {
        Thread currentThread = Thread.currentThread();
        if (currentThread instanceof FastThreadLocalThread) {
            return ((FastThreadLocalThread) currentThread).threadLocalMap();
        }
        return UnpaddedInternalThreadLocalMap.slowThreadLocalMap.get();
    }

    public static int lastVariableIndex() {
        return UnpaddedInternalThreadLocalMap.nextIndex.get() - 1;
    }

    private static Object[] newIndexedVariableTable() {
        Object[] objArr = new Object[32];
        Arrays.fill(objArr, UNSET);
        return objArr;
    }

    public static int nextVariableIndex() {
        AtomicInteger atomicInteger = UnpaddedInternalThreadLocalMap.nextIndex;
        int andIncrement = atomicInteger.getAndIncrement();
        if (andIncrement >= 0) {
            return andIncrement;
        }
        atomicInteger.decrementAndGet();
        throw new IllegalStateException("too many thread-local indexed variables");
    }

    public static void remove() {
        Thread currentThread = Thread.currentThread();
        if (currentThread instanceof FastThreadLocalThread) {
            ((FastThreadLocalThread) currentThread).setThreadLocalMap(null);
        } else {
            UnpaddedInternalThreadLocalMap.slowThreadLocalMap.remove();
        }
    }

    private static InternalThreadLocalMap slowGet() {
        ThreadLocal<InternalThreadLocalMap> threadLocal = UnpaddedInternalThreadLocalMap.slowThreadLocalMap;
        InternalThreadLocalMap internalThreadLocalMap = threadLocal.get();
        if (internalThreadLocalMap == null) {
            InternalThreadLocalMap internalThreadLocalMap2 = new InternalThreadLocalMap();
            threadLocal.set(internalThreadLocalMap2);
            return internalThreadLocalMap2;
        }
        return internalThreadLocalMap;
    }

    public <E> ArrayList<E> arrayList() {
        return arrayList(8);
    }

    public Map<Charset, CharsetDecoder> charsetDecoderCache() {
        Map<Charset, CharsetDecoder> map = this.charsetDecoderCache;
        if (map == null) {
            IdentityHashMap identityHashMap = new IdentityHashMap();
            this.charsetDecoderCache = identityHashMap;
            return identityHashMap;
        }
        return map;
    }

    public Map<Charset, CharsetEncoder> charsetEncoderCache() {
        Map<Charset, CharsetEncoder> map = this.charsetEncoderCache;
        if (map == null) {
            IdentityHashMap identityHashMap = new IdentityHashMap();
            this.charsetEncoderCache = identityHashMap;
            return identityHashMap;
        }
        return map;
    }

    @Deprecated
    public IntegerHolder counterHashCode() {
        return this.counterHashCode;
    }

    public int futureListenerStackDepth() {
        return this.futureListenerStackDepth;
    }

    public Map<Class<?>, Boolean> handlerSharableCache() {
        Map<Class<?>, Boolean> map = this.handlerSharableCache;
        if (map == null) {
            WeakHashMap weakHashMap = new WeakHashMap(4);
            this.handlerSharableCache = weakHashMap;
            return weakHashMap;
        }
        return map;
    }

    public Object indexedVariable(int i2) {
        Object[] objArr = this.indexedVariables;
        return i2 < objArr.length ? objArr[i2] : UNSET;
    }

    public boolean isCleanerFlagSet(int i2) {
        BitSet bitSet = this.cleanerFlags;
        return bitSet != null && bitSet.get(i2);
    }

    public boolean isIndexedVariableSet(int i2) {
        Object[] objArr = this.indexedVariables;
        return i2 < objArr.length && objArr[i2] != UNSET;
    }

    public int localChannelReaderStackDepth() {
        return this.localChannelReaderStackDepth;
    }

    public ThreadLocalRandom random() {
        ThreadLocalRandom threadLocalRandom = this.random;
        if (threadLocalRandom == null) {
            ThreadLocalRandom threadLocalRandom2 = new ThreadLocalRandom();
            this.random = threadLocalRandom2;
            return threadLocalRandom2;
        }
        return threadLocalRandom;
    }

    public Object removeIndexedVariable(int i2) {
        Object[] objArr = this.indexedVariables;
        if (i2 < objArr.length) {
            Object obj = objArr[i2];
            objArr[i2] = UNSET;
            return obj;
        }
        return UNSET;
    }

    public void setCleanerFlag(int i2) {
        if (this.cleanerFlags == null) {
            this.cleanerFlags = new BitSet();
        }
        this.cleanerFlags.set(i2);
    }

    @Deprecated
    public void setCounterHashCode(IntegerHolder integerHolder) {
        this.counterHashCode = integerHolder;
    }

    public void setFutureListenerStackDepth(int i2) {
        this.futureListenerStackDepth = i2;
    }

    public boolean setIndexedVariable(int i2, Object obj) {
        Object[] objArr = this.indexedVariables;
        if (i2 < objArr.length) {
            Object obj2 = objArr[i2];
            objArr[i2] = obj;
            return obj2 == UNSET;
        }
        expandIndexedVariableTableAndSet(i2, obj);
        return true;
    }

    public void setLocalChannelReaderStackDepth(int i2) {
        this.localChannelReaderStackDepth = i2;
    }

    public int size() {
        int i2 = this.futureListenerStackDepth != 0 ? 1 : 0;
        if (this.localChannelReaderStackDepth != 0) {
            i2++;
        }
        if (this.handlerSharableCache != null) {
            i2++;
        }
        if (this.counterHashCode != null) {
            i2++;
        }
        if (this.random != null) {
            i2++;
        }
        if (this.typeParameterMatcherGetCache != null) {
            i2++;
        }
        if (this.typeParameterMatcherFindCache != null) {
            i2++;
        }
        if (this.stringBuilder != null) {
            i2++;
        }
        if (this.charsetEncoderCache != null) {
            i2++;
        }
        if (this.charsetDecoderCache != null) {
            i2++;
        }
        if (this.arrayList != null) {
            i2++;
        }
        for (Object obj : this.indexedVariables) {
            if (obj != UNSET) {
                i2++;
            }
        }
        return i2 - 1;
    }

    public StringBuilder stringBuilder() {
        StringBuilder sb = this.stringBuilder;
        if (sb == null) {
            StringBuilder sb2 = new StringBuilder(STRING_BUILDER_INITIAL_SIZE);
            this.stringBuilder = sb2;
            return sb2;
        }
        if (sb.capacity() > STRING_BUILDER_MAX_SIZE) {
            sb.setLength(STRING_BUILDER_INITIAL_SIZE);
            sb.trimToSize();
        }
        sb.setLength(0);
        return sb;
    }

    public Map<Class<?>, Map<String, TypeParameterMatcher>> typeParameterMatcherFindCache() {
        Map<Class<?>, Map<String, TypeParameterMatcher>> map = this.typeParameterMatcherFindCache;
        if (map == null) {
            IdentityHashMap identityHashMap = new IdentityHashMap();
            this.typeParameterMatcherFindCache = identityHashMap;
            return identityHashMap;
        }
        return map;
    }

    public Map<Class<?>, TypeParameterMatcher> typeParameterMatcherGetCache() {
        Map<Class<?>, TypeParameterMatcher> map = this.typeParameterMatcherGetCache;
        if (map == null) {
            IdentityHashMap identityHashMap = new IdentityHashMap();
            this.typeParameterMatcherGetCache = identityHashMap;
            return identityHashMap;
        }
        return map;
    }

    public <E> ArrayList<E> arrayList(int i2) {
        ArrayList<E> arrayList = (ArrayList<E>) this.arrayList;
        if (arrayList == null) {
            ArrayList<E> arrayList2 = new ArrayList<>(i2);
            this.arrayList = arrayList2;
            return arrayList2;
        }
        arrayList.clear();
        arrayList.ensureCapacity(i2);
        return arrayList;
    }
}
