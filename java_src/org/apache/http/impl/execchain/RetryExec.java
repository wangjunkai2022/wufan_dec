package org.apache.http.impl.execchain;

import android.util.Log;
import java.io.IOException;
import org.apache.http.Header;
import org.apache.http.HttpException;
import org.apache.http.NoHttpResponseException;
import org.apache.http.annotation.Immutable;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.client.NonRepeatableRequestException;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpExecutionAware;
import org.apache.http.client.methods.HttpRequestWrapper;
import org.apache.http.client.protocol.HttpClientContext;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.util.Args;
@Immutable
/* loaded from: classes5.dex */
public class RetryExec implements ClientExecChain {
    private static final String TAG = "HttpClient";
    private final ClientExecChain requestExecutor;
    private final HttpRequestRetryHandler retryHandler;

    public RetryExec(ClientExecChain clientExecChain, HttpRequestRetryHandler httpRequestRetryHandler) {
        Args.notNull(clientExecChain, "HTTP request executor");
        Args.notNull(httpRequestRetryHandler, "HTTP request retry handler");
        this.requestExecutor = clientExecChain;
        this.retryHandler = httpRequestRetryHandler;
    }

    @Override // org.apache.http.impl.execchain.ClientExecChain
    public CloseableHttpResponse execute(HttpRoute httpRoute, HttpRequestWrapper httpRequestWrapper, HttpClientContext httpClientContext, HttpExecutionAware httpExecutionAware) throws IOException, HttpException {
        Args.notNull(httpRoute, "HTTP route");
        Args.notNull(httpRequestWrapper, "HTTP request");
        Args.notNull(httpClientContext, "HTTP context");
        Header[] allHeaders = httpRequestWrapper.getAllHeaders();
        int i2 = 1;
        while (true) {
            try {
                return this.requestExecutor.execute(httpRoute, httpRequestWrapper, httpClientContext, httpExecutionAware);
            } catch (IOException e4) {
                if (httpExecutionAware != null && httpExecutionAware.isAborted()) {
                    Log.isLoggable(TAG, 3);
                    throw e4;
                } else if (this.retryHandler.retryRequest(e4, i2, httpClientContext)) {
                    if (Log.isLoggable(TAG, 4)) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("I/O exception (");
                        sb.append(e4.getClass().getName());
                        sb.append(") caught when processing request to ");
                        sb.append(httpRoute);
                        sb.append(": ");
                        sb.append(e4.getMessage());
                    }
                    if (Log.isLoggable(TAG, 3)) {
                        e4.getMessage();
                    }
                    if (!RequestEntityProxy.isRepeatable(httpRequestWrapper)) {
                        Log.isLoggable(TAG, 3);
                        new NonRepeatableRequestException("Cannot retry request with a non-repeatable request entity").initCause(e4);
                    }
                    httpRequestWrapper.setHeaders(allHeaders);
                    if (Log.isLoggable(TAG, 4)) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("Retrying request to ");
                        sb2.append(httpRoute);
                    }
                    i2++;
                } else if (e4 instanceof NoHttpResponseException) {
                    NoHttpResponseException noHttpResponseException = new NoHttpResponseException(httpRoute.getTargetHost().toHostString() + " failed to respond");
                    noHttpResponseException.setStackTrace(e4.getStackTrace());
                    throw noHttpResponseException;
                } else {
                    throw e4;
                }
            }
        }
    }
}
