package io.netty.channel;

import com.facebook.common.util.f;
import io.netty.util.AbstractReferenceCounted;
import io.netty.util.IllegalReferenceCountException;
import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.nio.channels.WritableByteChannel;
import net.lingala.zip4j.util.e;
/* loaded from: classes5.dex */
public class DefaultFileRegion extends AbstractReferenceCounted implements FileRegion {
    private static final InternalLogger logger = InternalLoggerFactory.getInstance(DefaultFileRegion.class);
    private final long count;

    /* renamed from: f  reason: collision with root package name */
    private final File f65741f;
    private FileChannel file;
    private final long position;
    private long transferred;

    public DefaultFileRegion(FileChannel fileChannel, long j4, long j5) {
        this.file = (FileChannel) ObjectUtil.checkNotNull(fileChannel, f.f11767c);
        this.position = ObjectUtil.checkPositiveOrZero(j4, "position");
        this.count = ObjectUtil.checkPositiveOrZero(j5, "count");
        this.f65741f = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void validate(DefaultFileRegion defaultFileRegion, long j4) throws IOException {
        long size = defaultFileRegion.file.size();
        if (defaultFileRegion.position + (defaultFileRegion.count - j4) + j4 <= size) {
            return;
        }
        throw new IOException("Underlying file size " + size + " smaller then requested count " + defaultFileRegion.count);
    }

    @Override // io.netty.channel.FileRegion
    public long count() {
        return this.count;
    }

    @Override // io.netty.util.AbstractReferenceCounted
    protected void deallocate() {
        FileChannel fileChannel = this.file;
        if (fileChannel == null) {
            return;
        }
        this.file = null;
        try {
            fileChannel.close();
        } catch (IOException e4) {
            logger.warn("Failed to close a file.", (Throwable) e4);
        }
    }

    public boolean isOpen() {
        return this.file != null;
    }

    public void open() throws IOException {
        if (isOpen() || refCnt() <= 0) {
            return;
        }
        this.file = new RandomAccessFile(this.f65741f, e.f73017f0).getChannel();
    }

    @Override // io.netty.channel.FileRegion
    public long position() {
        return this.position;
    }

    @Override // io.netty.util.AbstractReferenceCounted, io.netty.util.ReferenceCounted
    public FileRegion touch() {
        return this;
    }

    @Override // io.netty.util.ReferenceCounted
    public FileRegion touch(Object obj) {
        return this;
    }

    @Override // io.netty.channel.FileRegion
    public long transferTo(WritableByteChannel writableByteChannel, long j4) throws IOException {
        long j5 = this.count - j4;
        if (j5 < 0 || j4 < 0) {
            throw new IllegalArgumentException("position out of range: " + j4 + " (expected: 0 - " + (this.count - 1) + ')');
        } else if (j5 == 0) {
            return 0L;
        } else {
            if (refCnt() != 0) {
                open();
                long transferTo = this.file.transferTo(this.position + j4, j5, writableByteChannel);
                if (transferTo > 0) {
                    this.transferred += transferTo;
                } else if (transferTo == 0) {
                    validate(this, j4);
                }
                return transferTo;
            }
            throw new IllegalReferenceCountException(0);
        }
    }

    @Override // io.netty.channel.FileRegion
    @Deprecated
    public long transfered() {
        return this.transferred;
    }

    @Override // io.netty.channel.FileRegion
    public long transferred() {
        return this.transferred;
    }

    @Override // io.netty.util.AbstractReferenceCounted, io.netty.util.ReferenceCounted
    public FileRegion retain() {
        super.retain();
        return this;
    }

    @Override // io.netty.util.AbstractReferenceCounted, io.netty.util.ReferenceCounted
    public FileRegion retain(int i2) {
        super.retain(i2);
        return this;
    }

    public DefaultFileRegion(File file, long j4, long j5) {
        this.f65741f = (File) ObjectUtil.checkNotNull(file, "f");
        this.position = ObjectUtil.checkPositiveOrZero(j4, "position");
        this.count = ObjectUtil.checkPositiveOrZero(j5, "count");
    }
}
