package io.netty.handler.codec.compression;

import com.jcraft.jzlib.Inflater;
import com.jcraft.jzlib.JZlib;
import io.netty.buffer.ByteBuf;
import io.netty.channel.ChannelHandlerContext;
import io.netty.util.internal.ObjectUtil;
import java.util.List;
/* loaded from: classes5.dex */
public class JZlibDecoder extends ZlibDecoder {
    private byte[] dictionary;
    private volatile boolean finished;

    /* renamed from: z  reason: collision with root package name */
    private final Inflater f65749z;

    public JZlibDecoder() {
        this(ZlibWrapper.ZLIB, 0);
    }

    @Override // io.netty.handler.codec.ByteToMessageDecoder
    protected void decode(ChannelHandlerContext channelHandlerContext, ByteBuf byteBuf, List<Object> list) throws Exception {
        if (this.finished) {
            byteBuf.skipBytes(byteBuf.readableBytes());
            return;
        }
        int readableBytes = byteBuf.readableBytes();
        if (readableBytes == 0) {
            return;
        }
        try {
            this.f65749z.avail_in = readableBytes;
            if (byteBuf.hasArray()) {
                this.f65749z.next_in = byteBuf.array();
                this.f65749z.next_in_index = byteBuf.arrayOffset() + byteBuf.readerIndex();
            } else {
                byte[] bArr = new byte[readableBytes];
                byteBuf.getBytes(byteBuf.readerIndex(), bArr);
                this.f65749z.next_in = bArr;
                this.f65749z.next_in_index = 0;
            }
            int i2 = this.f65749z.next_in_index;
            ByteBuf prepareDecompressBuffer = prepareDecompressBuffer(channelHandlerContext, null, readableBytes << 1);
            while (true) {
                prepareDecompressBuffer = prepareDecompressBuffer(channelHandlerContext, prepareDecompressBuffer, this.f65749z.avail_in << 1);
                this.f65749z.avail_out = prepareDecompressBuffer.writableBytes();
                this.f65749z.next_out = prepareDecompressBuffer.array();
                this.f65749z.next_out_index = prepareDecompressBuffer.arrayOffset() + prepareDecompressBuffer.writerIndex();
                int i4 = this.f65749z.next_out_index;
                int inflate = this.f65749z.inflate(2);
                int i5 = this.f65749z.next_out_index - i4;
                if (i5 > 0) {
                    prepareDecompressBuffer.writerIndex(prepareDecompressBuffer.writerIndex() + i5);
                }
                if (inflate != -5) {
                    if (inflate != 0) {
                        if (inflate == 1) {
                            this.finished = true;
                            this.f65749z.inflateEnd();
                            break;
                        } else if (inflate != 2) {
                            ZlibUtil.fail(this.f65749z, "decompression failure", inflate);
                        } else {
                            byte[] bArr2 = this.dictionary;
                            if (bArr2 == null) {
                                ZlibUtil.fail(this.f65749z, "decompression failure", inflate);
                            } else {
                                int inflateSetDictionary = this.f65749z.inflateSetDictionary(bArr2, bArr2.length);
                                if (inflateSetDictionary != 0) {
                                    ZlibUtil.fail(this.f65749z, "failed to set the dictionary", inflateSetDictionary);
                                }
                            }
                        }
                    } else {
                        continue;
                    }
                } else if (this.f65749z.avail_in <= 0) {
                    break;
                }
            }
            byteBuf.skipBytes(this.f65749z.next_in_index - i2);
            if (prepareDecompressBuffer.isReadable()) {
                list.add(prepareDecompressBuffer);
            } else {
                prepareDecompressBuffer.release();
            }
        } finally {
            this.f65749z.next_in = null;
            this.f65749z.next_out = null;
        }
    }

    @Override // io.netty.handler.codec.compression.ZlibDecoder
    protected void decompressionBufferExhausted(ByteBuf byteBuf) {
        this.finished = true;
    }

    @Override // io.netty.handler.codec.compression.ZlibDecoder
    public boolean isClosed() {
        return this.finished;
    }

    public JZlibDecoder(int i2) {
        this(ZlibWrapper.ZLIB, i2);
    }

    public JZlibDecoder(ZlibWrapper zlibWrapper) {
        this(zlibWrapper, 0);
    }

    public JZlibDecoder(ZlibWrapper zlibWrapper, int i2) {
        super(i2);
        Inflater inflater = new Inflater();
        this.f65749z = inflater;
        ObjectUtil.checkNotNull(zlibWrapper, "wrapper");
        int init = inflater.init(ZlibUtil.convertWrapperType(zlibWrapper));
        if (init != 0) {
            ZlibUtil.fail(inflater, "initialization failure", init);
        }
    }

    public JZlibDecoder(byte[] bArr) {
        this(bArr, 0);
    }

    public JZlibDecoder(byte[] bArr, int i2) {
        super(i2);
        Inflater inflater = new Inflater();
        this.f65749z = inflater;
        this.dictionary = (byte[]) ObjectUtil.checkNotNull(bArr, "dictionary");
        int inflateInit = inflater.inflateInit(JZlib.W_ZLIB);
        if (inflateInit != 0) {
            ZlibUtil.fail(inflater, "initialization failure", inflateInit);
        }
    }
}
