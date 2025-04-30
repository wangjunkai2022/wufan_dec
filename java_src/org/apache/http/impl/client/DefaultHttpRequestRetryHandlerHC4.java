package org.apache.http.impl.client;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ConnectException;
import java.net.UnknownHostException;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;
import javax.net.ssl.SSLException;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpRequest;
import org.apache.http.annotation.Immutable;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.client.protocol.HttpClientContext;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;
@Immutable
/* loaded from: classes5.dex */
public class DefaultHttpRequestRetryHandlerHC4 implements HttpRequestRetryHandler {
    public static final DefaultHttpRequestRetryHandlerHC4 INSTANCE = new DefaultHttpRequestRetryHandlerHC4();
    private final Set<Class<? extends IOException>> nonRetriableClasses;
    private final boolean requestSentRetryEnabled;
    private final int retryCount;

    protected DefaultHttpRequestRetryHandlerHC4(int i2, boolean z3, Collection<Class<? extends IOException>> collection) {
        this.retryCount = i2;
        this.requestSentRetryEnabled = z3;
        this.nonRetriableClasses = new HashSet();
        for (Class<? extends IOException> cls : collection) {
            this.nonRetriableClasses.add(cls);
        }
    }

    public int getRetryCount() {
        return this.retryCount;
    }

    protected boolean handleAsIdempotent(HttpRequest httpRequest) {
        return !(httpRequest instanceof HttpEntityEnclosingRequest);
    }

    public boolean isRequestSentRetryEnabled() {
        return this.requestSentRetryEnabled;
    }

    @Deprecated
    protected boolean requestIsAborted(HttpRequest httpRequest) {
        if (httpRequest instanceof RequestWrapper) {
            httpRequest = ((RequestWrapper) httpRequest).getOriginal();
        }
        return (httpRequest instanceof HttpUriRequest) && ((HttpUriRequest) httpRequest).isAborted();
    }

    public boolean retryRequest(IOException iOException, int i2, HttpContext httpContext) {
        Args.notNull(iOException, "Exception parameter");
        Args.notNull(httpContext, "HTTP context");
        if (i2 <= this.retryCount && !this.nonRetriableClasses.contains(iOException.getClass())) {
            for (Class<? extends IOException> cls : this.nonRetriableClasses) {
                if (cls.isInstance(iOException)) {
                    return false;
                }
            }
            HttpClientContext adapt = HttpClientContext.adapt(httpContext);
            HttpRequest request = adapt.getRequest();
            if (requestIsAborted(request)) {
                return false;
            }
            return handleAsIdempotent(request) || !adapt.isRequestSent() || this.requestSentRetryEnabled;
        }
        return false;
    }

    public DefaultHttpRequestRetryHandlerHC4(int i2, boolean z3) {
        this(i2, z3, Arrays.asList(InterruptedIOException.class, UnknownHostException.class, ConnectException.class, SSLException.class));
    }

    public DefaultHttpRequestRetryHandlerHC4() {
        this(3, false);
    }
}
