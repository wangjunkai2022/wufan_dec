package org.apache.http.conn.ssl;

import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import javax.net.ssl.SSLContext;
import org.apache.http.annotation.Immutable;
@Immutable
/* loaded from: classes5.dex */
public class SSLContexts {
    public static SSLContext createDefault() throws SSLInitializationException {
        try {
            SSLContext sSLContext = SSLContext.getInstance(SSLConnectionSocketFactory.TLS);
            sSLContext.init(null, null, null);
            return sSLContext;
        } catch (KeyManagementException e4) {
            throw new SSLInitializationException(e4.getMessage(), e4);
        } catch (NoSuchAlgorithmException e5) {
            throw new SSLInitializationException(e5.getMessage(), e5);
        }
    }

    public static SSLContext createSystemDefault() throws SSLInitializationException {
        try {
            return SSLContext.getInstance("Default");
        } catch (NoSuchAlgorithmException unused) {
            return createDefault();
        }
    }

    public static SSLContextBuilder custom() {
        return new SSLContextBuilder();
    }
}
