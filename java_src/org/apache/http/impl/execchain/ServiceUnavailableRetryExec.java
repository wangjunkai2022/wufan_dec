package org.apache.http.impl.execchain;

import android.util.Log;
import java.io.IOException;
import java.io.InterruptedIOException;
import org.apache.http.Header;
import org.apache.http.HttpException;
import org.apache.http.annotation.Immutable;
import org.apache.http.client.ServiceUnavailableRetryStrategy;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpExecutionAware;
import org.apache.http.client.methods.HttpRequestWrapper;
import org.apache.http.client.protocol.HttpClientContext;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.util.Args;
@Immutable
/* loaded from: classes5.dex */
public class ServiceUnavailableRetryExec implements ClientExecChain {
    private static final String TAG = "HttpClient";
    private final ClientExecChain requestExecutor;
    private final ServiceUnavailableRetryStrategy retryStrategy;

    public ServiceUnavailableRetryExec(ClientExecChain clientExecChain, ServiceUnavailableRetryStrategy serviceUnavailableRetryStrategy) {
        Args.notNull(clientExecChain, "HTTP request executor");
        Args.notNull(serviceUnavailableRetryStrategy, "Retry strategy");
        this.requestExecutor = clientExecChain;
        this.retryStrategy = serviceUnavailableRetryStrategy;
    }

    @Override // org.apache.http.impl.execchain.ClientExecChain
    public CloseableHttpResponse execute(HttpRoute httpRoute, HttpRequestWrapper httpRequestWrapper, HttpClientContext httpClientContext, HttpExecutionAware httpExecutionAware) throws IOException, HttpException {
        Header[] allHeaders = httpRequestWrapper.getAllHeaders();
        int i2 = 1;
        while (true) {
            CloseableHttpResponse execute = this.requestExecutor.execute(httpRoute, httpRequestWrapper, httpClientContext, httpExecutionAware);
            try {
                if (!this.retryStrategy.retryRequest(execute, i2, httpClientContext)) {
                    return execute;
                }
                execute.close();
                long retryInterval = this.retryStrategy.getRetryInterval();
                if (retryInterval > 0) {
                    try {
                        if (Log.isLoggable(TAG, 3)) {
                            StringBuilder sb = new StringBuilder();
                            sb.append("Wait for ");
                            sb.append(retryInterval);
                        }
                        Thread.sleep(retryInterval);
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                        throw new InterruptedIOException();
                    }
                }
                httpRequestWrapper.setHeaders(allHeaders);
                i2++;
            } catch (RuntimeException e4) {
                execute.close();
                throw e4;
            }
        }
    }
}
