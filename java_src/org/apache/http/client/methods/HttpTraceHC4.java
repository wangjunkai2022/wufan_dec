package org.apache.http.client.methods;

import java.net.URI;
import org.apache.http.annotation.NotThreadSafe;
@NotThreadSafe
/* loaded from: classes5.dex */
public class HttpTraceHC4 extends HttpRequestBaseHC4 {
    public static final String METHOD_NAME = "TRACE";

    public HttpTraceHC4() {
    }

    @Override // org.apache.http.client.methods.HttpRequestBaseHC4
    public String getMethod() {
        return METHOD_NAME;
    }

    public HttpTraceHC4(URI uri) {
        setURI(uri);
    }

    public HttpTraceHC4(String str) {
        setURI(URI.create(str));
    }
}
