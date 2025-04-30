package io.netty.handler.stream;

import com.facebook.common.util.f;
import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufAllocator;
import io.netty.channel.ChannelHandlerContext;
import io.netty.util.internal.ObjectUtil;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import net.lingala.zip4j.util.e;
/* loaded from: classes5.dex */
public class ChunkedFile implements ChunkedInput<ByteBuf> {
    private final int chunkSize;
    private final long endOffset;
    private final RandomAccessFile file;
    private long offset;
    private final long startOffset;

    public ChunkedFile(File file) throws IOException {
        this(file, 8192);
    }

    @Override // io.netty.handler.stream.ChunkedInput
    public void close() throws Exception {
        this.file.close();
    }

    public long currentOffset() {
        return this.offset;
    }

    public long endOffset() {
        return this.endOffset;
    }

    @Override // io.netty.handler.stream.ChunkedInput
    public boolean isEndOfInput() throws Exception {
        return this.offset >= this.endOffset || !this.file.getChannel().isOpen();
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

    public ChunkedFile(File file, int i2) throws IOException {
        this(new RandomAccessFile(file, e.f73017f0), i2);
    }

    public ChunkedFile(RandomAccessFile randomAccessFile) throws IOException {
        this(randomAccessFile, 8192);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // io.netty.handler.stream.ChunkedInput
    @Deprecated
    public ByteBuf readChunk(ChannelHandlerContext channelHandlerContext) throws Exception {
        return readChunk(channelHandlerContext.alloc());
    }

    public ChunkedFile(RandomAccessFile randomAccessFile, int i2) throws IOException {
        this(randomAccessFile, 0L, randomAccessFile.length(), i2);
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
        ByteBuf heapBuffer = byteBufAllocator.heapBuffer(min);
        try {
            this.file.readFully(heapBuffer.array(), heapBuffer.arrayOffset(), min);
            heapBuffer.writerIndex(min);
            this.offset = j4 + min;
            return heapBuffer;
        } catch (Throwable th) {
            heapBuffer.release();
            throw th;
        }
    }

    public ChunkedFile(RandomAccessFile randomAccessFile, long j4, long j5, int i2) throws IOException {
        ObjectUtil.checkNotNull(randomAccessFile, f.f11767c);
        ObjectUtil.checkPositiveOrZero(j4, "offset");
        ObjectUtil.checkPositiveOrZero(j5, "length");
        ObjectUtil.checkPositive(i2, "chunkSize");
        this.file = randomAccessFile;
        this.startOffset = j4;
        this.offset = j4;
        this.endOffset = j5 + j4;
        this.chunkSize = i2;
        randomAccessFile.seek(j4);
    }
}
