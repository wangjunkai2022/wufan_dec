package com.efs.sdk.base.core.c;

import com.efs.sdk.base.http.HttpResponse;
/* loaded from: classes2.dex */
public final class e implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private com.efs.sdk.base.core.d.b f11285a;

    /* renamed from: b  reason: collision with root package name */
    private c f11286b;

    /* renamed from: c  reason: collision with root package name */
    private String f11287c;

    public e(com.efs.sdk.base.core.d.b bVar, c cVar, String str) {
        this.f11285a = bVar;
        this.f11286b = cVar;
        this.f11287c = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HttpResponse httpResponse;
        c cVar;
        com.efs.sdk.base.core.d.b bVar = this.f11285a;
        if (bVar != null && (cVar = this.f11286b) != null) {
            httpResponse = cVar.a(bVar, true);
        } else {
            httpResponse = new HttpResponse();
        }
        d.a().a(this.f11287c, httpResponse.succ ? 0 : httpResponse.getHttpCode());
        this.f11287c = null;
        this.f11286b = null;
    }
}
