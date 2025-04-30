package io.netty.handler.codec.http2;

import io.netty.buffer.ByteBuf;
import io.netty.channel.ChannelFuture;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.ChannelPromise;
import io.netty.channel.embedded.EmbeddedChannel;
import io.netty.handler.codec.compression.ZlibCodecFactory;
import io.netty.handler.codec.compression.ZlibWrapper;
import io.netty.handler.codec.http.HttpHeaderNames;
import io.netty.handler.codec.http.HttpHeaderValues;
import io.netty.handler.codec.http2.Http2Connection;
import io.netty.util.AsciiString;
/* loaded from: classes5.dex */
public class CompressorHttp2ConnectionEncoder extends DecoratingHttp2ConnectionEncoder {
    public static final int DEFAULT_COMPRESSION_LEVEL = 6;
    public static final int DEFAULT_MEM_LEVEL = 8;
    public static final int DEFAULT_WINDOW_BITS = 15;
    private final int compressionLevel;
    private final int memLevel;
    private final Http2Connection.a propertyKey;
    private final int windowBits;

    public CompressorHttp2ConnectionEncoder(Http2ConnectionEncoder http2ConnectionEncoder) {
        this(http2ConnectionEncoder, 6, 15, 8);
    }

    private void bindCompressorToStream(EmbeddedChannel embeddedChannel, int i2) {
        Http2Stream stream;
        if (embeddedChannel == null || (stream = connection().stream(i2)) == null) {
            return;
        }
        stream.setProperty(this.propertyKey, embeddedChannel);
    }

    private EmbeddedChannel newCompressionChannel(ChannelHandlerContext channelHandlerContext, ZlibWrapper zlibWrapper) {
        return new EmbeddedChannel(channelHandlerContext.channel().id(), channelHandlerContext.channel().metadata().hasDisconnect(), channelHandlerContext.channel().config(), ZlibCodecFactory.newZlibEncoder(zlibWrapper, this.compressionLevel, this.windowBits, this.memLevel));
    }

    private EmbeddedChannel newCompressor(ChannelHandlerContext channelHandlerContext, Http2Headers http2Headers, boolean z3) throws Http2Exception {
        if (z3) {
            return null;
        }
        AsciiString asciiString = HttpHeaderNames.CONTENT_ENCODING;
        CharSequence charSequence = http2Headers.get(asciiString);
        if (charSequence == null) {
            charSequence = HttpHeaderValues.IDENTITY;
        }
        EmbeddedChannel newContentCompressor = newContentCompressor(channelHandlerContext, charSequence);
        if (newContentCompressor != null) {
            CharSequence targetContentEncoding = getTargetContentEncoding(charSequence);
            if (HttpHeaderValues.IDENTITY.contentEqualsIgnoreCase(targetContentEncoding)) {
                http2Headers.remove(asciiString);
            } else {
                http2Headers.set((Http2Headers) asciiString, (AsciiString) targetContentEncoding);
            }
            http2Headers.remove(HttpHeaderNames.CONTENT_LENGTH);
        }
        return newContentCompressor;
    }

    private static ByteBuf nextReadableBuf(EmbeddedChannel embeddedChannel) {
        while (true) {
            ByteBuf byteBuf = (ByteBuf) embeddedChannel.readOutbound();
            if (byteBuf == null) {
                return null;
            }
            if (byteBuf.isReadable()) {
                return byteBuf;
            }
            byteBuf.release();
        }
    }

    void cleanup(Http2Stream http2Stream, EmbeddedChannel embeddedChannel) {
        embeddedChannel.finishAndReleaseAll();
        http2Stream.removeProperty(this.propertyKey);
    }

    protected CharSequence getTargetContentEncoding(CharSequence charSequence) throws Http2Exception {
        return charSequence;
    }

    protected EmbeddedChannel newContentCompressor(ChannelHandlerContext channelHandlerContext, CharSequence charSequence) throws Http2Exception {
        if (!HttpHeaderValues.GZIP.contentEqualsIgnoreCase(charSequence) && !HttpHeaderValues.X_GZIP.contentEqualsIgnoreCase(charSequence)) {
            if (HttpHeaderValues.DEFLATE.contentEqualsIgnoreCase(charSequence) || HttpHeaderValues.X_DEFLATE.contentEqualsIgnoreCase(charSequence)) {
                return newCompressionChannel(channelHandlerContext, ZlibWrapper.ZLIB);
            }
            return null;
        }
        return newCompressionChannel(channelHandlerContext, ZlibWrapper.GZIP);
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x00a1, code lost:
        if (r21 != false) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00ab, code lost:
        if (r21 == false) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00ad, code lost:
        cleanup(r11, r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00b0, code lost:
        return r22;
     */
    @Override // io.netty.handler.codec.http2.DecoratingHttp2FrameWriter, io.netty.handler.codec.http2.Http2DataWriter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public io.netty.channel.ChannelFuture writeData(io.netty.channel.ChannelHandlerContext r17, int r18, io.netty.buffer.ByteBuf r19, int r20, boolean r21, io.netty.channel.ChannelPromise r22) {
        /*
            r16 = this;
            r8 = r16
            r9 = r22
            io.netty.handler.codec.http2.Http2Connection r0 = r16.connection()
            r10 = r18
            io.netty.handler.codec.http2.Http2Stream r11 = r0.stream(r10)
            if (r11 != 0) goto L12
            r0 = 0
            goto L1a
        L12:
            io.netty.handler.codec.http2.Http2Connection$a r0 = r8.propertyKey
            java.lang.Object r0 = r11.getProperty(r0)
            io.netty.channel.embedded.EmbeddedChannel r0 = (io.netty.channel.embedded.EmbeddedChannel) r0
        L1a:
            r12 = r0
            if (r12 != 0) goto L22
            io.netty.channel.ChannelFuture r0 = super.writeData(r17, r18, r19, r20, r21, r22)
            return r0
        L22:
            r0 = 1
            java.lang.Object[] r1 = new java.lang.Object[r0]     // Catch: java.lang.Throwable -> La7
            r13 = 0
            r1[r13] = r19     // Catch: java.lang.Throwable -> La7
            r12.writeOutbound(r1)     // Catch: java.lang.Throwable -> La7
            io.netty.buffer.ByteBuf r1 = nextReadableBuf(r12)     // Catch: java.lang.Throwable -> La7
            if (r1 != 0) goto L62
            if (r21 == 0) goto L59
            boolean r0 = r12.finish()     // Catch: java.lang.Throwable -> La7
            if (r0 == 0) goto L3d
            io.netty.buffer.ByteBuf r1 = nextReadableBuf(r12)     // Catch: java.lang.Throwable -> La7
        L3d:
            if (r1 != 0) goto L43
            io.netty.buffer.ByteBuf r0 = io.netty.buffer.Unpooled.EMPTY_BUFFER     // Catch: java.lang.Throwable -> La7
            r4 = r0
            goto L44
        L43:
            r4 = r1
        L44:
            r6 = 1
            r1 = r16
            r2 = r17
            r3 = r18
            r5 = r20
            r7 = r22
            io.netty.channel.ChannelFuture r0 = super.writeData(r2, r3, r4, r5, r6, r7)     // Catch: java.lang.Throwable -> La7
            if (r21 == 0) goto L58
            r8.cleanup(r11, r12)
        L58:
            return r0
        L59:
            r22.setSuccess()     // Catch: java.lang.Throwable -> La7
            if (r21 == 0) goto L61
            r8.cleanup(r11, r12)
        L61:
            return r9
        L62:
            io.netty.util.concurrent.PromiseCombiner r14 = new io.netty.util.concurrent.PromiseCombiner     // Catch: java.lang.Throwable -> La7
            io.netty.util.concurrent.EventExecutor r2 = r17.executor()     // Catch: java.lang.Throwable -> La7
            r14.<init>(r2)     // Catch: java.lang.Throwable -> La7
            r5 = r20
            r4 = r1
        L6e:
            io.netty.buffer.ByteBuf r1 = nextReadableBuf(r12)     // Catch: java.lang.Throwable -> La7
            if (r1 != 0) goto L78
            if (r21 == 0) goto L78
            r2 = 1
            goto L79
        L78:
            r2 = 0
        L79:
            if (r2 == 0) goto L8a
            boolean r3 = r12.finish()     // Catch: java.lang.Throwable -> La7
            if (r3 == 0) goto L8a
            io.netty.buffer.ByteBuf r1 = nextReadableBuf(r12)     // Catch: java.lang.Throwable -> La7
            if (r1 != 0) goto L89
            r2 = 1
            goto L8a
        L89:
            r2 = 0
        L8a:
            r15 = r1
            r6 = r2
            io.netty.channel.ChannelPromise r7 = r17.newPromise()     // Catch: java.lang.Throwable -> La7
            r14.add(r7)     // Catch: java.lang.Throwable -> La7
            r1 = r16
            r2 = r17
            r3 = r18
            super.writeData(r2, r3, r4, r5, r6, r7)     // Catch: java.lang.Throwable -> La7
            if (r15 != 0) goto La4
            r14.finish(r9)     // Catch: java.lang.Throwable -> La7
            if (r21 == 0) goto Lb0
            goto Lad
        La4:
            r4 = r15
            r5 = 0
            goto L6e
        La7:
            r0 = move-exception
            r9.tryFailure(r0)     // Catch: java.lang.Throwable -> Lb1
            if (r21 == 0) goto Lb0
        Lad:
            r8.cleanup(r11, r12)
        Lb0:
            return r9
        Lb1:
            r0 = move-exception
            r1 = r0
            if (r21 == 0) goto Lb8
            r8.cleanup(r11, r12)
        Lb8:
            goto Lba
        Lb9:
            throw r1
        Lba:
            goto Lb9
        */
        throw new UnsupportedOperationException("Method not decompiled: io.netty.handler.codec.http2.CompressorHttp2ConnectionEncoder.writeData(io.netty.channel.ChannelHandlerContext, int, io.netty.buffer.ByteBuf, int, boolean, io.netty.channel.ChannelPromise):io.netty.channel.ChannelFuture");
    }

    @Override // io.netty.handler.codec.http2.DecoratingHttp2FrameWriter, io.netty.handler.codec.http2.Http2FrameWriter
    public ChannelFuture writeHeaders(ChannelHandlerContext channelHandlerContext, int i2, Http2Headers http2Headers, int i4, boolean z3, ChannelPromise channelPromise) {
        try {
            EmbeddedChannel newCompressor = newCompressor(channelHandlerContext, http2Headers, z3);
            ChannelFuture writeHeaders = super.writeHeaders(channelHandlerContext, i2, http2Headers, i4, z3, channelPromise);
            bindCompressorToStream(newCompressor, i2);
            return writeHeaders;
        } catch (Throwable th) {
            channelPromise.tryFailure(th);
            return channelPromise;
        }
    }

    public CompressorHttp2ConnectionEncoder(Http2ConnectionEncoder http2ConnectionEncoder, int i2, int i4, int i5) {
        super(http2ConnectionEncoder);
        if (i2 < 0 || i2 > 9) {
            throw new IllegalArgumentException("compressionLevel: " + i2 + " (expected: 0-9)");
        } else if (i4 < 9 || i4 > 15) {
            throw new IllegalArgumentException("windowBits: " + i4 + " (expected: 9-15)");
        } else if (i5 >= 1 && i5 <= 9) {
            this.compressionLevel = i2;
            this.windowBits = i4;
            this.memLevel = i5;
            this.propertyKey = connection().newKey();
            connection().addListener(new Http2ConnectionAdapter() { // from class: io.netty.handler.codec.http2.CompressorHttp2ConnectionEncoder.1
                @Override // io.netty.handler.codec.http2.Http2ConnectionAdapter, io.netty.handler.codec.http2.Http2Connection.Listener
                public void onStreamRemoved(Http2Stream http2Stream) {
                    EmbeddedChannel embeddedChannel = (EmbeddedChannel) http2Stream.getProperty(CompressorHttp2ConnectionEncoder.this.propertyKey);
                    if (embeddedChannel != null) {
                        CompressorHttp2ConnectionEncoder.this.cleanup(http2Stream, embeddedChannel);
                    }
                }
            });
        } else {
            throw new IllegalArgumentException("memLevel: " + i5 + " (expected: 1-9)");
        }
    }

    @Override // io.netty.handler.codec.http2.DecoratingHttp2FrameWriter, io.netty.handler.codec.http2.Http2FrameWriter
    public ChannelFuture writeHeaders(ChannelHandlerContext channelHandlerContext, int i2, Http2Headers http2Headers, int i4, short s3, boolean z3, int i5, boolean z4, ChannelPromise channelPromise) {
        try {
            EmbeddedChannel newCompressor = newCompressor(channelHandlerContext, http2Headers, z4);
            ChannelFuture writeHeaders = super.writeHeaders(channelHandlerContext, i2, http2Headers, i4, s3, z3, i5, z4, channelPromise);
            bindCompressorToStream(newCompressor, i2);
            return writeHeaders;
        } catch (Throwable th) {
            channelPromise.tryFailure(th);
            return channelPromise;
        }
    }
}
