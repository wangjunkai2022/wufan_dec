package com.xinzhu.overmind.client.hook.proxies.net.wifi;

import android.os.WorkSource;
import com.xinzhu.haunted.android.net.wifi.a;
import com.xinzhu.haunted.android.os.q;
import com.xinzhu.overmind.client.hook.b;
import java.lang.reflect.Method;
/* compiled from: WifiManagerStub.java */
/* loaded from: classes.dex */
public class a extends b {

    /* renamed from: f  reason: collision with root package name */
    static final String f64199f = "wifi";

    public a() {
        super(q.h("wifi"));
    }

    @Override // com.xinzhu.overmind.client.hook.e
    public boolean a() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected Object h() {
        return a.C0381a.a(q.h("wifi"));
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected void i(Object baseInvocation, Object proxyInvocation) {
        m("wifi");
    }

    @Override // com.xinzhu.overmind.client.hook.c, java.lang.reflect.InvocationHandler
    public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
        com.xinzhu.overmind.utils.helpers.a.c(args);
        if (args != null) {
            for (int i2 = 0; i2 < args.length; i2++) {
                if (args[i2] != null && args[i2].getClass() == WorkSource.class) {
                    args[i2] = null;
                }
            }
        }
        return super.invoke(proxy, method, args);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.xinzhu.overmind.client.hook.b, com.xinzhu.overmind.client.hook.c
    public void k() {
        super.k();
    }
}
