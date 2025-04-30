package org.apache.http.impl;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.Socket;
import java.net.SocketAddress;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import org.apache.http.Header;
import org.apache.http.HttpConnection;
import org.apache.http.HttpConnectionMetrics;
import org.apache.http.HttpEntity;
import org.apache.http.HttpException;
import org.apache.http.HttpInetConnection;
import org.apache.http.HttpMessage;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.config.MessageConstraints;
import org.apache.http.entity.BasicHttpEntityHC4;
import org.apache.http.entity.ContentLengthStrategy;
import org.apache.http.impl.entity.LaxContentLengthStrategyHC4;
import org.apache.http.impl.entity.StrictContentLengthStrategyHC4;
import org.apache.http.impl.io.ChunkedInputStreamHC4;
import org.apache.http.impl.io.ChunkedOutputStreamHC4;
import org.apache.http.impl.io.ContentLengthInputStreamHC4;
import org.apache.http.impl.io.ContentLengthOutputStreamHC4;
import org.apache.http.impl.io.HttpTransportMetricsImpl;
import org.apache.http.impl.io.IdentityInputStreamHC4;
import org.apache.http.impl.io.IdentityOutputStreamHC4;
import org.apache.http.impl.io.SessionInputBufferImpl;
import org.apache.http.impl.io.SessionOutputBufferImpl;
import org.apache.http.io.SessionInputBuffer;
import org.apache.http.io.SessionOutputBuffer;
import org.apache.http.util.Args;
import org.apache.http.util.Asserts;
import org.apache.http.util.NetUtils;
@NotThreadSafe
/* loaded from: classes5.dex */
public class BHttpConnectionBase implements HttpConnection, HttpInetConnection {
    private final HttpConnectionMetricsImpl connMetrics;
    private final SessionInputBufferImpl inbuffer;
    private final ContentLengthStrategy incomingContentStrategy;
    private volatile boolean open;
    private final SessionOutputBufferImpl outbuffer;
    private final ContentLengthStrategy outgoingContentStrategy;
    private volatile Socket socket;

    /* JADX INFO: Access modifiers changed from: protected */
    public BHttpConnectionBase(int i2, int i4, CharsetDecoder charsetDecoder, CharsetEncoder charsetEncoder, MessageConstraints messageConstraints, ContentLengthStrategy contentLengthStrategy, ContentLengthStrategy contentLengthStrategy2) {
        Args.positive(i2, "Buffer size");
        HttpTransportMetricsImpl httpTransportMetricsImpl = new HttpTransportMetricsImpl();
        HttpTransportMetricsImpl httpTransportMetricsImpl2 = new HttpTransportMetricsImpl();
        this.inbuffer = new SessionInputBufferImpl(httpTransportMetricsImpl, i2, -1, messageConstraints != null ? messageConstraints : MessageConstraints.DEFAULT, charsetDecoder);
        this.outbuffer = new SessionOutputBufferImpl(httpTransportMetricsImpl2, i2, i4, charsetEncoder);
        this.connMetrics = new HttpConnectionMetricsImpl(httpTransportMetricsImpl, httpTransportMetricsImpl2);
        this.incomingContentStrategy = contentLengthStrategy != null ? contentLengthStrategy : LaxContentLengthStrategyHC4.INSTANCE;
        this.outgoingContentStrategy = contentLengthStrategy2 != null ? contentLengthStrategy2 : StrictContentLengthStrategyHC4.INSTANCE;
    }

    private int fillInputBuffer(int i2) throws IOException {
        int soTimeout = this.socket.getSoTimeout();
        try {
            this.socket.setSoTimeout(i2);
            return this.inbuffer.fillBuffer();
        } finally {
            this.socket.setSoTimeout(soTimeout);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean awaitInput(int i2) throws IOException {
        if (this.inbuffer.hasBufferedData()) {
            return true;
        }
        fillInputBuffer(i2);
        return this.inbuffer.hasBufferedData();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void bind(Socket socket) throws IOException {
        Args.notNull(socket, "Socket");
        this.socket = socket;
        this.open = true;
        this.inbuffer.bind(null);
        this.outbuffer.bind(null);
    }

    public void close() throws IOException {
        if (this.open) {
            this.open = false;
            Socket socket = this.socket;
            try {
                this.inbuffer.clear();
                this.outbuffer.flush();
                try {
                    try {
                        socket.shutdownOutput();
                    } catch (IOException unused) {
                    }
                    socket.shutdownInput();
                } catch (IOException | UnsupportedOperationException unused2) {
                }
            } finally {
                socket.close();
            }
        }
    }

    protected InputStream createInputStream(long j4, SessionInputBuffer sessionInputBuffer) {
        if (j4 == -2) {
            return new ChunkedInputStreamHC4(sessionInputBuffer);
        }
        if (j4 == -1) {
            return new IdentityInputStreamHC4(sessionInputBuffer);
        }
        return new ContentLengthInputStreamHC4(sessionInputBuffer, j4);
    }

    protected OutputStream createOutputStream(long j4, SessionOutputBuffer sessionOutputBuffer) {
        if (j4 == -2) {
            return new ChunkedOutputStreamHC4(2048, sessionOutputBuffer);
        }
        if (j4 == -1) {
            return new IdentityOutputStreamHC4(sessionOutputBuffer);
        }
        return new ContentLengthOutputStreamHC4(sessionOutputBuffer, j4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void doFlush() throws IOException {
        this.outbuffer.flush();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void ensureOpen() throws IOException {
        Asserts.check(this.open, "Connection is not open");
        if (!this.inbuffer.isBound()) {
            this.inbuffer.bind(getSocketInputStream(this.socket));
        }
        if (this.outbuffer.isBound()) {
            return;
        }
        this.outbuffer.bind(getSocketOutputStream(this.socket));
    }

    public InetAddress getLocalAddress() {
        if (this.socket != null) {
            return this.socket.getLocalAddress();
        }
        return null;
    }

    public int getLocalPort() {
        if (this.socket != null) {
            return this.socket.getLocalPort();
        }
        return -1;
    }

    public HttpConnectionMetrics getMetrics() {
        return this.connMetrics;
    }

    public InetAddress getRemoteAddress() {
        if (this.socket != null) {
            return this.socket.getInetAddress();
        }
        return null;
    }

    public int getRemotePort() {
        if (this.socket != null) {
            return this.socket.getPort();
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public SessionInputBuffer getSessionInputBuffer() {
        return this.inbuffer;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public SessionOutputBuffer getSessionOutputBuffer() {
        return this.outbuffer;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Socket getSocket() {
        return this.socket;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public InputStream getSocketInputStream(Socket socket) throws IOException {
        return socket.getInputStream();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public OutputStream getSocketOutputStream(Socket socket) throws IOException {
        return socket.getOutputStream();
    }

    public int getSocketTimeout() {
        if (this.socket != null) {
            try {
                return this.socket.getSoTimeout();
            } catch (SocketException unused) {
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void incrementRequestCount() {
        this.connMetrics.incrementRequestCount();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void incrementResponseCount() {
        this.connMetrics.incrementResponseCount();
    }

    public boolean isOpen() {
        return this.open;
    }

    public boolean isStale() {
        if (isOpen()) {
            try {
                return fillInputBuffer(1) < 0;
            } catch (SocketTimeoutException unused) {
                return false;
            } catch (IOException unused2) {
                return true;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public HttpEntity prepareInput(HttpMessage httpMessage) throws HttpException {
        BasicHttpEntityHC4 basicHttpEntityHC4 = new BasicHttpEntityHC4();
        long determineLength = this.incomingContentStrategy.determineLength(httpMessage);
        InputStream createInputStream = createInputStream(determineLength, this.inbuffer);
        if (determineLength == -2) {
            basicHttpEntityHC4.setChunked(true);
            basicHttpEntityHC4.setContentLength(-1L);
            basicHttpEntityHC4.setContent(createInputStream);
        } else if (determineLength == -1) {
            basicHttpEntityHC4.setChunked(false);
            basicHttpEntityHC4.setContentLength(-1L);
            basicHttpEntityHC4.setContent(createInputStream);
        } else {
            basicHttpEntityHC4.setChunked(false);
            basicHttpEntityHC4.setContentLength(determineLength);
            basicHttpEntityHC4.setContent(createInputStream);
        }
        Header firstHeader = httpMessage.getFirstHeader("Content-Type");
        if (firstHeader != null) {
            basicHttpEntityHC4.setContentType(firstHeader);
        }
        Header firstHeader2 = httpMessage.getFirstHeader("Content-Encoding");
        if (firstHeader2 != null) {
            basicHttpEntityHC4.setContentEncoding(firstHeader2);
        }
        return basicHttpEntityHC4;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public OutputStream prepareOutput(HttpMessage httpMessage) throws HttpException {
        return createOutputStream(this.outgoingContentStrategy.determineLength(httpMessage), this.outbuffer);
    }

    public void setSocketTimeout(int i2) {
        if (this.socket != null) {
            try {
                this.socket.setSoTimeout(i2);
            } catch (SocketException unused) {
            }
        }
    }

    public void shutdown() throws IOException {
        this.open = false;
        Socket socket = this.socket;
        if (socket != null) {
            socket.close();
        }
    }

    public String toString() {
        if (this.socket != null) {
            StringBuilder sb = new StringBuilder();
            SocketAddress remoteSocketAddress = this.socket.getRemoteSocketAddress();
            SocketAddress localSocketAddress = this.socket.getLocalSocketAddress();
            if (remoteSocketAddress != null && localSocketAddress != null) {
                NetUtils.formatAddress(sb, localSocketAddress);
                sb.append("<->");
                NetUtils.formatAddress(sb, remoteSocketAddress);
            }
            return sb.toString();
        }
        return "[Not bound]";
    }
}
