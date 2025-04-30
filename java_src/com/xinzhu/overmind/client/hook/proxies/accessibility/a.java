package com.xinzhu.overmind.client.hook.proxies.accessibility;

import com.xinzhu.haunted.android.os.q;
import com.xinzhu.haunted.android.view.accessibility.a;
import com.xinzhu.overmind.client.hook.b;
import com.xinzhu.overmind.client.hook.common.d;
/* compiled from: AccessibilityManagerStub.java */
/* loaded from: classes.dex */
public class a extends b {
    public a() {
        super(q.h("accessibility"));
    }

    @Override // com.xinzhu.overmind.client.hook.e
    public boolean a() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected Object h() {
        return a.C0388a.a(q.h("accessibility"));
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected void i(Object baseInvocation, Object proxyInvocation) {
        m("accessibility");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.xinzhu.overmind.client.hook.b, com.xinzhu.overmind.client.hook.c
    public void k() {
        super.k();
        d(new d("interrupt", d.f64083e, d.f64085g));
        d(new d("sendAccessibilityEvent", d.f64083e, d.f64085g));
        d(new d("addClient", d.f64083e, d.f64085g));
        d(new d("getInstalledAccessibilityServiceList", d.f64083e, d.f64085g));
        d(new d("getEnabledAccessibilityServiceList", d.f64083e, d.f64085g));
        d(new d("addAccessibilityInteractionConnection", d.f64083e, d.f64085g));
        d(new d("getWindowToken", d.f64083e, d.f64085g));
        d(new d("removeClient", d.f64083e, d.f64085g));
    }
}
