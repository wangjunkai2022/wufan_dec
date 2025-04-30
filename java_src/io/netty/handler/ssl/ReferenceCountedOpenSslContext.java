package io.netty.handler.ssl;

import com.alipay.sdk.packet.d;
import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufAllocator;
import io.netty.handler.ssl.ApplicationProtocolConfig;
import io.netty.internal.tcnative.CertificateVerifier;
import io.netty.internal.tcnative.SSL;
import io.netty.internal.tcnative.SSLContext;
import io.netty.internal.tcnative.SSLPrivateKeyMethod;
import io.netty.util.AbstractReferenceCounted;
import io.netty.util.ReferenceCounted;
import io.netty.util.ResourceLeakDetector;
import io.netty.util.ResourceLeakDetectorFactory;
import io.netty.util.ResourceLeakTracker;
import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.PlatformDependent;
import io.netty.util.internal.StringUtil;
import io.netty.util.internal.SuppressJava6Requirement;
import io.netty.util.internal.SystemPropertyUtil;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.security.PrivateKey;
import java.security.SignatureException;
import java.security.cert.CertPathValidatorException;
import java.security.cert.Certificate;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateNotYetValidException;
import java.security.cert.CertificateRevokedException;
import java.security.cert.X509Certificate;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import javax.net.ssl.KeyManager;
import javax.net.ssl.KeyManagerFactory;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.SSLException;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509ExtendedTrustManager;
import javax.net.ssl.X509KeyManager;
import javax.net.ssl.X509TrustManager;
/* loaded from: classes5.dex */
public abstract class ReferenceCountedOpenSslContext extends SslContext implements ReferenceCounted {
    private static final Integer DH_KEY_LENGTH;
    protected static final int VERIFY_DEPTH = 10;
    private final OpenSslApplicationProtocolNegotiator apn;
    private volatile int bioNonApplicationBufferSize;
    final ClientAuth clientAuth;
    protected long ctx;
    final ReadWriteLock ctxLock;
    final boolean enableOcsp;
    final OpenSslEngineMap engineMap;
    final Certificate[] keyCertChain;
    private final ResourceLeakTracker<ReferenceCountedOpenSslContext> leak;
    private final int mode;
    final String[] protocols;
    private final AbstractReferenceCounted refCnt;
    private final long sessionCacheSize;
    private final long sessionTimeout;
    private final List<String> unmodifiableCiphers;
    private static final InternalLogger logger = InternalLoggerFactory.getInstance(ReferenceCountedOpenSslContext.class);
    private static final int DEFAULT_BIO_NON_APPLICATION_BUFFER_SIZE = Math.max(1, SystemPropertyUtil.getInt("io.netty.handler.ssl.openssl.bioNonApplicationBufferSize", 2048));
    static final boolean USE_TASKS = SystemPropertyUtil.getBoolean("io.netty.handler.ssl.openssl.useTasks", false);
    private static final ResourceLeakDetector<ReferenceCountedOpenSslContext> leakDetector = ResourceLeakDetectorFactory.instance().newResourceLeakDetector(ReferenceCountedOpenSslContext.class);
    static final OpenSslApplicationProtocolNegotiator NONE_PROTOCOL_NEGOTIATOR = new OpenSslApplicationProtocolNegotiator() { // from class: io.netty.handler.ssl.ReferenceCountedOpenSslContext.2
        @Override // io.netty.handler.ssl.OpenSslApplicationProtocolNegotiator
        public ApplicationProtocolConfig.Protocol protocol() {
            return ApplicationProtocolConfig.Protocol.NONE;
        }

        @Override // io.netty.handler.ssl.ApplicationProtocolNegotiator
        public List<String> protocols() {
            return Collections.emptyList();
        }

        @Override // io.netty.handler.ssl.OpenSslApplicationProtocolNegotiator
        public ApplicationProtocolConfig.SelectedListenerFailureBehavior selectedListenerFailureBehavior() {
            return ApplicationProtocolConfig.SelectedListenerFailureBehavior.ACCEPT;
        }

        @Override // io.netty.handler.ssl.OpenSslApplicationProtocolNegotiator
        public ApplicationProtocolConfig.SelectorFailureBehavior selectorFailureBehavior() {
            return ApplicationProtocolConfig.SelectorFailureBehavior.CHOOSE_MY_LAST_PROTOCOL;
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.netty.handler.ssl.ReferenceCountedOpenSslContext$3  reason: invalid class name */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class AnonymousClass3 {
        static final /* synthetic */ int[] $SwitchMap$io$netty$handler$ssl$ApplicationProtocolConfig$Protocol;
        static final /* synthetic */ int[] $SwitchMap$io$netty$handler$ssl$ApplicationProtocolConfig$SelectedListenerFailureBehavior;
        static final /* synthetic */ int[] $SwitchMap$io$netty$handler$ssl$ApplicationProtocolConfig$SelectorFailureBehavior;

        static {
            int[] iArr = new int[ApplicationProtocolConfig.SelectedListenerFailureBehavior.values().length];
            $SwitchMap$io$netty$handler$ssl$ApplicationProtocolConfig$SelectedListenerFailureBehavior = iArr;
            try {
                iArr[ApplicationProtocolConfig.SelectedListenerFailureBehavior.CHOOSE_MY_LAST_PROTOCOL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$netty$handler$ssl$ApplicationProtocolConfig$SelectedListenerFailureBehavior[ApplicationProtocolConfig.SelectedListenerFailureBehavior.ACCEPT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[ApplicationProtocolConfig.SelectorFailureBehavior.values().length];
            $SwitchMap$io$netty$handler$ssl$ApplicationProtocolConfig$SelectorFailureBehavior = iArr2;
            try {
                iArr2[ApplicationProtocolConfig.SelectorFailureBehavior.NO_ADVERTISE.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$io$netty$handler$ssl$ApplicationProtocolConfig$SelectorFailureBehavior[ApplicationProtocolConfig.SelectorFailureBehavior.CHOOSE_MY_LAST_PROTOCOL.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr3 = new int[ApplicationProtocolConfig.Protocol.values().length];
            $SwitchMap$io$netty$handler$ssl$ApplicationProtocolConfig$Protocol = iArr3;
            try {
                iArr3[ApplicationProtocolConfig.Protocol.NPN.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$io$netty$handler$ssl$ApplicationProtocolConfig$Protocol[ApplicationProtocolConfig.Protocol.ALPN.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$io$netty$handler$ssl$ApplicationProtocolConfig$Protocol[ApplicationProtocolConfig.Protocol.NPN_AND_ALPN.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$io$netty$handler$ssl$ApplicationProtocolConfig$Protocol[ApplicationProtocolConfig.Protocol.NONE.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* loaded from: classes5.dex */
    static abstract class AbstractCertificateVerifier extends CertificateVerifier {
        private final OpenSslEngineMap engineMap;

        /* JADX INFO: Access modifiers changed from: package-private */
        public AbstractCertificateVerifier(OpenSslEngineMap openSslEngineMap) {
            this.engineMap = openSslEngineMap;
        }

        @SuppressJava6Requirement(reason = "Usage guarded by java version check")
        private static int translateToError(Throwable th) {
            if (th instanceof CertificateRevokedException) {
                return CertificateVerifier.X509_V_ERR_CERT_REVOKED;
            }
            for (Throwable cause = th.getCause(); cause != null; cause = cause.getCause()) {
                if (cause instanceof CertPathValidatorException) {
                    CertPathValidatorException.Reason reason = ((CertPathValidatorException) cause).getReason();
                    if (reason == CertPathValidatorException.BasicReason.EXPIRED) {
                        return CertificateVerifier.X509_V_ERR_CERT_HAS_EXPIRED;
                    }
                    if (reason == CertPathValidatorException.BasicReason.NOT_YET_VALID) {
                        return CertificateVerifier.X509_V_ERR_CERT_NOT_YET_VALID;
                    }
                    if (reason == CertPathValidatorException.BasicReason.REVOKED) {
                        return CertificateVerifier.X509_V_ERR_CERT_REVOKED;
                    }
                }
            }
            return CertificateVerifier.X509_V_ERR_UNSPECIFIED;
        }

        public final int verify(long j4, byte[][] bArr, String str) {
            ReferenceCountedOpenSslEngine referenceCountedOpenSslEngine = this.engineMap.get(j4);
            if (referenceCountedOpenSslEngine == null) {
                return CertificateVerifier.X509_V_ERR_UNSPECIFIED;
            }
            try {
                verify(referenceCountedOpenSslEngine, ReferenceCountedOpenSslContext.certificates(bArr), str);
                return CertificateVerifier.X509_V_OK;
            } catch (Throwable th) {
                ReferenceCountedOpenSslContext.logger.debug("verification of certificate failed", (Throwable) th);
                referenceCountedOpenSslEngine.initHandshakeException(th);
                if (th instanceof OpenSslCertificateException) {
                    return th.errorCode();
                }
                if (th instanceof CertificateExpiredException) {
                    return CertificateVerifier.X509_V_ERR_CERT_HAS_EXPIRED;
                }
                if (th instanceof CertificateNotYetValidException) {
                    return CertificateVerifier.X509_V_ERR_CERT_NOT_YET_VALID;
                }
                if (PlatformDependent.javaVersion() >= 7) {
                    return translateToError(th);
                }
                return CertificateVerifier.X509_V_ERR_UNSPECIFIED;
            }
        }

        abstract void verify(ReferenceCountedOpenSslEngine referenceCountedOpenSslEngine, X509Certificate[] x509CertificateArr, String str) throws Exception;
    }

    /* loaded from: classes5.dex */
    private static final class DefaultOpenSslEngineMap implements OpenSslEngineMap {
        private final Map<Long, ReferenceCountedOpenSslEngine> engines;

        private DefaultOpenSslEngineMap() {
            this.engines = PlatformDependent.newConcurrentHashMap();
        }

        @Override // io.netty.handler.ssl.OpenSslEngineMap
        public void add(ReferenceCountedOpenSslEngine referenceCountedOpenSslEngine) {
            this.engines.put(Long.valueOf(referenceCountedOpenSslEngine.sslPointer()), referenceCountedOpenSslEngine);
        }

        @Override // io.netty.handler.ssl.OpenSslEngineMap
        public ReferenceCountedOpenSslEngine get(long j4) {
            return this.engines.get(Long.valueOf(j4));
        }

        @Override // io.netty.handler.ssl.OpenSslEngineMap
        public ReferenceCountedOpenSslEngine remove(long j4) {
            return this.engines.remove(Long.valueOf(j4));
        }
    }

    /* loaded from: classes5.dex */
    private static final class PrivateKeyMethod implements SSLPrivateKeyMethod {
        private final OpenSslEngineMap engineMap;
        private final OpenSslPrivateKeyMethod keyMethod;

        PrivateKeyMethod(OpenSslEngineMap openSslEngineMap, OpenSslPrivateKeyMethod openSslPrivateKeyMethod) {
            this.engineMap = openSslEngineMap;
            this.keyMethod = openSslPrivateKeyMethod;
        }

        private ReferenceCountedOpenSslEngine retrieveEngine(long j4) throws SSLException {
            ReferenceCountedOpenSslEngine referenceCountedOpenSslEngine = this.engineMap.get(j4);
            if (referenceCountedOpenSslEngine != null) {
                return referenceCountedOpenSslEngine;
            }
            throw new SSLException("Could not find a " + StringUtil.simpleClassName((Class<?>) ReferenceCountedOpenSslEngine.class) + " for sslPointer " + j4);
        }

        private static byte[] verifyResult(byte[] bArr) throws SignatureException {
            if (bArr != null) {
                return bArr;
            }
            throw new SignatureException();
        }

        public byte[] decrypt(long j4, byte[] bArr) throws Exception {
            ReferenceCountedOpenSslEngine retrieveEngine = retrieveEngine(j4);
            try {
                return verifyResult(this.keyMethod.decrypt(retrieveEngine, bArr));
            } catch (Exception e4) {
                retrieveEngine.initHandshakeException(e4);
                throw e4;
            }
        }

        public byte[] sign(long j4, int i2, byte[] bArr) throws Exception {
            ReferenceCountedOpenSslEngine retrieveEngine = retrieveEngine(j4);
            try {
                return verifyResult(this.keyMethod.sign(retrieveEngine, i2, bArr));
            } catch (Exception e4) {
                retrieveEngine.initHandshakeException(e4);
                throw e4;
            }
        }
    }

    static {
        Integer num = null;
        try {
            String str = SystemPropertyUtil.get("jdk.tls.ephemeralDHKeySize");
            if (str != null) {
                try {
                    num = Integer.valueOf(str);
                } catch (NumberFormatException unused) {
                    logger.debug("ReferenceCountedOpenSslContext supports -Djdk.tls.ephemeralDHKeySize={int}, but got: " + str);
                }
            }
        } catch (Throwable unused2) {
        }
        DH_KEY_LENGTH = num;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ReferenceCountedOpenSslContext(Iterable<String> iterable, CipherSuiteFilter cipherSuiteFilter, ApplicationProtocolConfig applicationProtocolConfig, long j4, long j5, int i2, Certificate[] certificateArr, ClientAuth clientAuth, String[] strArr, boolean z3, boolean z4, boolean z5) throws SSLException {
        this(iterable, cipherSuiteFilter, toNegotiator(applicationProtocolConfig), j4, j5, i2, certificateArr, clientAuth, strArr, z3, z4, z5);
    }

    protected static X509Certificate[] certificates(byte[][] bArr) {
        int length = bArr.length;
        X509Certificate[] x509CertificateArr = new X509Certificate[length];
        for (int i2 = 0; i2 < length; i2++) {
            x509CertificateArr[i2] = new OpenSslX509Certificate(bArr[i2]);
        }
        return x509CertificateArr;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static X509TrustManager chooseTrustManager(TrustManager[] trustManagerArr) {
        for (TrustManager trustManager : trustManagerArr) {
            if (trustManager instanceof X509TrustManager) {
                if (PlatformDependent.javaVersion() >= 7) {
                    return OpenSslX509TrustManagerWrapper.wrapIfNeeded((X509TrustManager) trustManager);
                }
                return (X509TrustManager) trustManager;
            }
        }
        throw new IllegalStateException("no X509TrustManager found");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static X509KeyManager chooseX509KeyManager(KeyManager[] keyManagerArr) {
        for (KeyManager keyManager : keyManagerArr) {
            if (keyManager instanceof X509KeyManager) {
                return (X509KeyManager) keyManager;
            }
        }
        throw new IllegalStateException("no X509KeyManager found");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void destroy() {
        Lock writeLock = this.ctxLock.writeLock();
        writeLock.lock();
        try {
            long j4 = this.ctx;
            if (j4 != 0) {
                if (this.enableOcsp) {
                    SSLContext.disableOcsp(j4);
                }
                SSLContext.free(this.ctx);
                this.ctx = 0L;
                OpenSslSessionContext sessionContext = sessionContext();
                if (sessionContext != null) {
                    sessionContext.destroy();
                }
            }
        } finally {
            writeLock.unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void freeBio(long j4) {
        if (j4 != 0) {
            SSL.freeBIO(j4);
        }
    }

    private static long newBIO(ByteBuf byteBuf) throws Exception {
        try {
            long newMemBIO = SSL.newMemBIO();
            int readableBytes = byteBuf.readableBytes();
            if (SSL.bioWrite(newMemBIO, OpenSsl.memoryAddress(byteBuf) + byteBuf.readerIndex(), readableBytes) == readableBytes) {
                return newMemBIO;
            }
            SSL.freeBIO(newMemBIO);
            throw new IllegalStateException("Could not write data to memory BIO");
        } finally {
            byteBuf.release();
        }
    }

    private static int opensslSelectorFailureBehavior(ApplicationProtocolConfig.SelectorFailureBehavior selectorFailureBehavior) {
        int i2 = AnonymousClass3.$SwitchMap$io$netty$handler$ssl$ApplicationProtocolConfig$SelectorFailureBehavior[selectorFailureBehavior.ordinal()];
        if (i2 != 1) {
            if (i2 == 2) {
                return 1;
            }
            throw new Error();
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static OpenSslKeyMaterialProvider providerFor(KeyManagerFactory keyManagerFactory, String str) {
        if (keyManagerFactory instanceof OpenSslX509KeyManagerFactory) {
            return ((OpenSslX509KeyManagerFactory) keyManagerFactory).newProvider();
        }
        if (keyManagerFactory instanceof OpenSslCachingX509KeyManagerFactory) {
            return ((OpenSslCachingX509KeyManagerFactory) keyManagerFactory).newProvider(str);
        }
        return new OpenSslKeyMaterialProvider(chooseX509KeyManager(keyManagerFactory.getKeyManagers()), str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setKeyMaterial(long j4, X509Certificate[] x509CertificateArr, PrivateKey privateKey, String str) throws SSLException {
        long j5;
        long j6;
        long bio;
        long j7 = 0;
        PemEncoded pemEncoded = null;
        try {
            try {
                ByteBufAllocator byteBufAllocator = ByteBufAllocator.DEFAULT;
                pemEncoded = PemX509Certificate.toPEM(byteBufAllocator, true, x509CertificateArr);
                j6 = toBIO(byteBufAllocator, pemEncoded.retain());
                try {
                    bio = toBIO(byteBufAllocator, pemEncoded.retain());
                    if (privateKey != null) {
                        try {
                            j7 = toBIO(byteBufAllocator, privateKey);
                        } catch (SSLException e4) {
                            throw e4;
                        } catch (Exception e5) {
                            e = e5;
                            throw new SSLException("failed to set certificate and key", e);
                        }
                    }
                } catch (SSLException e6) {
                    throw e6;
                } catch (Exception e7) {
                    e = e7;
                } catch (Throwable th) {
                    th = th;
                    j5 = 0;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (SSLException e8) {
            throw e8;
        } catch (Exception e9) {
            e = e9;
        } catch (Throwable th3) {
            th = th3;
            j5 = 0;
            j6 = 0;
        }
        try {
            SSLContext.setCertificateBio(j4, j6, j7, str == null ? "" : str);
            SSLContext.setCertificateChainBio(j4, bio, true);
            freeBio(j7);
            freeBio(j6);
            freeBio(bio);
            pemEncoded.release();
        } catch (SSLException e10) {
        } catch (Exception e11) {
            e = e11;
            throw new SSLException("failed to set certificate and key", e);
        } catch (Throwable th4) {
            th = th4;
            j5 = bio;
            freeBio(j7);
            freeBio(j6);
            freeBio(j5);
            if (pemEncoded != null) {
                pemEncoded.release();
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long toBIO(ByteBufAllocator byteBufAllocator, PrivateKey privateKey) throws Exception {
        if (privateKey == null) {
            return 0L;
        }
        PemEncoded pem = PemPrivateKey.toPEM(byteBufAllocator, true, privateKey);
        try {
            return toBIO(byteBufAllocator, pem.retain());
        } finally {
            pem.release();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static OpenSslApplicationProtocolNegotiator toNegotiator(ApplicationProtocolConfig applicationProtocolConfig) {
        if (applicationProtocolConfig == null) {
            return NONE_PROTOCOL_NEGOTIATOR;
        }
        int i2 = AnonymousClass3.$SwitchMap$io$netty$handler$ssl$ApplicationProtocolConfig$Protocol[applicationProtocolConfig.protocol().ordinal()];
        if (i2 != 1 && i2 != 2 && i2 != 3) {
            if (i2 == 4) {
                return NONE_PROTOCOL_NEGOTIATOR;
            }
            throw new Error();
        }
        int i4 = AnonymousClass3.$SwitchMap$io$netty$handler$ssl$ApplicationProtocolConfig$SelectedListenerFailureBehavior[applicationProtocolConfig.selectedListenerFailureBehavior().ordinal()];
        if (i4 != 1 && i4 != 2) {
            throw new UnsupportedOperationException("OpenSSL provider does not support " + applicationProtocolConfig.selectedListenerFailureBehavior() + " behavior");
        }
        int i5 = AnonymousClass3.$SwitchMap$io$netty$handler$ssl$ApplicationProtocolConfig$SelectorFailureBehavior[applicationProtocolConfig.selectorFailureBehavior().ordinal()];
        if (i5 != 1 && i5 != 2) {
            throw new UnsupportedOperationException("OpenSSL provider does not support " + applicationProtocolConfig.selectorFailureBehavior() + " behavior");
        }
        return new OpenSslDefaultApplicationProtocolNegotiator(applicationProtocolConfig);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SuppressJava6Requirement(reason = "Guarded by java version check")
    public static boolean useExtendedTrustManager(X509TrustManager x509TrustManager) {
        return PlatformDependent.javaVersion() >= 7 && (x509TrustManager instanceof X509ExtendedTrustManager);
    }

    @Override // io.netty.handler.ssl.SslContext
    public ApplicationProtocolNegotiator applicationProtocolNegotiator() {
        return this.apn;
    }

    @Override // io.netty.handler.ssl.SslContext
    public final List<String> cipherSuites() {
        return this.unmodifiableCiphers;
    }

    @Deprecated
    public final long context() {
        return sslCtxPointer();
    }

    public int getBioNonApplicationBufferSize() {
        return this.bioNonApplicationBufferSize;
    }

    @Deprecated
    public boolean getRejectRemoteInitiatedRenegotiation() {
        return true;
    }

    @Override // io.netty.handler.ssl.SslContext
    public final boolean isClient() {
        return this.mode == 0;
    }

    @Override // io.netty.handler.ssl.SslContext
    public final SSLEngine newEngine(ByteBufAllocator byteBufAllocator, String str, int i2) {
        return newEngine0(byteBufAllocator, str, i2, true);
    }

    SSLEngine newEngine0(ByteBufAllocator byteBufAllocator, String str, int i2, boolean z3) {
        return new ReferenceCountedOpenSslEngine(this, byteBufAllocator, str, i2, z3, true);
    }

    @Override // io.netty.handler.ssl.SslContext
    protected final SslHandler newHandler(ByteBufAllocator byteBufAllocator, boolean z3) {
        return new SslHandler(newEngine0(byteBufAllocator, null, -1, false), z3);
    }

    @Override // io.netty.util.ReferenceCounted
    public final int refCnt() {
        return this.refCnt.refCnt();
    }

    @Override // io.netty.util.ReferenceCounted
    public final boolean release() {
        return this.refCnt.release();
    }

    @Override // io.netty.util.ReferenceCounted
    public final ReferenceCounted retain() {
        this.refCnt.retain();
        return this;
    }

    @Override // io.netty.handler.ssl.SslContext
    public final long sessionCacheSize() {
        return this.sessionCacheSize;
    }

    @Override // io.netty.handler.ssl.SslContext
    public abstract OpenSslSessionContext sessionContext();

    @Override // io.netty.handler.ssl.SslContext
    public final long sessionTimeout() {
        return this.sessionTimeout;
    }

    public void setBioNonApplicationBufferSize(int i2) {
        this.bioNonApplicationBufferSize = ObjectUtil.checkPositiveOrZero(i2, "bioNonApplicationBufferSize");
    }

    public final void setPrivateKeyMethod(OpenSslPrivateKeyMethod openSslPrivateKeyMethod) {
        ObjectUtil.checkNotNull(openSslPrivateKeyMethod, d.f9798s);
        Lock writeLock = this.ctxLock.writeLock();
        writeLock.lock();
        try {
            SSLContext.setPrivateKeyMethod(this.ctx, new PrivateKeyMethod(this.engineMap, openSslPrivateKeyMethod));
        } finally {
            writeLock.unlock();
        }
    }

    @Deprecated
    public void setRejectRemoteInitiatedRenegotiation(boolean z3) {
        if (!z3) {
            throw new UnsupportedOperationException("Renegotiation is not supported");
        }
    }

    @Deprecated
    public final void setTicketKeys(byte[] bArr) {
        sessionContext().setTicketKeys(bArr);
    }

    final void setUseTasks(boolean z3) {
        Lock writeLock = this.ctxLock.writeLock();
        writeLock.lock();
        try {
            SSLContext.setUseTasks(this.ctx, z3);
        } finally {
            writeLock.unlock();
        }
    }

    @Deprecated
    public final long sslCtxPointer() {
        Lock readLock = this.ctxLock.readLock();
        readLock.lock();
        try {
            return SSLContext.getSslCtx(this.ctx);
        } finally {
            readLock.unlock();
        }
    }

    @Deprecated
    public final OpenSslSessionStats stats() {
        return sessionContext().stats();
    }

    @Override // io.netty.util.ReferenceCounted
    public final ReferenceCounted touch() {
        this.refCnt.touch();
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ReferenceCountedOpenSslContext(Iterable<String> iterable, CipherSuiteFilter cipherSuiteFilter, OpenSslApplicationProtocolNegotiator openSslApplicationProtocolNegotiator, long j4, long j5, int i2, Certificate[] certificateArr, ClientAuth clientAuth, String[] strArr, boolean z3, boolean z4, boolean z5) throws SSLException {
        super(z3);
        this.refCnt = new AbstractReferenceCounted() { // from class: io.netty.handler.ssl.ReferenceCountedOpenSslContext.1
            static final /* synthetic */ boolean $assertionsDisabled = false;

            @Override // io.netty.util.AbstractReferenceCounted
            protected void deallocate() {
                ReferenceCountedOpenSslContext.this.destroy();
                if (ReferenceCountedOpenSslContext.this.leak != null) {
                    ReferenceCountedOpenSslContext.this.leak.close(ReferenceCountedOpenSslContext.this);
                }
            }

            @Override // io.netty.util.ReferenceCounted
            public ReferenceCounted touch(Object obj) {
                if (ReferenceCountedOpenSslContext.this.leak != null) {
                    ReferenceCountedOpenSslContext.this.leak.record(obj);
                }
                return ReferenceCountedOpenSslContext.this;
            }
        };
        this.engineMap = new DefaultOpenSslEngineMap();
        this.ctxLock = new ReentrantReadWriteLock();
        this.bioNonApplicationBufferSize = DEFAULT_BIO_NON_APPLICATION_BUFFER_SIZE;
        OpenSsl.ensureAvailability();
        if (z4 && !OpenSsl.isOcspSupported()) {
            throw new IllegalStateException("OCSP is not supported.");
        }
        if (i2 != 1 && i2 != 0) {
            throw new IllegalArgumentException("mode most be either SSL.SSL_MODE_SERVER or SSL.SSL_MODE_CLIENT");
        }
        this.leak = z5 ? leakDetector.track(this) : null;
        this.mode = i2;
        this.clientAuth = isServer() ? (ClientAuth) ObjectUtil.checkNotNull(clientAuth, "clientAuth") : ClientAuth.NONE;
        this.protocols = strArr;
        this.enableOcsp = z4;
        this.keyCertChain = certificateArr != null ? (Certificate[]) certificateArr.clone() : null;
        List<String> asList = Arrays.asList(((CipherSuiteFilter) ObjectUtil.checkNotNull(cipherSuiteFilter, "cipherFilter")).filterCipherSuites(iterable, OpenSsl.DEFAULT_CIPHERS, OpenSsl.availableJavaCipherSuites()));
        this.unmodifiableCiphers = asList;
        this.apn = (OpenSslApplicationProtocolNegotiator) ObjectUtil.checkNotNull(openSslApplicationProtocolNegotiator, "apn");
        try {
            try {
                this.ctx = SSLContext.make(OpenSsl.isTlsv13Supported() ? 62 : 30, i2);
                boolean isTlsv13Supported = OpenSsl.isTlsv13Supported();
                StringBuilder sb = new StringBuilder();
                StringBuilder sb2 = new StringBuilder();
                try {
                    try {
                        if (asList.isEmpty()) {
                            SSLContext.setCipherSuite(this.ctx, "", false);
                            if (isTlsv13Supported) {
                                SSLContext.setCipherSuite(this.ctx, "", true);
                            }
                        } else {
                            CipherSuiteConverter.convertToCipherStrings(asList, sb, sb2, OpenSsl.isBoringSSL());
                            SSLContext.setCipherSuite(this.ctx, sb.toString(), false);
                            if (isTlsv13Supported) {
                                SSLContext.setCipherSuite(this.ctx, sb2.toString(), true);
                            }
                        }
                        int options = SSLContext.getOptions(this.ctx) | SSL.SSL_OP_NO_SSLv2 | SSL.SSL_OP_NO_SSLv3 | SSL.SSL_OP_NO_TLSv1_3 | SSL.SSL_OP_CIPHER_SERVER_PREFERENCE | SSL.SSL_OP_NO_COMPRESSION | SSL.SSL_OP_NO_TICKET;
                        SSLContext.setOptions(this.ctx, sb.length() == 0 ? options | SSL.SSL_OP_NO_SSLv2 | SSL.SSL_OP_NO_SSLv3 | SSL.SSL_OP_NO_TLSv1 | SSL.SSL_OP_NO_TLSv1_1 | SSL.SSL_OP_NO_TLSv1_2 : options);
                        long j6 = this.ctx;
                        SSLContext.setMode(j6, SSLContext.getMode(j6) | SSL.SSL_MODE_ACCEPT_MOVING_WRITE_BUFFER);
                        Integer num = DH_KEY_LENGTH;
                        if (num != null) {
                            SSLContext.setTmpDHLength(this.ctx, num.intValue());
                        }
                        List<String> protocols = openSslApplicationProtocolNegotiator.protocols();
                        if (!protocols.isEmpty()) {
                            String[] strArr2 = (String[]) protocols.toArray(new String[0]);
                            int opensslSelectorFailureBehavior = opensslSelectorFailureBehavior(openSslApplicationProtocolNegotiator.selectorFailureBehavior());
                            int i4 = AnonymousClass3.$SwitchMap$io$netty$handler$ssl$ApplicationProtocolConfig$Protocol[openSslApplicationProtocolNegotiator.protocol().ordinal()];
                            if (i4 == 1) {
                                SSLContext.setNpnProtos(this.ctx, strArr2, opensslSelectorFailureBehavior);
                            } else if (i4 == 2) {
                                SSLContext.setAlpnProtos(this.ctx, strArr2, opensslSelectorFailureBehavior);
                            } else if (i4 == 3) {
                                SSLContext.setNpnProtos(this.ctx, strArr2, opensslSelectorFailureBehavior);
                                SSLContext.setAlpnProtos(this.ctx, strArr2, opensslSelectorFailureBehavior);
                            } else {
                                throw new Error();
                            }
                        }
                        long sessionCacheSize = j4 <= 0 ? SSLContext.setSessionCacheSize(this.ctx, 20480L) : j4;
                        this.sessionCacheSize = sessionCacheSize;
                        SSLContext.setSessionCacheSize(this.ctx, sessionCacheSize);
                        long sessionCacheTimeout = j5 <= 0 ? SSLContext.setSessionCacheTimeout(this.ctx, 300L) : j5;
                        this.sessionTimeout = sessionCacheTimeout;
                        SSLContext.setSessionCacheTimeout(this.ctx, sessionCacheTimeout);
                        if (z4) {
                            SSLContext.enableOcsp(this.ctx, isClient());
                        }
                        SSLContext.setUseTasks(this.ctx, USE_TASKS);
                    } catch (Exception e4) {
                        throw new SSLException("failed to set cipher suite: " + this.unmodifiableCiphers, e4);
                    }
                } catch (SSLException e5) {
                    throw e5;
                }
            } catch (Exception e6) {
                throw new SSLException("failed to create an SSL_CTX", e6);
            }
        } catch (Throwable th) {
            release();
            throw th;
        }
    }

    @Override // io.netty.handler.ssl.SslContext
    public final SSLEngine newEngine(ByteBufAllocator byteBufAllocator) {
        return newEngine(byteBufAllocator, null, -1);
    }

    @Override // io.netty.handler.ssl.SslContext
    protected final SslHandler newHandler(ByteBufAllocator byteBufAllocator, String str, int i2, boolean z3) {
        return new SslHandler(newEngine0(byteBufAllocator, str, i2, false), z3);
    }

    @Override // io.netty.util.ReferenceCounted
    public final boolean release(int i2) {
        return this.refCnt.release(i2);
    }

    @Override // io.netty.util.ReferenceCounted
    public final ReferenceCounted retain(int i2) {
        this.refCnt.retain(i2);
        return this;
    }

    @Override // io.netty.util.ReferenceCounted
    public final ReferenceCounted touch(Object obj) {
        this.refCnt.touch(obj);
        return this;
    }

    @Override // io.netty.handler.ssl.SslContext
    protected SslHandler newHandler(ByteBufAllocator byteBufAllocator, boolean z3, Executor executor) {
        return new SslHandler(newEngine0(byteBufAllocator, null, -1, false), z3, executor);
    }

    @Override // io.netty.handler.ssl.SslContext
    protected SslHandler newHandler(ByteBufAllocator byteBufAllocator, String str, int i2, boolean z3, Executor executor) {
        return new SslHandler(newEngine0(byteBufAllocator, str, i2, false), executor);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long toBIO(ByteBufAllocator byteBufAllocator, X509Certificate... x509CertificateArr) throws Exception {
        if (x509CertificateArr == null) {
            return 0L;
        }
        if (x509CertificateArr.length != 0) {
            PemEncoded pem = PemX509Certificate.toPEM(byteBufAllocator, true, x509CertificateArr);
            try {
                return toBIO(byteBufAllocator, pem.retain());
            } finally {
                pem.release();
            }
        }
        throw new IllegalArgumentException("certChain can't be empty");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long toBIO(ByteBufAllocator byteBufAllocator, PemEncoded pemEncoded) throws Exception {
        try {
            ByteBuf content = pemEncoded.content();
            if (content.isDirect()) {
                return newBIO(content.retainedSlice());
            }
            ByteBuf directBuffer = byteBufAllocator.directBuffer(content.readableBytes());
            directBuffer.writeBytes(content, content.readerIndex(), content.readableBytes());
            long newBIO = newBIO(directBuffer.retainedSlice());
            if (pemEncoded.isSensitive()) {
                SslUtils.zeroout(directBuffer);
            }
            directBuffer.release();
            return newBIO;
        } finally {
            pemEncoded.release();
        }
    }
}
