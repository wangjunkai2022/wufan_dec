package org.apache.http.impl.client;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.ProtocolException;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.entity.HttpEntityWrapperHC4;
@Deprecated
@NotThreadSafe
/* loaded from: classes5.dex */
public class EntityEnclosingRequestWrapperHC4 extends RequestWrapper implements HttpEntityEnclosingRequest {
    private boolean consumed;
    private HttpEntity entity;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class EntityWrapper extends HttpEntityWrapperHC4 {
        EntityWrapper(HttpEntity httpEntity) {
            super(httpEntity);
        }

        @Override // org.apache.http.entity.HttpEntityWrapperHC4
        public void consumeContent() throws IOException {
            EntityEnclosingRequestWrapperHC4.this.consumed = true;
            super.consumeContent();
        }

        @Override // org.apache.http.entity.HttpEntityWrapperHC4
        public InputStream getContent() throws IOException {
            EntityEnclosingRequestWrapperHC4.this.consumed = true;
            return super.getContent();
        }

        @Override // org.apache.http.entity.HttpEntityWrapperHC4
        public void writeTo(OutputStream outputStream) throws IOException {
            EntityEnclosingRequestWrapperHC4.this.consumed = true;
            super.writeTo(outputStream);
        }
    }

    public EntityEnclosingRequestWrapperHC4(HttpEntityEnclosingRequest httpEntityEnclosingRequest) throws ProtocolException {
        super(httpEntityEnclosingRequest);
        setEntity(httpEntityEnclosingRequest.getEntity());
    }

    public boolean expectContinue() {
        Header firstHeader = getFirstHeader("Expect");
        return firstHeader != null && "100-continue".equalsIgnoreCase(firstHeader.getValue());
    }

    public HttpEntity getEntity() {
        return this.entity;
    }

    public boolean isRepeatable() {
        HttpEntity httpEntity = this.entity;
        return httpEntity == null || httpEntity.isRepeatable() || !this.consumed;
    }

    public void setEntity(HttpEntity httpEntity) {
        this.entity = httpEntity != null ? new EntityWrapper(httpEntity) : null;
        this.consumed = false;
    }
}
