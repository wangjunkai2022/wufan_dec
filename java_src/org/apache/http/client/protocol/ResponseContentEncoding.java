package org.apache.http.client.protocol;

import java.io.IOException;
import java.util.Locale;
import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.HttpEntity;
import org.apache.http.HttpException;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseInterceptor;
import org.apache.http.annotation.Immutable;
import org.apache.http.client.entity.DeflateDecompressingEntity;
import org.apache.http.client.entity.GzipDecompressingEntity;
import org.apache.http.protocol.HttpContext;
@Immutable
/* loaded from: classes5.dex */
public class ResponseContentEncoding implements HttpResponseInterceptor {
    public static final String UNCOMPRESSED = "http.client.response.uncompressed";

    public void process(HttpResponse httpResponse, HttpContext httpContext) throws HttpException, IOException {
        Header contentEncoding;
        HttpEntity entity = httpResponse.getEntity();
        if (entity == null || entity.getContentLength() == 0 || (contentEncoding = entity.getContentEncoding()) == null) {
            return;
        }
        HeaderElement[] elements = contentEncoding.getElements();
        boolean z3 = true;
        if (elements.length > 0) {
            HeaderElement headerElement = elements[0];
            String lowerCase = headerElement.getName().toLowerCase(Locale.ENGLISH);
            if (!"gzip".equals(lowerCase) && !"x-gzip".equals(lowerCase)) {
                if ("deflate".equals(lowerCase)) {
                    httpResponse.setEntity(new DeflateDecompressingEntity(httpResponse.getEntity()));
                } else if ("identity".equals(lowerCase)) {
                    return;
                } else {
                    throw new HttpException("Unsupported Content-Coding: " + headerElement.getName());
                }
            } else {
                httpResponse.setEntity(new GzipDecompressingEntity(httpResponse.getEntity()));
            }
        } else {
            z3 = false;
        }
        if (z3) {
            httpResponse.removeHeaders("Content-Length");
            httpResponse.removeHeaders("Content-Encoding");
            httpResponse.removeHeaders("Content-MD5");
        }
    }
}
