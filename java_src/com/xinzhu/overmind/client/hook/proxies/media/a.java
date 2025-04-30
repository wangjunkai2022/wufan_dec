package com.xinzhu.overmind.client.hook.proxies.media;

import com.xinzhu.haunted.android.media.b;
import com.xinzhu.haunted.android.os.q;
import com.xinzhu.overmind.client.hook.b;
import com.xinzhu.overmind.client.hook.common.d;
/* compiled from: MediaRouterServiceStub.java */
/* loaded from: classes.dex */
public class a extends b {

    /* renamed from: f  reason: collision with root package name */
    static final String f64194f = "media_router";

    public a() {
        super(q.h(f64194f));
    }

    @Override // com.xinzhu.overmind.client.hook.e
    public boolean a() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected Object h() {
        return b.a.a(q.h(f64194f));
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected void i(Object baseInvocation, Object proxyInvocation) {
        m(f64194f);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.xinzhu.overmind.client.hook.b, com.xinzhu.overmind.client.hook.c
    public void k() {
        super.k();
        d(new d("registerClientAsUser", d.f64084f, d.f64085g));
        d(new d("registerRouter2", d.f64084f, d.f64083e));
        d(new d("registerManager", d.f64084f, d.f64083e));
    }
}
