package io.netty.handler.ssl;

import io.netty.internal.tcnative.CertificateVerifier;
import java.security.cert.CertificateException;
/* loaded from: classes5.dex */
public final class OpenSslCertificateException extends CertificateException {
    private static final long serialVersionUID = 5542675253797129798L;
    private final int errorCode;

    public OpenSslCertificateException(int i2) {
        this((String) null, i2);
    }

    private static int checkErrorCode(int i2) {
        if (!OpenSsl.isAvailable() || CertificateVerifier.isValid(i2)) {
            return i2;
        }
        throw new IllegalArgumentException("errorCode '" + i2 + "' invalid, see https://www.openssl.org/docs/man1.0.2/apps/verify.html.");
    }

    public int errorCode() {
        return this.errorCode;
    }

    public OpenSslCertificateException(String str, int i2) {
        super(str);
        this.errorCode = checkErrorCode(i2);
    }

    public OpenSslCertificateException(String str, Throwable th, int i2) {
        super(str, th);
        this.errorCode = checkErrorCode(i2);
    }

    public OpenSslCertificateException(Throwable th, int i2) {
        this(null, th, i2);
    }
}
