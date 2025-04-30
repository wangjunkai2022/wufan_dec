package io.netty.handler.stream;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufAllocator;
import io.netty.channel.ChannelHandlerContext;
import io.netty.util.internal.ObjectUtil;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.FileChannel;
import net.lingala.zip4j.util.e;
/* loaded from: classes5.dex */
public class ChunkedNioFile implements ChunkedInput<ByteBuf> {
    private final int chunkSize;
    private final long endOffset;

    /* renamed from: in  reason: collision with root package name */
    private final FileChannel f65766in;
    private long offset;
    private final long startOffset;

    public ChunkedNioFile(File file) throws IOException {
        this(new RandomAccessFile(file, e.f73017f0).getChannel());
    }

    @Override // io.netty.handler.stream.ChunkedInput
    public void close() throws Exception {
        this.f65766in.close();
    }

    public long currentOffset() {
        return this.offset;
    }

    public long endOffset() {
        return this.endOffset;
    }

    @Override // io.netty.handler.stream.ChunkedInput
    public boolean isEndOfInput() throws Exception {
        return this.offset >= this.endOffset || !this.f65766in.isOpen();
    }

    @Override // io.netty.handler.stream.ChunkedInput
    public long length() {
        return this.endOffset - this.startOffset;
    }

    @Override // io.netty.handler.stream.ChunkedInput
    public long progress() {
        return this.offset - this.startOffset;
    }

    public long startOffset() {
        return this.startOffset;
    }

    public ChunkedNioFile(File file, int i2) throws IOException {
        this(new RandomAccessFile(file, e.f73017f0).getChannel(), i2);
    }

    public ChunkedNioFile(FileChannel fileChannel) throws IOException {
        this(fileChannel, 8192);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // io.netty.handler.stream.ChunkedInput
    @Deprecated
    public ByteBuf readChunk(ChannelHandlerContext channelHandlerContext) throws Exception {
        return readChunk(channelHandlerContext.alloc());
    }

    public ChunkedNioFile(FileChannel fileChannel, int i2) throws IOException {
        this(fileChannel, 0L, fileChannel.size(), i2);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // io.netty.handler.stream.ChunkedInput
    public ByteBuf readChunk(ByteBufAllocator byteBufAllocator) throws Exception {
        long j4 = this.offset;
        long j5 = this.endOffset;
        if (j4 >= j5) {
            return null;
        }
        int min = (int) Math.min(this.chunkSize, j5 - j4);
        ByteBuf buffer = byteBufAllocator.buffer(min);
        int i2 = 0;
        do {
            try {
                int writeBytes = buffer.writeBytes(this.f65766in, i2 + j4, min - i2);
                if (writeBytes < 0) {
                    break;
                }
                i2 += writeBytes;
            } catch (Throwable th) {
                buffer.release();
                throw th;
            }
        } while (i2 != min);
        this.offset += i2;
        return buffer;
    }

    public ChunkedNioFile(FileChannel fileChannel, long j4, long j5, int i2) throws IOException {
        ObjectUtil.checkNotNull(fileChannel, "in");
        ObjectUtil.checkPositiveOrZero(j4, "offset");
        ObjectUtil.checkPositiveOrZero(j5, "length");
        ObjectUtil.checkPositive(i2, "chunkSize");
        if (fileChannel.isOpen()) {
            this.f65766in = fileChannel;
            this.chunkSize = i2;
            this.startOffset = j4;
            this.offset = j4;
            this.endOffset = j4 + j5;
            return;
        }
        throw new ClosedChannelException();
    }
}
