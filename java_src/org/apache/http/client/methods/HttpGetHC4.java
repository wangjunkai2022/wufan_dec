package org.apache.http.client.methods;

import java.net.URI;
import org.apache.http.annotation.NotThreadSafe;
@NotThreadSafe
/* loaded from: classes5.dex */
public class HttpGetHC4 extends HttpRequestBaseHC4 {
    public static final String METHOD_NAME = "GET";

    public HttpGetHC4() {
    }

    @Override // org.apache.http.client.methods.HttpRequestBaseHC4
    public String getMethod() {
        return "GET";
    }

    public HttpGetHC4(URI uri) {
        setURI(uri);
    }

    public HttpGetHC4(String str) {
        setURI(URI.create(str));
    }
}
