package io.netty.handler.codec.http2;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.Unpooled;
import io.netty.channel.ChannelFuture;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.ChannelPromise;
import io.netty.handler.codec.http2.Http2CodecUtil;
import io.netty.handler.codec.http2.Http2FrameWriter;
import io.netty.handler.codec.http2.Http2HeadersEncoder;
import io.netty.util.collection.CharObjectMap;
import io.netty.util.internal.ObjectUtil;
import tv.danmaku.ijk.media.player.IjkMediaMeta;
/* loaded from: classes5.dex */
public class DefaultHttp2FrameWriter implements Http2FrameWriter, Http2FrameSizePolicy, Http2FrameWriter.Configuration {
    private static final String STREAM_DEPENDENCY = "Stream Dependency";
    private static final String STREAM_ID = "Stream ID";
    private static final ByteBuf ZERO_BUFFER = Unpooled.unreleasableBuffer(Unpooled.directBuffer(255).writeZero(255)).asReadOnly();
    private final Http2HeadersEncoder headersEncoder;
    private int maxFrameSize;

    public DefaultHttp2FrameWriter() {
        this(new DefaultHttp2HeadersEncoder());
    }

    private static int paddingBytes(int i2) {
        return i2 - 1;
    }

    private static void verifyErrorCode(long j4) {
        if (j4 < 0 || j4 > 4294967295L) {
            throw new IllegalArgumentException("Invalid errorCode: " + j4);
        }
    }

    private static void verifyPingPayload(ByteBuf byteBuf) {
        if (byteBuf == null || byteBuf.readableBytes() != 8) {
            throw new IllegalArgumentException("Opaque data must be 8 bytes");
        }
    }

    private static void verifyStreamId(int i2, String str) {
        ObjectUtil.checkPositive(i2, "streamId");
    }

    private static void verifyStreamOrConnectionId(int i2, String str) {
        ObjectUtil.checkPositiveOrZero(i2, "streamId");
    }

    private static void verifyWeight(short s3) {
        if (s3 < 1 || s3 > 256) {
            throw new IllegalArgumentException("Invalid weight: " + ((int) s3));
        }
    }

    private static void verifyWindowSizeIncrement(int i2) {
        ObjectUtil.checkPositiveOrZero(i2, "windowSizeIncrement");
    }

    private ChannelFuture writeContinuationFrames(ChannelHandlerContext channelHandlerContext, int i2, ByteBuf byteBuf, Http2CodecUtil.SimpleChannelPromiseAggregator simpleChannelPromiseAggregator) {
        Http2Flags http2Flags = new Http2Flags();
        if (byteBuf.isReadable()) {
            int min = Math.min(byteBuf.readableBytes(), this.maxFrameSize);
            ByteBuf buffer = channelHandlerContext.alloc().buffer(10);
            Http2CodecUtil.writeFrameHeaderInternal(buffer, min, (byte) 9, http2Flags, i2);
            do {
                int min2 = Math.min(byteBuf.readableBytes(), this.maxFrameSize);
                Object readRetainedSlice = byteBuf.readRetainedSlice(min2);
                if (byteBuf.isReadable()) {
                    channelHandlerContext.write(buffer.retain(), simpleChannelPromiseAggregator.newPromise());
                } else {
                    http2Flags = http2Flags.endOfHeaders(true);
                    buffer.release();
                    buffer = channelHandlerContext.alloc().buffer(10);
                    Http2CodecUtil.writeFrameHeaderInternal(buffer, min2, (byte) 9, http2Flags, i2);
                    channelHandlerContext.write(buffer, simpleChannelPromiseAggregator.newPromise());
                }
                channelHandlerContext.write(readRetainedSlice, simpleChannelPromiseAggregator.newPromise());
            } while (byteBuf.isReadable());
            return simpleChannelPromiseAggregator;
        }
        return simpleChannelPromiseAggregator;
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x00df, code lost:
        if (r7 == null) goto L25;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private io.netty.channel.ChannelFuture writeHeadersInternal(io.netty.channel.ChannelHandlerContext r16, int r17, io.netty.handler.codec.http2.Http2Headers r18, int r19, boolean r20, boolean r21, int r22, short r23, boolean r24, io.netty.channel.ChannelPromise r25) {
        /*
            r15 = this;
            r1 = r15
            r0 = r16
            r2 = r17
            r3 = r19
            r4 = r21
            r5 = r22
            io.netty.handler.codec.http2.Http2CodecUtil$SimpleChannelPromiseAggregator r6 = new io.netty.handler.codec.http2.Http2CodecUtil$SimpleChannelPromiseAggregator
            io.netty.channel.Channel r7 = r16.channel()
            io.netty.util.concurrent.EventExecutor r8 = r16.executor()
            r9 = r25
            r6.<init>(r9, r7, r8)
            r7 = 0
            java.lang.String r8 = "Stream ID"
            verifyStreamId(r2, r8)     // Catch: java.lang.Throwable -> Lce io.netty.handler.codec.http2.Http2Exception -> Ldb
            if (r4 == 0) goto L2d
            java.lang.String r8 = "Stream Dependency"
            verifyStreamOrConnectionId(r5, r8)     // Catch: java.lang.Throwable -> Lce io.netty.handler.codec.http2.Http2Exception -> Ldb
            io.netty.handler.codec.http2.Http2CodecUtil.verifyPadding(r19)     // Catch: java.lang.Throwable -> Lce io.netty.handler.codec.http2.Http2Exception -> Ldb
            verifyWeight(r23)     // Catch: java.lang.Throwable -> Lce io.netty.handler.codec.http2.Http2Exception -> Ldb
        L2d:
            io.netty.buffer.ByteBufAllocator r8 = r16.alloc()     // Catch: java.lang.Throwable -> Lce io.netty.handler.codec.http2.Http2Exception -> Ldb
            io.netty.buffer.ByteBuf r7 = r8.buffer()     // Catch: java.lang.Throwable -> Lce io.netty.handler.codec.http2.Http2Exception -> Ldb
            io.netty.handler.codec.http2.Http2HeadersEncoder r8 = r1.headersEncoder     // Catch: java.lang.Throwable -> Lce io.netty.handler.codec.http2.Http2Exception -> Ldb
            r9 = r18
            r8.encodeHeaders(r2, r9, r7)     // Catch: java.lang.Throwable -> Lce io.netty.handler.codec.http2.Http2Exception -> Ldb
            io.netty.handler.codec.http2.Http2Flags r8 = new io.netty.handler.codec.http2.Http2Flags     // Catch: java.lang.Throwable -> Lce io.netty.handler.codec.http2.Http2Exception -> Ldb
            r8.<init>()     // Catch: java.lang.Throwable -> Lce io.netty.handler.codec.http2.Http2Exception -> Ldb
            r9 = r20
            io.netty.handler.codec.http2.Http2Flags r8 = r8.endOfStream(r9)     // Catch: java.lang.Throwable -> Lce io.netty.handler.codec.http2.Http2Exception -> Ldb
            io.netty.handler.codec.http2.Http2Flags r8 = r8.priorityPresent(r4)     // Catch: java.lang.Throwable -> Lce io.netty.handler.codec.http2.Http2Exception -> Ldb
            r9 = 0
            r10 = 1
            if (r3 <= 0) goto L51
            r11 = 1
            goto L52
        L51:
            r11 = 0
        L52:
            io.netty.handler.codec.http2.Http2Flags r8 = r8.paddingPresent(r11)     // Catch: java.lang.Throwable -> Lce io.netty.handler.codec.http2.Http2Exception -> Ldb
            int r11 = r8.getNumPriorityBytes()     // Catch: java.lang.Throwable -> Lce io.netty.handler.codec.http2.Http2Exception -> Ldb
            int r11 = r11 + r3
            int r12 = r1.maxFrameSize     // Catch: java.lang.Throwable -> Lce io.netty.handler.codec.http2.Http2Exception -> Ldb
            int r12 = r12 - r11
            int r13 = r7.readableBytes()     // Catch: java.lang.Throwable -> Lce io.netty.handler.codec.http2.Http2Exception -> Ldb
            int r12 = java.lang.Math.min(r13, r12)     // Catch: java.lang.Throwable -> Lce io.netty.handler.codec.http2.Http2Exception -> Ldb
            io.netty.buffer.ByteBuf r12 = r7.readRetainedSlice(r12)     // Catch: java.lang.Throwable -> Lce io.netty.handler.codec.http2.Http2Exception -> Ldb
            boolean r13 = r7.isReadable()     // Catch: java.lang.Throwable -> Lce io.netty.handler.codec.http2.Http2Exception -> Ldb
            if (r13 != 0) goto L72
            r13 = 1
            goto L73
        L72:
            r13 = 0
        L73:
            r8.endOfHeaders(r13)     // Catch: java.lang.Throwable -> Lce io.netty.handler.codec.http2.Http2Exception -> Ldb
            int r13 = r12.readableBytes()     // Catch: java.lang.Throwable -> Lce io.netty.handler.codec.http2.Http2Exception -> Ldb
            int r13 = r13 + r11
            io.netty.buffer.ByteBufAllocator r11 = r16.alloc()     // Catch: java.lang.Throwable -> Lce io.netty.handler.codec.http2.Http2Exception -> Ldb
            r14 = 15
            io.netty.buffer.ByteBuf r11 = r11.buffer(r14)     // Catch: java.lang.Throwable -> Lce io.netty.handler.codec.http2.Http2Exception -> Ldb
            io.netty.handler.codec.http2.Http2CodecUtil.writeFrameHeaderInternal(r11, r13, r10, r8, r2)     // Catch: java.lang.Throwable -> Lce io.netty.handler.codec.http2.Http2Exception -> Ldb
            writePaddingLength(r11, r3)     // Catch: java.lang.Throwable -> Lce io.netty.handler.codec.http2.Http2Exception -> Ldb
            if (r4 == 0) goto L9f
            if (r24 == 0) goto L97
            r13 = 2147483648(0x80000000, double:1.0609978955E-314)
            long r4 = (long) r5     // Catch: java.lang.Throwable -> Lce io.netty.handler.codec.http2.Http2Exception -> Ldb
            long r4 = r4 | r13
            int r5 = (int) r4     // Catch: java.lang.Throwable -> Lce io.netty.handler.codec.http2.Http2Exception -> Ldb
        L97:
            r11.writeInt(r5)     // Catch: java.lang.Throwable -> Lce io.netty.handler.codec.http2.Http2Exception -> Ldb
            int r4 = r23 + (-1)
            r11.writeByte(r4)     // Catch: java.lang.Throwable -> Lce io.netty.handler.codec.http2.Http2Exception -> Ldb
        L9f:
            io.netty.channel.ChannelPromise r4 = r6.newPromise()     // Catch: java.lang.Throwable -> Lce io.netty.handler.codec.http2.Http2Exception -> Ldb
            r0.write(r11, r4)     // Catch: java.lang.Throwable -> Lce io.netty.handler.codec.http2.Http2Exception -> Ldb
            io.netty.channel.ChannelPromise r4 = r6.newPromise()     // Catch: java.lang.Throwable -> Lce io.netty.handler.codec.http2.Http2Exception -> Ldb
            r0.write(r12, r4)     // Catch: java.lang.Throwable -> Lce io.netty.handler.codec.http2.Http2Exception -> Ldb
            int r4 = paddingBytes(r19)     // Catch: java.lang.Throwable -> Lce io.netty.handler.codec.http2.Http2Exception -> Ldb
            if (r4 <= 0) goto Lc4
            io.netty.buffer.ByteBuf r4 = io.netty.handler.codec.http2.DefaultHttp2FrameWriter.ZERO_BUFFER     // Catch: java.lang.Throwable -> Lce io.netty.handler.codec.http2.Http2Exception -> Ldb
            int r3 = paddingBytes(r19)     // Catch: java.lang.Throwable -> Lce io.netty.handler.codec.http2.Http2Exception -> Ldb
            io.netty.buffer.ByteBuf r3 = r4.slice(r9, r3)     // Catch: java.lang.Throwable -> Lce io.netty.handler.codec.http2.Http2Exception -> Ldb
            io.netty.channel.ChannelPromise r4 = r6.newPromise()     // Catch: java.lang.Throwable -> Lce io.netty.handler.codec.http2.Http2Exception -> Ldb
            r0.write(r3, r4)     // Catch: java.lang.Throwable -> Lce io.netty.handler.codec.http2.Http2Exception -> Ldb
        Lc4:
            boolean r3 = r8.endOfHeaders()     // Catch: java.lang.Throwable -> Lce io.netty.handler.codec.http2.Http2Exception -> Ldb
            if (r3 != 0) goto Le1
            r15.writeContinuationFrames(r0, r2, r7, r6)     // Catch: java.lang.Throwable -> Lce io.netty.handler.codec.http2.Http2Exception -> Ldb
            goto Le1
        Lce:
            r0 = move-exception
            r6.setFailure(r0)     // Catch: java.lang.Throwable -> Le9
            r6.doneAllocatingPromises()     // Catch: java.lang.Throwable -> Le9
            io.netty.util.internal.PlatformDependent.throwException(r0)     // Catch: java.lang.Throwable -> Le9
            if (r7 == 0) goto Le4
            goto Le1
        Ldb:
            r0 = move-exception
            r6.setFailure(r0)     // Catch: java.lang.Throwable -> Le9
            if (r7 == 0) goto Le4
        Le1:
            r7.release()
        Le4:
            io.netty.channel.ChannelPromise r0 = r6.doneAllocatingPromises()
            return r0
        Le9:
            r0 = move-exception
            if (r7 == 0) goto Lef
            r7.release()
        Lef:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.netty.handler.codec.http2.DefaultHttp2FrameWriter.writeHeadersInternal(io.netty.channel.ChannelHandlerContext, int, io.netty.handler.codec.http2.Http2Headers, int, boolean, boolean, int, short, boolean, io.netty.channel.ChannelPromise):io.netty.channel.ChannelFuture");
    }

    private static void writePaddingLength(ByteBuf byteBuf, int i2) {
        if (i2 > 0) {
            byteBuf.writeByte(i2 - 1);
        }
    }

    @Override // io.netty.handler.codec.http2.Http2FrameWriter, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // io.netty.handler.codec.http2.Http2FrameWriter
    public Http2FrameWriter.Configuration configuration() {
        return this;
    }

    @Override // io.netty.handler.codec.http2.Http2FrameWriter.Configuration
    public Http2FrameSizePolicy frameSizePolicy() {
        return this;
    }

    @Override // io.netty.handler.codec.http2.Http2FrameWriter.Configuration
    public Http2HeadersEncoder.Configuration headersConfiguration() {
        return this.headersEncoder.configuration();
    }

    @Override // io.netty.handler.codec.http2.Http2FrameSizePolicy
    public void maxFrameSize(int i2) throws Http2Exception {
        if (!Http2CodecUtil.isMaxFrameSizeValid(i2)) {
            throw Http2Exception.connectionError(Http2Error.FRAME_SIZE_ERROR, "Invalid MAX_FRAME_SIZE specified in sent settings: %d", Integer.valueOf(i2));
        }
        this.maxFrameSize = i2;
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x013f A[Catch: all -> 0x0159, TRY_LEAVE, TryCatch #2 {all -> 0x0159, blocks: (B:36:0x00d7, B:42:0x00ff, B:46:0x0106, B:49:0x011c, B:54:0x012e, B:55:0x0139, B:57:0x013f), top: B:82:0x00d7 }] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0166  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x016b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // io.netty.handler.codec.http2.Http2DataWriter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public io.netty.channel.ChannelFuture writeData(io.netty.channel.ChannelHandlerContext r17, int r18, io.netty.buffer.ByteBuf r19, int r20, boolean r21, io.netty.channel.ChannelPromise r22) {
        /*
            Method dump skipped, instructions count: 383
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.netty.handler.codec.http2.DefaultHttp2FrameWriter.writeData(io.netty.channel.ChannelHandlerContext, int, io.netty.buffer.ByteBuf, int, boolean, io.netty.channel.ChannelPromise):io.netty.channel.ChannelFuture");
    }

    @Override // io.netty.handler.codec.http2.Http2FrameWriter
    public ChannelFuture writeFrame(ChannelHandlerContext channelHandlerContext, byte b4, int i2, Http2Flags http2Flags, ByteBuf byteBuf, ChannelPromise channelPromise) {
        Http2CodecUtil.SimpleChannelPromiseAggregator simpleChannelPromiseAggregator = new Http2CodecUtil.SimpleChannelPromiseAggregator(channelPromise, channelHandlerContext.channel(), channelHandlerContext.executor());
        try {
            verifyStreamOrConnectionId(i2, STREAM_ID);
            ByteBuf buffer = channelHandlerContext.alloc().buffer(9);
            Http2CodecUtil.writeFrameHeaderInternal(buffer, byteBuf.readableBytes(), b4, http2Flags, i2);
            channelHandlerContext.write(buffer, simpleChannelPromiseAggregator.newPromise());
            try {
                channelHandlerContext.write(byteBuf, simpleChannelPromiseAggregator.newPromise());
            } catch (Throwable th) {
                simpleChannelPromiseAggregator.setFailure(th);
            }
            return simpleChannelPromiseAggregator.doneAllocatingPromises();
        } catch (Throwable th2) {
            try {
                byteBuf.release();
                return simpleChannelPromiseAggregator;
            } finally {
                simpleChannelPromiseAggregator.setFailure(th2);
                simpleChannelPromiseAggregator.doneAllocatingPromises();
            }
        }
    }

    @Override // io.netty.handler.codec.http2.Http2FrameWriter
    public ChannelFuture writeGoAway(ChannelHandlerContext channelHandlerContext, int i2, long j4, ByteBuf byteBuf, ChannelPromise channelPromise) {
        Http2CodecUtil.SimpleChannelPromiseAggregator simpleChannelPromiseAggregator = new Http2CodecUtil.SimpleChannelPromiseAggregator(channelPromise, channelHandlerContext.channel(), channelHandlerContext.executor());
        try {
            verifyStreamOrConnectionId(i2, "Last Stream ID");
            verifyErrorCode(j4);
            ByteBuf buffer = channelHandlerContext.alloc().buffer(17);
            Http2CodecUtil.writeFrameHeaderInternal(buffer, byteBuf.readableBytes() + 8, (byte) 7, new Http2Flags(), 0);
            buffer.writeInt(i2);
            buffer.writeInt((int) j4);
            channelHandlerContext.write(buffer, simpleChannelPromiseAggregator.newPromise());
            try {
                channelHandlerContext.write(byteBuf, simpleChannelPromiseAggregator.newPromise());
            } catch (Throwable th) {
                simpleChannelPromiseAggregator.setFailure(th);
            }
            return simpleChannelPromiseAggregator.doneAllocatingPromises();
        } catch (Throwable th2) {
            try {
                byteBuf.release();
                return simpleChannelPromiseAggregator;
            } finally {
                simpleChannelPromiseAggregator.setFailure(th2);
                simpleChannelPromiseAggregator.doneAllocatingPromises();
            }
        }
    }

    @Override // io.netty.handler.codec.http2.Http2FrameWriter
    public ChannelFuture writeHeaders(ChannelHandlerContext channelHandlerContext, int i2, Http2Headers http2Headers, int i4, boolean z3, ChannelPromise channelPromise) {
        return writeHeadersInternal(channelHandlerContext, i2, http2Headers, i4, z3, false, 0, (short) 0, false, channelPromise);
    }

    @Override // io.netty.handler.codec.http2.Http2FrameWriter
    public ChannelFuture writePing(ChannelHandlerContext channelHandlerContext, boolean z3, long j4, ChannelPromise channelPromise) {
        Http2Flags ack = z3 ? new Http2Flags().ack(true) : new Http2Flags();
        ByteBuf buffer = channelHandlerContext.alloc().buffer(17);
        Http2CodecUtil.writeFrameHeaderInternal(buffer, 8, (byte) 6, ack, 0);
        buffer.writeLong(j4);
        return channelHandlerContext.write(buffer, channelPromise);
    }

    @Override // io.netty.handler.codec.http2.Http2FrameWriter
    public ChannelFuture writePriority(ChannelHandlerContext channelHandlerContext, int i2, int i4, short s3, boolean z3, ChannelPromise channelPromise) {
        try {
            verifyStreamId(i2, STREAM_ID);
            verifyStreamId(i4, STREAM_DEPENDENCY);
            verifyWeight(s3);
            ByteBuf buffer = channelHandlerContext.alloc().buffer(14);
            Http2CodecUtil.writeFrameHeaderInternal(buffer, 5, (byte) 2, new Http2Flags(), i2);
            if (z3) {
                i4 = (int) (i4 | IjkMediaMeta.AV_CH_WIDE_LEFT);
            }
            buffer.writeInt(i4);
            buffer.writeByte(s3 - 1);
            return channelHandlerContext.write(buffer, channelPromise);
        } catch (Throwable th) {
            return channelPromise.setFailure(th);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x00ad, code lost:
        if (r12 == null) goto L17;
     */
    @Override // io.netty.handler.codec.http2.Http2FrameWriter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public io.netty.channel.ChannelFuture writePushPromise(io.netty.channel.ChannelHandlerContext r7, int r8, int r9, io.netty.handler.codec.http2.Http2Headers r10, int r11, io.netty.channel.ChannelPromise r12) {
        /*
            r6 = this;
            io.netty.handler.codec.http2.Http2CodecUtil$SimpleChannelPromiseAggregator r0 = new io.netty.handler.codec.http2.Http2CodecUtil$SimpleChannelPromiseAggregator
            io.netty.channel.Channel r1 = r7.channel()
            io.netty.util.concurrent.EventExecutor r2 = r7.executor()
            r0.<init>(r12, r1, r2)
            r12 = 0
            java.lang.String r1 = "Stream ID"
            verifyStreamId(r8, r1)     // Catch: java.lang.Throwable -> L9c io.netty.handler.codec.http2.Http2Exception -> La9
            java.lang.String r1 = "Promised Stream ID"
            verifyStreamId(r9, r1)     // Catch: java.lang.Throwable -> L9c io.netty.handler.codec.http2.Http2Exception -> La9
            io.netty.handler.codec.http2.Http2CodecUtil.verifyPadding(r11)     // Catch: java.lang.Throwable -> L9c io.netty.handler.codec.http2.Http2Exception -> La9
            io.netty.buffer.ByteBufAllocator r1 = r7.alloc()     // Catch: java.lang.Throwable -> L9c io.netty.handler.codec.http2.Http2Exception -> La9
            io.netty.buffer.ByteBuf r12 = r1.buffer()     // Catch: java.lang.Throwable -> L9c io.netty.handler.codec.http2.Http2Exception -> La9
            io.netty.handler.codec.http2.Http2HeadersEncoder r1 = r6.headersEncoder     // Catch: java.lang.Throwable -> L9c io.netty.handler.codec.http2.Http2Exception -> La9
            r1.encodeHeaders(r8, r10, r12)     // Catch: java.lang.Throwable -> L9c io.netty.handler.codec.http2.Http2Exception -> La9
            io.netty.handler.codec.http2.Http2Flags r10 = new io.netty.handler.codec.http2.Http2Flags     // Catch: java.lang.Throwable -> L9c io.netty.handler.codec.http2.Http2Exception -> La9
            r10.<init>()     // Catch: java.lang.Throwable -> L9c io.netty.handler.codec.http2.Http2Exception -> La9
            r1 = 1
            r2 = 0
            if (r11 <= 0) goto L33
            r3 = 1
            goto L34
        L33:
            r3 = 0
        L34:
            io.netty.handler.codec.http2.Http2Flags r10 = r10.paddingPresent(r3)     // Catch: java.lang.Throwable -> L9c io.netty.handler.codec.http2.Http2Exception -> La9
            int r3 = r11 + 4
            int r4 = r6.maxFrameSize     // Catch: java.lang.Throwable -> L9c io.netty.handler.codec.http2.Http2Exception -> La9
            int r4 = r4 - r3
            int r5 = r12.readableBytes()     // Catch: java.lang.Throwable -> L9c io.netty.handler.codec.http2.Http2Exception -> La9
            int r4 = java.lang.Math.min(r5, r4)     // Catch: java.lang.Throwable -> L9c io.netty.handler.codec.http2.Http2Exception -> La9
            io.netty.buffer.ByteBuf r4 = r12.readRetainedSlice(r4)     // Catch: java.lang.Throwable -> L9c io.netty.handler.codec.http2.Http2Exception -> La9
            boolean r5 = r12.isReadable()     // Catch: java.lang.Throwable -> L9c io.netty.handler.codec.http2.Http2Exception -> La9
            if (r5 != 0) goto L50
            goto L51
        L50:
            r1 = 0
        L51:
            r10.endOfHeaders(r1)     // Catch: java.lang.Throwable -> L9c io.netty.handler.codec.http2.Http2Exception -> La9
            int r1 = r4.readableBytes()     // Catch: java.lang.Throwable -> L9c io.netty.handler.codec.http2.Http2Exception -> La9
            int r1 = r1 + r3
            io.netty.buffer.ByteBufAllocator r3 = r7.alloc()     // Catch: java.lang.Throwable -> L9c io.netty.handler.codec.http2.Http2Exception -> La9
            r5 = 14
            io.netty.buffer.ByteBuf r3 = r3.buffer(r5)     // Catch: java.lang.Throwable -> L9c io.netty.handler.codec.http2.Http2Exception -> La9
            r5 = 5
            io.netty.handler.codec.http2.Http2CodecUtil.writeFrameHeaderInternal(r3, r1, r5, r10, r8)     // Catch: java.lang.Throwable -> L9c io.netty.handler.codec.http2.Http2Exception -> La9
            writePaddingLength(r3, r11)     // Catch: java.lang.Throwable -> L9c io.netty.handler.codec.http2.Http2Exception -> La9
            r3.writeInt(r9)     // Catch: java.lang.Throwable -> L9c io.netty.handler.codec.http2.Http2Exception -> La9
            io.netty.channel.ChannelPromise r9 = r0.newPromise()     // Catch: java.lang.Throwable -> L9c io.netty.handler.codec.http2.Http2Exception -> La9
            r7.write(r3, r9)     // Catch: java.lang.Throwable -> L9c io.netty.handler.codec.http2.Http2Exception -> La9
            io.netty.channel.ChannelPromise r9 = r0.newPromise()     // Catch: java.lang.Throwable -> L9c io.netty.handler.codec.http2.Http2Exception -> La9
            r7.write(r4, r9)     // Catch: java.lang.Throwable -> L9c io.netty.handler.codec.http2.Http2Exception -> La9
            int r9 = paddingBytes(r11)     // Catch: java.lang.Throwable -> L9c io.netty.handler.codec.http2.Http2Exception -> La9
            if (r9 <= 0) goto L92
            io.netty.buffer.ByteBuf r9 = io.netty.handler.codec.http2.DefaultHttp2FrameWriter.ZERO_BUFFER     // Catch: java.lang.Throwable -> L9c io.netty.handler.codec.http2.Http2Exception -> La9
            int r11 = paddingBytes(r11)     // Catch: java.lang.Throwable -> L9c io.netty.handler.codec.http2.Http2Exception -> La9
            io.netty.buffer.ByteBuf r9 = r9.slice(r2, r11)     // Catch: java.lang.Throwable -> L9c io.netty.handler.codec.http2.Http2Exception -> La9
            io.netty.channel.ChannelPromise r11 = r0.newPromise()     // Catch: java.lang.Throwable -> L9c io.netty.handler.codec.http2.Http2Exception -> La9
            r7.write(r9, r11)     // Catch: java.lang.Throwable -> L9c io.netty.handler.codec.http2.Http2Exception -> La9
        L92:
            boolean r9 = r10.endOfHeaders()     // Catch: java.lang.Throwable -> L9c io.netty.handler.codec.http2.Http2Exception -> La9
            if (r9 != 0) goto Laf
            r6.writeContinuationFrames(r7, r8, r12, r0)     // Catch: java.lang.Throwable -> L9c io.netty.handler.codec.http2.Http2Exception -> La9
            goto Laf
        L9c:
            r7 = move-exception
            r0.setFailure(r7)     // Catch: java.lang.Throwable -> Lb7
            r0.doneAllocatingPromises()     // Catch: java.lang.Throwable -> Lb7
            io.netty.util.internal.PlatformDependent.throwException(r7)     // Catch: java.lang.Throwable -> Lb7
            if (r12 == 0) goto Lb2
            goto Laf
        La9:
            r7 = move-exception
            r0.setFailure(r7)     // Catch: java.lang.Throwable -> Lb7
            if (r12 == 0) goto Lb2
        Laf:
            r12.release()
        Lb2:
            io.netty.channel.ChannelPromise r7 = r0.doneAllocatingPromises()
            return r7
        Lb7:
            r7 = move-exception
            if (r12 == 0) goto Lbd
            r12.release()
        Lbd:
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: io.netty.handler.codec.http2.DefaultHttp2FrameWriter.writePushPromise(io.netty.channel.ChannelHandlerContext, int, int, io.netty.handler.codec.http2.Http2Headers, int, io.netty.channel.ChannelPromise):io.netty.channel.ChannelFuture");
    }

    @Override // io.netty.handler.codec.http2.Http2FrameWriter
    public ChannelFuture writeRstStream(ChannelHandlerContext channelHandlerContext, int i2, long j4, ChannelPromise channelPromise) {
        try {
            verifyStreamId(i2, STREAM_ID);
            verifyErrorCode(j4);
            ByteBuf buffer = channelHandlerContext.alloc().buffer(13);
            Http2CodecUtil.writeFrameHeaderInternal(buffer, 4, (byte) 3, new Http2Flags(), i2);
            buffer.writeInt((int) j4);
            return channelHandlerContext.write(buffer, channelPromise);
        } catch (Throwable th) {
            return channelPromise.setFailure(th);
        }
    }

    @Override // io.netty.handler.codec.http2.Http2FrameWriter
    public ChannelFuture writeSettings(ChannelHandlerContext channelHandlerContext, Http2Settings http2Settings, ChannelPromise channelPromise) {
        try {
            ObjectUtil.checkNotNull(http2Settings, "settings");
            ByteBuf buffer = channelHandlerContext.alloc().buffer((http2Settings.size() * 6) + 9);
            Http2CodecUtil.writeFrameHeaderInternal(buffer, http2Settings.size() * 6, (byte) 4, new Http2Flags(), 0);
            for (CharObjectMap.PrimitiveEntry<Long> primitiveEntry : http2Settings.entries()) {
                buffer.writeChar(primitiveEntry.key());
                buffer.writeInt(primitiveEntry.value().intValue());
            }
            return channelHandlerContext.write(buffer, channelPromise);
        } catch (Throwable th) {
            return channelPromise.setFailure(th);
        }
    }

    @Override // io.netty.handler.codec.http2.Http2FrameWriter
    public ChannelFuture writeSettingsAck(ChannelHandlerContext channelHandlerContext, ChannelPromise channelPromise) {
        try {
            ByteBuf buffer = channelHandlerContext.alloc().buffer(9);
            Http2CodecUtil.writeFrameHeaderInternal(buffer, 0, (byte) 4, new Http2Flags().ack(true), 0);
            return channelHandlerContext.write(buffer, channelPromise);
        } catch (Throwable th) {
            return channelPromise.setFailure(th);
        }
    }

    @Override // io.netty.handler.codec.http2.Http2FrameWriter
    public ChannelFuture writeWindowUpdate(ChannelHandlerContext channelHandlerContext, int i2, int i4, ChannelPromise channelPromise) {
        try {
            verifyStreamOrConnectionId(i2, STREAM_ID);
            verifyWindowSizeIncrement(i4);
            ByteBuf buffer = channelHandlerContext.alloc().buffer(13);
            Http2CodecUtil.writeFrameHeaderInternal(buffer, 4, (byte) 8, new Http2Flags(), i2);
            buffer.writeInt(i4);
            return channelHandlerContext.write(buffer, channelPromise);
        } catch (Throwable th) {
            return channelPromise.setFailure(th);
        }
    }

    public DefaultHttp2FrameWriter(Http2HeadersEncoder.SensitivityDetector sensitivityDetector) {
        this(new DefaultHttp2HeadersEncoder(sensitivityDetector));
    }

    @Override // io.netty.handler.codec.http2.Http2FrameWriter
    public ChannelFuture writeHeaders(ChannelHandlerContext channelHandlerContext, int i2, Http2Headers http2Headers, int i4, short s3, boolean z3, int i5, boolean z4, ChannelPromise channelPromise) {
        return writeHeadersInternal(channelHandlerContext, i2, http2Headers, i5, z4, true, i4, s3, z3, channelPromise);
    }

    public DefaultHttp2FrameWriter(Http2HeadersEncoder.SensitivityDetector sensitivityDetector, boolean z3) {
        this(new DefaultHttp2HeadersEncoder(sensitivityDetector, z3));
    }

    public DefaultHttp2FrameWriter(Http2HeadersEncoder http2HeadersEncoder) {
        this.headersEncoder = http2HeadersEncoder;
        this.maxFrameSize = 16384;
    }

    @Override // io.netty.handler.codec.http2.Http2FrameSizePolicy
    public int maxFrameSize() {
        return this.maxFrameSize;
    }
}
