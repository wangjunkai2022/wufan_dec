package io.netty.handler.codec.compression;

import io.netty.util.internal.PlatformDependent;
import io.netty.util.internal.SystemPropertyUtil;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
/* loaded from: classes5.dex */
public final class ZlibCodecFactory {
    private static final int DEFAULT_JDK_MEM_LEVEL = 8;
    private static final int DEFAULT_JDK_WINDOW_SIZE = 15;
    private static final InternalLogger logger;
    private static final boolean noJdkZlibDecoder;
    private static final boolean noJdkZlibEncoder;
    private static final boolean supportsWindowSizeAndMemLevel;

    static {
        InternalLogger internalLoggerFactory = InternalLoggerFactory.getInstance(ZlibCodecFactory.class);
        logger = internalLoggerFactory;
        boolean z3 = true;
        boolean z4 = SystemPropertyUtil.getBoolean("io.netty.noJdkZlibDecoder", PlatformDependent.javaVersion() < 7);
        noJdkZlibDecoder = z4;
        internalLoggerFactory.debug("-Dio.netty.noJdkZlibDecoder: {}", Boolean.valueOf(z4));
        boolean z5 = SystemPropertyUtil.getBoolean("io.netty.noJdkZlibEncoder", false);
        noJdkZlibEncoder = z5;
        internalLoggerFactory.debug("-Dio.netty.noJdkZlibEncoder: {}", Boolean.valueOf(z5));
        if (!z4 && PlatformDependent.javaVersion() < 7) {
            z3 = false;
        }
        supportsWindowSizeAndMemLevel = z3;
    }

    private ZlibCodecFactory() {
    }

    public static boolean isSupportingWindowSizeAndMemLevel() {
        return supportsWindowSizeAndMemLevel;
    }

    public static ZlibDecoder newZlibDecoder() {
        if (PlatformDependent.javaVersion() >= 7 && !noJdkZlibDecoder) {
            return new JdkZlibDecoder(true);
        }
        return new JZlibDecoder();
    }

    public static ZlibEncoder newZlibEncoder(int i2) {
        if (PlatformDependent.javaVersion() >= 7 && !noJdkZlibEncoder) {
            return new JdkZlibEncoder(i2);
        }
        return new JZlibEncoder(i2);
    }

    public static ZlibDecoder newZlibDecoder(ZlibWrapper zlibWrapper) {
        if (PlatformDependent.javaVersion() >= 7 && !noJdkZlibDecoder) {
            return new JdkZlibDecoder(zlibWrapper, true);
        }
        return new JZlibDecoder(zlibWrapper);
    }

    public static ZlibEncoder newZlibEncoder(ZlibWrapper zlibWrapper) {
        if (PlatformDependent.javaVersion() >= 7 && !noJdkZlibEncoder) {
            return new JdkZlibEncoder(zlibWrapper);
        }
        return new JZlibEncoder(zlibWrapper);
    }

    public static ZlibDecoder newZlibDecoder(byte[] bArr) {
        if (PlatformDependent.javaVersion() >= 7 && !noJdkZlibDecoder) {
            return new JdkZlibDecoder(bArr);
        }
        return new JZlibDecoder(bArr);
    }

    public static ZlibEncoder newZlibEncoder(ZlibWrapper zlibWrapper, int i2) {
        if (PlatformDependent.javaVersion() >= 7 && !noJdkZlibEncoder) {
            return new JdkZlibEncoder(zlibWrapper, i2);
        }
        return new JZlibEncoder(zlibWrapper, i2);
    }

    public static ZlibEncoder newZlibEncoder(ZlibWrapper zlibWrapper, int i2, int i4, int i5) {
        if (PlatformDependent.javaVersion() >= 7 && !noJdkZlibEncoder && i4 == 15 && i5 == 8) {
            return new JdkZlibEncoder(zlibWrapper, i2);
        }
        return new JZlibEncoder(zlibWrapper, i2, i4, i5);
    }

    public static ZlibEncoder newZlibEncoder(byte[] bArr) {
        if (PlatformDependent.javaVersion() >= 7 && !noJdkZlibEncoder) {
            return new JdkZlibEncoder(bArr);
        }
        return new JZlibEncoder(bArr);
    }

    public static ZlibEncoder newZlibEncoder(int i2, byte[] bArr) {
        if (PlatformDependent.javaVersion() >= 7 && !noJdkZlibEncoder) {
            return new JdkZlibEncoder(i2, bArr);
        }
        return new JZlibEncoder(i2, bArr);
    }

    public static ZlibEncoder newZlibEncoder(int i2, int i4, int i5, byte[] bArr) {
        if (PlatformDependent.javaVersion() >= 7 && !noJdkZlibEncoder && i4 == 15 && i5 == 8) {
            return new JdkZlibEncoder(i2, bArr);
        }
        return new JZlibEncoder(i2, i4, i5, bArr);
    }
}
