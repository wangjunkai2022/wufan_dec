package com.switfpass.pay.thread;

import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import javax.net.ssl.X509TrustManager;
/* loaded from: classes4.dex */
final class i implements X509TrustManager {
    @Override // javax.net.ssl.X509TrustManager
    public final void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
    }

    @Override // javax.net.ssl.X509TrustManager
    public final void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
        try {
            x509CertificateArr[0].checkValidity();
        } catch (Exception unused) {
            throw new CertificateException("Certificate not valid or trusted.");
        }
    }

    @Override // javax.net.ssl.X509TrustManager
    public final X509Certificate[] getAcceptedIssuers() {
        return null;
    }
}
