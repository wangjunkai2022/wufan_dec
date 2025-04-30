package org.apache.http.entity;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.util.Args;
@NotThreadSafe
/* loaded from: classes5.dex */
public class ByteArrayEntityHC4 extends AbstractHttpEntityHC4 implements Cloneable {

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f73197b;
    @Deprecated
    protected final byte[] content;
    private final int len;
    private final int off;

    public ByteArrayEntityHC4(byte[] bArr, ContentType contentType) {
        Args.notNull(bArr, "Source byte array");
        this.content = bArr;
        this.f73197b = bArr;
        this.off = 0;
        this.len = bArr.length;
        if (contentType != null) {
            setContentType(contentType.toString());
        }
    }

    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    public InputStream getContent() {
        return new ByteArrayInputStream(this.f73197b, this.off, this.len);
    }

    public long getContentLength() {
        return this.len;
    }

    public boolean isRepeatable() {
        return true;
    }

    public boolean isStreaming() {
        return false;
    }

    public void writeTo(OutputStream outputStream) throws IOException {
        Args.notNull(outputStream, "Output stream");
        outputStream.write(this.f73197b, this.off, this.len);
        outputStream.flush();
    }

    public ByteArrayEntityHC4(byte[] bArr, int i2, int i4, ContentType contentType) {
        int i5;
        Args.notNull(bArr, "Source byte array");
        if (i2 >= 0 && i2 <= bArr.length && i4 >= 0 && (i5 = i2 + i4) >= 0 && i5 <= bArr.length) {
            this.content = bArr;
            this.f73197b = bArr;
            this.off = i2;
            this.len = i4;
            if (contentType != null) {
                setContentType(contentType.toString());
                return;
            }
            return;
        }
        throw new IndexOutOfBoundsException("off: " + i2 + " len: " + i4 + " b.length: " + bArr.length);
    }

    public ByteArrayEntityHC4(byte[] bArr) {
        this(bArr, null);
    }

    public ByteArrayEntityHC4(byte[] bArr, int i2, int i4) {
        this(bArr, i2, i4, null);
    }
}
