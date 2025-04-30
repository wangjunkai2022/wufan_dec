package org.apache.http.impl.client;

import com.facebook.common.util.f;
import java.net.Authenticator;
import java.net.PasswordAuthentication;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.Credentials;
import org.apache.http.auth.NTCredentials;
import org.apache.http.auth.UsernamePasswordCredentials;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.client.config.AuthSchemes;
import org.apache.http.util.Args;
@ThreadSafe
/* loaded from: classes5.dex */
public class SystemDefaultCredentialsProvider implements CredentialsProvider {
    private static final Map<String, String> SCHEME_MAP;
    private final BasicCredentialsProviderHC4 internal = new BasicCredentialsProviderHC4();

    static {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        SCHEME_MAP = concurrentHashMap;
        Locale locale = Locale.ENGLISH;
        concurrentHashMap.put(AuthSchemes.BASIC.toUpperCase(locale), AuthSchemes.BASIC);
        concurrentHashMap.put(AuthSchemes.DIGEST.toUpperCase(locale), AuthSchemes.DIGEST);
        concurrentHashMap.put(AuthSchemes.NTLM.toUpperCase(locale), AuthSchemes.NTLM);
        concurrentHashMap.put(AuthSchemes.SPNEGO.toUpperCase(locale), "SPNEGO");
        concurrentHashMap.put(AuthSchemes.KERBEROS.toUpperCase(locale), AuthSchemes.KERBEROS);
    }

    private static PasswordAuthentication getSystemCreds(AuthScope authScope, Authenticator.RequestorType requestorType) {
        String host = authScope.getHost();
        int port = authScope.getPort();
        return Authenticator.requestPasswordAuthentication(host, null, port, port == 443 ? "https" : f.f11765a, null, translateScheme(authScope.getScheme()), null, requestorType);
    }

    private static String translateScheme(String str) {
        if (str == null) {
            return null;
        }
        String str2 = SCHEME_MAP.get(str);
        return str2 != null ? str2 : str;
    }

    public void clear() {
        this.internal.clear();
    }

    public Credentials getCredentials(AuthScope authScope) {
        Args.notNull(authScope, "Auth scope");
        Credentials credentials = this.internal.getCredentials(authScope);
        if (credentials != null) {
            return credentials;
        }
        if (authScope.getHost() != null) {
            PasswordAuthentication systemCreds = getSystemCreds(authScope, Authenticator.RequestorType.SERVER);
            if (systemCreds == null) {
                systemCreds = getSystemCreds(authScope, Authenticator.RequestorType.PROXY);
            }
            if (systemCreds != null) {
                String property = System.getProperty("http.auth.ntlm.domain");
                if (property != null) {
                    return new NTCredentials(systemCreds.getUserName(), new String(systemCreds.getPassword()), (String) null, property);
                }
                if (AuthSchemes.NTLM.equalsIgnoreCase(authScope.getScheme())) {
                    return new NTCredentials(systemCreds.getUserName(), new String(systemCreds.getPassword()), (String) null, (String) null);
                }
                return new UsernamePasswordCredentials(systemCreds.getUserName(), new String(systemCreds.getPassword()));
            }
        }
        return null;
    }

    public void setCredentials(AuthScope authScope, Credentials credentials) {
        this.internal.setCredentials(authScope, credentials);
    }
}
