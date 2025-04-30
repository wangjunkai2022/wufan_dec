package com.xinzhu.overmind.client.hook.proxies.app;

import com.xinzhu.haunted.android.app.r;
import com.xinzhu.haunted.android.os.q;
/* compiled from: UriGrantsManagerStub.java */
/* loaded from: classes.dex */
public class e extends com.xinzhu.overmind.client.hook.b {

    /* renamed from: f  reason: collision with root package name */
    static final String f64169f = "uri_grants";

    public e() {
        super(q.h(f64169f));
    }

    @Override // com.xinzhu.overmind.client.hook.e
    public boolean a() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected Object h() {
        return r.a.a(q.h(f64169f));
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected void i(Object baseInvocation, Object proxyInvocation) {
        m(f64169f);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.xinzhu.overmind.client.hook.b, com.xinzhu.overmind.client.hook.c
    public void k() {
        super.k();
        d(new com.xinzhu.overmind.client.hook.common.d("takePersistableUriPermission", 2, com.xinzhu.overmind.client.hook.common.d.f64085g));
        d(new com.xinzhu.overmind.client.hook.common.d("releasePersistableUriPermission", 2, com.xinzhu.overmind.client.hook.common.d.f64085g));
        d(new com.xinzhu.overmind.client.hook.common.d("getGrantedUriPermissions", 0, com.xinzhu.overmind.client.hook.common.d.f64085g));
        d(new com.xinzhu.overmind.client.hook.common.d("clearGrantedUriPermissions", 0, com.xinzhu.overmind.client.hook.common.d.f64085g));
        d(new com.xinzhu.overmind.client.hook.common.d("getUriPermissions", 0, com.xinzhu.overmind.client.hook.common.d.f64083e));
    }
}
