package com.xinzhu.overmind.client.hook.proxies.os;

import com.xinzhu.haunted.android.os.g;
import com.xinzhu.haunted.android.os.q;
import java.lang.reflect.Method;
/* compiled from: DeviceIdleControllerStub.java */
/* loaded from: classes.dex */
public class c extends com.xinzhu.overmind.client.hook.b {

    /* renamed from: f  reason: collision with root package name */
    static final String f64202f = "deviceidle";

    public c() {
        super(q.h(f64202f));
    }

    @Override // com.xinzhu.overmind.client.hook.e
    public boolean a() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected Object h() {
        return g.a.a(q.h(f64202f));
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected void i(Object baseInvocation, Object proxyInvocation) {
        m(f64202f);
    }

    @Override // com.xinzhu.overmind.client.hook.c, java.lang.reflect.InvocationHandler
    public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
        com.xinzhu.overmind.utils.helpers.a.d(args);
        return super.invoke(proxy, method, args);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.xinzhu.overmind.client.hook.b, com.xinzhu.overmind.client.hook.c
    public void k() {
        super.k();
        d(new com.xinzhu.overmind.client.hook.common.d("addPowerSaveTempWhitelistApp", com.xinzhu.overmind.client.hook.common.d.f64083e, 2));
        d(new com.xinzhu.overmind.client.hook.common.d("addPowerSaveTempWhitelistAppForMms", com.xinzhu.overmind.client.hook.common.d.f64083e, 1));
        d(new com.xinzhu.overmind.client.hook.common.d("addPowerSaveTempWhitelistAppForSms", com.xinzhu.overmind.client.hook.common.d.f64083e, 1));
        d(new com.xinzhu.overmind.client.hook.common.d("whitelistAppTemporarily", com.xinzhu.overmind.client.hook.common.d.f64083e, 1));
    }
}
