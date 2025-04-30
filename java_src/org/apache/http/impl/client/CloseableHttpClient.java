package org.apache.http.impl.client;

import android.util.Log;
import java.io.Closeable;
import java.io.IOException;
import java.lang.reflect.UndeclaredThrowableException;
import java.net.URI;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.client.utils.URIUtilsHC4;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;
import org.apache.http.util.EntityUtilsHC4;
@ThreadSafe
/* loaded from: classes5.dex */
public abstract class CloseableHttpClient implements HttpClient, Closeable {
    private static final String TAG = "HttpClient";

    private static HttpHost determineTarget(HttpUriRequest httpUriRequest) throws ClientProtocolException {
        URI uri = httpUriRequest.getURI();
        if (uri.isAbsolute()) {
            HttpHost extractHost = URIUtilsHC4.extractHost(uri);
            if (extractHost != null) {
                return extractHost;
            }
            throw new ClientProtocolException("URI does not specify a valid host name: " + uri);
        }
        return null;
    }

    protected abstract CloseableHttpResponse doExecute(HttpHost httpHost, HttpRequest httpRequest, HttpContext httpContext) throws IOException, ClientProtocolException;

    public CloseableHttpResponse execute(HttpHost httpHost, HttpRequest httpRequest, HttpContext httpContext) throws IOException, ClientProtocolException {
        return doExecute(httpHost, httpRequest, httpContext);
    }

    public CloseableHttpResponse execute(HttpUriRequest httpUriRequest, HttpContext httpContext) throws IOException, ClientProtocolException {
        Args.notNull(httpUriRequest, "HTTP request");
        return doExecute(determineTarget(httpUriRequest), httpUriRequest, httpContext);
    }

    public CloseableHttpResponse execute(HttpUriRequest httpUriRequest) throws IOException, ClientProtocolException {
        return execute(httpUriRequest, (HttpContext) null);
    }

    public CloseableHttpResponse execute(HttpHost httpHost, HttpRequest httpRequest) throws IOException, ClientProtocolException {
        return doExecute(httpHost, httpRequest, null);
    }

    public <T> T execute(HttpUriRequest httpUriRequest, ResponseHandler<? extends T> responseHandler) throws IOException, ClientProtocolException {
        return (T) execute(httpUriRequest, responseHandler, (HttpContext) null);
    }

    public <T> T execute(HttpUriRequest httpUriRequest, ResponseHandler<? extends T> responseHandler, HttpContext httpContext) throws IOException, ClientProtocolException {
        return (T) execute(determineTarget(httpUriRequest), httpUriRequest, responseHandler, httpContext);
    }

    public <T> T execute(HttpHost httpHost, HttpRequest httpRequest, ResponseHandler<? extends T> responseHandler) throws IOException, ClientProtocolException {
        return (T) execute(httpHost, httpRequest, responseHandler, null);
    }

    public <T> T execute(HttpHost httpHost, HttpRequest httpRequest, ResponseHandler<? extends T> responseHandler, HttpContext httpContext) throws IOException, ClientProtocolException {
        Args.notNull(responseHandler, "Response handler");
        CloseableHttpResponse execute = execute(httpHost, httpRequest, httpContext);
        try {
            T t3 = (T) responseHandler.handleResponse(execute);
            EntityUtilsHC4.consume(execute.getEntity());
            return t3;
        } catch (Exception e4) {
            try {
                EntityUtilsHC4.consume(execute.getEntity());
            } catch (Exception unused) {
                Log.isLoggable(TAG, 5);
            }
            if (!(e4 instanceof RuntimeException)) {
                if (e4 instanceof IOException) {
                    throw ((IOException) e4);
                }
                throw new UndeclaredThrowableException(e4);
            }
            throw ((RuntimeException) e4);
        }
    }
}
