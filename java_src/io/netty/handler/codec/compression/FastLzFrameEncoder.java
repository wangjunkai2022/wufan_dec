package io.netty.handler.codec.compression;

import io.netty.buffer.ByteBuf;
import io.netty.handler.codec.MessageToByteEncoder;
import java.util.zip.Adler32;
import java.util.zip.Checksum;
/* loaded from: classes5.dex */
public class FastLzFrameEncoder extends MessageToByteEncoder<ByteBuf> {
    private final Checksum checksum;
    private final int level;

    public FastLzFrameEncoder() {
        this(0, null);
    }

    public FastLzFrameEncoder(int i2) {
        this(i2, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00e3  */
    @Override // io.netty.handler.codec.MessageToByteEncoder
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void encode(io.netty.channel.ChannelHandlerContext r18, io.netty.buffer.ByteBuf r19, io.netty.buffer.ByteBuf r20) throws java.lang.Exception {
        /*
            Method dump skipped, instructions count: 243
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.netty.handler.codec.compression.FastLzFrameEncoder.encode(io.netty.channel.ChannelHandlerContext, io.netty.buffer.ByteBuf, io.netty.buffer.ByteBuf):void");
    }

    public FastLzFrameEncoder(boolean z3) {
        this(0, z3 ? new Adler32() : null);
    }

    public FastLzFrameEncoder(int i2, Checksum checksum) {
        super(false);
        if (i2 != 0 && i2 != 1 && i2 != 2) {
            throw new IllegalArgumentException(String.format("level: %d (expected: %d or %d or %d)", Integer.valueOf(i2), 0, 1, 2));
        }
        this.level = i2;
        this.checksum = checksum;
    }
}
