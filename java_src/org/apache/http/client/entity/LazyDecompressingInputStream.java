package org.apache.http.client.entity;

import java.io.IOException;
import java.io.InputStream;
import org.apache.http.annotation.NotThreadSafe;
/* JADX INFO: Access modifiers changed from: package-private */
@NotThreadSafe
/* loaded from: classes5.dex */
public class LazyDecompressingInputStream extends InputStream {
    private final DecompressingEntity decompressingEntity;
    private final InputStream wrappedStream;
    private InputStream wrapperStream;

    public LazyDecompressingInputStream(InputStream inputStream, DecompressingEntity decompressingEntity) {
        this.wrappedStream = inputStream;
        this.decompressingEntity = decompressingEntity;
    }

    private void initWrapper() throws IOException {
        if (this.wrapperStream == null) {
            this.wrapperStream = this.decompressingEntity.decorate(this.wrappedStream);
        }
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        initWrapper();
        return this.wrapperStream.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            InputStream inputStream = this.wrapperStream;
            if (inputStream != null) {
                inputStream.close();
            }
        } finally {
            this.wrappedStream.close();
        }
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        initWrapper();
        return this.wrapperStream.read();
    }

    @Override // java.io.InputStream
    public long skip(long j4) throws IOException {
        initWrapper();
        return this.wrapperStream.skip(j4);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        initWrapper();
        return this.wrapperStream.read(bArr);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i2, int i4) throws IOException {
        initWrapper();
        return this.wrapperStream.read(bArr, i2, i4);
    }
}
