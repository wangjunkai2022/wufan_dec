package com.xinzhu.overmind.client.hook.proxies.os;

import com.xinzhu.haunted.android.app.usage.a;
import com.xinzhu.haunted.android.os.q;
import java.lang.reflect.Method;
/* compiled from: UsageStatsManagerStub.java */
/* loaded from: classes.dex */
public class i extends com.xinzhu.overmind.client.hook.b {

    /* renamed from: f  reason: collision with root package name */
    static final String f64213f = "usagestats";

    public i() {
        super(q.h(f64213f));
    }

    @Override // com.xinzhu.overmind.client.hook.e
    public boolean a() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected Object h() {
        return a.C0375a.a(q.h(f64213f));
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected void i(Object baseInvocation, Object proxyInvocation) {
        m(f64213f);
    }

    @Override // com.xinzhu.overmind.client.hook.c, java.lang.reflect.InvocationHandler
    public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
        com.xinzhu.overmind.utils.helpers.a.c(args);
        return super.invoke(proxy, method, args);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.xinzhu.overmind.client.hook.b, com.xinzhu.overmind.client.hook.c
    public void k() {
        super.k();
        d(new com.xinzhu.overmind.client.hook.common.d("queryEventsForUser", com.xinzhu.overmind.client.hook.common.d.f64083e, 2));
        d(new com.xinzhu.overmind.client.hook.common.d("queryEventsForPackageForUser", com.xinzhu.overmind.client.hook.common.d.f64083e, 2));
        d(new com.xinzhu.overmind.client.hook.common.d("setAppInactive", com.xinzhu.overmind.client.hook.common.d.f64083e, 2));
        d(new com.xinzhu.overmind.client.hook.common.d("isAppInactive", com.xinzhu.overmind.client.hook.common.d.f64083e, 1));
        d(new com.xinzhu.overmind.client.hook.common.d("reportChooserSelection", com.xinzhu.overmind.client.hook.common.d.f64083e, 1));
        d(new com.xinzhu.overmind.client.hook.common.d("getAppStandbyBucket", com.xinzhu.overmind.client.hook.common.d.f64083e, 2));
        d(new com.xinzhu.overmind.client.hook.common.d("setAppStandbyBucket", com.xinzhu.overmind.client.hook.common.d.f64083e, 2));
        d(new com.xinzhu.overmind.client.hook.common.d("getAppStandbyBuckets", com.xinzhu.overmind.client.hook.common.d.f64083e, 1));
        d(new com.xinzhu.overmind.client.hook.common.d("setAppStandbyBuckets", com.xinzhu.overmind.client.hook.common.d.f64083e, 1));
        d(new com.xinzhu.overmind.client.hook.common.c("registerAppUsageObserver", null));
        d(new com.xinzhu.overmind.client.hook.common.c("unregisterAppUsageObserver", null));
    }
}
