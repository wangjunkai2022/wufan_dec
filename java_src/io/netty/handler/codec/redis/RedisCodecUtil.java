package io.netty.handler.codec.redis;

import io.netty.handler.codec.http2.Http2CodecUtil;
import io.netty.util.CharsetUtil;
import io.netty.util.internal.PlatformDependent;
/* loaded from: classes5.dex */
final class RedisCodecUtil {
    private RedisCodecUtil() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] longToAsciiBytes(long j4) {
        return Long.toString(j4).getBytes(CharsetUtil.US_ASCII);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static short makeShort(char c4, char c5) {
        return (short) (PlatformDependent.BIG_ENDIAN_NATIVE_ORDER ? c4 | (c5 << '\b') : (c4 << '\b') | c5);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] shortToBytes(short s3) {
        byte[] bArr = new byte[2];
        if (PlatformDependent.BIG_ENDIAN_NATIVE_ORDER) {
            bArr[1] = (byte) ((s3 >> 8) & 255);
            bArr[0] = (byte) (s3 & Http2CodecUtil.MAX_UNSIGNED_BYTE);
        } else {
            bArr[0] = (byte) ((s3 >> 8) & 255);
            bArr[1] = (byte) (s3 & Http2CodecUtil.MAX_UNSIGNED_BYTE);
        }
        return bArr;
    }
}
