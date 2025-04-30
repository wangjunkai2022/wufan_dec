package io.netty.handler.stream;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufAllocator;
import io.netty.channel.ChannelHandlerContext;
import io.netty.util.internal.ObjectUtil;
import java.io.InputStream;
import java.io.PushbackInputStream;
/* loaded from: classes5.dex */
public class ChunkedStream implements ChunkedInput<ByteBuf> {
    static final int DEFAULT_CHUNK_SIZE = 8192;
    private final int chunkSize;
    private boolean closed;

    /* renamed from: in  reason: collision with root package name */
    private final PushbackInputStream f65768in;
    private long offset;

    public ChunkedStream(InputStream inputStream) {
        this(inputStream, 8192);
    }

    @Override // io.netty.handler.stream.ChunkedInput
    public void close() throws Exception {
        this.closed = true;
        this.f65768in.close();
    }

    @Override // io.netty.handler.stream.ChunkedInput
    public boolean isEndOfInput() throws Exception {
        int read;
        if (!this.closed && (read = this.f65768in.read()) >= 0) {
            this.f65768in.unread(read);
            return false;
        }
        return true;
    }

    @Override // io.netty.handler.stream.ChunkedInput
    public long length() {
        return -1L;
    }

    @Override // io.netty.handler.stream.ChunkedInput
    public long progress() {
        return this.offset;
    }

    public long transferredBytes() {
        return this.offset;
    }

    public ChunkedStream(InputStream inputStream, int i2) {
        ObjectUtil.checkNotNull(inputStream, "in");
        ObjectUtil.checkPositive(i2, "chunkSize");
        if (inputStream instanceof PushbackInputStream) {
            this.f65768in = (PushbackInputStream) inputStream;
        } else {
            this.f65768in = new PushbackInputStream(inputStream);
        }
        this.chunkSize = i2;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // io.netty.handler.stream.ChunkedInput
    @Deprecated
    public ByteBuf readChunk(ChannelHandlerContext channelHandlerContext) throws Exception {
        return readChunk(channelHandlerContext.alloc());
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // io.netty.handler.stream.ChunkedInput
    public ByteBuf readChunk(ByteBufAllocator byteBufAllocator) throws Exception {
        int min;
        if (isEndOfInput()) {
            return null;
        }
        if (this.f65768in.available() <= 0) {
            min = this.chunkSize;
        } else {
            min = Math.min(this.chunkSize, this.f65768in.available());
        }
        ByteBuf buffer = byteBufAllocator.buffer(min);
        try {
            this.offset += buffer.writeBytes(this.f65768in, min);
            return buffer;
        } catch (Throwable th) {
            buffer.release();
            throw th;
        }
    }
}
