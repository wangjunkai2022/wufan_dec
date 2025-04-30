package com.xinzhu.overmind.client.hook.proxies.am;

import com.xinzhu.haunted.android.app.f;
import com.xinzhu.haunted.android.app.m;
import com.xinzhu.haunted.android.os.q;
import com.xinzhu.overmind.client.hook.proxies.am.d;
import com.xinzhu.overmind.utils.e;
/* compiled from: ActivityTaskManagerStub.java */
/* loaded from: classes.dex */
public class c extends com.xinzhu.overmind.client.hook.b {

    /* renamed from: f  reason: collision with root package name */
    public static final String f64153f = "ActivityTaskManager";

    public c() {
        super(q.h("activity_task"));
    }

    @Override // com.xinzhu.overmind.client.hook.e
    public boolean a() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected Object h() {
        return m.a.a(q.h("activity_task"));
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected void i(Object baseInvocation, Object proxyInvocation) {
        m("activity_task");
        new com.xinzhu.haunted.android.util.b(f.d()).e(proxyInvocation);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.xinzhu.overmind.client.hook.b, com.xinzhu.overmind.client.hook.c
    public void k() {
        d(new d.n());
        d(new d.m());
        d(new d.a());
        d(new d.b());
        d(new d.c());
        d(new d.C0407d());
        d(new d.f());
        d(new d.g());
        d(new d.r());
        d(new d.o());
        d(new d.q());
        d(new d.s());
        d(new d.p());
        d(new d.l());
        d(new d.e());
        d(new d.k());
        d(new d.h());
        d(new d.i());
        d(new d.j());
        if (e.s()) {
            d(new com.xinzhu.overmind.client.hook.common.b("startAppLockService"));
        }
    }
}
