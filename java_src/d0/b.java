package d0;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;
/* compiled from: TailAppendingInputStream.java */
/* loaded from: classes2.dex */
public class b extends FilterInputStream {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f65131a;

    /* renamed from: b  reason: collision with root package name */
    private int f65132b;

    /* renamed from: c  reason: collision with root package name */
    private int f65133c;

    public b(InputStream inputStream, byte[] bArr) {
        super(inputStream);
        Objects.requireNonNull(inputStream);
        Objects.requireNonNull(bArr);
        this.f65131a = bArr;
    }

    private int a() {
        int i2 = this.f65132b;
        byte[] bArr = this.f65131a;
        if (i2 >= bArr.length) {
            return -1;
        }
        this.f65132b = i2 + 1;
        return bArr[i2] & 255;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void mark(int i2) {
        if (((FilterInputStream) this).in.markSupported()) {
            super.mark(i2);
            this.f65133c = this.f65132b;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int read = ((FilterInputStream) this).in.read();
        return read != -1 ? read : a();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void reset() throws IOException {
        if (((FilterInputStream) this).in.markSupported()) {
            ((FilterInputStream) this).in.reset();
            this.f65132b = this.f65133c;
            return;
        }
        throw new IOException("mark is not supported");
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i2, int i4) throws IOException {
        int read = ((FilterInputStream) this).in.read(bArr, i2, i4);
        if (read != -1) {
            return read;
        }
        int i5 = 0;
        if (i4 == 0) {
            return 0;
        }
        while (i5 < i4) {
            int a4 = a();
            if (a4 == -1) {
                break;
            }
            bArr[i2 + i5] = (byte) a4;
            i5++;
        }
        if (i5 > 0) {
            return i5;
        }
        return -1;
    }
}
