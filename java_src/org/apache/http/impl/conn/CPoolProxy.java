package org.apache.http.impl.conn;

import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import javax.net.ssl.SSLSession;
import org.apache.http.HttpClientConnection;
import org.apache.http.HttpConnectionMetrics;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpException;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.conn.ManagedHttpClientConnection;
import org.apache.http.protocol.HttpContext;
@NotThreadSafe
/* loaded from: classes5.dex */
class CPoolProxy implements ManagedHttpClientConnection, HttpContext {
    private volatile CPoolEntry poolEntry;

    CPoolProxy(CPoolEntry cPoolEntry) {
        this.poolEntry = cPoolEntry;
    }

    private static CPoolProxy getProxy(HttpClientConnection httpClientConnection) {
        if (CPoolProxy.class.isInstance(httpClientConnection)) {
            return (CPoolProxy) CPoolProxy.class.cast(httpClientConnection);
        }
        throw new IllegalStateException("Unexpected connection proxy class: " + httpClientConnection.getClass());
    }

    public static HttpClientConnection newProxy(CPoolEntry cPoolEntry) {
        return new CPoolProxy(cPoolEntry);
    }

    @Override // org.apache.http.conn.ManagedHttpClientConnection
    public void bind(Socket socket) throws IOException {
        getValidConnection().bind(socket);
    }

    public void close() throws IOException {
        CPoolEntry cPoolEntry = this.poolEntry;
        if (cPoolEntry != null) {
            cPoolEntry.closeConnection();
        }
    }

    CPoolEntry detach() {
        CPoolEntry cPoolEntry = this.poolEntry;
        this.poolEntry = null;
        return cPoolEntry;
    }

    public void flush() throws IOException {
        getValidConnection().flush();
    }

    public Object getAttribute(String str) {
        HttpContext validConnection = getValidConnection();
        if (validConnection instanceof HttpContext) {
            return validConnection.getAttribute(str);
        }
        return null;
    }

    ManagedHttpClientConnection getConnection() {
        CPoolEntry cPoolEntry = this.poolEntry;
        if (cPoolEntry == null) {
            return null;
        }
        return cPoolEntry.getConnection();
    }

    @Override // org.apache.http.conn.ManagedHttpClientConnection
    public String getId() {
        return getValidConnection().getId();
    }

    public InetAddress getLocalAddress() {
        return getValidConnection().getLocalAddress();
    }

    public int getLocalPort() {
        return getValidConnection().getLocalPort();
    }

    public HttpConnectionMetrics getMetrics() {
        return getValidConnection().getMetrics();
    }

    CPoolEntry getPoolEntry() {
        return this.poolEntry;
    }

    public InetAddress getRemoteAddress() {
        return getValidConnection().getRemoteAddress();
    }

    public int getRemotePort() {
        return getValidConnection().getRemotePort();
    }

    @Override // org.apache.http.conn.ManagedHttpClientConnection
    public SSLSession getSSLSession() {
        return getValidConnection().getSSLSession();
    }

    @Override // org.apache.http.conn.ManagedHttpClientConnection
    public Socket getSocket() {
        return getValidConnection().getSocket();
    }

    public int getSocketTimeout() {
        return getValidConnection().getSocketTimeout();
    }

    ManagedHttpClientConnection getValidConnection() {
        ManagedHttpClientConnection connection = getConnection();
        if (connection != null) {
            return connection;
        }
        throw new ConnectionShutdownException();
    }

    public boolean isOpen() {
        CPoolEntry cPoolEntry = this.poolEntry;
        if (cPoolEntry != null) {
            return !cPoolEntry.isClosed();
        }
        return false;
    }

    public boolean isResponseAvailable(int i2) throws IOException {
        return getValidConnection().isResponseAvailable(i2);
    }

    public boolean isStale() {
        ManagedHttpClientConnection connection = getConnection();
        if (connection != null) {
            return connection.isStale();
        }
        return true;
    }

    public void receiveResponseEntity(HttpResponse httpResponse) throws HttpException, IOException {
        getValidConnection().receiveResponseEntity(httpResponse);
    }

    public HttpResponse receiveResponseHeader() throws HttpException, IOException {
        return getValidConnection().receiveResponseHeader();
    }

    public Object removeAttribute(String str) {
        HttpContext validConnection = getValidConnection();
        if (validConnection instanceof HttpContext) {
            return validConnection.removeAttribute(str);
        }
        return null;
    }

    public void sendRequestEntity(HttpEntityEnclosingRequest httpEntityEnclosingRequest) throws HttpException, IOException {
        getValidConnection().sendRequestEntity(httpEntityEnclosingRequest);
    }

    public void sendRequestHeader(HttpRequest httpRequest) throws HttpException, IOException {
        getValidConnection().sendRequestHeader(httpRequest);
    }

    public void setAttribute(String str, Object obj) {
        HttpContext validConnection = getValidConnection();
        if (validConnection instanceof HttpContext) {
            validConnection.setAttribute(str, obj);
        }
    }

    public void setSocketTimeout(int i2) {
        getValidConnection().setSocketTimeout(i2);
    }

    public void shutdown() throws IOException {
        CPoolEntry cPoolEntry = this.poolEntry;
        if (cPoolEntry != null) {
            cPoolEntry.shutdownConnection();
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("CPoolProxy{");
        ManagedHttpClientConnection connection = getConnection();
        if (connection != null) {
            sb.append(connection);
        } else {
            sb.append("detached");
        }
        sb.append('}');
        return sb.toString();
    }

    public static CPoolEntry getPoolEntry(HttpClientConnection httpClientConnection) {
        CPoolEntry poolEntry = getProxy(httpClientConnection).getPoolEntry();
        if (poolEntry != null) {
            return poolEntry;
        }
        throw new ConnectionShutdownException();
    }

    public static CPoolEntry detach(HttpClientConnection httpClientConnection) {
        return getProxy(httpClientConnection).detach();
    }
}
