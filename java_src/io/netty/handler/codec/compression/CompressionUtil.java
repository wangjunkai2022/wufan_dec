package io.netty.handler.codec.compression;

import io.netty.buffer.ByteBuf;
import java.nio.ByteBuffer;
/* loaded from: classes5.dex */
final class CompressionUtil {
    private CompressionUtil() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void checkChecksum(ByteBufChecksum byteBufChecksum, ByteBuf byteBuf, int i2) {
        byteBufChecksum.reset();
        byteBufChecksum.update(byteBuf, byteBuf.readerIndex(), byteBuf.readableBytes());
        int value = (int) byteBufChecksum.getValue();
        if (value != i2) {
            throw new DecompressionException(String.format("stream corrupted: mismatching checksum: %d (expected: %d)", Integer.valueOf(value), Integer.valueOf(i2)));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ByteBuffer safeNioBuffer(ByteBuf byteBuf) {
        return byteBuf.nioBufferCount() == 1 ? byteBuf.internalNioBuffer(byteBuf.readerIndex(), byteBuf.readableBytes()) : byteBuf.nioBuffer();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ByteBuffer safeNioBuffer(ByteBuf byteBuf, int i2, int i4) {
        return byteBuf.nioBufferCount() == 1 ? byteBuf.internalNioBuffer(i2, i4) : byteBuf.nioBuffer(i2, i4);
    }
}
