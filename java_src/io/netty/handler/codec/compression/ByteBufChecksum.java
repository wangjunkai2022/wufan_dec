package io.netty.handler.codec.compression;

import io.netty.buffer.ByteBuf;
import io.netty.util.ByteProcessor;
import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.PlatformDependent;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.zip.Adler32;
import java.util.zip.CRC32;
import java.util.zip.Checksum;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class ByteBufChecksum implements Checksum {
    private static final Method ADLER32_UPDATE_METHOD = updateByteBuffer(new Adler32());
    private static final Method CRC32_UPDATE_METHOD = updateByteBuffer(new CRC32());
    private final ByteProcessor updateProcessor = new ByteProcessor() { // from class: io.netty.handler.codec.compression.ByteBufChecksum.1
        @Override // io.netty.util.ByteProcessor
        public boolean process(byte b4) throws Exception {
            ByteBufChecksum.this.update(b4);
            return true;
        }
    };

    /* loaded from: classes5.dex */
    private static final class ReflectiveByteBufChecksum extends SlowByteBufChecksum {
        private final Method method;

        ReflectiveByteBufChecksum(Checksum checksum, Method method) {
            super(checksum);
            this.method = method;
        }

        @Override // io.netty.handler.codec.compression.ByteBufChecksum
        public void update(ByteBuf byteBuf, int i2, int i4) {
            if (byteBuf.hasArray()) {
                update(byteBuf.array(), byteBuf.arrayOffset() + i2, i4);
            } else {
                this.method.invoke(this.checksum, CompressionUtil.safeNioBuffer(byteBuf, i2, i4));
            }
        }
    }

    /* loaded from: classes5.dex */
    private static class SlowByteBufChecksum extends ByteBufChecksum {
        protected final Checksum checksum;

        SlowByteBufChecksum(Checksum checksum) {
            this.checksum = checksum;
        }

        @Override // java.util.zip.Checksum
        public long getValue() {
            return this.checksum.getValue();
        }

        @Override // java.util.zip.Checksum
        public void reset() {
            this.checksum.reset();
        }

        @Override // java.util.zip.Checksum
        public void update(int i2) {
            this.checksum.update(i2);
        }

        @Override // java.util.zip.Checksum
        public void update(byte[] bArr, int i2, int i4) {
            this.checksum.update(bArr, i2, i4);
        }
    }

    private static Method updateByteBuffer(Checksum checksum) {
        if (PlatformDependent.javaVersion() >= 8) {
            try {
                Method declaredMethod = checksum.getClass().getDeclaredMethod("update", ByteBuffer.class);
                declaredMethod.invoke(checksum, ByteBuffer.allocate(1));
                return declaredMethod;
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ByteBufChecksum wrapChecksum(Checksum checksum) {
        Method method;
        Method method2;
        ObjectUtil.checkNotNull(checksum, "checksum");
        if (checksum instanceof ByteBufChecksum) {
            return (ByteBufChecksum) checksum;
        }
        if ((checksum instanceof Adler32) && (method2 = ADLER32_UPDATE_METHOD) != null) {
            return new ReflectiveByteBufChecksum(checksum, method2);
        }
        if ((checksum instanceof CRC32) && (method = CRC32_UPDATE_METHOD) != null) {
            return new ReflectiveByteBufChecksum(checksum, method);
        }
        return new SlowByteBufChecksum(checksum);
    }

    public void update(ByteBuf byteBuf, int i2, int i4) {
        if (byteBuf.hasArray()) {
            update(byteBuf.array(), byteBuf.arrayOffset() + i2, i4);
        } else {
            byteBuf.forEachByte(i2, i4, this.updateProcessor);
        }
    }
}
