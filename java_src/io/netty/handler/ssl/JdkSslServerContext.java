package io.netty.handler.ssl;

import java.io.File;
import java.security.KeyStore;
import java.security.PrivateKey;
import java.security.Provider;
import java.security.cert.X509Certificate;
import java.util.Objects;
import javax.net.ssl.KeyManagerFactory;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSessionContext;
import javax.net.ssl.TrustManagerFactory;
import org.apache.http.conn.ssl.SSLConnectionSocketFactory;
@Deprecated
/* loaded from: classes5.dex */
public final class JdkSslServerContext extends JdkSslContext {
    @Deprecated
    public JdkSslServerContext(File file, File file2) throws SSLException {
        this(null, file, file2, null, null, IdentityCipherSuiteFilter.INSTANCE, JdkDefaultApplicationProtocolNegotiator.INSTANCE, 0L, 0L, null);
    }

    private static SSLContext newSSLContext(Provider provider, X509Certificate[] x509CertificateArr, TrustManagerFactory trustManagerFactory, X509Certificate[] x509CertificateArr2, PrivateKey privateKey, String str, KeyManagerFactory keyManagerFactory, long j4, long j5, String str2) throws SSLException {
        SSLContext sSLContext;
        if (privateKey == null) {
            Objects.requireNonNull(keyManagerFactory, "key, keyManagerFactory");
        }
        if (x509CertificateArr != null) {
            try {
                trustManagerFactory = SslContext.buildTrustManagerFactory(x509CertificateArr, trustManagerFactory, str2);
            } catch (Exception e4) {
                if (e4 instanceof SSLException) {
                    throw ((SSLException) e4);
                }
                throw new SSLException("failed to initialize the server-side SSL context", e4);
            }
        }
        if (privateKey != null) {
            keyManagerFactory = SslContext.buildKeyManagerFactory(x509CertificateArr2, privateKey, str, keyManagerFactory, (String) null);
        }
        if (provider == null) {
            sSLContext = SSLContext.getInstance(SSLConnectionSocketFactory.TLS);
        } else {
            sSLContext = SSLContext.getInstance(SSLConnectionSocketFactory.TLS, provider);
        }
        sSLContext.init(keyManagerFactory.getKeyManagers(), trustManagerFactory == null ? null : trustManagerFactory.getTrustManagers(), null);
        SSLSessionContext serverSessionContext = sSLContext.getServerSessionContext();
        if (j4 > 0) {
            serverSessionContext.setSessionCacheSize((int) Math.min(j4, 2147483647L));
        }
        if (j5 > 0) {
            serverSessionContext.setSessionTimeout((int) Math.min(j5, 2147483647L));
        }
        return sSLContext;
    }

    @Deprecated
    public JdkSslServerContext(File file, File file2, String str) throws SSLException {
        this(file, file2, str, (Iterable<String>) null, IdentityCipherSuiteFilter.INSTANCE, JdkDefaultApplicationProtocolNegotiator.INSTANCE, 0L, 0L);
    }

    @Deprecated
    public JdkSslServerContext(File file, File file2, String str, Iterable<String> iterable, Iterable<String> iterable2, long j4, long j5) throws SSLException {
        this(null, file, file2, str, iterable, IdentityCipherSuiteFilter.INSTANCE, JdkSslContext.toNegotiator(SslContext.toApplicationProtocolConfig(iterable2), true), j4, j5, KeyStore.getDefaultType());
    }

    @Deprecated
    public JdkSslServerContext(File file, File file2, String str, Iterable<String> iterable, CipherSuiteFilter cipherSuiteFilter, ApplicationProtocolConfig applicationProtocolConfig, long j4, long j5) throws SSLException {
        this(null, file, file2, str, iterable, cipherSuiteFilter, JdkSslContext.toNegotiator(applicationProtocolConfig, true), j4, j5, KeyStore.getDefaultType());
    }

    @Deprecated
    public JdkSslServerContext(File file, File file2, String str, Iterable<String> iterable, CipherSuiteFilter cipherSuiteFilter, JdkApplicationProtocolNegotiator jdkApplicationProtocolNegotiator, long j4, long j5) throws SSLException {
        this(null, file, file2, str, iterable, cipherSuiteFilter, jdkApplicationProtocolNegotiator, j4, j5, KeyStore.getDefaultType());
    }

    JdkSslServerContext(Provider provider, File file, File file2, String str, Iterable<String> iterable, CipherSuiteFilter cipherSuiteFilter, JdkApplicationProtocolNegotiator jdkApplicationProtocolNegotiator, long j4, long j5, String str2) throws SSLException {
        super(newSSLContext(provider, null, null, SslContext.toX509CertificatesInternal(file), SslContext.toPrivateKeyInternal(file2, str), str, null, j4, j5, str2), false, iterable, cipherSuiteFilter, jdkApplicationProtocolNegotiator, ClientAuth.NONE, (String[]) null, false);
    }

    @Deprecated
    public JdkSslServerContext(File file, TrustManagerFactory trustManagerFactory, File file2, File file3, String str, KeyManagerFactory keyManagerFactory, Iterable<String> iterable, CipherSuiteFilter cipherSuiteFilter, ApplicationProtocolConfig applicationProtocolConfig, long j4, long j5) throws SSLException {
        super(newSSLContext(null, SslContext.toX509CertificatesInternal(file), trustManagerFactory, SslContext.toX509CertificatesInternal(file2), SslContext.toPrivateKeyInternal(file3, str), str, keyManagerFactory, j4, j5, null), false, iterable, cipherSuiteFilter, applicationProtocolConfig, ClientAuth.NONE, (String[]) null, false);
    }

    @Deprecated
    public JdkSslServerContext(File file, TrustManagerFactory trustManagerFactory, File file2, File file3, String str, KeyManagerFactory keyManagerFactory, Iterable<String> iterable, CipherSuiteFilter cipherSuiteFilter, JdkApplicationProtocolNegotiator jdkApplicationProtocolNegotiator, long j4, long j5) throws SSLException {
        super(newSSLContext(null, SslContext.toX509CertificatesInternal(file), trustManagerFactory, SslContext.toX509CertificatesInternal(file2), SslContext.toPrivateKeyInternal(file3, str), str, keyManagerFactory, j4, j5, KeyStore.getDefaultType()), false, iterable, cipherSuiteFilter, jdkApplicationProtocolNegotiator, ClientAuth.NONE, (String[]) null, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public JdkSslServerContext(Provider provider, X509Certificate[] x509CertificateArr, TrustManagerFactory trustManagerFactory, X509Certificate[] x509CertificateArr2, PrivateKey privateKey, String str, KeyManagerFactory keyManagerFactory, Iterable<String> iterable, CipherSuiteFilter cipherSuiteFilter, ApplicationProtocolConfig applicationProtocolConfig, long j4, long j5, ClientAuth clientAuth, String[] strArr, boolean z3, String str2) throws SSLException {
        super(newSSLContext(provider, x509CertificateArr, trustManagerFactory, x509CertificateArr2, privateKey, str, keyManagerFactory, j4, j5, str2), false, iterable, cipherSuiteFilter, JdkSslContext.toNegotiator(applicationProtocolConfig, true), clientAuth, strArr, z3);
    }
}
