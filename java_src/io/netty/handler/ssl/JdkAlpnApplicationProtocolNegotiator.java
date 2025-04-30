package io.netty.handler.ssl;

import io.netty.buffer.ByteBufAllocator;
import io.netty.handler.ssl.JdkApplicationProtocolNegotiator;
import io.netty.util.internal.PlatformDependent;
import java.util.List;
import javax.net.ssl.SSLEngine;
@Deprecated
/* loaded from: classes5.dex */
public final class JdkAlpnApplicationProtocolNegotiator extends JdkBaseApplicationProtocolNegotiator {
    private static final JdkApplicationProtocolNegotiator.SslEngineWrapperFactory ALPN_WRAPPER;
    private static final boolean AVAILABLE;

    /* loaded from: classes5.dex */
    private static final class AlpnWrapper extends JdkApplicationProtocolNegotiator.AllocatorAwareSslEngineWrapperFactory {
        private AlpnWrapper() {
        }

        @Override // io.netty.handler.ssl.JdkApplicationProtocolNegotiator.AllocatorAwareSslEngineWrapperFactory
        public SSLEngine wrapSslEngine(SSLEngine sSLEngine, ByteBufAllocator byteBufAllocator, JdkApplicationProtocolNegotiator jdkApplicationProtocolNegotiator, boolean z3) {
            if (Conscrypt.isEngineSupported(sSLEngine)) {
                if (z3) {
                    return ConscryptAlpnSslEngine.newServerEngine(sSLEngine, byteBufAllocator, jdkApplicationProtocolNegotiator);
                }
                return ConscryptAlpnSslEngine.newClientEngine(sSLEngine, byteBufAllocator, jdkApplicationProtocolNegotiator);
            } else if (JdkAlpnApplicationProtocolNegotiator.jdkAlpnSupported()) {
                return new Java9SslEngine(sSLEngine, jdkApplicationProtocolNegotiator, z3);
            } else {
                if (JettyAlpnSslEngine.isAvailable()) {
                    if (z3) {
                        return JettyAlpnSslEngine.newServerEngine(sSLEngine, jdkApplicationProtocolNegotiator);
                    }
                    return JettyAlpnSslEngine.newClientEngine(sSLEngine, jdkApplicationProtocolNegotiator);
                }
                throw new RuntimeException("Unable to wrap SSLEngine of type " + sSLEngine.getClass().getName());
            }
        }
    }

    /* loaded from: classes5.dex */
    private static final class FailureWrapper extends JdkApplicationProtocolNegotiator.AllocatorAwareSslEngineWrapperFactory {
        private FailureWrapper() {
        }

        @Override // io.netty.handler.ssl.JdkApplicationProtocolNegotiator.AllocatorAwareSslEngineWrapperFactory
        public SSLEngine wrapSslEngine(SSLEngine sSLEngine, ByteBufAllocator byteBufAllocator, JdkApplicationProtocolNegotiator jdkApplicationProtocolNegotiator, boolean z3) {
            throw new RuntimeException("ALPN unsupported. Is your classpath configured correctly? For Conscrypt, add the appropriate Conscrypt JAR to classpath and set the security provider. For Jetty-ALPN, see http://www.eclipse.org/jetty/documentation/current/alpn-chapter.html#alpn-starting");
        }
    }

    static {
        boolean z3 = Conscrypt.isAvailable() || jdkAlpnSupported() || JettyAlpnSslEngine.isAvailable();
        AVAILABLE = z3;
        ALPN_WRAPPER = z3 ? new AlpnWrapper() : new FailureWrapper();
    }

    public JdkAlpnApplicationProtocolNegotiator(Iterable<String> iterable) {
        this(false, iterable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isAlpnSupported() {
        return AVAILABLE;
    }

    static boolean jdkAlpnSupported() {
        return PlatformDependent.javaVersion() >= 9 && Java9SslUtils.supportsAlpn();
    }

    @Override // io.netty.handler.ssl.JdkBaseApplicationProtocolNegotiator, io.netty.handler.ssl.JdkApplicationProtocolNegotiator
    public /* bridge */ /* synthetic */ JdkApplicationProtocolNegotiator.ProtocolSelectionListenerFactory protocolListenerFactory() {
        return super.protocolListenerFactory();
    }

    @Override // io.netty.handler.ssl.JdkBaseApplicationProtocolNegotiator, io.netty.handler.ssl.JdkApplicationProtocolNegotiator
    public /* bridge */ /* synthetic */ JdkApplicationProtocolNegotiator.ProtocolSelectorFactory protocolSelectorFactory() {
        return super.protocolSelectorFactory();
    }

    @Override // io.netty.handler.ssl.JdkBaseApplicationProtocolNegotiator, io.netty.handler.ssl.ApplicationProtocolNegotiator
    public /* bridge */ /* synthetic */ List protocols() {
        return super.protocols();
    }

    @Override // io.netty.handler.ssl.JdkBaseApplicationProtocolNegotiator, io.netty.handler.ssl.JdkApplicationProtocolNegotiator
    public /* bridge */ /* synthetic */ JdkApplicationProtocolNegotiator.SslEngineWrapperFactory wrapperFactory() {
        return super.wrapperFactory();
    }

    public JdkAlpnApplicationProtocolNegotiator(String... strArr) {
        this(false, strArr);
    }

    public JdkAlpnApplicationProtocolNegotiator(boolean z3, Iterable<String> iterable) {
        this(z3, z3, iterable);
    }

    public JdkAlpnApplicationProtocolNegotiator(boolean z3, String... strArr) {
        this(z3, z3, strArr);
    }

    public JdkAlpnApplicationProtocolNegotiator(boolean z3, boolean z4, Iterable<String> iterable) {
        this(z4 ? JdkBaseApplicationProtocolNegotiator.FAIL_SELECTOR_FACTORY : JdkBaseApplicationProtocolNegotiator.NO_FAIL_SELECTOR_FACTORY, z3 ? JdkBaseApplicationProtocolNegotiator.FAIL_SELECTION_LISTENER_FACTORY : JdkBaseApplicationProtocolNegotiator.NO_FAIL_SELECTION_LISTENER_FACTORY, iterable);
    }

    public JdkAlpnApplicationProtocolNegotiator(boolean z3, boolean z4, String... strArr) {
        this(z4 ? JdkBaseApplicationProtocolNegotiator.FAIL_SELECTOR_FACTORY : JdkBaseApplicationProtocolNegotiator.NO_FAIL_SELECTOR_FACTORY, z3 ? JdkBaseApplicationProtocolNegotiator.FAIL_SELECTION_LISTENER_FACTORY : JdkBaseApplicationProtocolNegotiator.NO_FAIL_SELECTION_LISTENER_FACTORY, strArr);
    }

    public JdkAlpnApplicationProtocolNegotiator(JdkApplicationProtocolNegotiator.ProtocolSelectorFactory protocolSelectorFactory, JdkApplicationProtocolNegotiator.ProtocolSelectionListenerFactory protocolSelectionListenerFactory, Iterable<String> iterable) {
        super(ALPN_WRAPPER, protocolSelectorFactory, protocolSelectionListenerFactory, iterable);
    }

    public JdkAlpnApplicationProtocolNegotiator(JdkApplicationProtocolNegotiator.ProtocolSelectorFactory protocolSelectorFactory, JdkApplicationProtocolNegotiator.ProtocolSelectionListenerFactory protocolSelectionListenerFactory, String... strArr) {
        super(ALPN_WRAPPER, protocolSelectorFactory, protocolSelectionListenerFactory, strArr);
    }
}
