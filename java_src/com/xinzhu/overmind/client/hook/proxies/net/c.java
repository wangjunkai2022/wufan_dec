package com.xinzhu.overmind.client.hook.proxies.net;

import com.xinzhu.haunted.android.net.b;
import com.xinzhu.haunted.android.os.q;
/* compiled from: NetworkScoreStub.java */
/* loaded from: classes.dex */
public class c extends com.xinzhu.overmind.client.hook.b {

    /* renamed from: f  reason: collision with root package name */
    static final String f64196f = "network_score";

    public c() {
        super(q.h(f64196f));
    }

    @Override // com.xinzhu.overmind.client.hook.e
    public boolean a() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected Object h() {
        return b.a.a(q.h(f64196f));
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected void i(Object baseInvocation, Object proxyInvocation) {
        m(f64196f);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.xinzhu.overmind.client.hook.b, com.xinzhu.overmind.client.hook.c
    public void k() {
        super.k();
        d(new com.xinzhu.overmind.client.hook.common.c("getActiveScorerPackage", null));
    }
}
