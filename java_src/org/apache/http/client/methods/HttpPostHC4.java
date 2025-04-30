package org.apache.http.client.methods;

import java.net.URI;
import org.apache.http.annotation.NotThreadSafe;
@NotThreadSafe
/* loaded from: classes5.dex */
public class HttpPostHC4 extends HttpEntityEnclosingRequestBaseHC4 {
    public static final String METHOD_NAME = "POST";

    public HttpPostHC4() {
    }

    @Override // org.apache.http.client.methods.HttpRequestBaseHC4
    public String getMethod() {
        return "POST";
    }

    public HttpPostHC4(URI uri) {
        setURI(uri);
    }

    public HttpPostHC4(String str) {
        setURI(URI.create(str));
    }
}
