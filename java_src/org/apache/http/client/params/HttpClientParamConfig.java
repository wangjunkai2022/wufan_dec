package org.apache.http.client.params;
@Deprecated
/* loaded from: classes5.dex */
public final class HttpClientParamConfig {
    private HttpClientParamConfig() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x001e, code lost:
        if (r2.isEmpty() != false) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.apache.http.client.config.RequestConfig getRequestConfig(org.apache.http.params.HttpParams r5) {
        /*
            r0 = 0
            if (r5 != 0) goto L4
            return r0
        L4:
            r1 = 1
            java.lang.Class r2 = r5.getClass()     // Catch: java.lang.Exception -> L21
            java.lang.String r3 = "parameters"
            java.lang.reflect.Field r2 = r2.getDeclaredField(r3)     // Catch: java.lang.Exception -> L21
            r2.setAccessible(r1)     // Catch: java.lang.Exception -> L21
            java.lang.Object r2 = r2.get(r5)     // Catch: java.lang.Exception -> L21
            java.util.Map r2 = (java.util.Map) r2     // Catch: java.lang.Exception -> L21
            if (r2 == 0) goto L20
            boolean r2 = r2.isEmpty()     // Catch: java.lang.Exception -> L21
            if (r2 == 0) goto L21
        L20:
            return r0
        L21:
            org.apache.http.client.config.RequestConfig$Builder r0 = org.apache.http.client.config.RequestConfig.custom()
            java.lang.String r2 = "http.socket.timeout"
            r3 = 0
            int r2 = r5.getIntParameter(r2, r3)
            org.apache.http.client.config.RequestConfig$Builder r0 = r0.setSocketTimeout(r2)
            java.lang.String r2 = "http.connection.stalecheck"
            boolean r2 = r5.getBooleanParameter(r2, r1)
            org.apache.http.client.config.RequestConfig$Builder r0 = r0.setStaleConnectionCheckEnabled(r2)
            java.lang.String r2 = "http.connection.timeout"
            int r2 = r5.getIntParameter(r2, r3)
            org.apache.http.client.config.RequestConfig$Builder r0 = r0.setConnectTimeout(r2)
            java.lang.String r2 = "http.protocol.expect-continue"
            boolean r2 = r5.getBooleanParameter(r2, r3)
            org.apache.http.client.config.RequestConfig$Builder r0 = r0.setExpectContinueEnabled(r2)
            java.lang.String r2 = "http.route.default-proxy"
            java.lang.Object r2 = r5.getParameter(r2)
            org.apache.http.HttpHost r2 = (org.apache.http.HttpHost) r2
            org.apache.http.client.config.RequestConfig$Builder r0 = r0.setProxy(r2)
            java.lang.String r2 = "http.route.local-address"
            java.lang.Object r2 = r5.getParameter(r2)
            java.net.InetAddress r2 = (java.net.InetAddress) r2
            org.apache.http.client.config.RequestConfig$Builder r0 = r0.setLocalAddress(r2)
            java.lang.String r2 = "http.protocol.handle-authentication"
            boolean r2 = r5.getBooleanParameter(r2, r1)
            org.apache.http.client.config.RequestConfig$Builder r0 = r0.setAuthenticationEnabled(r2)
            java.lang.String r2 = "http.protocol.allow-circular-redirects"
            boolean r2 = r5.getBooleanParameter(r2, r3)
            org.apache.http.client.config.RequestConfig$Builder r0 = r0.setCircularRedirectsAllowed(r2)
            java.lang.String r2 = "http.protocol.cookie-policy"
            java.lang.Object r2 = r5.getParameter(r2)
            java.lang.String r2 = (java.lang.String) r2
            org.apache.http.client.config.RequestConfig$Builder r0 = r0.setCookieSpec(r2)
            r2 = 50
            java.lang.String r4 = "http.protocol.max-redirects"
            int r2 = r5.getIntParameter(r4, r2)
            org.apache.http.client.config.RequestConfig$Builder r0 = r0.setMaxRedirects(r2)
            java.lang.String r2 = "http.protocol.handle-redirects"
            boolean r2 = r5.getBooleanParameter(r2, r1)
            org.apache.http.client.config.RequestConfig$Builder r0 = r0.setRedirectsEnabled(r2)
            java.lang.String r2 = "http.protocol.reject-relative-redirect"
            boolean r5 = r5.getBooleanParameter(r2, r3)
            r5 = r5 ^ r1
            org.apache.http.client.config.RequestConfig$Builder r5 = r0.setRelativeRedirectsAllowed(r5)
            org.apache.http.client.config.RequestConfig r5 = r5.build()
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.http.client.params.HttpClientParamConfig.getRequestConfig(org.apache.http.params.HttpParams):org.apache.http.client.config.RequestConfig");
    }
}
