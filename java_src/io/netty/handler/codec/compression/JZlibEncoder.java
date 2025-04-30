package io.netty.handler.codec.compression;

import com.jcraft.jzlib.Deflater;
import com.jcraft.jzlib.JZlib;
import io.netty.buffer.ByteBuf;
import io.netty.buffer.Unpooled;
import io.netty.channel.ChannelFuture;
import io.netty.channel.ChannelFutureListener;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.ChannelPromise;
import io.netty.channel.ChannelPromiseNotifier;
import io.netty.util.concurrent.EventExecutor;
import io.netty.util.concurrent.Future;
import io.netty.util.concurrent.GenericFutureListener;
import io.netty.util.internal.EmptyArrays;
import io.netty.util.internal.ObjectUtil;
import java.util.concurrent.TimeUnit;
/* loaded from: classes5.dex */
public class JZlibEncoder extends ZlibEncoder {
    private volatile ChannelHandlerContext ctx;
    private volatile boolean finished;
    private final int wrapperOverhead;

    /* renamed from: z  reason: collision with root package name */
    private final Deflater f65750z;

    public JZlibEncoder() {
        this(6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ChannelHandlerContext ctx() {
        ChannelHandlerContext channelHandlerContext = this.ctx;
        if (channelHandlerContext != null) {
            return channelHandlerContext;
        }
        throw new IllegalStateException("not added to a pipeline");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ChannelFuture finishEncode(ChannelHandlerContext channelHandlerContext, ChannelPromise channelPromise) {
        ByteBuf byteBuf;
        if (this.finished) {
            channelPromise.setSuccess();
            return channelPromise;
        }
        this.finished = true;
        try {
            this.f65750z.next_in = EmptyArrays.EMPTY_BYTES;
            this.f65750z.next_in_index = 0;
            this.f65750z.avail_in = 0;
            byte[] bArr = new byte[32];
            this.f65750z.next_out = bArr;
            this.f65750z.next_out_index = 0;
            this.f65750z.avail_out = 32;
            int deflate = this.f65750z.deflate(4);
            if (deflate != 0 && deflate != 1) {
                channelPromise.setFailure((Throwable) ZlibUtil.deflaterException(this.f65750z, "compression failure", deflate));
                return channelPromise;
            }
            if (this.f65750z.next_out_index != 0) {
                byteBuf = Unpooled.wrappedBuffer(bArr, 0, this.f65750z.next_out_index);
            } else {
                byteBuf = Unpooled.EMPTY_BUFFER;
            }
            this.f65750z.deflateEnd();
            this.f65750z.next_in = null;
            this.f65750z.next_out = null;
            return channelHandlerContext.writeAndFlush(byteBuf, channelPromise);
        } finally {
            this.f65750z.deflateEnd();
            this.f65750z.next_in = null;
            this.f65750z.next_out = null;
        }
    }

    @Override // io.netty.handler.codec.compression.ZlibEncoder
    public ChannelFuture close() {
        return close(ctx().channel().newPromise());
    }

    @Override // io.netty.channel.ChannelHandlerAdapter, io.netty.channel.ChannelHandler
    public void handlerAdded(ChannelHandlerContext channelHandlerContext) throws Exception {
        this.ctx = channelHandlerContext;
    }

    @Override // io.netty.handler.codec.compression.ZlibEncoder
    public boolean isClosed() {
        return this.finished;
    }

    public JZlibEncoder(int i2) {
        this(ZlibWrapper.ZLIB, i2);
    }

    @Override // io.netty.handler.codec.compression.ZlibEncoder
    public ChannelFuture close(final ChannelPromise channelPromise) {
        ChannelHandlerContext ctx = ctx();
        EventExecutor executor = ctx.executor();
        if (executor.inEventLoop()) {
            return finishEncode(ctx, channelPromise);
        }
        final ChannelPromise newPromise = ctx.newPromise();
        executor.execute(new Runnable() { // from class: io.netty.handler.codec.compression.JZlibEncoder.1
            @Override // java.lang.Runnable
            public void run() {
                JZlibEncoder jZlibEncoder = JZlibEncoder.this;
                jZlibEncoder.finishEncode(jZlibEncoder.ctx(), newPromise).addListener((GenericFutureListener<? extends Future<? super Void>>) new ChannelPromiseNotifier(channelPromise));
            }
        });
        return newPromise;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.handler.codec.MessageToByteEncoder
    public void encode(ChannelHandlerContext channelHandlerContext, ByteBuf byteBuf, ByteBuf byteBuf2) throws Exception {
        if (this.finished) {
            byteBuf2.writeBytes(byteBuf);
            return;
        }
        int readableBytes = byteBuf.readableBytes();
        if (readableBytes == 0) {
            return;
        }
        try {
            boolean hasArray = byteBuf.hasArray();
            this.f65750z.avail_in = readableBytes;
            if (hasArray) {
                this.f65750z.next_in = byteBuf.array();
                this.f65750z.next_in_index = byteBuf.arrayOffset() + byteBuf.readerIndex();
            } else {
                byte[] bArr = new byte[readableBytes];
                byteBuf.getBytes(byteBuf.readerIndex(), bArr);
                this.f65750z.next_in = bArr;
                this.f65750z.next_in_index = 0;
            }
            int i2 = this.f65750z.next_in_index;
            double d4 = readableBytes;
            Double.isNaN(d4);
            int ceil = ((int) Math.ceil(d4 * 1.001d)) + 12 + this.wrapperOverhead;
            byteBuf2.ensureWritable(ceil);
            this.f65750z.avail_out = ceil;
            this.f65750z.next_out = byteBuf2.array();
            this.f65750z.next_out_index = byteBuf2.arrayOffset() + byteBuf2.writerIndex();
            int i4 = this.f65750z.next_out_index;
            int deflate = this.f65750z.deflate(2);
            byteBuf.skipBytes(this.f65750z.next_in_index - i2);
            if (deflate != 0) {
                ZlibUtil.fail(this.f65750z, "compression failure", deflate);
            }
            int i5 = this.f65750z.next_out_index - i4;
            if (i5 > 0) {
                byteBuf2.writerIndex(byteBuf2.writerIndex() + i5);
            }
        } finally {
            this.f65750z.next_in = null;
            this.f65750z.next_out = null;
        }
    }

    public JZlibEncoder(ZlibWrapper zlibWrapper) {
        this(zlibWrapper, 6);
    }

    public JZlibEncoder(ZlibWrapper zlibWrapper, int i2) {
        this(zlibWrapper, i2, 15, 8);
    }

    public JZlibEncoder(ZlibWrapper zlibWrapper, int i2, int i4, int i5) {
        Deflater deflater = new Deflater();
        this.f65750z = deflater;
        if (i2 < 0 || i2 > 9) {
            throw new IllegalArgumentException("compressionLevel: " + i2 + " (expected: 0-9)");
        } else if (i4 < 9 || i4 > 15) {
            throw new IllegalArgumentException("windowBits: " + i4 + " (expected: 9-15)");
        } else if (i5 >= 1 && i5 <= 9) {
            ObjectUtil.checkNotNull(zlibWrapper, "wrapper");
            ZlibWrapper zlibWrapper2 = ZlibWrapper.ZLIB_OR_NONE;
            if (zlibWrapper != zlibWrapper2) {
                int init = deflater.init(i2, i4, i5, ZlibUtil.convertWrapperType(zlibWrapper));
                if (init != 0) {
                    ZlibUtil.fail(deflater, "initialization failure", init);
                }
                this.wrapperOverhead = ZlibUtil.wrapperOverhead(zlibWrapper);
                return;
            }
            throw new IllegalArgumentException("wrapper '" + zlibWrapper2 + "' is not allowed for compression.");
        } else {
            throw new IllegalArgumentException("memLevel: " + i5 + " (expected: 1-9)");
        }
    }

    @Override // io.netty.channel.ChannelOutboundHandlerAdapter, io.netty.channel.ChannelOutboundHandler
    public void close(final ChannelHandlerContext channelHandlerContext, final ChannelPromise channelPromise) {
        ChannelFuture finishEncode = finishEncode(channelHandlerContext, channelHandlerContext.newPromise());
        finishEncode.addListener((GenericFutureListener<? extends Future<? super Void>>) new ChannelFutureListener() { // from class: io.netty.handler.codec.compression.JZlibEncoder.2
            @Override // io.netty.util.concurrent.GenericFutureListener
            public void operationComplete(ChannelFuture channelFuture) throws Exception {
                channelHandlerContext.close(channelPromise);
            }
        });
        if (finishEncode.isDone()) {
            return;
        }
        channelHandlerContext.executor().schedule(new Runnable() { // from class: io.netty.handler.codec.compression.JZlibEncoder.3
            @Override // java.lang.Runnable
            public void run() {
                channelHandlerContext.close(channelPromise);
            }
        }, 10L, TimeUnit.SECONDS);
    }

    public JZlibEncoder(byte[] bArr) {
        this(6, bArr);
    }

    public JZlibEncoder(int i2, byte[] bArr) {
        this(i2, 15, 8, bArr);
    }

    public JZlibEncoder(int i2, int i4, int i5, byte[] bArr) {
        Deflater deflater = new Deflater();
        this.f65750z = deflater;
        if (i2 < 0 || i2 > 9) {
            throw new IllegalArgumentException("compressionLevel: " + i2 + " (expected: 0-9)");
        } else if (i4 < 9 || i4 > 15) {
            throw new IllegalArgumentException("windowBits: " + i4 + " (expected: 9-15)");
        } else if (i5 >= 1 && i5 <= 9) {
            ObjectUtil.checkNotNull(bArr, "dictionary");
            int deflateInit = deflater.deflateInit(i2, i4, i5, JZlib.W_ZLIB);
            if (deflateInit != 0) {
                ZlibUtil.fail(deflater, "initialization failure", deflateInit);
            } else {
                int deflateSetDictionary = deflater.deflateSetDictionary(bArr, bArr.length);
                if (deflateSetDictionary != 0) {
                    ZlibUtil.fail(deflater, "failed to set the dictionary", deflateSetDictionary);
                }
            }
            this.wrapperOverhead = ZlibUtil.wrapperOverhead(ZlibWrapper.ZLIB);
        } else {
            throw new IllegalArgumentException("memLevel: " + i5 + " (expected: 1-9)");
        }
    }
}
