package org.apache.http.impl.client;

import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.http.HttpRequest;
import org.apache.http.annotation.Immutable;
import org.apache.http.client.methods.HttpDeleteHC4;
import org.apache.http.client.methods.HttpHeadHC4;
import org.apache.http.client.methods.HttpOptionsHC4;
import org.apache.http.client.methods.HttpPutHC4;
import org.apache.http.client.methods.HttpTraceHC4;
@Immutable
/* loaded from: classes5.dex */
public class StandardHttpRequestRetryHandler extends DefaultHttpRequestRetryHandlerHC4 {
    private final Map<String, Boolean> idempotentMethods;

    public StandardHttpRequestRetryHandler(int i2, boolean z3) {
        super(i2, z3);
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        this.idempotentMethods = concurrentHashMap;
        Boolean bool = Boolean.TRUE;
        concurrentHashMap.put("GET", bool);
        concurrentHashMap.put(HttpHeadHC4.METHOD_NAME, bool);
        concurrentHashMap.put(HttpPutHC4.METHOD_NAME, bool);
        concurrentHashMap.put(HttpDeleteHC4.METHOD_NAME, bool);
        concurrentHashMap.put(HttpOptionsHC4.METHOD_NAME, bool);
        concurrentHashMap.put(HttpTraceHC4.METHOD_NAME, bool);
    }

    @Override // org.apache.http.impl.client.DefaultHttpRequestRetryHandlerHC4
    protected boolean handleAsIdempotent(HttpRequest httpRequest) {
        Boolean bool = this.idempotentMethods.get(httpRequest.getRequestLine().getMethod().toUpperCase(Locale.ENGLISH));
        return bool != null && bool.booleanValue();
    }

    public StandardHttpRequestRetryHandler() {
        this(3, false);
    }
}
