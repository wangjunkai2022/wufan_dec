package com.xinzhu.overmind.client.hook.proxies.context.providers;

import android.annotation.SuppressLint;
import android.content.AttributionSource;
import android.os.IInterface;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.client.hook.fixer.ContextFixer;
import com.xinzhu.overmind.utils.e;
import java.lang.reflect.Method;
/* compiled from: ContentProviderStub.java */
/* loaded from: classes.dex */
public class a extends com.xinzhu.overmind.client.hook.c implements d {

    /* renamed from: f  reason: collision with root package name */
    public static final String f64174f = "ContentProviderStub";

    /* renamed from: e  reason: collision with root package name */
    private IInterface f64175e;

    @Override // com.xinzhu.overmind.client.hook.e
    public boolean a() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.proxies.context.providers.d
    public IInterface b(final IInterface contentProviderProxy, final String appPkg) {
        this.f64175e = contentProviderProxy;
        c();
        return (IInterface) g();
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected Object h() {
        return this.f64175e;
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected void i(Object baseInvocation, Object proxyInvocation) {
    }

    @Override // com.xinzhu.overmind.client.hook.c, java.lang.reflect.InvocationHandler
    @SuppressLint({"NewApi"})
    public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
        if ("asBinder".equals(method.getName())) {
            return method.invoke(this.f64175e, args);
        }
        if (args != null && args.length > 0) {
            if (args[0] instanceof String) {
                String str = (String) args[0];
                args[0] = Overmind.getHostPkg();
            }
            if (e.h()) {
                try {
                    int a4 = com.xinzhu.overmind.utils.helpers.a.a(args, AttributionSource.class);
                    if (a4 >= 0) {
                        ContextFixer.fixAttributionSource((AttributionSource) args[a4]);
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }
        try {
            return method.invoke(this.f64175e, args);
        } catch (Throwable th2) {
            throw th2.getCause();
        }
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected void k() {
    }
}
