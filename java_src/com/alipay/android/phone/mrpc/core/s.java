package com.alipay.android.phone.mrpc.core;

import org.apache.http.HttpResponse;
import org.apache.http.impl.client.DefaultRedirectHandler;
import org.apache.http.protocol.HttpContext;
/* loaded from: classes2.dex */
final class s extends DefaultRedirectHandler {

    /* renamed from: a  reason: collision with root package name */
    int f9493a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ r f9494b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s(r rVar) {
        this.f9494b = rVar;
    }

    public final boolean isRedirectRequested(HttpResponse httpResponse, HttpContext httpContext) {
        int statusCode;
        this.f9493a++;
        boolean isRedirectRequested = super.isRedirectRequested(httpResponse, httpContext);
        if (isRedirectRequested || this.f9493a >= 5 || !((statusCode = httpResponse.getStatusLine().getStatusCode()) == 301 || statusCode == 302)) {
            return isRedirectRequested;
        }
        return true;
    }
}
