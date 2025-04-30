package org.apache.http.impl.execchain;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.SocketException;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.conn.EofSensorInputStreamHC4;
import org.apache.http.conn.EofSensorWatcher;
import org.apache.http.entity.HttpEntityWrapperHC4;
@NotThreadSafe
/* loaded from: classes5.dex */
class ResponseEntityProxy extends HttpEntityWrapperHC4 implements EofSensorWatcher {
    private final ConnectionHolder connHolder;

    ResponseEntityProxy(HttpEntity httpEntity, ConnectionHolder connectionHolder) {
        super(httpEntity);
        this.connHolder = connectionHolder;
    }

    private void cleanup() {
        ConnectionHolder connectionHolder = this.connHolder;
        if (connectionHolder != null) {
            connectionHolder.abortConnection();
        }
    }

    public static void enchance(HttpResponse httpResponse, ConnectionHolder connectionHolder) {
        HttpEntity entity = httpResponse.getEntity();
        if (entity == null || !entity.isStreaming() || connectionHolder == null) {
            return;
        }
        httpResponse.setEntity(new ResponseEntityProxy(entity, connectionHolder));
    }

    @Override // org.apache.http.entity.HttpEntityWrapperHC4
    @Deprecated
    public void consumeContent() throws IOException {
        releaseConnection();
    }

    public boolean eofDetected(InputStream inputStream) throws IOException {
        try {
            inputStream.close();
            releaseConnection();
            cleanup();
            return false;
        } catch (Throwable th) {
            cleanup();
            throw th;
        }
    }

    @Override // org.apache.http.entity.HttpEntityWrapperHC4
    public InputStream getContent() throws IOException {
        return new EofSensorInputStreamHC4(this.wrappedEntity.getContent(), this);
    }

    @Override // org.apache.http.entity.HttpEntityWrapperHC4
    public boolean isRepeatable() {
        return false;
    }

    public void releaseConnection() throws IOException {
        ConnectionHolder connectionHolder = this.connHolder;
        if (connectionHolder != null) {
            try {
                if (connectionHolder.isReusable()) {
                    this.connHolder.releaseConnection();
                }
            } finally {
                cleanup();
            }
        }
    }

    public boolean streamAbort(InputStream inputStream) throws IOException {
        cleanup();
        return false;
    }

    public boolean streamClosed(InputStream inputStream) throws IOException {
        try {
            ConnectionHolder connectionHolder = this.connHolder;
            boolean z3 = (connectionHolder == null || connectionHolder.isReleased()) ? false : true;
            try {
                inputStream.close();
                releaseConnection();
            } catch (SocketException e4) {
                if (z3) {
                    throw e4;
                }
            }
            return false;
        } finally {
            cleanup();
        }
    }

    public String toString() {
        return "ResponseEntityProxy{" + this.wrappedEntity + '}';
    }

    @Override // org.apache.http.entity.HttpEntityWrapperHC4
    public void writeTo(OutputStream outputStream) throws IOException {
        try {
            this.wrappedEntity.writeTo(outputStream);
            releaseConnection();
        } finally {
            cleanup();
        }
    }
}
