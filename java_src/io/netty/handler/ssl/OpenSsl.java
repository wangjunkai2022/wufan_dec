package io.netty.handler.ssl;

import io.netty.buffer.ByteBuf;
import io.netty.internal.tcnative.Buffer;
import io.netty.internal.tcnative.Library;
import io.netty.internal.tcnative.SSL;
import io.netty.internal.tcnative.SSLContext;
import io.netty.util.CharsetUtil;
import io.netty.util.ReferenceCountUtil;
import io.netty.util.ReferenceCounted;
import io.netty.util.internal.NativeLibraryLoader;
import io.netty.util.internal.PlatformDependent;
import io.netty.util.internal.logging.InternalLogger;
import java.io.ByteArrayInputStream;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
/* loaded from: classes5.dex */
public final class OpenSsl {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    static final Set<String> AVAILABLE_CIPHER_SUITES;
    private static final Set<String> AVAILABLE_JAVA_CIPHER_SUITES;
    private static final Set<String> AVAILABLE_OPENSSL_CIPHER_SUITES;
    private static final String CERT = "-----BEGIN CERTIFICATE-----\nMIICrjCCAZagAwIBAgIIdSvQPv1QAZQwDQYJKoZIhvcNAQELBQAwFjEUMBIGA1UEAxMLZXhhbXBs\nZS5jb20wIBcNMTgwNDA2MjIwNjU5WhgPOTk5OTEyMzEyMzU5NTlaMBYxFDASBgNVBAMTC2V4YW1w\nbGUuY29tMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAggbWsmDQ6zNzRZ5AW8E3eoGl\nqWvOBDb5Fs1oBRrVQHuYmVAoaqwDzXYJ0LOwa293AgWEQ1jpcbZ2hpoYQzqEZBTLnFhMrhRFlH6K\nbJND8Y33kZ/iSVBBDuGbdSbJShlM+4WwQ9IAso4MZ4vW3S1iv5fGGpLgbtXRmBf/RU8omN0Gijlv\nWlLWHWijLN8xQtySFuBQ7ssW8RcKAary3pUm6UUQB+Co6lnfti0Tzag8PgjhAJq2Z3wbsGRnP2YS\nvYoaK6qzmHXRYlp/PxrjBAZAmkLJs4YTm/XFF+fkeYx4i9zqHbyone5yerRibsHaXZWLnUL+rFoe\nMdKvr0VS3sGmhQIDAQABMA0GCSqGSIb3DQEBCwUAA4IBAQADQi441pKmXf9FvUV5EHU4v8nJT9Iq\nyqwsKwXnr7AsUlDGHBD7jGrjAXnG5rGxuNKBQ35wRxJATKrUtyaquFUL6H8O6aGQehiFTk6zmPbe\n12Gu44vqqTgIUxnv3JQJiox8S2hMxsSddpeCmSdvmalvD6WG4NthH6B9ZaBEiep1+0s0RUaBYn73\nI7CCUaAtbjfR6pcJjrFk5ei7uwdQZFSJtkP2z8r7zfeANJddAKFlkaMWn7u+OIVuB4XPooWicObk\nNAHFtP65bocUYnDpTVdiyvn8DdqyZ/EO8n1bBKBzuSLplk2msW4pdgaFgY7Vw/0wzcFXfUXmL1uy\nG8sQD/wx\n-----END CERTIFICATE-----";
    static final List<String> DEFAULT_CIPHERS;
    private static final boolean IS_BORINGSSL;
    private static final String KEY = "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCCBtayYNDrM3NFnkBbwTd6gaWp\na84ENvkWzWgFGtVAe5iZUChqrAPNdgnQs7Brb3cCBYRDWOlxtnaGmhhDOoRkFMucWEyuFEWUfops\nk0PxjfeRn+JJUEEO4Zt1JslKGUz7hbBD0gCyjgxni9bdLWK/l8YakuBu1dGYF/9FTyiY3QaKOW9a\nUtYdaKMs3zFC3JIW4FDuyxbxFwoBqvLelSbpRRAH4KjqWd+2LRPNqDw+COEAmrZnfBuwZGc/ZhK9\nihorqrOYddFiWn8/GuMEBkCaQsmzhhOb9cUX5+R5jHiL3OodvKid7nJ6tGJuwdpdlYudQv6sWh4x\n0q+vRVLewaaFAgMBAAECggEAP8tPJvFtTxhNJAkCloHz0D0vpDHqQBMgntlkgayqmBqLwhyb18pR\ni0qwgh7HHc7wWqOOQuSqlEnrWRrdcI6TSe8R/sErzfTQNoznKWIPYcI/hskk4sdnQ//Yn9/Jvnsv\nU/BBjOTJxtD+sQbhAl80JcA3R+5sArURQkfzzHOL/YMqzAsn5hTzp7HZCxUqBk3KaHRxV7NefeOE\nxlZuWSmxYWfbFIs4kx19/1t7h8CHQWezw+G60G2VBtSBBxDnhBWvqG6R/wpzJ3nEhPLLY9T+XIHe\nipzdMOOOUZorfIg7M+pyYPji+ZIZxIpY5OjrOzXHciAjRtr5Y7l99K1CG1LguQKBgQDrQfIMxxtZ\nvxU/1cRmUV9l7pt5bjV5R6byXq178LxPKVYNjdZ840Q0/OpZEVqaT1xKVi35ohP1QfNjxPLlHD+K\niDAR9z6zkwjIrbwPCnb5kuXy4lpwPcmmmkva25fI7qlpHtbcuQdoBdCfr/KkKaUCMPyY89LCXgEw\n5KTDj64UywKBgQCNfbO+eZLGzhiHhtNJurresCsIGWlInv322gL8CSfBMYl6eNfUTZvUDdFhPISL\nUljKWzXDrjw0ujFSPR0XhUGtiq89H+HUTuPPYv25gVXO+HTgBFZEPl4PpA+BUsSVZy0NddneyqLk\n42Wey9omY9Q8WsdNQS5cbUvy0uG6WFoX7wKBgQDZ1jpW8pa0x2bZsQsm4vo+3G5CRnZlUp+XlWt2\ndDcp5dC0xD1zbs1dc0NcLeGDOTDv9FSl7hok42iHXXq8AygjEm/QcuwwQ1nC2HxmQP5holAiUs4D\nWHM8PWs3wFYPzE459EBoKTxeaeP/uWAn+he8q7d5uWvSZlEcANs/6e77eQKBgD21Ar0hfFfj7mK8\n9E0FeRZBsqK3omkfnhcYgZC11Xa2SgT1yvs2Va2n0RcdM5kncr3eBZav2GYOhhAdwyBM55XuE/sO\neokDVutNeuZ6d5fqV96TRaRBpvgfTvvRwxZ9hvKF4Vz+9wfn/JvCwANaKmegF6ejs7pvmF3whq2k\ndrZVAoGAX5YxQ5XMTD0QbMAl7/6qp6S58xNoVdfCkmkj1ZLKaHKIjS/benkKGlySVQVPexPfnkZx\np/Vv9yyphBoudiTBS9Uog66ueLYZqpgxlM/6OhYg86Gm3U2ycvMxYjBM1NFiyze21AqAhI+HX+Ot\nmraV2/guSgDgZAhukRZzeQ2RucI=\n-----END PRIVATE KEY-----";
    static final Set<String> SUPPORTED_PROTOCOLS_SET;
    private static final boolean SUPPORTS_KEYMANAGER_FACTORY;
    private static final boolean SUPPORTS_OCSP;
    private static final boolean TLSV13_SUPPORTED;
    private static final Throwable UNAVAILABILITY_CAUSE;
    private static final boolean USE_KEYMANAGER_FACTORY;
    private static final InternalLogger logger;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0261 A[Catch: all -> 0x02af, TryCatch #8 {all -> 0x02af, blocks: (B:112:0x025a, B:114:0x0261, B:117:0x0268, B:120:0x026f, B:123:0x0276, B:133:0x028f, B:135:0x0296, B:138:0x029d, B:141:0x02a4, B:144:0x02ab, B:145:0x02ae), top: B:200:0x0155 }] */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0268 A[Catch: all -> 0x02af, TryCatch #8 {all -> 0x02af, blocks: (B:112:0x025a, B:114:0x0261, B:117:0x0268, B:120:0x026f, B:123:0x0276, B:133:0x028f, B:135:0x0296, B:138:0x029d, B:141:0x02a4, B:144:0x02ab, B:145:0x02ae), top: B:200:0x0155 }] */
    /* JADX WARN: Removed duplicated region for block: B:120:0x026f A[Catch: all -> 0x02af, TryCatch #8 {all -> 0x02af, blocks: (B:112:0x025a, B:114:0x0261, B:117:0x0268, B:120:0x026f, B:123:0x0276, B:133:0x028f, B:135:0x0296, B:138:0x029d, B:141:0x02a4, B:144:0x02ab, B:145:0x02ae), top: B:200:0x0155 }] */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0276 A[Catch: all -> 0x02af, TRY_LEAVE, TryCatch #8 {all -> 0x02af, blocks: (B:112:0x025a, B:114:0x0261, B:117:0x0268, B:120:0x026f, B:123:0x0276, B:133:0x028f, B:135:0x0296, B:138:0x029d, B:141:0x02a4, B:144:0x02ab, B:145:0x02ae), top: B:200:0x0155 }] */
    /* JADX WARN: Removed duplicated region for block: B:160:0x02e1  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x034c  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x0359  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0367  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x0376  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x0385  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x038c  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x03b4  */
    /* JADX WARN: Removed duplicated region for block: B:243:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v19 */
    /* JADX WARN: Type inference failed for: r14v21, types: [java.lang.String] */
    static {
        /*
            Method dump skipped, instructions count: 1000
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.netty.handler.ssl.OpenSsl.<clinit>():void");
    }

    private OpenSsl() {
    }

    @Deprecated
    public static Set<String> availableCipherSuites() {
        return availableOpenSslCipherSuites();
    }

    public static Set<String> availableJavaCipherSuites() {
        return AVAILABLE_JAVA_CIPHER_SUITES;
    }

    public static Set<String> availableOpenSslCipherSuites() {
        return AVAILABLE_OPENSSL_CIPHER_SUITES;
    }

    private static boolean doesSupportOcsp() {
        long j4;
        if (version() >= 268443648) {
            try {
                j4 = SSLContext.make(16, 1);
                try {
                    SSLContext.enableOcsp(j4, false);
                    if (j4 != -1) {
                        SSLContext.free(j4);
                        return true;
                    }
                    return true;
                } catch (Exception unused) {
                    if (j4 != -1) {
                        SSLContext.free(j4);
                    }
                    return false;
                } catch (Throwable th) {
                    th = th;
                    if (j4 != -1) {
                        SSLContext.free(j4);
                    }
                    throw th;
                }
            } catch (Exception unused2) {
                j4 = -1;
            } catch (Throwable th2) {
                th = th2;
                j4 = -1;
            }
        }
        return false;
    }

    private static boolean doesSupportProtocol(int i2, int i4) {
        if (i4 == 0) {
            return false;
        }
        try {
            long make = SSLContext.make(i2, 2);
            if (make != -1) {
                SSLContext.free(make);
            }
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static void ensureAvailability() {
        Throwable th = UNAVAILABILITY_CAUSE;
        if (th != null) {
            throw ((Error) new UnsatisfiedLinkError("failed to load the required native library").initCause(th));
        }
    }

    private static boolean initializeTcNative(String str) throws Exception {
        return Library.initialize("provided", str);
    }

    @Deprecated
    public static boolean isAlpnSupported() {
        return ((long) version()) >= 268443648;
    }

    public static boolean isAvailable() {
        return UNAVAILABILITY_CAUSE == null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isBoringSSL() {
        return IS_BORINGSSL;
    }

    public static boolean isCipherSuiteAvailable(String str) {
        String openSsl = CipherSuiteConverter.toOpenSsl(str, IS_BORINGSSL);
        if (openSsl != null) {
            str = openSsl;
        }
        return AVAILABLE_OPENSSL_CIPHER_SUITES.contains(str);
    }

    public static boolean isOcspSupported() {
        return SUPPORTS_OCSP;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isTlsv13Supported() {
        return TLSV13_SUPPORTED;
    }

    private static void loadTcNative() throws Exception {
        String normalizedOs = PlatformDependent.normalizedOs();
        String normalizedArch = PlatformDependent.normalizedArch();
        LinkedHashSet linkedHashSet = new LinkedHashSet(5);
        if ("linux".equalsIgnoreCase(normalizedOs)) {
            Iterator<String> it2 = PlatformDependent.normalizedLinuxClassifiers().iterator();
            while (it2.hasNext()) {
                linkedHashSet.add("netty_tcnative_" + normalizedOs + '_' + normalizedArch + "_" + it2.next());
            }
            linkedHashSet.add("netty_tcnative_" + normalizedOs + '_' + normalizedArch);
            linkedHashSet.add("netty_tcnative_" + normalizedOs + '_' + normalizedArch + "_fedora");
        } else {
            linkedHashSet.add("netty_tcnative_" + normalizedOs + '_' + normalizedArch);
        }
        linkedHashSet.add("netty_tcnative_" + normalizedArch);
        linkedHashSet.add("netty_tcnative");
        NativeLibraryLoader.loadFirstAvailable(SSL.class.getClassLoader(), (String[]) linkedHashSet.toArray(new String[0]));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long memoryAddress(ByteBuf byteBuf) {
        return byteBuf.hasMemoryAddress() ? byteBuf.memoryAddress() : Buffer.address(byteBuf.nioBuffer());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void releaseIfNeeded(ReferenceCounted referenceCounted) {
        if (referenceCounted.refCnt() > 0) {
            ReferenceCountUtil.safeRelease(referenceCounted);
        }
    }

    static X509Certificate selfSignedCertificate() throws CertificateException {
        return (X509Certificate) SslContext.X509_CERT_FACTORY.generateCertificate(new ByteArrayInputStream(CERT.getBytes(CharsetUtil.US_ASCII)));
    }

    @Deprecated
    public static boolean supportsHostnameValidation() {
        return isAvailable();
    }

    public static boolean supportsKeyManagerFactory() {
        return SUPPORTS_KEYMANAGER_FACTORY;
    }

    public static Throwable unavailabilityCause() {
        return UNAVAILABILITY_CAUSE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean useKeyManagerFactory() {
        return USE_KEYMANAGER_FACTORY;
    }

    public static int version() {
        if (isAvailable()) {
            return SSL.version();
        }
        return -1;
    }

    public static String versionString() {
        if (isAvailable()) {
            return SSL.versionString();
        }
        return null;
    }
}
