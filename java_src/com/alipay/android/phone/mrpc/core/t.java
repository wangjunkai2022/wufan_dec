package com.alipay.android.phone.mrpc.core;

import org.apache.http.HttpResponse;
import org.apache.http.conn.ConnectionKeepAliveStrategy;
import org.apache.http.protocol.HttpContext;
/* loaded from: classes2.dex */
final class t implements ConnectionKeepAliveStrategy {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ r f9495a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t(r rVar) {
        this.f9495a = rVar;
    }

    public final long getKeepAliveDuration(HttpResponse httpResponse, HttpContext httpContext) {
        return 180000L;
    }
}
