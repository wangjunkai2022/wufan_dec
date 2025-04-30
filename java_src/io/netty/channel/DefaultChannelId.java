package io.netty.channel;

import io.netty.buffer.ByteBufUtil;
import io.netty.util.internal.MacAddressUtil;
import io.netty.util.internal.PlatformDependent;
import io.netty.util.internal.SystemPropertyUtil;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes5.dex */
public final class DefaultChannelId implements ChannelId {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final byte[] MACHINE_ID;
    private static final int PROCESS_ID;
    private static final int PROCESS_ID_LEN = 4;
    private static final int RANDOM_LEN = 4;
    private static final int SEQUENCE_LEN = 4;
    private static final int TIMESTAMP_LEN = 8;
    private static final InternalLogger logger = InternalLoggerFactory.getInstance(DefaultChannelId.class);
    private static final AtomicInteger nextSequence = new AtomicInteger();
    private static final long serialVersionUID = 3884076183504074063L;
    private final byte[] data;
    private final int hashCode;
    private transient String longValue;
    private transient String shortValue;

    static {
        int i2;
        String str = SystemPropertyUtil.get("io.netty.processId");
        int i4 = -1;
        if (str != null) {
            try {
                i2 = Integer.parseInt(str);
            } catch (NumberFormatException unused) {
                i2 = -1;
            }
            if (i2 < 0) {
                logger.warn("-Dio.netty.processId: {} (malformed)", str);
            } else {
                InternalLogger internalLogger = logger;
                if (internalLogger.isDebugEnabled()) {
                    internalLogger.debug("-Dio.netty.processId: {} (user-set)", Integer.valueOf(i2));
                }
                i4 = i2;
            }
        }
        if (i4 < 0) {
            i4 = defaultProcessId();
            InternalLogger internalLogger2 = logger;
            if (internalLogger2.isDebugEnabled()) {
                internalLogger2.debug("-Dio.netty.processId: {} (auto-detected)", Integer.valueOf(i4));
            }
        }
        PROCESS_ID = i4;
        byte[] bArr = null;
        String str2 = SystemPropertyUtil.get("io.netty.machineId");
        if (str2 != null) {
            try {
                bArr = MacAddressUtil.parseMAC(str2);
            } catch (Exception e4) {
                logger.warn("-Dio.netty.machineId: {} (malformed)", str2, e4);
            }
            if (bArr != null) {
                logger.debug("-Dio.netty.machineId: {} (user-set)", str2);
            }
        }
        if (bArr == null) {
            bArr = MacAddressUtil.defaultMachineId();
            InternalLogger internalLogger3 = logger;
            if (internalLogger3.isDebugEnabled()) {
                internalLogger3.debug("-Dio.netty.machineId: {} (auto-detected)", MacAddressUtil.formatAddress(bArr));
            }
        }
        MACHINE_ID = bArr;
    }

    private DefaultChannelId() {
        byte[] bArr = MACHINE_ID;
        byte[] bArr2 = new byte[bArr.length + 4 + 4 + 8 + 4];
        this.data = bArr2;
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        writeInt(writeLong(writeInt(writeInt(bArr.length + 0, PROCESS_ID), nextSequence.getAndIncrement()), Long.reverse(System.nanoTime()) ^ System.currentTimeMillis()), PlatformDependent.threadLocalRandom().nextInt());
        this.hashCode = Arrays.hashCode(bArr2);
    }

    private int appendHexDumpField(StringBuilder sb, int i2, int i4) {
        sb.append(ByteBufUtil.hexDump(this.data, i2, i4));
        sb.append('-');
        return i2 + i4;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:1|2|3|(2:5|6)|7|(1:9)|10|11|(2:13|14)(1:16)) */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x006f, code lost:
        r0 = -1;
     */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:32:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int defaultProcessId() {
        /*
            r0 = 1
            r1 = 0
            java.lang.Class<io.netty.channel.DefaultChannelId> r2 = io.netty.channel.DefaultChannelId.class
            java.lang.ClassLoader r2 = io.netty.util.internal.PlatformDependent.getClassLoader(r2)     // Catch: java.lang.Throwable -> L31
            java.lang.String r3 = "java.lang.management.ManagementFactory"
            java.lang.Class r3 = java.lang.Class.forName(r3, r0, r2)     // Catch: java.lang.Throwable -> L2f
            java.lang.String r4 = "java.lang.management.RuntimeMXBean"
            java.lang.Class r4 = java.lang.Class.forName(r4, r0, r2)     // Catch: java.lang.Throwable -> L2f
            java.lang.String r5 = "getRuntimeMXBean"
            java.lang.Class<?>[] r6 = io.netty.util.internal.EmptyArrays.EMPTY_CLASSES     // Catch: java.lang.Throwable -> L2f
            java.lang.reflect.Method r3 = r3.getMethod(r5, r6)     // Catch: java.lang.Throwable -> L2f
            java.lang.Object[] r5 = io.netty.util.internal.EmptyArrays.EMPTY_OBJECTS     // Catch: java.lang.Throwable -> L2f
            java.lang.Object r3 = r3.invoke(r1, r5)     // Catch: java.lang.Throwable -> L2f
            java.lang.String r7 = "getName"
            java.lang.reflect.Method r4 = r4.getMethod(r7, r6)     // Catch: java.lang.Throwable -> L2f
            java.lang.Object r3 = r4.invoke(r3, r5)     // Catch: java.lang.Throwable -> L2f
            java.lang.String r3 = (java.lang.String) r3     // Catch: java.lang.Throwable -> L2f
            goto L5d
        L2f:
            r3 = move-exception
            goto L33
        L31:
            r3 = move-exception
            r2 = r1
        L33:
            io.netty.util.internal.logging.InternalLogger r4 = io.netty.channel.DefaultChannelId.logger
            java.lang.String r5 = "Could not invoke ManagementFactory.getRuntimeMXBean().getName(); Android?"
            r4.debug(r5, r3)
            java.lang.String r3 = "android.os.Process"
            java.lang.Class r0 = java.lang.Class.forName(r3, r0, r2)     // Catch: java.lang.Throwable -> L53
            java.lang.String r2 = "myPid"
            java.lang.Class<?>[] r3 = io.netty.util.internal.EmptyArrays.EMPTY_CLASSES     // Catch: java.lang.Throwable -> L53
            java.lang.reflect.Method r0 = r0.getMethod(r2, r3)     // Catch: java.lang.Throwable -> L53
            java.lang.Object[] r2 = io.netty.util.internal.EmptyArrays.EMPTY_OBJECTS     // Catch: java.lang.Throwable -> L53
            java.lang.Object r0 = r0.invoke(r1, r2)     // Catch: java.lang.Throwable -> L53
            java.lang.String r3 = r0.toString()     // Catch: java.lang.Throwable -> L53
            goto L5d
        L53:
            r0 = move-exception
            io.netty.util.internal.logging.InternalLogger r1 = io.netty.channel.DefaultChannelId.logger
            java.lang.String r2 = "Could not invoke Process.myPid(); not Android?"
            r1.debug(r2, r0)
            java.lang.String r3 = ""
        L5d:
            r0 = 64
            int r0 = r3.indexOf(r0)
            if (r0 < 0) goto L6a
            r1 = 0
            java.lang.String r3 = r3.substring(r1, r0)
        L6a:
            int r0 = java.lang.Integer.parseInt(r3)     // Catch: java.lang.NumberFormatException -> L6f
            goto L70
        L6f:
            r0 = -1
        L70:
            if (r0 >= 0) goto L85
            java.util.Random r0 = io.netty.util.internal.PlatformDependent.threadLocalRandom()
            int r0 = r0.nextInt()
            io.netty.util.internal.logging.InternalLogger r1 = io.netty.channel.DefaultChannelId.logger
            java.lang.Integer r2 = java.lang.Integer.valueOf(r0)
            java.lang.String r4 = "Failed to find the current process ID from '{}'; using a random value: {}"
            r1.warn(r4, r3, r2)
        L85:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.netty.channel.DefaultChannelId.defaultProcessId():int");
    }

    public static DefaultChannelId newInstance() {
        return new DefaultChannelId();
    }

    private String newLongValue() {
        StringBuilder sb = new StringBuilder((this.data.length * 2) + 5);
        appendHexDumpField(sb, appendHexDumpField(sb, appendHexDumpField(sb, appendHexDumpField(sb, appendHexDumpField(sb, 0, MACHINE_ID.length), 4), 4), 8), 4);
        return sb.substring(0, sb.length() - 1);
    }

    private int writeInt(int i2, int i4) {
        byte[] bArr = this.data;
        int i5 = i2 + 1;
        bArr[i2] = (byte) (i4 >>> 24);
        int i6 = i5 + 1;
        bArr[i5] = (byte) (i4 >>> 16);
        int i7 = i6 + 1;
        bArr[i6] = (byte) (i4 >>> 8);
        int i8 = i7 + 1;
        bArr[i7] = (byte) i4;
        return i8;
    }

    private int writeLong(int i2, long j4) {
        byte[] bArr = this.data;
        int i4 = i2 + 1;
        bArr[i2] = (byte) (j4 >>> 56);
        int i5 = i4 + 1;
        bArr[i4] = (byte) (j4 >>> 48);
        int i6 = i5 + 1;
        bArr[i5] = (byte) (j4 >>> 40);
        int i7 = i6 + 1;
        bArr[i6] = (byte) (j4 >>> 32);
        int i8 = i7 + 1;
        bArr[i7] = (byte) (j4 >>> 24);
        int i9 = i8 + 1;
        bArr[i8] = (byte) (j4 >>> 16);
        int i10 = i9 + 1;
        bArr[i9] = (byte) (j4 >>> 8);
        int i11 = i10 + 1;
        bArr[i10] = (byte) j4;
        return i11;
    }

    @Override // io.netty.channel.ChannelId
    public String asLongText() {
        String str = this.longValue;
        if (str == null) {
            String newLongValue = newLongValue();
            this.longValue = newLongValue;
            return newLongValue;
        }
        return str;
    }

    @Override // io.netty.channel.ChannelId
    public String asShortText() {
        String str = this.shortValue;
        if (str == null) {
            byte[] bArr = this.data;
            String hexDump = ByteBufUtil.hexDump(bArr, bArr.length - 4, 4);
            this.shortValue = hexDump;
            return hexDump;
        }
        return str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof DefaultChannelId) {
            DefaultChannelId defaultChannelId = (DefaultChannelId) obj;
            return this.hashCode == defaultChannelId.hashCode && Arrays.equals(this.data, defaultChannelId.data);
        }
        return false;
    }

    public int hashCode() {
        return this.hashCode;
    }

    public String toString() {
        return asShortText();
    }

    @Override // java.lang.Comparable
    public int compareTo(ChannelId channelId) {
        if (this == channelId) {
            return 0;
        }
        if (channelId instanceof DefaultChannelId) {
            byte[] bArr = ((DefaultChannelId) channelId).data;
            int length = this.data.length;
            int length2 = bArr.length;
            int min = Math.min(length, length2);
            for (int i2 = 0; i2 < min; i2++) {
                byte b4 = this.data[i2];
                byte b5 = bArr[i2];
                if (b4 != b5) {
                    return (b4 & 255) - (b5 & 255);
                }
            }
            return length - length2;
        }
        return asLongText().compareTo(channelId.asLongText());
    }
}
