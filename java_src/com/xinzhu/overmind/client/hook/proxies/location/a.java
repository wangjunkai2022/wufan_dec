package com.xinzhu.overmind.client.hook.proxies.location;

import com.xinzhu.haunted.android.hardware.location.a;
import com.xinzhu.haunted.android.os.q;
import com.xinzhu.overmind.client.hook.common.c;
import com.xinzhu.overmind.utils.e;
/* compiled from: ContextHubStub.java */
/* loaded from: classes.dex */
public class a extends com.xinzhu.overmind.client.hook.b {

    /* renamed from: f  reason: collision with root package name */
    static final String f64193f;

    static {
        f64193f = e.v() ? "contexthub" : "contexthub_service";
    }

    public a() {
        super(q.h(f64193f));
    }

    @Override // com.xinzhu.overmind.client.hook.e
    public boolean a() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected Object h() {
        return a.C0376a.a(q.h(f64193f));
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected void i(Object baseInvocation, Object proxyInvocation) {
        m(f64193f);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.xinzhu.overmind.client.hook.b, com.xinzhu.overmind.client.hook.c
    public void k() {
        super.k();
        d(new c("getContextHubHandles", new int[0]));
        d(new c("getContextHubInfo", null));
        d(new c("loadNanoApp", 0));
        d(new c("unloadNanoApp", 0));
        d(new c("getNanoAppInstanceInfo", null));
        d(new c("findNanoAppOnHub", new int[0]));
        d(new c("sendMessage", 0));
        d(new c("getContextHubs", null));
        d(new c("loadNanoAppOnHub", null));
        d(new c("unloadNanoAppFromHub", null));
        d(new c("enableNanoApp", null));
        d(new c("disableNanoApp", null));
        d(new c("queryNanoApps", null));
        d(new c("createClient", null));
        d(new c("createPendingIntentClient", null));
        d(new c("registerCallback", 0));
    }
}
