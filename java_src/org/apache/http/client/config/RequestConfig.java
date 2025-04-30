package org.apache.http.client.config;

import java.net.InetAddress;
import java.util.Collection;
import org.apache.http.HttpHost;
/* loaded from: classes5.dex */
public class RequestConfig implements Cloneable {
    public static final RequestConfig DEFAULT = new Builder().build();
    private final boolean authenticationEnabled;
    private final boolean circularRedirectsAllowed;
    private final int connectTimeout;
    private final int connectionRequestTimeout;
    private final String cookieSpec;
    private final boolean expectContinueEnabled;
    private final InetAddress localAddress;
    private final int maxRedirects;
    private final HttpHost proxy;
    private final Collection<String> proxyPreferredAuthSchemes;
    private final boolean redirectsEnabled;
    private final boolean relativeRedirectsAllowed;
    private final int socketTimeout;
    private final boolean staleConnectionCheckEnabled;
    private final Collection<String> targetPreferredAuthSchemes;

    /* loaded from: classes5.dex */
    public static class Builder {
        private boolean circularRedirectsAllowed;
        private String cookieSpec;
        private boolean expectContinueEnabled;
        private InetAddress localAddress;
        private HttpHost proxy;
        private Collection<String> proxyPreferredAuthSchemes;
        private Collection<String> targetPreferredAuthSchemes;
        private boolean staleConnectionCheckEnabled = true;
        private boolean redirectsEnabled = true;
        private int maxRedirects = 50;
        private boolean relativeRedirectsAllowed = true;
        private boolean authenticationEnabled = true;
        private int connectionRequestTimeout = -1;
        private int connectTimeout = -1;
        private int socketTimeout = -1;

        Builder() {
        }

        public RequestConfig build() {
            return new RequestConfig(this.expectContinueEnabled, this.proxy, this.localAddress, this.staleConnectionCheckEnabled, this.cookieSpec, this.redirectsEnabled, this.relativeRedirectsAllowed, this.circularRedirectsAllowed, this.maxRedirects, this.authenticationEnabled, this.targetPreferredAuthSchemes, this.proxyPreferredAuthSchemes, this.connectionRequestTimeout, this.connectTimeout, this.socketTimeout);
        }

        public Builder setAuthenticationEnabled(boolean z3) {
            this.authenticationEnabled = z3;
            return this;
        }

        public Builder setCircularRedirectsAllowed(boolean z3) {
            this.circularRedirectsAllowed = z3;
            return this;
        }

        public Builder setConnectTimeout(int i2) {
            this.connectTimeout = i2;
            return this;
        }

        public Builder setConnectionRequestTimeout(int i2) {
            this.connectionRequestTimeout = i2;
            return this;
        }

        public Builder setCookieSpec(String str) {
            this.cookieSpec = str;
            return this;
        }

        public Builder setExpectContinueEnabled(boolean z3) {
            this.expectContinueEnabled = z3;
            return this;
        }

        public Builder setLocalAddress(InetAddress inetAddress) {
            this.localAddress = inetAddress;
            return this;
        }

        public Builder setMaxRedirects(int i2) {
            this.maxRedirects = i2;
            return this;
        }

        public Builder setProxy(HttpHost httpHost) {
            this.proxy = httpHost;
            return this;
        }

        public Builder setProxyPreferredAuthSchemes(Collection<String> collection) {
            this.proxyPreferredAuthSchemes = collection;
            return this;
        }

        public Builder setRedirectsEnabled(boolean z3) {
            this.redirectsEnabled = z3;
            return this;
        }

        public Builder setRelativeRedirectsAllowed(boolean z3) {
            this.relativeRedirectsAllowed = z3;
            return this;
        }

        public Builder setSocketTimeout(int i2) {
            this.socketTimeout = i2;
            return this;
        }

        public Builder setStaleConnectionCheckEnabled(boolean z3) {
            this.staleConnectionCheckEnabled = z3;
            return this;
        }

        public Builder setTargetPreferredAuthSchemes(Collection<String> collection) {
            this.targetPreferredAuthSchemes = collection;
            return this;
        }
    }

    RequestConfig(boolean z3, HttpHost httpHost, InetAddress inetAddress, boolean z4, String str, boolean z5, boolean z6, boolean z7, int i2, boolean z8, Collection<String> collection, Collection<String> collection2, int i4, int i5, int i6) {
        this.expectContinueEnabled = z3;
        this.proxy = httpHost;
        this.localAddress = inetAddress;
        this.staleConnectionCheckEnabled = z4;
        this.cookieSpec = str;
        this.redirectsEnabled = z5;
        this.relativeRedirectsAllowed = z6;
        this.circularRedirectsAllowed = z7;
        this.maxRedirects = i2;
        this.authenticationEnabled = z8;
        this.targetPreferredAuthSchemes = collection;
        this.proxyPreferredAuthSchemes = collection2;
        this.connectionRequestTimeout = i4;
        this.connectTimeout = i5;
        this.socketTimeout = i6;
    }

    public static Builder copy(RequestConfig requestConfig) {
        return new Builder().setExpectContinueEnabled(requestConfig.isExpectContinueEnabled()).setProxy(requestConfig.getProxy()).setLocalAddress(requestConfig.getLocalAddress()).setStaleConnectionCheckEnabled(requestConfig.isStaleConnectionCheckEnabled()).setCookieSpec(requestConfig.getCookieSpec()).setRedirectsEnabled(requestConfig.isRedirectsEnabled()).setRelativeRedirectsAllowed(requestConfig.isRelativeRedirectsAllowed()).setCircularRedirectsAllowed(requestConfig.isCircularRedirectsAllowed()).setMaxRedirects(requestConfig.getMaxRedirects()).setAuthenticationEnabled(requestConfig.isAuthenticationEnabled()).setTargetPreferredAuthSchemes(requestConfig.getTargetPreferredAuthSchemes()).setProxyPreferredAuthSchemes(requestConfig.getProxyPreferredAuthSchemes()).setConnectionRequestTimeout(requestConfig.getConnectionRequestTimeout()).setConnectTimeout(requestConfig.getConnectTimeout()).setSocketTimeout(requestConfig.getSocketTimeout());
    }

    public static Builder custom() {
        return new Builder();
    }

    public int getConnectTimeout() {
        return this.connectTimeout;
    }

    public int getConnectionRequestTimeout() {
        return this.connectionRequestTimeout;
    }

    public String getCookieSpec() {
        return this.cookieSpec;
    }

    public InetAddress getLocalAddress() {
        return this.localAddress;
    }

    public int getMaxRedirects() {
        return this.maxRedirects;
    }

    public HttpHost getProxy() {
        return this.proxy;
    }

    public Collection<String> getProxyPreferredAuthSchemes() {
        return this.proxyPreferredAuthSchemes;
    }

    public int getSocketTimeout() {
        return this.socketTimeout;
    }

    public Collection<String> getTargetPreferredAuthSchemes() {
        return this.targetPreferredAuthSchemes;
    }

    public boolean isAuthenticationEnabled() {
        return this.authenticationEnabled;
    }

    public boolean isCircularRedirectsAllowed() {
        return this.circularRedirectsAllowed;
    }

    public boolean isExpectContinueEnabled() {
        return this.expectContinueEnabled;
    }

    public boolean isRedirectsEnabled() {
        return this.redirectsEnabled;
    }

    public boolean isRelativeRedirectsAllowed() {
        return this.relativeRedirectsAllowed;
    }

    public boolean isStaleConnectionCheckEnabled() {
        return this.staleConnectionCheckEnabled;
    }

    public String toString() {
        return ", expectContinueEnabled=" + this.expectContinueEnabled + ", proxy=" + this.proxy + ", localAddress=" + this.localAddress + ", staleConnectionCheckEnabled=" + this.staleConnectionCheckEnabled + ", cookieSpec=" + this.cookieSpec + ", redirectsEnabled=" + this.redirectsEnabled + ", relativeRedirectsAllowed=" + this.relativeRedirectsAllowed + ", maxRedirects=" + this.maxRedirects + ", circularRedirectsAllowed=" + this.circularRedirectsAllowed + ", authenticationEnabled=" + this.authenticationEnabled + ", targetPreferredAuthSchemes=" + this.targetPreferredAuthSchemes + ", proxyPreferredAuthSchemes=" + this.proxyPreferredAuthSchemes + ", connectionRequestTimeout=" + this.connectionRequestTimeout + ", connectTimeout=" + this.connectTimeout + ", socketTimeout=" + this.socketTimeout + "]";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public RequestConfig clone() throws CloneNotSupportedException {
        return (RequestConfig) super.clone();
    }
}
