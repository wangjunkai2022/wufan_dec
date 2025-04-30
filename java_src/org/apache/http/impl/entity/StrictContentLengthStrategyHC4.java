package org.apache.http.impl.entity;

import io.netty.handler.codec.http.HttpHeaders;
import org.apache.http.Header;
import org.apache.http.HttpException;
import org.apache.http.HttpMessage;
import org.apache.http.HttpVersion;
import org.apache.http.ProtocolException;
import org.apache.http.annotation.Immutable;
import org.apache.http.entity.ContentLengthStrategy;
import org.apache.http.util.Args;
@Immutable
/* loaded from: classes5.dex */
public class StrictContentLengthStrategyHC4 implements ContentLengthStrategy {
    public static final StrictContentLengthStrategyHC4 INSTANCE = new StrictContentLengthStrategyHC4();
    private final int implicitLen;

    public StrictContentLengthStrategyHC4(int i2) {
        this.implicitLen = i2;
    }

    public long determineLength(HttpMessage httpMessage) throws HttpException {
        Args.notNull(httpMessage, "HTTP message");
        Header firstHeader = httpMessage.getFirstHeader("Transfer-Encoding");
        if (firstHeader != null) {
            String value = firstHeader.getValue();
            if (HttpHeaders.Values.CHUNKED.equalsIgnoreCase(value)) {
                if (httpMessage.getProtocolVersion().lessEquals(HttpVersion.HTTP_1_0)) {
                    throw new ProtocolException("Chunked transfer encoding not allowed for " + httpMessage.getProtocolVersion());
                }
                return -2L;
            } else if ("identity".equalsIgnoreCase(value)) {
                return -1L;
            } else {
                throw new ProtocolException("Unsupported transfer encoding: " + value);
            }
        }
        Header firstHeader2 = httpMessage.getFirstHeader("Content-Length");
        if (firstHeader2 != null) {
            String value2 = firstHeader2.getValue();
            try {
                long parseLong = Long.parseLong(value2);
                if (parseLong >= 0) {
                    return parseLong;
                }
                throw new ProtocolException("Negative content length: " + value2);
            } catch (NumberFormatException unused) {
                throw new ProtocolException("Invalid content length: " + value2);
            }
        }
        return this.implicitLen;
    }

    public StrictContentLengthStrategyHC4() {
        this(-1);
    }
}
