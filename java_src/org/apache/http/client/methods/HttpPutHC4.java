package org.apache.http.client.methods;

import java.net.URI;
import org.apache.http.annotation.NotThreadSafe;
@NotThreadSafe
/* loaded from: classes5.dex */
public class HttpPutHC4 extends HttpEntityEnclosingRequestBaseHC4 {
    public static final String METHOD_NAME = "PUT";

    public HttpPutHC4() {
    }

    @Override // org.apache.http.client.methods.HttpRequestBaseHC4
    public String getMethod() {
        return METHOD_NAME;
    }

    public HttpPutHC4(URI uri) {
        setURI(uri);
    }

    public HttpPutHC4(String str) {
        setURI(URI.create(str));
    }
}
