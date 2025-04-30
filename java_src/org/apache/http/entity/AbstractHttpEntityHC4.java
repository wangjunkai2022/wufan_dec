package org.apache.http.entity;

import java.io.IOException;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.message.BasicHeader;
@NotThreadSafe
/* loaded from: classes5.dex */
public abstract class AbstractHttpEntityHC4 implements HttpEntity {
    protected static final int OUTPUT_BUFFER_SIZE = 4096;
    protected boolean chunked;
    protected Header contentEncoding;
    protected Header contentType;

    @Deprecated
    public void consumeContent() throws IOException {
    }

    public Header getContentEncoding() {
        return this.contentEncoding;
    }

    public Header getContentType() {
        return this.contentType;
    }

    public boolean isChunked() {
        return this.chunked;
    }

    public void setChunked(boolean z3) {
        this.chunked = z3;
    }

    public void setContentEncoding(Header header) {
        this.contentEncoding = header;
    }

    public void setContentType(Header header) {
        this.contentType = header;
    }

    public void setContentEncoding(String str) {
        setContentEncoding((Header) (str != null ? new BasicHeader("Content-Encoding", str) : null));
    }

    public void setContentType(String str) {
        setContentType((Header) (str != null ? new BasicHeader("Content-Type", str) : null));
    }
}
