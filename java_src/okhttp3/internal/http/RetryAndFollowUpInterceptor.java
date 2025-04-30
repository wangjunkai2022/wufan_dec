package okhttp3.internal.http;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.HttpRetryException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.SocketTimeoutException;
import java.security.cert.CertificateException;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocketFactory;
import okhttp3.Address;
import okhttp3.Call;
import okhttp3.CertificatePinner;
import okhttp3.EventListener;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.Route;
import okhttp3.internal.Util;
import okhttp3.internal.connection.RouteException;
import okhttp3.internal.connection.StreamAllocation;
import okhttp3.internal.http2.ConnectionShutdownException;
import org.apache.http.client.methods.HttpHeadHC4;
/* loaded from: classes5.dex */
public final class RetryAndFollowUpInterceptor implements Interceptor {
    private static final int MAX_FOLLOW_UPS = 20;
    private Object callStackTrace;
    private volatile boolean canceled;
    private final OkHttpClient client;
    private final boolean forWebSocket;
    private volatile StreamAllocation streamAllocation;

    public RetryAndFollowUpInterceptor(OkHttpClient okHttpClient, boolean z3) {
        this.client = okHttpClient;
        this.forWebSocket = z3;
    }

    private Address createAddress(HttpUrl httpUrl) {
        SSLSocketFactory sSLSocketFactory;
        HostnameVerifier hostnameVerifier;
        CertificatePinner certificatePinner;
        if (httpUrl.isHttps()) {
            SSLSocketFactory sslSocketFactory = this.client.sslSocketFactory();
            hostnameVerifier = this.client.hostnameVerifier();
            sSLSocketFactory = sslSocketFactory;
            certificatePinner = this.client.certificatePinner();
        } else {
            sSLSocketFactory = null;
            hostnameVerifier = null;
            certificatePinner = null;
        }
        return new Address(httpUrl.host(), httpUrl.port(), this.client.dns(), this.client.socketFactory(), sSLSocketFactory, hostnameVerifier, certificatePinner, this.client.proxyAuthenticator(), this.client.proxy(), this.client.protocols(), this.client.connectionSpecs(), this.client.proxySelector());
    }

    private Request followUpRequest(Response response, Route route) throws IOException {
        String header;
        HttpUrl resolve;
        if (response != null) {
            int code = response.code();
            String method = response.request().method();
            if (code == 307 || code == 308) {
                if (!method.equals("GET") && !method.equals(HttpHeadHC4.METHOD_NAME)) {
                    return null;
                }
            } else if (code != 401) {
                if (code == 503) {
                    if ((response.priorResponse() == null || response.priorResponse().code() != 503) && retryAfter(response, Integer.MAX_VALUE) == 0) {
                        return response.request();
                    }
                    return null;
                } else if (code == 407) {
                    if (route.proxy().type() == Proxy.Type.HTTP) {
                        return this.client.proxyAuthenticator().authenticate(route, response);
                    }
                    throw new ProtocolException("Received HTTP_PROXY_AUTH (407) code while not using proxy");
                } else if (code == 408) {
                    if (this.client.retryOnConnectionFailure() && !(response.request().body() instanceof UnrepeatableRequestBody)) {
                        if ((response.priorResponse() == null || response.priorResponse().code() != 408) && retryAfter(response, 0) <= 0) {
                            return response.request();
                        }
                        return null;
                    }
                    return null;
                } else {
                    switch (code) {
                        case 300:
                        case 301:
                        case 302:
                        case 303:
                            break;
                        default:
                            return null;
                    }
                }
            } else {
                return this.client.authenticator().authenticate(route, response);
            }
            if (!this.client.followRedirects() || (header = response.header("Location")) == null || (resolve = response.request().url().resolve(header)) == null) {
                return null;
            }
            if (resolve.scheme().equals(response.request().url().scheme()) || this.client.followSslRedirects()) {
                Request.Builder newBuilder = response.request().newBuilder();
                if (HttpMethod.permitsRequestBody(method)) {
                    boolean redirectsWithBody = HttpMethod.redirectsWithBody(method);
                    if (HttpMethod.redirectsToGet(method)) {
                        newBuilder.method("GET", null);
                    } else {
                        newBuilder.method(method, redirectsWithBody ? response.request().body() : null);
                    }
                    if (!redirectsWithBody) {
                        newBuilder.removeHeader("Transfer-Encoding");
                        newBuilder.removeHeader("Content-Length");
                        newBuilder.removeHeader("Content-Type");
                    }
                }
                if (!sameConnection(response, resolve)) {
                    newBuilder.removeHeader("Authorization");
                }
                return newBuilder.url(resolve).build();
            }
            return null;
        }
        throw new IllegalStateException();
    }

    private boolean isRecoverable(IOException iOException, boolean z3) {
        if (iOException instanceof ProtocolException) {
            return false;
        }
        return iOException instanceof InterruptedIOException ? (iOException instanceof SocketTimeoutException) && !z3 : (((iOException instanceof SSLHandshakeException) && (iOException.getCause() instanceof CertificateException)) || (iOException instanceof SSLPeerUnverifiedException)) ? false : true;
    }

    private boolean recover(IOException iOException, StreamAllocation streamAllocation, boolean z3, Request request) {
        streamAllocation.streamFailed(iOException);
        if (this.client.retryOnConnectionFailure()) {
            return !(z3 && (request.body() instanceof UnrepeatableRequestBody)) && isRecoverable(iOException, z3) && streamAllocation.hasMoreRoutes();
        }
        return false;
    }

    private int retryAfter(Response response, int i2) {
        String header = response.header("Retry-After");
        if (header == null) {
            return i2;
        }
        if (header.matches("\\d+")) {
            return Integer.valueOf(header).intValue();
        }
        return Integer.MAX_VALUE;
    }

    private boolean sameConnection(Response response, HttpUrl httpUrl) {
        HttpUrl url = response.request().url();
        return url.host().equals(httpUrl.host()) && url.port() == httpUrl.port() && url.scheme().equals(httpUrl.scheme());
    }

    public void cancel() {
        this.canceled = true;
        StreamAllocation streamAllocation = this.streamAllocation;
        if (streamAllocation != null) {
            streamAllocation.cancel();
        }
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        Response proceed;
        Request followUpRequest;
        Request request = chain.request();
        RealInterceptorChain realInterceptorChain = (RealInterceptorChain) chain;
        Call call = realInterceptorChain.call();
        EventListener eventListener = realInterceptorChain.eventListener();
        StreamAllocation streamAllocation = new StreamAllocation(this.client.connectionPool(), createAddress(request.url()), call, eventListener, this.callStackTrace);
        this.streamAllocation = streamAllocation;
        Response response = null;
        int i2 = 0;
        while (!this.canceled) {
            try {
                try {
                    proceed = realInterceptorChain.proceed(request, streamAllocation, null, null);
                    if (response != null) {
                        proceed = proceed.newBuilder().priorResponse(response.newBuilder().body(null).build()).build();
                    }
                    try {
                        followUpRequest = followUpRequest(proceed, streamAllocation.route());
                    } catch (IOException e4) {
                        streamAllocation.release();
                        throw e4;
                    }
                } catch (IOException e5) {
                    if (!recover(e5, streamAllocation, !(e5 instanceof ConnectionShutdownException), request)) {
                        throw e5;
                    }
                } catch (RouteException e6) {
                    if (!recover(e6.getLastConnectException(), streamAllocation, false, request)) {
                        throw e6.getFirstConnectException();
                    }
                }
                if (followUpRequest == null) {
                    streamAllocation.release();
                    return proceed;
                }
                Util.closeQuietly(proceed.body());
                int i4 = i2 + 1;
                if (i4 <= 20) {
                    if (!(followUpRequest.body() instanceof UnrepeatableRequestBody)) {
                        if (!sameConnection(proceed, followUpRequest.url())) {
                            streamAllocation.release();
                            streamAllocation = new StreamAllocation(this.client.connectionPool(), createAddress(followUpRequest.url()), call, eventListener, this.callStackTrace);
                            this.streamAllocation = streamAllocation;
                        } else if (streamAllocation.codec() != null) {
                            throw new IllegalStateException("Closing the body of " + proceed + " didn't close its backing stream. Bad interceptor?");
                        }
                        response = proceed;
                        request = followUpRequest;
                        i2 = i4;
                    } else {
                        streamAllocation.release();
                        throw new HttpRetryException("Cannot retry streamed HTTP body", proceed.code());
                    }
                } else {
                    streamAllocation.release();
                    throw new ProtocolException("Too many follow-up requests: " + i4);
                }
            } catch (Throwable th) {
                streamAllocation.streamFailed(null);
                streamAllocation.release();
                throw th;
            }
        }
        streamAllocation.release();
        throw new IOException("Canceled");
    }

    public boolean isCanceled() {
        return this.canceled;
    }

    public void setCallStackTrace(Object obj) {
        this.callStackTrace = obj;
    }

    public StreamAllocation streamAllocation() {
        return this.streamAllocation;
    }
}
