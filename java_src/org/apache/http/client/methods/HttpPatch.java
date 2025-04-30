package org.apache.http.client.methods;

import java.net.URI;
import org.apache.http.annotation.NotThreadSafe;
@NotThreadSafe
/* loaded from: classes5.dex */
public class HttpPatch extends HttpEntityEnclosingRequestBaseHC4 {
    public static final String METHOD_NAME = "PATCH";

    public HttpPatch() {
    }

    @Override // org.apache.http.client.methods.HttpRequestBaseHC4
    public String getMethod() {
        return METHOD_NAME;
    }

    public HttpPatch(URI uri) {
        setURI(uri);
    }

    public HttpPatch(String str) {
        setURI(URI.create(str));
    }
}
