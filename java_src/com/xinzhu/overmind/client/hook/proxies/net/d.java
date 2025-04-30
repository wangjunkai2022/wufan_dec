package com.xinzhu.overmind.client.hook.proxies.net;

import com.xinzhu.haunted.android.net.c;
import com.xinzhu.haunted.android.os.q;
import com.xinzhu.overmind.client.hook.g;
import com.xinzhu.overmind.utils.s;
import java.lang.reflect.Method;
/* compiled from: TetheringConnectorStub.java */
/* loaded from: classes.dex */
public class d extends com.xinzhu.overmind.client.hook.b {

    /* renamed from: f  reason: collision with root package name */
    static final String f64197f = "tethering";

    /* renamed from: g  reason: collision with root package name */
    public static final int f64198g = 3;

    /* compiled from: TetheringConnectorStub.java */
    /* loaded from: classes.dex */
    static class a extends g {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "isTetheringSupported";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            try {
                s.m(args[2].getClass()).k("onResult", Integer.TYPE).call("onResult", 3);
                return null;
            } catch (Throwable unused) {
                return method.invoke(who, args);
            }
        }
    }

    public d() {
        super(q.h(f64197f));
    }

    @Override // com.xinzhu.overmind.client.hook.e
    public boolean a() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected Object h() {
        return c.a.a(q.h(f64197f));
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected void i(Object baseInvocation, Object proxyInvocation) {
        m(f64197f);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.xinzhu.overmind.client.hook.b, com.xinzhu.overmind.client.hook.c
    public void k() {
        super.k();
        d(new a());
    }
}
