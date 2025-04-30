package com.xinzhu.overmind.client.hook.proxies.os;

import com.xinzhu.haunted.android.os.m;
import com.xinzhu.haunted.android.os.n;
import com.xinzhu.haunted.android.os.q;
import java.lang.reflect.Method;
/* compiled from: VibratorServiceStub.java */
/* loaded from: classes.dex */
public class k extends com.xinzhu.overmind.client.hook.b {

    /* renamed from: f  reason: collision with root package name */
    static final String f64214f;

    static {
        f64214f = com.xinzhu.overmind.utils.e.h() ? "vibrator_manager" : "vibrator";
    }

    public k() {
        super(q.h(f64214f));
    }

    @Override // com.xinzhu.overmind.client.hook.e
    public boolean a() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected Object h() {
        return com.xinzhu.overmind.utils.e.h() ? m.a.a(q.h(f64214f)) : n.a.a(q.h(f64214f));
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected void i(Object baseInvocation, Object proxyInvocation) {
        m(f64214f);
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
        d(new com.xinzhu.overmind.client.hook.common.e("vibrate", 0));
        d(new com.xinzhu.overmind.client.hook.common.e("vibratePattern", 0));
        d(new com.xinzhu.overmind.client.hook.common.e("vibrateMagnitude", 0));
        d(new com.xinzhu.overmind.client.hook.common.e("vibratePatternMagnitude", 0));
    }
}
