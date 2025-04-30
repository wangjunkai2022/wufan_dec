package io.netty.handler.codec.serialization;

import io.netty.util.internal.ObjectUtil;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInput;
import java.io.StreamCorruptedException;
/* loaded from: classes5.dex */
public class ObjectDecoderInputStream extends InputStream implements ObjectInput {
    private final ClassResolver classResolver;

    /* renamed from: in  reason: collision with root package name */
    private final DataInputStream f65756in;
    private final int maxObjectSize;

    public ObjectDecoderInputStream(InputStream inputStream) {
        this(inputStream, (ClassLoader) null);
    }

    @Override // java.io.InputStream, java.io.ObjectInput
    public int available() throws IOException {
        return this.f65756in.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable, java.io.ObjectInput
    public void close() throws IOException {
        this.f65756in.close();
    }

    @Override // java.io.InputStream
    public void mark(int i2) {
        this.f65756in.mark(i2);
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.f65756in.markSupported();
    }

    @Override // java.io.InputStream, java.io.ObjectInput
    public int read() throws IOException {
        return this.f65756in.read();
    }

    @Override // java.io.DataInput
    public final boolean readBoolean() throws IOException {
        return this.f65756in.readBoolean();
    }

    @Override // java.io.DataInput
    public final byte readByte() throws IOException {
        return this.f65756in.readByte();
    }

    @Override // java.io.DataInput
    public final char readChar() throws IOException {
        return this.f65756in.readChar();
    }

    @Override // java.io.DataInput
    public final double readDouble() throws IOException {
        return this.f65756in.readDouble();
    }

    @Override // java.io.DataInput
    public final float readFloat() throws IOException {
        return this.f65756in.readFloat();
    }

    @Override // java.io.DataInput
    public final void readFully(byte[] bArr, int i2, int i4) throws IOException {
        this.f65756in.readFully(bArr, i2, i4);
    }

    @Override // java.io.DataInput
    public final int readInt() throws IOException {
        return this.f65756in.readInt();
    }

    @Override // java.io.DataInput
    @Deprecated
    public final String readLine() throws IOException {
        return this.f65756in.readLine();
    }

    @Override // java.io.DataInput
    public final long readLong() throws IOException {
        return this.f65756in.readLong();
    }

    @Override // java.io.ObjectInput
    public Object readObject() throws ClassNotFoundException, IOException {
        int readInt = readInt();
        if (readInt > 0) {
            if (readInt <= this.maxObjectSize) {
                return new CompactObjectInputStream(this.f65756in, this.classResolver).readObject();
            }
            throw new StreamCorruptedException("data length too big: " + readInt + " (max: " + this.maxObjectSize + ')');
        }
        throw new StreamCorruptedException("invalid data length: " + readInt);
    }

    @Override // java.io.DataInput
    public final short readShort() throws IOException {
        return this.f65756in.readShort();
    }

    @Override // java.io.DataInput
    public final String readUTF() throws IOException {
        return this.f65756in.readUTF();
    }

    @Override // java.io.DataInput
    public final int readUnsignedByte() throws IOException {
        return this.f65756in.readUnsignedByte();
    }

    @Override // java.io.DataInput
    public final int readUnsignedShort() throws IOException {
        return this.f65756in.readUnsignedShort();
    }

    @Override // java.io.InputStream
    public void reset() throws IOException {
        this.f65756in.reset();
    }

    @Override // java.io.InputStream, java.io.ObjectInput
    public long skip(long j4) throws IOException {
        return this.f65756in.skip(j4);
    }

    @Override // java.io.DataInput
    public final int skipBytes(int i2) throws IOException {
        return this.f65756in.skipBytes(i2);
    }

    public ObjectDecoderInputStream(InputStream inputStream, ClassLoader classLoader) {
        this(inputStream, classLoader, 1048576);
    }

    @Override // java.io.InputStream, java.io.ObjectInput
    public final int read(byte[] bArr, int i2, int i4) throws IOException {
        return this.f65756in.read(bArr, i2, i4);
    }

    @Override // java.io.DataInput
    public final void readFully(byte[] bArr) throws IOException {
        this.f65756in.readFully(bArr);
    }

    public ObjectDecoderInputStream(InputStream inputStream, int i2) {
        this(inputStream, null, i2);
    }

    @Override // java.io.InputStream, java.io.ObjectInput
    public final int read(byte[] bArr) throws IOException {
        return this.f65756in.read(bArr);
    }

    public ObjectDecoderInputStream(InputStream inputStream, ClassLoader classLoader, int i2) {
        ObjectUtil.checkNotNull(inputStream, "in");
        ObjectUtil.checkPositive(i2, "maxObjectSize");
        if (inputStream instanceof DataInputStream) {
            this.f65756in = (DataInputStream) inputStream;
        } else {
            this.f65756in = new DataInputStream(inputStream);
        }
        this.classResolver = ClassResolvers.weakCachingResolver(classLoader);
        this.maxObjectSize = i2;
    }
}
