package org.apache.http.impl.conn;

import android.util.Log;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import org.apache.http.Header;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.config.MessageConstraints;
import org.apache.http.entity.ContentLengthStrategy;
import org.apache.http.io.HttpMessageParserFactory;
import org.apache.http.io.HttpMessageWriterFactory;
@NotThreadSafe
/* loaded from: classes5.dex */
class LoggingManagedHttpClientConnection extends DefaultManagedHttpClientConnection {
    private static final String HEADER_TAG = "Headers";
    private static final String TAG = "HttpClient";
    private final WireHC4 wire;

    public LoggingManagedHttpClientConnection(String str, int i2, int i4, CharsetDecoder charsetDecoder, CharsetEncoder charsetEncoder, MessageConstraints messageConstraints, ContentLengthStrategy contentLengthStrategy, ContentLengthStrategy contentLengthStrategy2, HttpMessageWriterFactory<HttpRequest> httpMessageWriterFactory, HttpMessageParserFactory<HttpResponse> httpMessageParserFactory) {
        super(str, i2, i4, charsetDecoder, charsetEncoder, messageConstraints, contentLengthStrategy, contentLengthStrategy2, httpMessageWriterFactory, httpMessageParserFactory);
        this.wire = new WireHC4(str);
    }

    @Override // org.apache.http.impl.BHttpConnectionBase
    public void close() throws IOException {
        if (Log.isLoggable(TAG, 3)) {
            StringBuilder sb = new StringBuilder();
            sb.append(getId());
            sb.append(": Close connection");
        }
        super.close();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.http.impl.BHttpConnectionBase
    public InputStream getSocketInputStream(Socket socket) throws IOException {
        InputStream socketInputStream = super.getSocketInputStream(socket);
        return this.wire.enabled() ? new LoggingInputStream(socketInputStream, this.wire) : socketInputStream;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.http.impl.BHttpConnectionBase
    public OutputStream getSocketOutputStream(Socket socket) throws IOException {
        OutputStream socketOutputStream = super.getSocketOutputStream(socket);
        return this.wire.enabled() ? new LoggingOutputStream(socketOutputStream, this.wire) : socketOutputStream;
    }

    @Override // org.apache.http.impl.DefaultBHttpClientConnection
    protected void onRequestSubmitted(HttpRequest httpRequest) {
        Header[] allHeaders;
        if (httpRequest == null || !Log.isLoggable(HEADER_TAG, 3)) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(getId());
        sb.append(" >> ");
        sb.append(httpRequest.getRequestLine().toString());
        for (Header header : httpRequest.getAllHeaders()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(getId());
            sb2.append(" >> ");
            sb2.append(header.toString());
        }
    }

    @Override // org.apache.http.impl.DefaultBHttpClientConnection
    protected void onResponseReceived(HttpResponse httpResponse) {
        Header[] allHeaders;
        if (httpResponse == null || !Log.isLoggable(HEADER_TAG, 3)) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(getId());
        sb.append(" << ");
        sb.append(httpResponse.getStatusLine().toString());
        for (Header header : httpResponse.getAllHeaders()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(getId());
            sb2.append(" << ");
            sb2.append(header.toString());
        }
    }

    @Override // org.apache.http.impl.conn.DefaultManagedHttpClientConnection, org.apache.http.impl.BHttpConnectionBase
    public void shutdown() throws IOException {
        if (Log.isLoggable(TAG, 3)) {
            StringBuilder sb = new StringBuilder();
            sb.append(getId());
            sb.append(": Shutdown connection");
        }
        super.shutdown();
    }
}
