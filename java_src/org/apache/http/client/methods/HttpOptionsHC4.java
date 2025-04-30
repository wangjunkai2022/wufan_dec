package org.apache.http.client.methods;

import java.net.URI;
import java.util.HashSet;
import java.util.Set;
import org.apache.http.HeaderElement;
import org.apache.http.HeaderIterator;
import org.apache.http.HttpResponse;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.util.Args;
@NotThreadSafe
/* loaded from: classes5.dex */
public class HttpOptionsHC4 extends HttpRequestBaseHC4 {
    public static final String METHOD_NAME = "OPTIONS";

    public HttpOptionsHC4() {
    }

    public Set<String> getAllowedMethods(HttpResponse httpResponse) {
        Args.notNull(httpResponse, "HTTP response");
        HeaderIterator headerIterator = httpResponse.headerIterator("Allow");
        HashSet hashSet = new HashSet();
        while (headerIterator.hasNext()) {
            for (HeaderElement headerElement : headerIterator.nextHeader().getElements()) {
                hashSet.add(headerElement.getName());
            }
        }
        return hashSet;
    }

    @Override // org.apache.http.client.methods.HttpRequestBaseHC4
    public String getMethod() {
        return METHOD_NAME;
    }

    public HttpOptionsHC4(URI uri) {
        setURI(uri);
    }

    public HttpOptionsHC4(String str) {
        setURI(URI.create(str));
    }
}
