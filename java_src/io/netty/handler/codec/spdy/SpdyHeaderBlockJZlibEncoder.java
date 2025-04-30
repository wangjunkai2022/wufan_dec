package io.netty.handler.codec.spdy;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.jcraft.jzlib.Deflater;
import com.jcraft.jzlib.JZlib;
import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufAllocator;
import io.netty.buffer.Unpooled;
import io.netty.handler.codec.compression.CompressionException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class SpdyHeaderBlockJZlibEncoder extends SpdyHeaderBlockRawEncoder {
    private boolean finished;

    /* renamed from: z  reason: collision with root package name */
    private final Deflater f65765z;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SpdyHeaderBlockJZlibEncoder(SpdyVersion spdyVersion, int i2, int i4, int i5) {
        super(spdyVersion);
        Deflater deflater = new Deflater();
        this.f65765z = deflater;
        if (i2 < 0 || i2 > 9) {
            throw new IllegalArgumentException("compressionLevel: " + i2 + " (expected: 0-9)");
        } else if (i4 < 9 || i4 > 15) {
            throw new IllegalArgumentException("windowBits: " + i4 + " (expected: 9-15)");
        } else if (i5 >= 1 && i5 <= 9) {
            int deflateInit = deflater.deflateInit(i2, i4, i5, JZlib.W_ZLIB);
            if (deflateInit == 0) {
                byte[] bArr = SpdyCodecUtil.SPDY_DICT;
                int deflateSetDictionary = deflater.deflateSetDictionary(bArr, bArr.length);
                if (deflateSetDictionary == 0) {
                    return;
                }
                throw new CompressionException("failed to set the SPDY dictionary: " + deflateSetDictionary);
            }
            throw new CompressionException("failed to initialize an SPDY header block deflater: " + deflateInit);
        } else {
            throw new IllegalArgumentException("memLevel: " + i5 + " (expected: 1-9)");
        }
    }

    private ByteBuf encode(ByteBufAllocator byteBufAllocator) {
        ByteBuf byteBuf;
        int i2;
        int i4;
        int ceil;
        try {
            i2 = this.f65765z.next_in_index;
            i4 = this.f65765z.next_out_index;
            double length = this.f65765z.next_in.length;
            Double.isNaN(length);
            ceil = ((int) Math.ceil(length * 1.001d)) + 12;
            byteBuf = byteBufAllocator.heapBuffer(ceil);
        } catch (Throwable th) {
            th = th;
            byteBuf = null;
        }
        try {
            this.f65765z.next_out = byteBuf.array();
            this.f65765z.next_out_index = byteBuf.arrayOffset() + byteBuf.writerIndex();
            this.f65765z.avail_out = ceil;
            int deflate = this.f65765z.deflate(2);
            byteBuf.skipBytes(this.f65765z.next_in_index - i2);
            if (deflate == 0) {
                int i5 = this.f65765z.next_out_index - i4;
                if (i5 > 0) {
                    byteBuf.writerIndex(byteBuf.writerIndex() + i5);
                }
                this.f65765z.next_in = null;
                this.f65765z.next_out = null;
                return byteBuf;
            }
            throw new CompressionException("compression failure: " + deflate);
        } catch (Throwable th2) {
            th = th2;
            this.f65765z.next_in = null;
            this.f65765z.next_out = null;
            if (byteBuf != null) {
                byteBuf.release();
            }
            throw th;
        }
    }

    private void setInput(ByteBuf byteBuf) {
        byte[] bArr;
        int i2;
        int readableBytes = byteBuf.readableBytes();
        if (byteBuf.hasArray()) {
            bArr = byteBuf.array();
            i2 = byteBuf.arrayOffset() + byteBuf.readerIndex();
        } else {
            bArr = new byte[readableBytes];
            byteBuf.getBytes(byteBuf.readerIndex(), bArr);
            i2 = 0;
        }
        this.f65765z.next_in = bArr;
        this.f65765z.next_in_index = i2;
        this.f65765z.avail_in = readableBytes;
    }

    @Override // io.netty.handler.codec.spdy.SpdyHeaderBlockRawEncoder, io.netty.handler.codec.spdy.SpdyHeaderBlockEncoder
    public void end() {
        if (this.finished) {
            return;
        }
        this.finished = true;
        this.f65765z.deflateEnd();
        this.f65765z.next_in = null;
        this.f65765z.next_out = null;
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
                setInput(encode);
                return encode(byteBufAllocator);
            } finally {
                encode.release();
            }
        }
        throw new IllegalArgumentException(TypedValues.AttributesType.S_FRAME);
    }
}
