package io.netty.handler.ssl;

import io.netty.buffer.ByteBufAllocator;
import io.netty.handler.ssl.ReferenceCountedOpenSslContext;
import io.netty.internal.tcnative.CertificateCallback;
import io.netty.internal.tcnative.SSLContext;
import io.netty.internal.tcnative.SniHostNameMatcher;
import io.netty.util.CharsetUtil;
import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.PlatformDependent;
import io.netty.util.internal.SuppressJava6Requirement;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.security.KeyStore;
import java.security.PrivateKey;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import javax.net.ssl.KeyManagerFactory;
import javax.net.ssl.SSLException;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509ExtendedTrustManager;
import javax.net.ssl.X509TrustManager;
/* loaded from: classes5.dex */
public final class ReferenceCountedOpenSslServerContext extends ReferenceCountedOpenSslContext {
    private final OpenSslServerSessionContext sessionContext;
    private static final InternalLogger logger = InternalLoggerFactory.getInstance(ReferenceCountedOpenSslServerContext.class);
    private static final byte[] ID = {110, 101, 116, 116, 121};

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressJava6Requirement(reason = "Usage guarded by java version check")
    /* loaded from: classes5.dex */
    public static final class ExtendedTrustManagerVerifyCallback extends ReferenceCountedOpenSslContext.AbstractCertificateVerifier {
        private final X509ExtendedTrustManager manager;

        ExtendedTrustManagerVerifyCallback(OpenSslEngineMap openSslEngineMap, X509ExtendedTrustManager x509ExtendedTrustManager) {
            super(openSslEngineMap);
            this.manager = OpenSslTlsv13X509ExtendedTrustManager.wrap(x509ExtendedTrustManager);
        }

        @Override // io.netty.handler.ssl.ReferenceCountedOpenSslContext.AbstractCertificateVerifier
        void verify(ReferenceCountedOpenSslEngine referenceCountedOpenSslEngine, X509Certificate[] x509CertificateArr, String str) throws Exception {
            this.manager.checkClientTrusted(x509CertificateArr, str, referenceCountedOpenSslEngine);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class OpenSslServerCertificateCallback implements CertificateCallback {
        private final OpenSslEngineMap engineMap;
        private final OpenSslKeyMaterialManager keyManagerHolder;

        OpenSslServerCertificateCallback(OpenSslEngineMap openSslEngineMap, OpenSslKeyMaterialManager openSslKeyMaterialManager) {
            this.engineMap = openSslEngineMap;
            this.keyManagerHolder = openSslKeyMaterialManager;
        }

        public void handle(long j4, byte[] bArr, byte[][] bArr2) throws Exception {
            ReferenceCountedOpenSslEngine referenceCountedOpenSslEngine = this.engineMap.get(j4);
            if (referenceCountedOpenSslEngine == null) {
                return;
            }
            try {
                this.keyManagerHolder.setKeyMaterialServerSide(referenceCountedOpenSslEngine);
            } catch (Throwable th) {
                ReferenceCountedOpenSslServerContext.logger.debug("Failed to set the server-side key material", th);
                referenceCountedOpenSslEngine.initHandshakeException(th);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class OpenSslSniHostnameMatcher implements SniHostNameMatcher {
        private final OpenSslEngineMap engineMap;

        OpenSslSniHostnameMatcher(OpenSslEngineMap openSslEngineMap) {
            this.engineMap = openSslEngineMap;
        }

        public boolean match(long j4, String str) {
            ReferenceCountedOpenSslEngine referenceCountedOpenSslEngine = this.engineMap.get(j4);
            if (referenceCountedOpenSslEngine == null) {
                ReferenceCountedOpenSslServerContext.logger.warn("No ReferenceCountedOpenSslEngine found for SSL pointer: {}", Long.valueOf(j4));
                return false;
            }
            return referenceCountedOpenSslEngine.checkSniHostnameMatch(str.getBytes(CharsetUtil.UTF_8));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class TrustManagerVerifyCallback extends ReferenceCountedOpenSslContext.AbstractCertificateVerifier {
        private final X509TrustManager manager;

        TrustManagerVerifyCallback(OpenSslEngineMap openSslEngineMap, X509TrustManager x509TrustManager) {
            super(openSslEngineMap);
            this.manager = x509TrustManager;
        }

        @Override // io.netty.handler.ssl.ReferenceCountedOpenSslContext.AbstractCertificateVerifier
        void verify(ReferenceCountedOpenSslEngine referenceCountedOpenSslEngine, X509Certificate[] x509CertificateArr, String str) throws Exception {
            this.manager.checkClientTrusted(x509CertificateArr, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ReferenceCountedOpenSslServerContext(X509Certificate[] x509CertificateArr, TrustManagerFactory trustManagerFactory, X509Certificate[] x509CertificateArr2, PrivateKey privateKey, String str, KeyManagerFactory keyManagerFactory, Iterable<String> iterable, CipherSuiteFilter cipherSuiteFilter, ApplicationProtocolConfig applicationProtocolConfig, long j4, long j5, ClientAuth clientAuth, String[] strArr, boolean z3, boolean z4, String str2) throws SSLException {
        this(x509CertificateArr, trustManagerFactory, x509CertificateArr2, privateKey, str, keyManagerFactory, iterable, cipherSuiteFilter, ReferenceCountedOpenSslContext.toNegotiator(applicationProtocolConfig), j4, j5, clientAuth, strArr, z3, z4, str2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static OpenSslServerSessionContext newSessionContext(ReferenceCountedOpenSslContext referenceCountedOpenSslContext, long j4, OpenSslEngineMap openSslEngineMap, X509Certificate[] x509CertificateArr, TrustManagerFactory trustManagerFactory, X509Certificate[] x509CertificateArr2, PrivateKey privateKey, String str, KeyManagerFactory keyManagerFactory, String str2) throws SSLException {
        OpenSslKeyMaterialProvider providerFor;
        KeyManagerFactory openSslCachingX509KeyManagerFactory;
        OpenSslKeyMaterialProvider openSslKeyMaterialProvider = null;
        try {
            try {
                SSLContext.setVerify(j4, 0, 10);
                if (OpenSsl.useKeyManagerFactory()) {
                    if (keyManagerFactory == null) {
                        char[] keyStorePassword = SslContext.keyStorePassword(str);
                        KeyStore buildKeyStore = SslContext.buildKeyStore(x509CertificateArr2, privateKey, keyStorePassword, str2);
                        if (buildKeyStore.aliases().hasMoreElements()) {
                            openSslCachingX509KeyManagerFactory = new OpenSslX509KeyManagerFactory();
                        } else {
                            openSslCachingX509KeyManagerFactory = new OpenSslCachingX509KeyManagerFactory(KeyManagerFactory.getInstance(KeyManagerFactory.getDefaultAlgorithm()));
                        }
                        openSslCachingX509KeyManagerFactory.init(buildKeyStore, keyStorePassword);
                        keyManagerFactory = openSslCachingX509KeyManagerFactory;
                    }
                    providerFor = ReferenceCountedOpenSslContext.providerFor(keyManagerFactory, str);
                    try {
                        try {
                            SSLContext.setCertificateCallback(j4, new OpenSslServerCertificateCallback(openSslEngineMap, new OpenSslKeyMaterialManager(providerFor)));
                        } catch (Exception e4) {
                            e = e4;
                            throw new SSLException("failed to set certificate and key", e);
                        }
                    } catch (Throwable th) {
                        th = th;
                        openSslKeyMaterialProvider = providerFor;
                        if (openSslKeyMaterialProvider != null) {
                            openSslKeyMaterialProvider.destroy();
                        }
                        throw th;
                    }
                } else if (keyManagerFactory == null) {
                    ObjectUtil.checkNotNull(x509CertificateArr2, "keyCertChain");
                    ReferenceCountedOpenSslContext.setKeyMaterial(j4, x509CertificateArr2, privateKey, str);
                    providerFor = null;
                } else {
                    throw new IllegalArgumentException("KeyManagerFactory not supported");
                }
                try {
                    if (x509CertificateArr != null) {
                        trustManagerFactory = SslContext.buildTrustManagerFactory(x509CertificateArr, trustManagerFactory, str2);
                    } else if (trustManagerFactory == null) {
                        trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
                        trustManagerFactory.init((KeyStore) null);
                    }
                    X509TrustManager chooseTrustManager = ReferenceCountedOpenSslContext.chooseTrustManager(trustManagerFactory.getTrustManagers());
                    setVerifyCallback(j4, openSslEngineMap, chooseTrustManager);
                    X509Certificate[] acceptedIssuers = chooseTrustManager.getAcceptedIssuers();
                    if (acceptedIssuers != null && acceptedIssuers.length > 0) {
                        long j5 = 0;
                        try {
                            j5 = ReferenceCountedOpenSslContext.toBIO(ByteBufAllocator.DEFAULT, acceptedIssuers);
                            if (!SSLContext.setCACertificateBio(j4, j5)) {
                                throw new SSLException("unable to setup accepted issuers for trustmanager " + chooseTrustManager);
                            }
                        } finally {
                            ReferenceCountedOpenSslContext.freeBio(j5);
                        }
                    }
                    if (PlatformDependent.javaVersion() >= 8) {
                        SSLContext.setSniHostnameMatcher(j4, new OpenSslSniHostnameMatcher(openSslEngineMap));
                    }
                    OpenSslServerSessionContext openSslServerSessionContext = new OpenSslServerSessionContext(referenceCountedOpenSslContext, providerFor);
                    openSslServerSessionContext.setSessionIdContext(ID);
                    return openSslServerSessionContext;
                } catch (SSLException e5) {
                    throw e5;
                } catch (Exception e6) {
                    throw new SSLException("unable to setup trustmanager", e6);
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e7) {
            e = e7;
        }
    }

    @SuppressJava6Requirement(reason = "Guarded by java version check")
    private static void setVerifyCallback(long j4, OpenSslEngineMap openSslEngineMap, X509TrustManager x509TrustManager) {
        if (ReferenceCountedOpenSslContext.useExtendedTrustManager(x509TrustManager)) {
            SSLContext.setCertVerifyCallback(j4, new ExtendedTrustManagerVerifyCallback(openSslEngineMap, (X509ExtendedTrustManager) x509TrustManager));
        } else {
            SSLContext.setCertVerifyCallback(j4, new TrustManagerVerifyCallback(openSslEngineMap, x509TrustManager));
        }
    }

    ReferenceCountedOpenSslServerContext(X509Certificate[] x509CertificateArr, TrustManagerFactory trustManagerFactory, X509Certificate[] x509CertificateArr2, PrivateKey privateKey, String str, KeyManagerFactory keyManagerFactory, Iterable<String> iterable, CipherSuiteFilter cipherSuiteFilter, OpenSslApplicationProtocolNegotiator openSslApplicationProtocolNegotiator, long j4, long j5, ClientAuth clientAuth, String[] strArr, boolean z3, boolean z4, String str2) throws SSLException {
        super(iterable, cipherSuiteFilter, openSslApplicationProtocolNegotiator, j4, j5, 1, (Certificate[]) x509CertificateArr2, clientAuth, strArr, z3, z4, true);
        try {
            this.sessionContext = newSessionContext(this, this.ctx, this.engineMap, x509CertificateArr, trustManagerFactory, x509CertificateArr2, privateKey, str, keyManagerFactory, str2);
        } catch (Throwable th) {
            release();
            throw th;
        }
    }

    @Override // io.netty.handler.ssl.ReferenceCountedOpenSslContext, io.netty.handler.ssl.SslContext
    public OpenSslServerSessionContext sessionContext() {
        return this.sessionContext;
    }
}
