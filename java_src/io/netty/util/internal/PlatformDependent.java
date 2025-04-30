package io.netty.util.internal;

import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import io.netty.util.internal.shaded.org.jctools.queues.MpscArrayQueue;
import io.netty.util.internal.shaded.org.jctools.queues.MpscChunkedArrayQueue;
import io.netty.util.internal.shaded.org.jctools.queues.MpscUnboundedArrayQueue;
import io.netty.util.internal.shaded.org.jctools.queues.SpscLinkedQueue;
import io.netty.util.internal.shaded.org.jctools.queues.atomic.MpscAtomicArrayQueue;
import io.netty.util.internal.shaded.org.jctools.queues.atomic.MpscGrowableAtomicArrayQueue;
import io.netty.util.internal.shaded.org.jctools.queues.atomic.MpscUnboundedAtomicArrayQueue;
import io.netty.util.internal.shaded.org.jctools.queues.atomic.SpscLinkedAtomicQueue;
import io.netty.util.internal.shaded.org.jctools.util.UnsafeAccess;
import java.io.File;
import java.lang.reflect.Field;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.Arrays;
import java.util.Collections;
import java.util.Deque;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.Map;
import java.util.Queue;
import java.util.Random;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedDeque;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.atomic.AtomicLong;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes5.dex */
public final class PlatformDependent {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final int ADDRESS_SIZE;
    private static final String[] ALLOWED_LINUX_OS_CLASSIFIERS;
    public static final boolean BIG_ENDIAN_NATIVE_ORDER;
    private static final int BIT_MODE;
    private static final long BYTE_ARRAY_BASE_OFFSET;
    private static final boolean CAN_ENABLE_TCP_NODELAY_BY_DEFAULT;
    private static final Cleaner CLEANER;
    private static final boolean DIRECT_BUFFER_PREFERRED;
    private static final AtomicLong DIRECT_MEMORY_COUNTER;
    private static final long DIRECT_MEMORY_LIMIT;
    private static final boolean IS_IVKVM_DOT_NET;
    private static final boolean IS_J9_JVM;
    private static final boolean IS_OSX;
    private static final boolean IS_WINDOWS;
    private static final String LINUX_ID_LIKE_PREFIX = "ID_LIKE=";
    private static final String LINUX_ID_PREFIX = "ID=";
    private static final Set<String> LINUX_OS_CLASSIFIERS;
    private static final int MAX_ALLOWED_MPSC_CAPACITY = 1073741824;
    private static final long MAX_DIRECT_MEMORY;
    private static final Pattern MAX_DIRECT_MEMORY_SIZE_ARG_PATTERN;
    private static final boolean MAYBE_SUPER_USER;
    private static final int MIN_MAX_MPSC_CAPACITY = 2048;
    private static final int MPSC_CHUNK_SIZE = 1024;
    private static final Cleaner NOOP;
    private static final String NORMALIZED_ARCH;
    private static final String NORMALIZED_OS;
    private static final String[] OS_RELEASE_FILES;
    private static final ThreadLocalRandomProvider RANDOM_PROVIDER;
    private static final File TMPDIR;
    private static final int UNINITIALIZED_ARRAY_ALLOCATION_THRESHOLD;
    private static final Throwable UNSAFE_UNAVAILABILITY_CAUSE;
    private static final boolean USE_DIRECT_BUFFER_NO_CLEANER;
    private static final InternalLogger logger;

    /* loaded from: classes5.dex */
    private static final class AtomicLongCounter extends AtomicLong implements LongCounter {
        private static final long serialVersionUID = 4074772784610639305L;

        private AtomicLongCounter() {
        }

        @Override // io.netty.util.internal.LongCounter
        public void add(long j4) {
            addAndGet(j4);
        }

        @Override // io.netty.util.internal.LongCounter
        public void decrement() {
            decrementAndGet();
        }

        @Override // io.netty.util.internal.LongCounter
        public void increment() {
            incrementAndGet();
        }

        @Override // io.netty.util.internal.LongCounter
        public long value() {
            return get();
        }
    }

    /* loaded from: classes5.dex */
    private interface ThreadLocalRandomProvider {
        Random current();
    }

    static {
        InternalLogger internalLoggerFactory = InternalLoggerFactory.getInstance(PlatformDependent.class);
        logger = internalLoggerFactory;
        MAX_DIRECT_MEMORY_SIZE_ARG_PATTERN = Pattern.compile("\\s*-XX:MaxDirectMemorySize\\s*=\\s*([0-9]+)\\s*([kKmMgG]?)\\s*$");
        IS_WINDOWS = isWindows0();
        IS_OSX = isOsx0();
        IS_J9_JVM = isJ9Jvm0();
        IS_IVKVM_DOT_NET = isIkvmDotNet0();
        CAN_ENABLE_TCP_NODELAY_BY_DEFAULT = !isAndroid();
        UNSAFE_UNAVAILABILITY_CAUSE = unsafeUnavailabilityCause0();
        long maxDirectMemory0 = maxDirectMemory0();
        MAX_DIRECT_MEMORY = maxDirectMemory0;
        BYTE_ARRAY_BASE_OFFSET = byteArrayBaseOffset0();
        TMPDIR = tmpdir0();
        BIT_MODE = bitMode0();
        NORMALIZED_ARCH = normalizeArch(SystemPropertyUtil.get("os.arch", ""));
        NORMALIZED_OS = normalizeOs(SystemPropertyUtil.get("os.name", ""));
        String[] strArr = {"fedora", "suse", "arch"};
        ALLOWED_LINUX_OS_CLASSIFIERS = strArr;
        ADDRESS_SIZE = addressSize0();
        String[] strArr2 = {"/etc/os-release", "/usr/lib/os-release"};
        OS_RELEASE_FILES = strArr2;
        BIG_ENDIAN_NATIVE_ORDER = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
        Cleaner cleaner = new Cleaner() { // from class: io.netty.util.internal.PlatformDependent.1
            @Override // io.netty.util.internal.Cleaner
            public void freeDirectBuffer(ByteBuffer byteBuffer) {
            }
        };
        NOOP = cleaner;
        if (javaVersion() >= 7) {
            RANDOM_PROVIDER = new ThreadLocalRandomProvider() { // from class: io.netty.util.internal.PlatformDependent.2
                @Override // io.netty.util.internal.PlatformDependent.ThreadLocalRandomProvider
                @SuppressJava6Requirement(reason = "Usage guarded by java version check")
                public Random current() {
                    return java.util.concurrent.ThreadLocalRandom.current();
                }
            };
        } else {
            RANDOM_PROVIDER = new ThreadLocalRandomProvider() { // from class: io.netty.util.internal.PlatformDependent.3
                @Override // io.netty.util.internal.PlatformDependent.ThreadLocalRandomProvider
                public Random current() {
                    return ThreadLocalRandom.current();
                }
            };
        }
        long j4 = SystemPropertyUtil.getLong("io.netty.maxDirectMemory", -1L);
        if (j4 != 0 && hasUnsafe() && PlatformDependent0.hasDirectBufferNoCleanerConstructor()) {
            USE_DIRECT_BUFFER_NO_CLEANER = true;
            if (j4 < 0) {
                if (maxDirectMemory0 <= 0) {
                    DIRECT_MEMORY_COUNTER = null;
                } else {
                    DIRECT_MEMORY_COUNTER = new AtomicLong();
                }
                j4 = maxDirectMemory0;
            } else {
                DIRECT_MEMORY_COUNTER = new AtomicLong();
            }
        } else {
            USE_DIRECT_BUFFER_NO_CLEANER = false;
            DIRECT_MEMORY_COUNTER = null;
        }
        internalLoggerFactory.debug("-Dio.netty.maxDirectMemory: {} bytes", Long.valueOf(j4));
        if (j4 >= 1) {
            maxDirectMemory0 = j4;
        }
        DIRECT_MEMORY_LIMIT = maxDirectMemory0;
        SystemPropertyUtil.getInt("io.netty.uninitializedArrayAllocationThreshold", 1024);
        int i2 = (javaVersion() < 9 || !PlatformDependent0.hasAllocateArrayMethod()) ? -1 : -1;
        UNINITIALIZED_ARRAY_ALLOCATION_THRESHOLD = i2;
        internalLoggerFactory.debug("-Dio.netty.uninitializedArrayAllocationThreshold: {}", Integer.valueOf(i2));
        MAYBE_SUPER_USER = maybeSuperUser0();
        if (!isAndroid()) {
            if (javaVersion() >= 9) {
                CLEANER = CleanerJava9.isSupported() ? new CleanerJava9() : cleaner;
            } else {
                CLEANER = CleanerJava6.isSupported() ? new CleanerJava6() : cleaner;
            }
        } else {
            CLEANER = cleaner;
        }
        Cleaner cleaner2 = CLEANER;
        boolean z3 = (cleaner2 == cleaner || SystemPropertyUtil.getBoolean("io.netty.noPreferDirect", false)) ? false : true;
        DIRECT_BUFFER_PREFERRED = z3;
        if (internalLoggerFactory.isDebugEnabled()) {
            internalLoggerFactory.debug("-Dio.netty.noPreferDirect: {}", Boolean.valueOf(true ^ z3));
        }
        if (cleaner2 == cleaner && !PlatformDependent0.isExplicitNoUnsafe()) {
            internalLoggerFactory.info("Your platform does not provide complete low-level API for accessing direct buffers reliably. Unless explicitly requested, heap buffer will always be preferred to avoid potential system instability.");
        }
        final Set unmodifiableSet = Collections.unmodifiableSet(new HashSet(Arrays.asList(strArr)));
        final LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (final String str : strArr2) {
            final File file = new File(str);
            if (((Boolean) AccessController.doPrivileged(new PrivilegedAction<Boolean>() { // from class: io.netty.util.internal.PlatformDependent.4
                /* JADX WARN: Can't rename method to resolve collision */
                /* JADX WARN: Can't wrap try/catch for region: R(2:(3:7|8|(3:10|(3:20|21|22)(3:12|13|(3:15|16|17)(1:19))|18)(0))|23) */
                /* JADX WARN: Code restructure failed: missing block: B:31:0x008f, code lost:
                    if (r1 == null) goto L27;
                 */
                /* JADX WARN: Removed duplicated region for block: B:49:0x0098 A[EXC_TOP_SPLITTER, SYNTHETIC] */
                @Override // java.security.PrivilegedAction
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public java.lang.Boolean run() {
                    /*
                        r7 = this;
                        java.io.File r0 = r1     // Catch: java.lang.SecurityException -> L9c
                        boolean r0 = r0.exists()     // Catch: java.lang.SecurityException -> L9c
                        if (r0 == 0) goto La8
                        r0 = 0
                        java.io.BufferedReader r1 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L69 java.io.IOException -> L6e java.lang.SecurityException -> L80
                        java.io.InputStreamReader r2 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> L69 java.io.IOException -> L6e java.lang.SecurityException -> L80
                        java.io.FileInputStream r3 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L69 java.io.IOException -> L6e java.lang.SecurityException -> L80
                        java.io.File r4 = r1     // Catch: java.lang.Throwable -> L69 java.io.IOException -> L6e java.lang.SecurityException -> L80
                        r3.<init>(r4)     // Catch: java.lang.Throwable -> L69 java.io.IOException -> L6e java.lang.SecurityException -> L80
                        java.nio.charset.Charset r4 = io.netty.util.CharsetUtil.UTF_8     // Catch: java.lang.Throwable -> L69 java.io.IOException -> L6e java.lang.SecurityException -> L80
                        r2.<init>(r3, r4)     // Catch: java.lang.Throwable -> L69 java.io.IOException -> L6e java.lang.SecurityException -> L80
                        r1.<init>(r2)     // Catch: java.lang.Throwable -> L69 java.io.IOException -> L6e java.lang.SecurityException -> L80
                    L1c:
                        java.lang.String r0 = r1.readLine()     // Catch: java.io.IOException -> L65 java.lang.SecurityException -> L67 java.lang.Throwable -> L95
                        if (r0 == 0) goto L61
                        java.lang.String r2 = "ID="
                        boolean r2 = r0.startsWith(r2)     // Catch: java.io.IOException -> L65 java.lang.SecurityException -> L67 java.lang.Throwable -> L95
                        if (r2 == 0) goto L41
                        r2 = 3
                        java.lang.String r0 = r0.substring(r2)     // Catch: java.io.IOException -> L65 java.lang.SecurityException -> L67 java.lang.Throwable -> L95
                        java.lang.String r0 = io.netty.util.internal.PlatformDependent.access$000(r0)     // Catch: java.io.IOException -> L65 java.lang.SecurityException -> L67 java.lang.Throwable -> L95
                        java.util.Set r2 = r2     // Catch: java.io.IOException -> L65 java.lang.SecurityException -> L67 java.lang.Throwable -> L95
                        java.util.Set r3 = r3     // Catch: java.io.IOException -> L65 java.lang.SecurityException -> L67 java.lang.Throwable -> L95
                        r4 = 1
                        java.lang.String[] r4 = new java.lang.String[r4]     // Catch: java.io.IOException -> L65 java.lang.SecurityException -> L67 java.lang.Throwable -> L95
                        r5 = 0
                        r4[r5] = r0     // Catch: java.io.IOException -> L65 java.lang.SecurityException -> L67 java.lang.Throwable -> L95
                        io.netty.util.internal.PlatformDependent.access$100(r2, r3, r4)     // Catch: java.io.IOException -> L65 java.lang.SecurityException -> L67 java.lang.Throwable -> L95
                        goto L1c
                    L41:
                        java.lang.String r2 = "ID_LIKE="
                        boolean r2 = r0.startsWith(r2)     // Catch: java.io.IOException -> L65 java.lang.SecurityException -> L67 java.lang.Throwable -> L95
                        if (r2 == 0) goto L1c
                        r2 = 8
                        java.lang.String r0 = r0.substring(r2)     // Catch: java.io.IOException -> L65 java.lang.SecurityException -> L67 java.lang.Throwable -> L95
                        java.lang.String r0 = io.netty.util.internal.PlatformDependent.access$000(r0)     // Catch: java.io.IOException -> L65 java.lang.SecurityException -> L67 java.lang.Throwable -> L95
                        java.util.Set r2 = r2     // Catch: java.io.IOException -> L65 java.lang.SecurityException -> L67 java.lang.Throwable -> L95
                        java.util.Set r3 = r3     // Catch: java.io.IOException -> L65 java.lang.SecurityException -> L67 java.lang.Throwable -> L95
                        java.lang.String r4 = "[ ]+"
                        java.lang.String[] r0 = r0.split(r4)     // Catch: java.io.IOException -> L65 java.lang.SecurityException -> L67 java.lang.Throwable -> L95
                        io.netty.util.internal.PlatformDependent.access$100(r2, r3, r0)     // Catch: java.io.IOException -> L65 java.lang.SecurityException -> L67 java.lang.Throwable -> L95
                        goto L1c
                    L61:
                        r1.close()     // Catch: java.io.IOException -> L92 java.lang.SecurityException -> L9c
                        goto L92
                    L65:
                        r0 = move-exception
                        goto L72
                    L67:
                        r0 = move-exception
                        goto L84
                    L69:
                        r1 = move-exception
                        r6 = r1
                        r1 = r0
                        r0 = r6
                        goto L96
                    L6e:
                        r1 = move-exception
                        r6 = r1
                        r1 = r0
                        r0 = r6
                    L72:
                        io.netty.util.internal.logging.InternalLogger r2 = io.netty.util.internal.PlatformDependent.access$200()     // Catch: java.lang.Throwable -> L95
                        java.lang.String r3 = "Error while reading content of {}"
                        java.lang.String r4 = r4     // Catch: java.lang.Throwable -> L95
                        r2.debug(r3, r4, r0)     // Catch: java.lang.Throwable -> L95
                        if (r1 == 0) goto L92
                        goto L61
                    L80:
                        r1 = move-exception
                        r6 = r1
                        r1 = r0
                        r0 = r6
                    L84:
                        io.netty.util.internal.logging.InternalLogger r2 = io.netty.util.internal.PlatformDependent.access$200()     // Catch: java.lang.Throwable -> L95
                        java.lang.String r3 = "Unable to read {}"
                        java.lang.String r4 = r4     // Catch: java.lang.Throwable -> L95
                        r2.debug(r3, r4, r0)     // Catch: java.lang.Throwable -> L95
                        if (r1 == 0) goto L92
                        goto L61
                    L92:
                        java.lang.Boolean r0 = java.lang.Boolean.TRUE     // Catch: java.lang.SecurityException -> L9c
                        return r0
                    L95:
                        r0 = move-exception
                    L96:
                        if (r1 == 0) goto L9b
                        r1.close()     // Catch: java.io.IOException -> L9b java.lang.SecurityException -> L9c
                    L9b:
                        throw r0     // Catch: java.lang.SecurityException -> L9c
                    L9c:
                        r0 = move-exception
                        io.netty.util.internal.logging.InternalLogger r1 = io.netty.util.internal.PlatformDependent.access$200()
                        java.lang.String r2 = r4
                        java.lang.String r3 = "Unable to check if {} exists"
                        r1.debug(r3, r2, r0)
                    La8:
                        java.lang.Boolean r0 = java.lang.Boolean.FALSE
                        return r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: io.netty.util.internal.PlatformDependent.AnonymousClass4.run():java.lang.Boolean");
                }
            })).booleanValue()) {
                break;
            }
        }
        LINUX_OS_CLASSIFIERS = Collections.unmodifiableSet(linkedHashSet);
    }

    private PlatformDependent() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void addClassifier(Set<String> set, Set<String> set2, String... strArr) {
        for (String str : strArr) {
            if (set.contains(str)) {
                set2.add(str);
            }
        }
    }

    public static int addressSize() {
        return ADDRESS_SIZE;
    }

    private static int addressSize0() {
        if (hasUnsafe()) {
            return PlatformDependent0.addressSize();
        }
        return -1;
    }

    public static ByteBuffer allocateDirectNoCleaner(int i2) {
        incrementMemoryCounter(i2);
        try {
            return PlatformDependent0.allocateDirectNoCleaner(i2);
        } catch (Throwable th) {
            decrementMemoryCounter(i2);
            throwException(th);
            return null;
        }
    }

    public static long allocateMemory(long j4) {
        return PlatformDependent0.allocateMemory(j4);
    }

    public static byte[] allocateUninitializedArray(int i2) {
        int i4 = UNINITIALIZED_ARRAY_ALLOCATION_THRESHOLD;
        if (i4 >= 0 && i4 <= i2) {
            return PlatformDependent0.allocateUninitializedArray(i2);
        }
        return new byte[i2];
    }

    public static int bitMode() {
        return BIT_MODE;
    }

    private static int bitMode0() {
        int i2 = SystemPropertyUtil.getInt("io.netty.bitMode", 0);
        if (i2 > 0) {
            logger.debug("-Dio.netty.bitMode: {}", Integer.valueOf(i2));
            return i2;
        }
        int i4 = SystemPropertyUtil.getInt("sun.arch.data.model", 0);
        if (i4 > 0) {
            logger.debug("-Dio.netty.bitMode: {} (sun.arch.data.model)", Integer.valueOf(i4));
            return i4;
        }
        int i5 = SystemPropertyUtil.getInt("com.ibm.vm.bitmode", 0);
        if (i5 > 0) {
            logger.debug("-Dio.netty.bitMode: {} (com.ibm.vm.bitmode)", Integer.valueOf(i5));
            return i5;
        }
        String str = SystemPropertyUtil.get("os.arch", "");
        Locale locale = Locale.US;
        String trim = str.toLowerCase(locale).trim();
        if ("amd64".equals(trim) || "x86_64".equals(trim)) {
            i5 = 64;
        } else if ("i386".equals(trim) || "i486".equals(trim) || "i586".equals(trim) || "i686".equals(trim)) {
            i5 = 32;
        }
        if (i5 > 0) {
            logger.debug("-Dio.netty.bitMode: {} (os.arch: {})", Integer.valueOf(i5), trim);
        }
        Matcher matcher = Pattern.compile("([1-9][0-9]+)-?bit").matcher(SystemPropertyUtil.get("java.vm.name", "").toLowerCase(locale));
        if (matcher.find()) {
            return Integer.parseInt(matcher.group(1));
        }
        return 64;
    }

    private static long byteArrayBaseOffset0() {
        if (hasUnsafe()) {
            return PlatformDependent0.byteArrayBaseOffset();
        }
        return -1L;
    }

    public static boolean canEnableTcpNoDelayByDefault() {
        return CAN_ENABLE_TCP_NODELAY_BY_DEFAULT;
    }

    public static void copyMemory(long j4, long j5, long j6) {
        PlatformDependent0.copyMemory(j4, j5, j6);
    }

    private static void decrementMemoryCounter(int i2) {
        AtomicLong atomicLong = DIRECT_MEMORY_COUNTER;
        if (atomicLong != null) {
            atomicLong.addAndGet(-i2);
        }
    }

    public static ByteBuffer directBuffer(long j4, int i2) {
        if (PlatformDependent0.hasDirectBufferNoCleanerConstructor()) {
            return PlatformDependent0.newDirectBuffer(j4, i2);
        }
        throw new UnsupportedOperationException("sun.misc.Unsafe or java.nio.DirectByteBuffer.<init>(long, int) not available");
    }

    public static long directBufferAddress(ByteBuffer byteBuffer) {
        return PlatformDependent0.directBufferAddress(byteBuffer);
    }

    public static boolean directBufferPreferred() {
        return DIRECT_BUFFER_PREFERRED;
    }

    public static boolean equals(byte[] bArr, int i2, byte[] bArr2, int i4, int i5) {
        if (hasUnsafe() && PlatformDependent0.unalignedAccess()) {
            return PlatformDependent0.equals(bArr, i2, bArr2, i4, i5);
        }
        return equalsSafe(bArr, i2, bArr2, i4, i5);
    }

    public static int equalsConstantTime(byte[] bArr, int i2, byte[] bArr2, int i4, int i5) {
        if (hasUnsafe() && PlatformDependent0.unalignedAccess()) {
            return PlatformDependent0.equalsConstantTime(bArr, i2, bArr2, i4, i5);
        }
        return ConstantTimeUtils.equalsConstantTime(bArr, i2, bArr2, i4, i5);
    }

    private static boolean equalsSafe(byte[] bArr, int i2, byte[] bArr2, int i4, int i5) {
        int i6 = i5 + i2;
        while (i2 < i6) {
            if (bArr[i2] != bArr2[i4]) {
                return false;
            }
            i2++;
            i4++;
        }
        return true;
    }

    public static void freeDirectBuffer(ByteBuffer byteBuffer) {
        CLEANER.freeDirectBuffer(byteBuffer);
    }

    public static void freeDirectNoCleaner(ByteBuffer byteBuffer) {
        int capacity = byteBuffer.capacity();
        PlatformDependent0.freeMemory(PlatformDependent0.directBufferAddress(byteBuffer));
        decrementMemoryCounter(capacity);
    }

    public static void freeMemory(long j4) {
        PlatformDependent0.freeMemory(j4);
    }

    public static byte getByte(long j4) {
        return PlatformDependent0.getByte(j4);
    }

    public static ClassLoader getClassLoader(Class<?> cls) {
        return PlatformDependent0.getClassLoader(cls);
    }

    public static ClassLoader getContextClassLoader() {
        return PlatformDependent0.getContextClassLoader();
    }

    public static int getInt(Object obj, long j4) {
        return PlatformDependent0.getInt(obj, j4);
    }

    private static int getIntSafe(byte[] bArr, int i2) {
        int i4;
        int i5;
        if (BIG_ENDIAN_NATIVE_ORDER) {
            i4 = (bArr[i2] << BinaryMemcacheOpcodes.FLUSHQ) | ((bArr[i2 + 1] & 255) << 16) | ((bArr[i2 + 2] & 255) << 8);
            i5 = bArr[i2 + 3] & 255;
        } else {
            i4 = (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16);
            i5 = bArr[i2 + 3] << BinaryMemcacheOpcodes.FLUSHQ;
        }
        return i5 | i4;
    }

    public static long getLong(long j4) {
        return PlatformDependent0.getLong(j4);
    }

    private static long getLongSafe(byte[] bArr, int i2) {
        if (BIG_ENDIAN_NATIVE_ORDER) {
            return (bArr[i2 + 7] & 255) | (bArr[i2] << 56) | ((bArr[i2 + 1] & 255) << 48) | ((bArr[i2 + 2] & 255) << 40) | ((bArr[i2 + 3] & 255) << 32) | ((bArr[i2 + 4] & 255) << 24) | ((bArr[i2 + 5] & 255) << 16) | ((bArr[i2 + 6] & 255) << 8);
        }
        long j4 = ((bArr[i2 + 4] & 255) << 32) | ((bArr[i2 + 2] & 255) << 16) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 3] & 255) << 24) | ((bArr[i2 + 5] & 255) << 40);
        return (bArr[i2 + 7] << 56) | ((bArr[i2 + 6] & 255) << 48) | j4;
    }

    public static Object getObject(Object obj, long j4) {
        return PlatformDependent0.getObject(obj, j4);
    }

    public static short getShort(long j4) {
        return PlatformDependent0.getShort(j4);
    }

    private static short getShortSafe(byte[] bArr, int i2) {
        int i4;
        int i5;
        if (BIG_ENDIAN_NATIVE_ORDER) {
            i4 = bArr[i2] << 8;
            i5 = bArr[i2 + 1] & 255;
        } else {
            i4 = bArr[i2] & 255;
            i5 = bArr[i2 + 1] << 8;
        }
        return (short) (i5 | i4);
    }

    public static ClassLoader getSystemClassLoader() {
        return PlatformDependent0.getSystemClassLoader();
    }

    public static Throwable getUnsafeUnavailabilityCause() {
        return UNSAFE_UNAVAILABILITY_CAUSE;
    }

    public static boolean hasDirectBufferNoCleanerConstructor() {
        return PlatformDependent0.hasDirectBufferNoCleanerConstructor();
    }

    public static boolean hasUnsafe() {
        return UNSAFE_UNAVAILABILITY_CAUSE == null;
    }

    public static int hashCodeAscii(byte[] bArr, int i2, int i4) {
        if (hasUnsafe() && PlatformDependent0.unalignedAccess()) {
            return PlatformDependent0.hashCodeAscii(bArr, i2, i4);
        }
        return hashCodeAsciiSafe(bArr, i2, i4);
    }

    private static int hashCodeAsciiCompute(CharSequence charSequence, int i2, int i4) {
        int hashCodeAsciiSanitizeInt;
        int hashCodeAsciiSanitizeInt2;
        if (BIG_ENDIAN_NATIVE_ORDER) {
            hashCodeAsciiSanitizeInt = (i4 * (-862048943)) + (hashCodeAsciiSanitizeInt(charSequence, i2 + 4) * 461845907);
            hashCodeAsciiSanitizeInt2 = hashCodeAsciiSanitizeInt(charSequence, i2);
        } else {
            hashCodeAsciiSanitizeInt = (i4 * (-862048943)) + (hashCodeAsciiSanitizeInt(charSequence, i2) * 461845907);
            hashCodeAsciiSanitizeInt2 = hashCodeAsciiSanitizeInt(charSequence, i2 + 4);
        }
        return hashCodeAsciiSanitizeInt + hashCodeAsciiSanitizeInt2;
    }

    static int hashCodeAsciiSafe(byte[] bArr, int i2, int i4) {
        int i5;
        int hashCodeAsciiSanitize;
        int i6 = i4 & 7;
        int i7 = i2 + i6;
        int i8 = -1028477387;
        for (int i9 = (i2 - 8) + i4; i9 >= i7; i9 -= 8) {
            i8 = PlatformDependent0.hashCodeAsciiCompute(getLongSafe(bArr, i9), i8);
        }
        switch (i6) {
            case 1:
                i5 = i8 * (-862048943);
                hashCodeAsciiSanitize = PlatformDependent0.hashCodeAsciiSanitize(bArr[i2]);
                break;
            case 2:
                i5 = i8 * (-862048943);
                hashCodeAsciiSanitize = PlatformDependent0.hashCodeAsciiSanitize(getShortSafe(bArr, i2));
                break;
            case 3:
                i5 = ((i8 * (-862048943)) + PlatformDependent0.hashCodeAsciiSanitize(bArr[i2])) * 461845907;
                hashCodeAsciiSanitize = PlatformDependent0.hashCodeAsciiSanitize(getShortSafe(bArr, i2 + 1));
                break;
            case 4:
                i5 = i8 * (-862048943);
                hashCodeAsciiSanitize = PlatformDependent0.hashCodeAsciiSanitize(getIntSafe(bArr, i2));
                break;
            case 5:
                i5 = ((i8 * (-862048943)) + PlatformDependent0.hashCodeAsciiSanitize(bArr[i2])) * 461845907;
                hashCodeAsciiSanitize = PlatformDependent0.hashCodeAsciiSanitize(getIntSafe(bArr, i2 + 1));
                break;
            case 6:
                i5 = ((i8 * (-862048943)) + PlatformDependent0.hashCodeAsciiSanitize(getShortSafe(bArr, i2))) * 461845907;
                hashCodeAsciiSanitize = PlatformDependent0.hashCodeAsciiSanitize(getIntSafe(bArr, i2 + 2));
                break;
            case 7:
                i5 = ((((i8 * (-862048943)) + PlatformDependent0.hashCodeAsciiSanitize(bArr[i2])) * 461845907) + PlatformDependent0.hashCodeAsciiSanitize(getShortSafe(bArr, i2 + 1))) * (-862048943);
                hashCodeAsciiSanitize = PlatformDependent0.hashCodeAsciiSanitize(getIntSafe(bArr, i2 + 3));
                break;
            default:
                return i8;
        }
        return i5 + hashCodeAsciiSanitize;
    }

    private static int hashCodeAsciiSanitizeByte(char c4) {
        return c4 & 31;
    }

    private static int hashCodeAsciiSanitizeInt(CharSequence charSequence, int i2) {
        int charAt;
        int charAt2;
        if (BIG_ENDIAN_NATIVE_ORDER) {
            charAt = (charSequence.charAt(i2 + 3) & 31) | ((charSequence.charAt(i2 + 2) & 31) << 8) | ((charSequence.charAt(i2 + 1) & 31) << 16);
            charAt2 = (charSequence.charAt(i2) & 31) << 24;
        } else {
            charAt = ((charSequence.charAt(i2 + 3) & 31) << 24) | ((charSequence.charAt(i2 + 2) & 31) << 16) | ((charSequence.charAt(i2 + 1) & 31) << 8);
            charAt2 = charSequence.charAt(i2) & 31;
        }
        return charAt2 | charAt;
    }

    private static int hashCodeAsciiSanitizeShort(CharSequence charSequence, int i2) {
        int charAt;
        int charAt2;
        if (BIG_ENDIAN_NATIVE_ORDER) {
            charAt = charSequence.charAt(i2 + 1) & 31;
            charAt2 = (charSequence.charAt(i2) & 31) << 8;
        } else {
            charAt = (charSequence.charAt(i2 + 1) & 31) << 8;
            charAt2 = charSequence.charAt(i2) & 31;
        }
        return charAt2 | charAt;
    }

    private static void incrementMemoryCounter(int i2) {
        long j4;
        AtomicLong atomicLong = DIRECT_MEMORY_COUNTER;
        if (atomicLong != null) {
            long addAndGet = atomicLong.addAndGet(i2);
            long j5 = DIRECT_MEMORY_LIMIT;
            if (addAndGet <= j5) {
                return;
            }
            atomicLong.addAndGet(-i2);
            throw new OutOfDirectMemoryError("failed to allocate " + i2 + " byte(s) of direct memory (used: " + (addAndGet - j4) + ", max: " + j5 + ')');
        }
    }

    public static boolean isAndroid() {
        return PlatformDependent0.isAndroid();
    }

    public static boolean isIkvmDotNet() {
        return IS_IVKVM_DOT_NET;
    }

    private static boolean isIkvmDotNet0() {
        return SystemPropertyUtil.get("java.vm.name", "").toUpperCase(Locale.US).equals("IKVM.NET");
    }

    public static boolean isJ9Jvm() {
        return IS_J9_JVM;
    }

    private static boolean isJ9Jvm0() {
        String lowerCase = SystemPropertyUtil.get("java.vm.name", "").toLowerCase();
        return lowerCase.startsWith("ibm j9") || lowerCase.startsWith("eclipse openj9");
    }

    public static boolean isOsx() {
        return IS_OSX;
    }

    private static boolean isOsx0() {
        String replaceAll = SystemPropertyUtil.get("os.name", "").toLowerCase(Locale.US).replaceAll("[^a-z0-9]+", "");
        boolean z3 = replaceAll.startsWith("macosx") || replaceAll.startsWith("osx");
        if (z3) {
            logger.debug("Platform: MacOS");
        }
        return z3;
    }

    public static boolean isUnaligned() {
        return PlatformDependent0.isUnaligned();
    }

    public static boolean isWindows() {
        return IS_WINDOWS;
    }

    private static boolean isWindows0() {
        boolean contains = SystemPropertyUtil.get("os.name", "").toLowerCase(Locale.US).contains("win");
        if (contains) {
            logger.debug("Platform: Windows");
        }
        return contains;
    }

    public static boolean isZero(byte[] bArr, int i2, int i4) {
        if (hasUnsafe() && PlatformDependent0.unalignedAccess()) {
            return PlatformDependent0.isZero(bArr, i2, i4);
        }
        return isZeroSafe(bArr, i2, i4);
    }

    private static boolean isZeroSafe(byte[] bArr, int i2, int i4) {
        int i5 = i4 + i2;
        while (i2 < i5) {
            if (bArr[i2] != 0) {
                return false;
            }
            i2++;
        }
        return true;
    }

    public static int javaVersion() {
        return PlatformDependent0.javaVersion();
    }

    public static long maxDirectMemory() {
        return DIRECT_MEMORY_LIMIT;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x008d, code lost:
        r6 = java.lang.Long.parseLong(r8.group(1));
        r0 = r8.group(2).charAt(0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00a0, code lost:
        if (r0 == 'G') goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00a4, code lost:
        if (r0 == 'K') goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00a8, code lost:
        if (r0 == 'M') goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00ac, code lost:
        if (r0 == 'g') goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00b0, code lost:
        if (r0 == 'k') goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00b4, code lost:
        if (r0 == 'm') goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00b7, code lost:
        r3 = android.support.v4.media.session.PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00bb, code lost:
        r3 = 1024;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00be, code lost:
        r3 = tv.danmaku.ijk.media.player.IjkMediaMeta.AV_CH_STEREO_RIGHT;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00c1, code lost:
        r6 = r6 * r3;
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0046 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0047 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static long maxDirectMemory0() {
        /*
            r0 = 0
            r1 = 0
            r3 = 1
            r4 = 0
            java.lang.ClassLoader r5 = getSystemClassLoader()     // Catch: java.lang.Throwable -> L40
            java.lang.String r6 = "java.vm.name"
            java.lang.String r7 = ""
            java.lang.String r6 = io.netty.util.internal.SystemPropertyUtil.get(r6, r7)     // Catch: java.lang.Throwable -> L41
            java.lang.String r6 = r6.toLowerCase()     // Catch: java.lang.Throwable -> L41
            java.lang.String r7 = "ibm j9"
            boolean r7 = r6.startsWith(r7)     // Catch: java.lang.Throwable -> L41
            if (r7 != 0) goto L41
            java.lang.String r7 = "eclipse openj9"
            boolean r6 = r6.startsWith(r7)     // Catch: java.lang.Throwable -> L41
            if (r6 != 0) goto L41
            java.lang.String r6 = "sun.misc.VM"
            java.lang.Class r6 = java.lang.Class.forName(r6, r3, r5)     // Catch: java.lang.Throwable -> L41
            java.lang.String r7 = "maxDirectMemory"
            java.lang.Class[] r8 = new java.lang.Class[r4]     // Catch: java.lang.Throwable -> L41
            java.lang.reflect.Method r6 = r6.getDeclaredMethod(r7, r8)     // Catch: java.lang.Throwable -> L41
            java.lang.Object[] r7 = new java.lang.Object[r4]     // Catch: java.lang.Throwable -> L41
            java.lang.Object r6 = r6.invoke(r0, r7)     // Catch: java.lang.Throwable -> L41
            java.lang.Number r6 = (java.lang.Number) r6     // Catch: java.lang.Throwable -> L41
            long r6 = r6.longValue()     // Catch: java.lang.Throwable -> L41
            goto L42
        L40:
            r5 = r0
        L41:
            r6 = r1
        L42:
            int r8 = (r6 > r1 ? 1 : (r6 == r1 ? 0 : -1))
            if (r8 <= 0) goto L47
            return r6
        L47:
            java.lang.String r8 = "java.lang.management.ManagementFactory"
            java.lang.Class r8 = java.lang.Class.forName(r8, r3, r5)     // Catch: java.lang.Throwable -> Lc4
            java.lang.String r9 = "java.lang.management.RuntimeMXBean"
            java.lang.Class r5 = java.lang.Class.forName(r9, r3, r5)     // Catch: java.lang.Throwable -> Lc4
            java.lang.String r9 = "getRuntimeMXBean"
            java.lang.Class[] r10 = new java.lang.Class[r4]     // Catch: java.lang.Throwable -> Lc4
            java.lang.reflect.Method r8 = r8.getDeclaredMethod(r9, r10)     // Catch: java.lang.Throwable -> Lc4
            java.lang.Object[] r9 = new java.lang.Object[r4]     // Catch: java.lang.Throwable -> Lc4
            java.lang.Object r0 = r8.invoke(r0, r9)     // Catch: java.lang.Throwable -> Lc4
            java.lang.String r8 = "getInputArguments"
            java.lang.Class[] r9 = new java.lang.Class[r4]     // Catch: java.lang.Throwable -> Lc4
            java.lang.reflect.Method r5 = r5.getDeclaredMethod(r8, r9)     // Catch: java.lang.Throwable -> Lc4
            java.lang.Object[] r8 = new java.lang.Object[r4]     // Catch: java.lang.Throwable -> Lc4
            java.lang.Object r0 = r5.invoke(r0, r8)     // Catch: java.lang.Throwable -> Lc4
            java.util.List r0 = (java.util.List) r0     // Catch: java.lang.Throwable -> Lc4
            int r5 = r0.size()     // Catch: java.lang.Throwable -> Lc4
            int r5 = r5 - r3
        L76:
            if (r5 < 0) goto Lc5
            java.util.regex.Pattern r8 = io.netty.util.internal.PlatformDependent.MAX_DIRECT_MEMORY_SIZE_ARG_PATTERN     // Catch: java.lang.Throwable -> Lc4
            java.lang.Object r9 = r0.get(r5)     // Catch: java.lang.Throwable -> Lc4
            java.lang.CharSequence r9 = (java.lang.CharSequence) r9     // Catch: java.lang.Throwable -> Lc4
            java.util.regex.Matcher r8 = r8.matcher(r9)     // Catch: java.lang.Throwable -> Lc4
            boolean r9 = r8.matches()     // Catch: java.lang.Throwable -> Lc4
            if (r9 != 0) goto L8d
            int r5 = r5 + (-1)
            goto L76
        L8d:
            java.lang.String r0 = r8.group(r3)     // Catch: java.lang.Throwable -> Lc4
            long r6 = java.lang.Long.parseLong(r0)     // Catch: java.lang.Throwable -> Lc4
            r0 = 2
            java.lang.String r0 = r8.group(r0)     // Catch: java.lang.Throwable -> Lc4
            char r0 = r0.charAt(r4)     // Catch: java.lang.Throwable -> Lc4
            r3 = 71
            if (r0 == r3) goto Lbe
            r3 = 75
            if (r0 == r3) goto Lbb
            r3 = 77
            if (r0 == r3) goto Lb7
            r3 = 103(0x67, float:1.44E-43)
            if (r0 == r3) goto Lbe
            r3 = 107(0x6b, float:1.5E-43)
            if (r0 == r3) goto Lbb
            r3 = 109(0x6d, float:1.53E-43)
            if (r0 == r3) goto Lb7
            goto Lc5
        Lb7:
            r3 = 1048576(0x100000, double:5.180654E-318)
            goto Lc1
        Lbb:
            r3 = 1024(0x400, double:5.06E-321)
            goto Lc1
        Lbe:
            r3 = 1073741824(0x40000000, double:5.304989477E-315)
        Lc1:
            long r6 = r6 * r3
            goto Lc5
        Lc4:
        Lc5:
            int r0 = (r6 > r1 ? 1 : (r6 == r1 ? 0 : -1))
            if (r0 > 0) goto Ldd
            java.lang.Runtime r0 = java.lang.Runtime.getRuntime()
            long r6 = r0.maxMemory()
            io.netty.util.internal.logging.InternalLogger r0 = io.netty.util.internal.PlatformDependent.logger
            java.lang.Long r1 = java.lang.Long.valueOf(r6)
            java.lang.String r2 = "maxDirectMemory: {} bytes (maybe)"
            r0.debug(r2, r1)
            goto Le8
        Ldd:
            io.netty.util.internal.logging.InternalLogger r0 = io.netty.util.internal.PlatformDependent.logger
            java.lang.Long r1 = java.lang.Long.valueOf(r6)
            java.lang.String r2 = "maxDirectMemory: {} bytes"
            r0.debug(r2, r1)
        Le8:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: io.netty.util.internal.PlatformDependent.maxDirectMemory0():long");
    }

    public static boolean maybeSuperUser() {
        return MAYBE_SUPER_USER;
    }

    private static boolean maybeSuperUser0() {
        String str = SystemPropertyUtil.get("user.name");
        if (isWindows()) {
            return "Administrator".equals(str);
        }
        return "root".equals(str) || "toor".equals(str);
    }

    @SuppressJava6Requirement(reason = "Usage guarded by java version check")
    public static <C> Deque<C> newConcurrentDeque() {
        if (javaVersion() < 7) {
            return new LinkedBlockingDeque();
        }
        return new ConcurrentLinkedDeque();
    }

    public static <K, V> ConcurrentMap<K, V> newConcurrentHashMap() {
        return new ConcurrentHashMap();
    }

    public static <T> Queue<T> newFixedMpscQueue(int i2) {
        return hasUnsafe() ? new MpscArrayQueue(i2) : new MpscAtomicArrayQueue(i2);
    }

    public static LongCounter newLongCounter() {
        if (javaVersion() >= 8) {
            return new LongAdderCounter();
        }
        return new AtomicLongCounter();
    }

    public static <T> Queue<T> newMpscQueue() {
        return Mpsc.newMpscQueue();
    }

    public static <T> Queue<T> newSpscQueue() {
        return hasUnsafe() ? new SpscLinkedQueue() : new SpscLinkedAtomicQueue();
    }

    private static String normalize(String str) {
        return str.toLowerCase(Locale.US).replaceAll("[^a-z0-9]+", "");
    }

    private static String normalizeArch(String str) {
        String normalize = normalize(str);
        return normalize.matches("^(x8664|amd64|ia32e|em64t|x64)$") ? "x86_64" : normalize.matches("^(x8632|x86|i[3-6]86|ia32|x32)$") ? "x86_32" : normalize.matches("^(ia64|itanium64)$") ? "itanium_64" : normalize.matches("^(sparc|sparc32)$") ? "sparc_32" : normalize.matches("^(sparcv9|sparc64)$") ? "sparc_64" : normalize.matches("^(arm|arm32)$") ? "arm_32" : "aarch64".equals(normalize) ? "aarch_64" : normalize.matches("^(ppc|ppc32)$") ? "ppc_32" : "ppc64".equals(normalize) ? "ppc_64" : "ppc64le".equals(normalize) ? "ppcle_64" : "s390".equals(normalize) ? "s390_32" : "s390x".equals(normalize) ? "s390_64" : "unknown";
    }

    private static String normalizeOs(String str) {
        String normalize = normalize(str);
        if (normalize.startsWith("aix")) {
            return "aix";
        }
        if (normalize.startsWith("hpux")) {
            return "hpux";
        }
        if (!normalize.startsWith("os400") || (normalize.length() > 5 && Character.isDigit(normalize.charAt(5)))) {
            if (normalize.startsWith("linux")) {
                return "linux";
            }
            String str2 = "osx";
            if (!normalize.startsWith("macosx") && !normalize.startsWith("osx")) {
                if (normalize.startsWith("freebsd")) {
                    return "freebsd";
                }
                if (normalize.startsWith("openbsd")) {
                    return "openbsd";
                }
                if (normalize.startsWith("netbsd")) {
                    return "netbsd";
                }
                str2 = "sunos";
                if (!normalize.startsWith("solaris") && !normalize.startsWith("sunos")) {
                    return normalize.startsWith("windows") ? "windows" : "unknown";
                }
            }
            return str2;
        }
        return "os400";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String normalizeOsReleaseVariableValue(String str) {
        return str.trim().replaceAll("[\"']", "");
    }

    public static String normalizedArch() {
        return NORMALIZED_ARCH;
    }

    public static Set<String> normalizedLinuxClassifiers() {
        return LINUX_OS_CLASSIFIERS;
    }

    public static String normalizedOs() {
        return NORMALIZED_OS;
    }

    public static long objectFieldOffset(Field field) {
        return PlatformDependent0.objectFieldOffset(field);
    }

    public static void putByte(long j4, byte b4) {
        PlatformDependent0.putByte(j4, b4);
    }

    public static void putInt(long j4, int i2) {
        PlatformDependent0.putInt(j4, i2);
    }

    public static void putLong(long j4, long j5) {
        PlatformDependent0.putLong(j4, j5);
    }

    public static void putObject(Object obj, long j4, Object obj2) {
        PlatformDependent0.putObject(obj, j4, obj2);
    }

    public static void putShort(long j4, short s3) {
        PlatformDependent0.putShort(j4, s3);
    }

    public static ByteBuffer reallocateDirectNoCleaner(ByteBuffer byteBuffer, int i2) {
        int capacity = i2 - byteBuffer.capacity();
        incrementMemoryCounter(capacity);
        try {
            return PlatformDependent0.reallocateDirectNoCleaner(byteBuffer, i2);
        } catch (Throwable th) {
            decrementMemoryCounter(capacity);
            throwException(th);
            return null;
        }
    }

    public static long reallocateMemory(long j4, long j5) {
        return PlatformDependent0.reallocateMemory(j4, j5);
    }

    public static void setMemory(byte[] bArr, int i2, long j4, byte b4) {
        PlatformDependent0.setMemory(bArr, BYTE_ARRAY_BASE_OFFSET + i2, j4, b4);
    }

    public static Random threadLocalRandom() {
        return RANDOM_PROVIDER.current();
    }

    public static void throwException(Throwable th) {
        if (hasUnsafe()) {
            PlatformDependent0.throwException(th);
        } else {
            throwException0(th);
        }
    }

    private static <E extends Throwable> void throwException0(Throwable th) throws Throwable {
        throw th;
    }

    public static File tmpdir() {
        return TMPDIR;
    }

    private static File tmpdir0() {
        File file;
        File directory;
        try {
            directory = toDirectory(SystemPropertyUtil.get("io.netty.tmpdir"));
        } catch (Throwable unused) {
        }
        if (directory != null) {
            logger.debug("-Dio.netty.tmpdir: {}", directory);
            return directory;
        }
        File directory2 = toDirectory(SystemPropertyUtil.get("java.io.tmpdir"));
        if (directory2 != null) {
            logger.debug("-Dio.netty.tmpdir: {} (java.io.tmpdir)", directory2);
            return directory2;
        }
        if (isWindows()) {
            File directory3 = toDirectory(System.getenv("TEMP"));
            if (directory3 != null) {
                logger.debug("-Dio.netty.tmpdir: {} (%TEMP%)", directory3);
                return directory3;
            }
            String str = System.getenv("USERPROFILE");
            if (str != null) {
                File directory4 = toDirectory(str + "\\AppData\\Local\\Temp");
                if (directory4 != null) {
                    logger.debug("-Dio.netty.tmpdir: {} (%USERPROFILE%\\AppData\\Local\\Temp)", directory4);
                    return directory4;
                }
                File directory5 = toDirectory(str + "\\Local Settings\\Temp");
                if (directory5 != null) {
                    logger.debug("-Dio.netty.tmpdir: {} (%USERPROFILE%\\Local Settings\\Temp)", directory5);
                    return directory5;
                }
            }
        } else {
            File directory6 = toDirectory(System.getenv("TMPDIR"));
            if (directory6 != null) {
                logger.debug("-Dio.netty.tmpdir: {} ($TMPDIR)", directory6);
                return directory6;
            }
        }
        if (isWindows()) {
            file = new File("C:\\Windows\\Temp");
        } else {
            file = new File("/tmp");
        }
        logger.warn("Failed to get the temporary directory; falling back to: {}", file);
        return file;
    }

    private static File toDirectory(String str) {
        if (str == null) {
            return null;
        }
        File file = new File(str);
        file.mkdirs();
        if (file.isDirectory()) {
            try {
                return file.getAbsoluteFile();
            } catch (Exception unused) {
                return file;
            }
        }
        return null;
    }

    private static Throwable unsafeUnavailabilityCause0() {
        if (isAndroid()) {
            logger.debug("sun.misc.Unsafe: unavailable (Android)");
            return new UnsupportedOperationException("sun.misc.Unsafe: unavailable (Android)");
        } else if (isIkvmDotNet()) {
            logger.debug("sun.misc.Unsafe: unavailable (IKVM.NET)");
            return new UnsupportedOperationException("sun.misc.Unsafe: unavailable (IKVM.NET)");
        } else {
            Throwable unsafeUnavailabilityCause = PlatformDependent0.getUnsafeUnavailabilityCause();
            if (unsafeUnavailabilityCause != null) {
                return unsafeUnavailabilityCause;
            }
            try {
                boolean hasUnsafe = PlatformDependent0.hasUnsafe();
                logger.debug("sun.misc.Unsafe: {}", hasUnsafe ? "available" : "unavailable");
                if (hasUnsafe) {
                    return null;
                }
                return PlatformDependent0.getUnsafeUnavailabilityCause();
            } catch (Throwable th) {
                logger.trace("Could not determine if Unsafe is available", th);
                return new UnsupportedOperationException("Could not determine if Unsafe is available", th);
            }
        }
    }

    public static boolean useDirectBufferNoCleaner() {
        return USE_DIRECT_BUFFER_NO_CLEANER;
    }

    public static long usedDirectMemory() {
        AtomicLong atomicLong = DIRECT_MEMORY_COUNTER;
        if (atomicLong != null) {
            return atomicLong.get();
        }
        return -1L;
    }

    /* loaded from: classes5.dex */
    private static final class Mpsc {
        private static final boolean USE_MPSC_CHUNKED_ARRAY_QUEUE;

        static {
            if ((PlatformDependent.hasUnsafe() ? AccessController.doPrivileged(new PrivilegedAction<Object>() { // from class: io.netty.util.internal.PlatformDependent.Mpsc.1
                @Override // java.security.PrivilegedAction
                public Object run() {
                    return UnsafeAccess.UNSAFE;
                }
            }) : null) == null) {
                PlatformDependent.logger.debug("org.jctools-core.MpscChunkedArrayQueue: unavailable");
                USE_MPSC_CHUNKED_ARRAY_QUEUE = false;
                return;
            }
            PlatformDependent.logger.debug("org.jctools-core.MpscChunkedArrayQueue: available");
            USE_MPSC_CHUNKED_ARRAY_QUEUE = true;
        }

        private Mpsc() {
        }

        static <T> Queue<T> newMpscQueue(int i2) {
            int max = Math.max(Math.min(i2, 1073741824), 2048);
            return USE_MPSC_CHUNKED_ARRAY_QUEUE ? new MpscChunkedArrayQueue(1024, max) : new MpscGrowableAtomicArrayQueue(1024, max);
        }

        static <T> Queue<T> newMpscQueue() {
            return USE_MPSC_CHUNKED_ARRAY_QUEUE ? new MpscUnboundedArrayQueue(1024) : new MpscUnboundedAtomicArrayQueue(1024);
        }
    }

    public static void copyMemory(byte[] bArr, int i2, long j4, long j5) {
        PlatformDependent0.copyMemory(bArr, BYTE_ARRAY_BASE_OFFSET + i2, null, j4, j5);
    }

    public static byte getByte(byte[] bArr, int i2) {
        return PlatformDependent0.getByte(bArr, i2);
    }

    public static int getInt(long j4) {
        return PlatformDependent0.getInt(j4);
    }

    public static long getLong(byte[] bArr, int i2) {
        return PlatformDependent0.getLong(bArr, i2);
    }

    public static short getShort(byte[] bArr, int i2) {
        return PlatformDependent0.getShort(bArr, i2);
    }

    public static <K, V> ConcurrentMap<K, V> newConcurrentHashMap(int i2) {
        return new ConcurrentHashMap(i2);
    }

    public static <T> Queue<T> newMpscQueue(int i2) {
        return Mpsc.newMpscQueue(i2);
    }

    public static void putByte(byte[] bArr, int i2, byte b4) {
        PlatformDependent0.putByte(bArr, i2, b4);
    }

    public static void putInt(byte[] bArr, int i2, int i4) {
        PlatformDependent0.putInt(bArr, i2, i4);
    }

    public static void putLong(byte[] bArr, int i2, long j4) {
        PlatformDependent0.putLong(bArr, i2, j4);
    }

    public static void putShort(byte[] bArr, int i2, short s3) {
        PlatformDependent0.putShort(bArr, i2, s3);
    }

    public static void setMemory(long j4, long j5, byte b4) {
        PlatformDependent0.setMemory(j4, j5, b4);
    }

    public static void copyMemory(long j4, byte[] bArr, int i2, long j5) {
        PlatformDependent0.copyMemory(null, j4, bArr, BYTE_ARRAY_BASE_OFFSET + i2, j5);
    }

    public static int getInt(byte[] bArr, int i2) {
        return PlatformDependent0.getInt(bArr, i2);
    }

    public static <K, V> ConcurrentMap<K, V> newConcurrentHashMap(int i2, float f4) {
        return new ConcurrentHashMap(i2, f4);
    }

    public static int hashCodeAscii(CharSequence charSequence) {
        int i2;
        int length = charSequence.length();
        int i4 = length & 7;
        int i5 = -1028477387;
        if (length >= 32) {
            for (int i6 = length - 8; i6 >= i4; i6 -= 8) {
                i5 = hashCodeAsciiCompute(charSequence, i6, i5);
            }
        } else if (length >= 8) {
            i5 = hashCodeAsciiCompute(charSequence, length - 8, -1028477387);
            if (length >= 16) {
                i5 = hashCodeAsciiCompute(charSequence, length - 16, i5);
                if (length >= 24) {
                    i5 = hashCodeAsciiCompute(charSequence, length - 24, i5);
                }
            }
        }
        if (i4 == 0) {
            return i5;
        }
        if (((i4 != 2) && (i4 != 4)) && (i4 != 6)) {
            i5 = (i5 * (-862048943)) + hashCodeAsciiSanitizeByte(charSequence.charAt(0));
            i2 = 1;
        } else {
            i2 = 0;
        }
        if ((i4 != 1) & (i4 != 4) & (i4 != 5)) {
            i5 = (i5 * (i2 == 0 ? -862048943 : 461845907)) + PlatformDependent0.hashCodeAsciiSanitize(hashCodeAsciiSanitizeShort(charSequence, i2));
            i2 += 2;
        }
        if (i4 >= 4) {
            return (i5 * (((i2 == 0) || (i2 == 3)) ? -862048943 : 461845907)) + hashCodeAsciiSanitizeInt(charSequence, i2);
        }
        return i5;
    }

    public static <K, V> ConcurrentMap<K, V> newConcurrentHashMap(int i2, float f4, int i4) {
        return new ConcurrentHashMap(i2, f4, i4);
    }

    public static <K, V> ConcurrentMap<K, V> newConcurrentHashMap(Map<? extends K, ? extends V> map) {
        return new ConcurrentHashMap(map);
    }
}
