package d0;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;
/* compiled from: LimitedInputStream.java */
/* loaded from: classes2.dex */
public class a extends FilterInputStream {

    /* renamed from: a  reason: collision with root package name */
    private int f65129a;

    /* renamed from: b  reason: collision with root package name */
    private int f65130b;

    public a(InputStream inputStream, int i2) {
        super(inputStream);
        Objects.requireNonNull(inputStream);
        if (i2 >= 0) {
            this.f65129a = i2;
            this.f65130b = -1;
            return;
        }
        throw new IllegalArgumentException("limit must be >= 0");
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() throws IOException {
        return Math.min(((FilterInputStream) this).in.available(), this.f65129a);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void mark(int i2) {
        if (((FilterInputStream) this).in.markSupported()) {
            ((FilterInputStream) this).in.mark(i2);
            this.f65130b = this.f65129a;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        if (this.f65129a == 0) {
            return -1;
        }
        int read = ((FilterInputStream) this).in.read();
        if (read != -1) {
            this.f65129a--;
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void reset() throws IOException {
        if (((FilterInputStream) this).in.markSupported()) {
            if (this.f65130b != -1) {
                ((FilterInputStream) this).in.reset();
                this.f65129a = this.f65130b;
                return;
            }
            throw new IOException("mark not set");
        }
        throw new IOException("mark is not supported");
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j4) throws IOException {
        long skip = ((FilterInputStream) this).in.skip(Math.min(j4, this.f65129a));
        this.f65129a = (int) (this.f65129a - skip);
        return skip;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i2, int i4) throws IOException {
        int i5 = this.f65129a;
        if (i5 == 0) {
            return -1;
        }
        int read = ((FilterInputStream) this).in.read(bArr, i2, Math.min(i4, i5));
        if (read > 0) {
            this.f65129a -= read;
        }
        return read;
    }
}
