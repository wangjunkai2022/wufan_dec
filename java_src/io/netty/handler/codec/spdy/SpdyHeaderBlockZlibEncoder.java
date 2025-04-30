package io.netty.handler.codec.spdy;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufAllocator;
import io.netty.buffer.Unpooled;
import io.netty.util.internal.PlatformDependent;
import io.netty.util.internal.SuppressJava6Requirement;
import java.util.zip.Deflater;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class SpdyHeaderBlockZlibEncoder extends SpdyHeaderBlockRawEncoder {
    private final Deflater compressor;
    private boolean finished;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SpdyHeaderBlockZlibEncoder(SpdyVersion spdyVersion, int i2) {
        super(spdyVersion);
        if (i2 >= 0 && i2 <= 9) {
            Deflater deflater = new Deflater(i2);
            this.compressor = deflater;
            deflater.setDictionary(SpdyCodecUtil.SPDY_DICT);
            return;
        }
        throw new IllegalArgumentException("compressionLevel: " + i2 + " (expected: 0-9)");
    }

    @SuppressJava6Requirement(reason = "Guarded by java version check")
    private boolean compressInto(ByteBuf byteBuf) {
        int deflate;
        byte[] array = byteBuf.array();
        int arrayOffset = byteBuf.arrayOffset() + byteBuf.writerIndex();
        int writableBytes = byteBuf.writableBytes();
        if (PlatformDependent.javaVersion() >= 7) {
            deflate = this.compressor.deflate(array, arrayOffset, writableBytes, 2);
        } else {
            deflate = this.compressor.deflate(array, arrayOffset, writableBytes);
        }
        byteBuf.writerIndex(byteBuf.writerIndex() + deflate);
        return deflate == writableBytes;
    }

    private ByteBuf encode(ByteBufAllocator byteBufAllocator, int i2) {
        ByteBuf heapBuffer = byteBufAllocator.heapBuffer(i2);
        while (compressInto(heapBuffer)) {
            try {
                heapBuffer.ensureWritable(heapBuffer.capacity() << 1);
            } catch (Throwable th) {
                heapBuffer.release();
                throw th;
            }
        }
        return heapBuffer;
    }

    private int setInput(ByteBuf byteBuf) {
        int readableBytes = byteBuf.readableBytes();
        if (byteBuf.hasArray()) {
            this.compressor.setInput(byteBuf.array(), byteBuf.arrayOffset() + byteBuf.readerIndex(), readableBytes);
        } else {
            byte[] bArr = new byte[readableBytes];
            byteBuf.getBytes(byteBuf.readerIndex(), bArr);
            this.compressor.setInput(bArr, 0, readableBytes);
        }
        return readableBytes;
    }

    @Override // io.netty.handler.codec.spdy.SpdyHeaderBlockRawEncoder, io.netty.handler.codec.spdy.SpdyHeaderBlockEncoder
    public void end() {
        if (this.finished) {
            return;
        }
        this.finished = true;
        this.compressor.end();
        super.end();
    }

    @Override // io.netty.handler.codec.spdy.SpdyHeaderBlockRawEncoder, io.netty.handler.codec.spdy.SpdyHeaderBlockEncoder
    public ByteBuf encode(ByteBufAllocator byteBufAllocator, SpdyHeadersFrame spdyHeadersFrame) throws Exception {
        if (spdyHeadersFrame != null) {
            if (this.finished) {
                return Unpooled.EMPTY_BUFFER;
            }
            ByteBuf encode = super.encode(byteBufAllocator, spdyHeadersFrame);
            try {
                if (!encode.isReadable()) {
                    return Unpooled.EMPTY_BUFFER;
                }
                return encode(byteBufAllocator, setInput(encode));
            } finally {
                encode.release();
            }
        }
        throw new IllegalArgumentException(TypedValues.AttributesType.S_FRAME);
    }
}
