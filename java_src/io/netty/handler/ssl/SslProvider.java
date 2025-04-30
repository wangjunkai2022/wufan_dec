package io.netty.handler.ssl;
/* loaded from: classes5.dex */
public enum SslProvider {
    JDK,
    OPENSSL,
    OPENSSL_REFCNT;

    /* renamed from: io.netty.handler.ssl.SslProvider$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$io$netty$handler$ssl$SslProvider;

        static {
            int[] iArr = new int[SslProvider.values().length];
            $SwitchMap$io$netty$handler$ssl$SslProvider = iArr;
            try {
                iArr[SslProvider.JDK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$netty$handler$ssl$SslProvider[SslProvider.OPENSSL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$io$netty$handler$ssl$SslProvider[SslProvider.OPENSSL_REFCNT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static boolean isAlpnSupported(SslProvider sslProvider) {
        int i2 = AnonymousClass1.$SwitchMap$io$netty$handler$ssl$SslProvider[sslProvider.ordinal()];
        if (i2 != 1) {
            if (i2 != 2 && i2 != 3) {
                throw new Error("Unknown SslProvider: " + sslProvider);
            }
            return OpenSsl.isAlpnSupported();
        }
        return JdkAlpnApplicationProtocolNegotiator.isAlpnSupported();
    }
}
