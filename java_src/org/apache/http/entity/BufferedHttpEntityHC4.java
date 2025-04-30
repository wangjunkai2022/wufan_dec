package org.apache.http.entity;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.http.HttpEntity;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.util.Args;
import org.apache.http.util.EntityUtilsHC4;
@NotThreadSafe
/* loaded from: classes5.dex */
public class BufferedHttpEntityHC4 extends HttpEntityWrapperHC4 {
    private final byte[] buffer;

    public BufferedHttpEntityHC4(HttpEntity httpEntity) throws IOException {
        super(httpEntity);
        if (httpEntity.isRepeatable() && httpEntity.getContentLength() >= 0) {
            this.buffer = null;
        } else {
            this.buffer = EntityUtilsHC4.toByteArray(httpEntity);
        }
    }

    @Override // org.apache.http.entity.HttpEntityWrapperHC4
    public InputStream getContent() throws IOException {
        if (this.buffer != null) {
            return new ByteArrayInputStream(this.buffer);
        }
        return super.getContent();
    }

    @Override // org.apache.http.entity.HttpEntityWrapperHC4
    public long getContentLength() {
        byte[] bArr = this.buffer;
        if (bArr != null) {
            return bArr.length;
        }
        return super.getContentLength();
    }

    @Override // org.apache.http.entity.HttpEntityWrapperHC4
    public boolean isChunked() {
        return this.buffer == null && super.isChunked();
    }

    @Override // org.apache.http.entity.HttpEntityWrapperHC4
    public boolean isRepeatable() {
        return true;
    }

    @Override // org.apache.http.entity.HttpEntityWrapperHC4
    public boolean isStreaming() {
        return this.buffer == null && super.isStreaming();
    }

    @Override // org.apache.http.entity.HttpEntityWrapperHC4
    public void writeTo(OutputStream outputStream) throws IOException {
        Args.notNull(outputStream, "Output stream");
        byte[] bArr = this.buffer;
        if (bArr != null) {
            outputStream.write(bArr);
        } else {
            super.writeTo(outputStream);
        }
    }
}
