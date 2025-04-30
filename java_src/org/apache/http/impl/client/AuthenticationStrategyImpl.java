package org.apache.http.impl.client;

import android.util.Log;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Queue;
import org.apache.http.FormattedHeader;
import org.apache.http.Header;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.annotation.Immutable;
import org.apache.http.auth.AuthOption;
import org.apache.http.auth.AuthScheme;
import org.apache.http.auth.AuthSchemeProvider;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.Credentials;
import org.apache.http.auth.MalformedChallengeException;
import org.apache.http.client.AuthCache;
import org.apache.http.client.AuthenticationStrategy;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.client.config.AuthSchemes;
import org.apache.http.client.config.RequestConfig;
import org.apache.http.client.protocol.HttpClientContext;
import org.apache.http.config.Lookup;
import org.apache.http.protocol.HTTP;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;
@Immutable
/* loaded from: classes5.dex */
abstract class AuthenticationStrategyImpl implements AuthenticationStrategy {
    private static final List<String> DEFAULT_SCHEME_PRIORITY = Collections.unmodifiableList(Arrays.asList(AuthSchemes.SPNEGO, AuthSchemes.KERBEROS, AuthSchemes.NTLM, AuthSchemes.DIGEST, AuthSchemes.BASIC));
    private static final String TAG = "HttpClient";
    private final int challengeCode;
    private final String headerName;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AuthenticationStrategyImpl(int i2, String str) {
        this.challengeCode = i2;
        this.headerName = str;
    }

    @Override // org.apache.http.client.AuthenticationStrategy
    public void authFailed(HttpHost httpHost, AuthScheme authScheme, HttpContext httpContext) {
        Args.notNull(httpHost, "Host");
        Args.notNull(httpContext, "HTTP context");
        AuthCache authCache = HttpClientContext.adapt(httpContext).getAuthCache();
        if (authCache != null) {
            if (Log.isLoggable(TAG, 3)) {
                StringBuilder sb = new StringBuilder();
                sb.append("Clearing cached auth scheme for ");
                sb.append(httpHost);
            }
            authCache.remove(httpHost);
        }
    }

    @Override // org.apache.http.client.AuthenticationStrategy
    public void authSucceeded(HttpHost httpHost, AuthScheme authScheme, HttpContext httpContext) {
        Args.notNull(httpHost, "Host");
        Args.notNull(authScheme, "Auth scheme");
        Args.notNull(httpContext, "HTTP context");
        HttpClientContext adapt = HttpClientContext.adapt(httpContext);
        if (isCachable(authScheme)) {
            AuthCache authCache = adapt.getAuthCache();
            if (authCache == null) {
                authCache = new BasicAuthCache();
                adapt.setAuthCache(authCache);
            }
            if (Log.isLoggable(TAG, 3)) {
                StringBuilder sb = new StringBuilder();
                sb.append("Caching '");
                sb.append(authScheme.getSchemeName());
                sb.append("' auth scheme for ");
                sb.append(httpHost);
            }
            authCache.put(httpHost, authScheme);
        }
    }

    @Override // org.apache.http.client.AuthenticationStrategy
    public Map<String, Header> getChallenges(HttpHost httpHost, HttpResponse httpResponse, HttpContext httpContext) throws MalformedChallengeException {
        CharArrayBuffer charArrayBuffer;
        int i2;
        Args.notNull(httpResponse, "HTTP response");
        FormattedHeader[] headers = httpResponse.getHeaders(this.headerName);
        HashMap hashMap = new HashMap(headers.length);
        for (FormattedHeader formattedHeader : headers) {
            if (formattedHeader instanceof FormattedHeader) {
                FormattedHeader formattedHeader2 = formattedHeader;
                charArrayBuffer = formattedHeader2.getBuffer();
                i2 = formattedHeader2.getValuePos();
            } else {
                String value = formattedHeader.getValue();
                if (value != null) {
                    charArrayBuffer = new CharArrayBuffer(value.length());
                    charArrayBuffer.append(value);
                    i2 = 0;
                } else {
                    throw new MalformedChallengeException("Header value is null");
                }
            }
            while (i2 < charArrayBuffer.length() && HTTP.isWhitespace(charArrayBuffer.charAt(i2))) {
                i2++;
            }
            int i4 = i2;
            while (i4 < charArrayBuffer.length() && !HTTP.isWhitespace(charArrayBuffer.charAt(i4))) {
                i4++;
            }
            hashMap.put(charArrayBuffer.substring(i2, i4).toLowerCase(Locale.ENGLISH), formattedHeader);
        }
        return hashMap;
    }

    abstract Collection<String> getPreferredAuthSchemes(RequestConfig requestConfig);

    @Override // org.apache.http.client.AuthenticationStrategy
    public boolean isAuthenticationRequested(HttpHost httpHost, HttpResponse httpResponse, HttpContext httpContext) {
        Args.notNull(httpResponse, "HTTP response");
        return httpResponse.getStatusLine().getStatusCode() == this.challengeCode;
    }

    protected boolean isCachable(AuthScheme authScheme) {
        if (authScheme == null || !authScheme.isComplete()) {
            return false;
        }
        String schemeName = authScheme.getSchemeName();
        return schemeName.equalsIgnoreCase(AuthSchemes.BASIC) || schemeName.equalsIgnoreCase(AuthSchemes.DIGEST);
    }

    @Override // org.apache.http.client.AuthenticationStrategy
    public Queue<AuthOption> select(Map<String, Header> map, HttpHost httpHost, HttpResponse httpResponse, HttpContext httpContext) throws MalformedChallengeException {
        Args.notNull(map, "Map of auth challenges");
        Args.notNull(httpHost, "Host");
        Args.notNull(httpResponse, "HTTP response");
        Args.notNull(httpContext, "HTTP context");
        HttpClientContext adapt = HttpClientContext.adapt(httpContext);
        LinkedList linkedList = new LinkedList();
        Lookup<AuthSchemeProvider> authSchemeRegistry = adapt.getAuthSchemeRegistry();
        if (authSchemeRegistry == null) {
            Log.isLoggable(TAG, 3);
            return linkedList;
        }
        CredentialsProvider credentialsProvider = adapt.getCredentialsProvider();
        if (credentialsProvider == null) {
            Log.isLoggable(TAG, 3);
            return linkedList;
        }
        Collection<String> preferredAuthSchemes = getPreferredAuthSchemes(adapt.getRequestConfig());
        if (preferredAuthSchemes == null) {
            preferredAuthSchemes = DEFAULT_SCHEME_PRIORITY;
        }
        if (Log.isLoggable(TAG, 3)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Authentication schemes in the order of preference: ");
            sb.append(preferredAuthSchemes);
        }
        for (String str : preferredAuthSchemes) {
            Header header = map.get(str.toLowerCase(Locale.ENGLISH));
            if (header != null) {
                AuthSchemeProvider lookup = authSchemeRegistry.lookup(str);
                if (lookup == null) {
                    if (Log.isLoggable(TAG, 5)) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("Authentication scheme ");
                        sb2.append(str);
                        sb2.append(" not supported");
                    }
                } else {
                    AuthScheme create = lookup.create(httpContext);
                    create.processChallenge(header);
                    Credentials credentials = credentialsProvider.getCredentials(new AuthScope(httpHost.getHostName(), httpHost.getPort(), create.getRealm(), create.getSchemeName()));
                    if (credentials != null) {
                        linkedList.add(new AuthOption(create, credentials));
                    }
                }
            } else if (Log.isLoggable(TAG, 3)) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("Challenge for ");
                sb3.append(str);
                sb3.append(" authentication scheme not available");
            }
        }
        return linkedList;
    }
}
