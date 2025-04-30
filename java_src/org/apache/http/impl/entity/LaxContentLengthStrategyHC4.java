package org.apache.http.impl.entity;

import io.netty.handler.codec.http.HttpHeaders;
import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.HttpException;
import org.apache.http.HttpMessage;
import org.apache.http.ParseException;
import org.apache.http.ProtocolException;
import org.apache.http.annotation.Immutable;
import org.apache.http.entity.ContentLengthStrategy;
import org.apache.http.util.Args;
@Immutable
/* loaded from: classes5.dex */
public class LaxContentLengthStrategyHC4 implements ContentLengthStrategy {
    public static final LaxContentLengthStrategyHC4 INSTANCE = new LaxContentLengthStrategyHC4();
    private final int implicitLen;

    public LaxContentLengthStrategyHC4(int i2) {
        this.implicitLen = i2;
    }

    public long determineLength(HttpMessage httpMessage) throws HttpException {
        long j4;
        Args.notNull(httpMessage, "HTTP message");
        Header firstHeader = httpMessage.getFirstHeader("Transfer-Encoding");
        if (firstHeader != null) {
            try {
                HeaderElement[] elements = firstHeader.getElements();
                int length = elements.length;
                return (!"identity".equalsIgnoreCase(firstHeader.getValue()) && length > 0 && HttpHeaders.Values.CHUNKED.equalsIgnoreCase(elements[length + (-1)].getName())) ? -2L : -1L;
            } catch (ParseException e4) {
                throw new ProtocolException("Invalid Transfer-Encoding header value: " + firstHeader, e4);
            }
        } else if (httpMessage.getFirstHeader("Content-Length") != null) {
            Header[] headers = httpMessage.getHeaders("Content-Length");
            int length2 = headers.length - 1;
            while (true) {
                if (length2 < 0) {
                    j4 = -1;
                    break;
                }
                try {
                    j4 = Long.parseLong(headers[length2].getValue());
                    break;
                } catch (NumberFormatException unused) {
                    length2--;
                }
            }
            if (j4 >= 0) {
                return j4;
            }
            return -1L;
        } else {
            return this.implicitLen;
        }
    }

    public LaxContentLengthStrategyHC4() {
        this(-1);
    }
}
