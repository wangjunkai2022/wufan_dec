package com.tencent.stat;

import org.apache.http.HttpResponse;
import org.apache.http.impl.client.DefaultConnectionKeepAliveStrategy;
import org.apache.http.protocol.HttpContext;
/* loaded from: classes4.dex */
class e extends DefaultConnectionKeepAliveStrategy {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ d f60104a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(d dVar) {
        this.f60104a = dVar;
    }

    public long getKeepAliveDuration(HttpResponse httpResponse, HttpContext httpContext) {
        long keepAliveDuration = super.getKeepAliveDuration(httpResponse, httpContext);
        if (keepAliveDuration == -1) {
            return 20000L;
        }
        return keepAliveDuration;
    }
}
