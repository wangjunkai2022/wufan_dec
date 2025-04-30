package com.sdk.a;

import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSession;
/* loaded from: classes4.dex */
class f implements HostnameVerifier {
    @Override // javax.net.ssl.HostnameVerifier
    public boolean verify(String str, SSLSession sSLSession) {
        return true;
    }
}
