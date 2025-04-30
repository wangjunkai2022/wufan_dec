package io.netty.handler.codec.http.multipart;

import com.facebook.common.util.f;
import io.netty.buffer.ByteBuf;
import io.netty.buffer.CompositeByteBuf;
import io.netty.buffer.Unpooled;
import io.netty.handler.codec.http.HttpConstants;
import io.netty.util.internal.ObjectUtil;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.charset.Charset;
import net.lingala.zip4j.util.e;
/* loaded from: classes5.dex */
public abstract class AbstractMemoryHttpData extends AbstractHttpData {
    private ByteBuf byteBuf;
    private int chunkPosition;

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractMemoryHttpData(String str, Charset charset, long j4) {
        super(str, charset, j4);
    }

    @Override // io.netty.handler.codec.http.multipart.HttpData
    public void addContent(ByteBuf byteBuf, boolean z3) throws IOException {
        if (byteBuf != null) {
            long readableBytes = byteBuf.readableBytes();
            checkSize(this.size + readableBytes);
            long j4 = this.definedSize;
            if (j4 > 0 && j4 < this.size + readableBytes) {
                throw new IOException("Out of size: " + (this.size + readableBytes) + " > " + this.definedSize);
            }
            this.size += readableBytes;
            ByteBuf byteBuf2 = this.byteBuf;
            if (byteBuf2 == null) {
                this.byteBuf = byteBuf;
            } else if (byteBuf2 instanceof CompositeByteBuf) {
                ((CompositeByteBuf) byteBuf2).addComponent(true, byteBuf);
            } else {
                CompositeByteBuf compositeBuffer = Unpooled.compositeBuffer(Integer.MAX_VALUE);
                compositeBuffer.addComponents(true, this.byteBuf, byteBuf);
                this.byteBuf = compositeBuffer;
            }
        }
        if (z3) {
            setCompleted();
        } else {
            ObjectUtil.checkNotNull(byteBuf, "buffer");
        }
    }

    @Override // io.netty.handler.codec.http.multipart.HttpData
    public void delete() {
        ByteBuf byteBuf = this.byteBuf;
        if (byteBuf != null) {
            byteBuf.release();
            this.byteBuf = null;
        }
    }

    @Override // io.netty.handler.codec.http.multipart.HttpData
    public byte[] get() {
        ByteBuf byteBuf = this.byteBuf;
        if (byteBuf == null) {
            return Unpooled.EMPTY_BUFFER.array();
        }
        byte[] bArr = new byte[byteBuf.readableBytes()];
        ByteBuf byteBuf2 = this.byteBuf;
        byteBuf2.getBytes(byteBuf2.readerIndex(), bArr);
        return bArr;
    }

    @Override // io.netty.handler.codec.http.multipart.HttpData
    public ByteBuf getByteBuf() {
        return this.byteBuf;
    }

    @Override // io.netty.handler.codec.http.multipart.HttpData
    public ByteBuf getChunk(int i2) throws IOException {
        ByteBuf byteBuf = this.byteBuf;
        if (byteBuf != null && i2 != 0 && byteBuf.readableBytes() != 0) {
            int readableBytes = this.byteBuf.readableBytes();
            int i4 = this.chunkPosition;
            int i5 = readableBytes - i4;
            if (i5 == 0) {
                this.chunkPosition = 0;
                return Unpooled.EMPTY_BUFFER;
            }
            if (i5 < i2) {
                i2 = i5;
            }
            ByteBuf retainedSlice = this.byteBuf.retainedSlice(i4, i2);
            this.chunkPosition += i2;
            return retainedSlice;
        }
        this.chunkPosition = 0;
        return Unpooled.EMPTY_BUFFER;
    }

    @Override // io.netty.handler.codec.http.multipart.HttpData
    public File getFile() throws IOException {
        throw new IOException("Not represented by a file");
    }

    @Override // io.netty.handler.codec.http.multipart.HttpData
    public String getString() {
        return getString(HttpConstants.DEFAULT_CHARSET);
    }

    @Override // io.netty.handler.codec.http.multipart.HttpData
    public boolean isInMemory() {
        return true;
    }

    @Override // io.netty.handler.codec.http.multipart.HttpData
    public boolean renameTo(File file) throws IOException {
        int i2;
        ObjectUtil.checkNotNull(file, "dest");
        ByteBuf byteBuf = this.byteBuf;
        if (byteBuf == null) {
            if (file.createNewFile()) {
                return true;
            }
            throw new IOException("file exists already: " + file);
        }
        int readableBytes = byteBuf.readableBytes();
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, e.f73015e0);
        FileChannel channel = randomAccessFile.getChannel();
        if (this.byteBuf.nioBufferCount() == 1) {
            ByteBuffer nioBuffer = this.byteBuf.nioBuffer();
            i2 = 0;
            while (i2 < readableBytes) {
                i2 += channel.write(nioBuffer);
            }
        } else {
            ByteBuffer[] nioBuffers = this.byteBuf.nioBuffers();
            i2 = 0;
            while (i2 < readableBytes) {
                i2 = (int) (i2 + channel.write(nioBuffers));
            }
        }
        channel.force(false);
        channel.close();
        randomAccessFile.close();
        return i2 == readableBytes;
    }

    @Override // io.netty.handler.codec.http.multipart.HttpData
    public void setContent(ByteBuf byteBuf) throws IOException {
        ObjectUtil.checkNotNull(byteBuf, "buffer");
        long readableBytes = byteBuf.readableBytes();
        checkSize(readableBytes);
        long j4 = this.definedSize;
        if (j4 > 0 && j4 < readableBytes) {
            throw new IOException("Out of size: " + readableBytes + " > " + this.definedSize);
        }
        ByteBuf byteBuf2 = this.byteBuf;
        if (byteBuf2 != null) {
            byteBuf2.release();
        }
        this.byteBuf = byteBuf;
        this.size = readableBytes;
        setCompleted();
    }

    @Override // io.netty.handler.codec.http.multipart.HttpData
    public String getString(Charset charset) {
        ByteBuf byteBuf = this.byteBuf;
        if (byteBuf == null) {
            return "";
        }
        if (charset == null) {
            charset = HttpConstants.DEFAULT_CHARSET;
        }
        return byteBuf.toString(charset);
    }

    @Override // io.netty.handler.codec.http.multipart.AbstractHttpData, io.netty.util.AbstractReferenceCounted, io.netty.util.ReferenceCounted
    public HttpData touch() {
        return touch((Object) null);
    }

    @Override // io.netty.handler.codec.http.multipart.AbstractHttpData, io.netty.util.ReferenceCounted
    public HttpData touch(Object obj) {
        ByteBuf byteBuf = this.byteBuf;
        if (byteBuf != null) {
            byteBuf.touch(obj);
        }
        return this;
    }

    @Override // io.netty.handler.codec.http.multipart.HttpData
    public void setContent(InputStream inputStream) throws IOException {
        ObjectUtil.checkNotNull(inputStream, "inputStream");
        ByteBuf buffer = Unpooled.buffer();
        byte[] bArr = new byte[16384];
        int read = inputStream.read(bArr);
        int i2 = 0;
        while (read > 0) {
            buffer.writeBytes(bArr, 0, read);
            i2 += read;
            checkSize(i2);
            read = inputStream.read(bArr);
        }
        long j4 = i2;
        this.size = j4;
        long j5 = this.definedSize;
        if (j5 > 0 && j5 < j4) {
            throw new IOException("Out of size: " + this.size + " > " + this.definedSize);
        }
        ByteBuf byteBuf = this.byteBuf;
        if (byteBuf != null) {
            byteBuf.release();
        }
        this.byteBuf = buffer;
        setCompleted();
    }

    @Override // io.netty.handler.codec.http.multipart.HttpData
    public void setContent(File file) throws IOException {
        ObjectUtil.checkNotNull(file, f.f11767c);
        long length = file.length();
        if (length <= 2147483647L) {
            checkSize(length);
            RandomAccessFile randomAccessFile = new RandomAccessFile(file, e.f73017f0);
            FileChannel channel = randomAccessFile.getChannel();
            ByteBuffer wrap = ByteBuffer.wrap(new byte[(int) length]);
            for (int i2 = 0; i2 < length; i2 += channel.read(wrap)) {
            }
            channel.close();
            randomAccessFile.close();
            wrap.flip();
            ByteBuf byteBuf = this.byteBuf;
            if (byteBuf != null) {
                byteBuf.release();
            }
            this.byteBuf = Unpooled.wrappedBuffer(Integer.MAX_VALUE, wrap);
            this.size = length;
            setCompleted();
            return;
        }
        throw new IllegalArgumentException("File too big to be loaded in memory");
    }
}
