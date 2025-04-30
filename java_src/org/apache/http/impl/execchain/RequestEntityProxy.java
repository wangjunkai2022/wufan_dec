package org.apache.http.impl.execchain;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpRequest;
import org.apache.http.annotation.NotThreadSafe;
@NotThreadSafe
/* loaded from: classes5.dex */
class RequestEntityProxy implements HttpEntity {
    private boolean consumed = false;
    private final HttpEntity original;

    RequestEntityProxy(HttpEntity httpEntity) {
        this.original = httpEntity;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void enhance(HttpEntityEnclosingRequest httpEntityEnclosingRequest) {
        HttpEntity entity = httpEntityEnclosingRequest.getEntity();
        if (entity == null || entity.isRepeatable() || isEnhanced(entity)) {
            return;
        }
        httpEntityEnclosingRequest.setEntity(new RequestEntityProxy(entity));
    }

    static boolean isEnhanced(HttpEntity httpEntity) {
        return httpEntity instanceof RequestEntityProxy;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isRepeatable(HttpRequest httpRequest) {
        HttpEntity entity;
        if (!(httpRequest instanceof HttpEntityEnclosingRequest) || (entity = ((HttpEntityEnclosingRequest) httpRequest).getEntity()) == null) {
            return true;
        }
        if (!isEnhanced(entity) || ((RequestEntityProxy) entity).isConsumed()) {
            return entity.isRepeatable();
        }
        return true;
    }

    @Deprecated
    public void consumeContent() throws IOException {
        this.consumed = true;
        this.original.consumeContent();
    }

    public InputStream getContent() throws IOException, IllegalStateException {
        return this.original.getContent();
    }

    public Header getContentEncoding() {
        return this.original.getContentEncoding();
    }

    public long getContentLength() {
        return this.original.getContentLength();
    }

    public Header getContentType() {
        return this.original.getContentType();
    }

    public HttpEntity getOriginal() {
        return this.original;
    }

    public boolean isChunked() {
        return this.original.isChunked();
    }

    public boolean isConsumed() {
        return this.consumed;
    }

    public boolean isStreaming() {
        return this.original.isStreaming();
    }

    public String toString() {
        return "RequestEntityProxy{" + this.original + '}';
    }

    public void writeTo(OutputStream outputStream) throws IOException {
        this.consumed = true;
        this.original.writeTo(outputStream);
    }

    public boolean isRepeatable() {
        return this.original.isRepeatable();
    }
}
