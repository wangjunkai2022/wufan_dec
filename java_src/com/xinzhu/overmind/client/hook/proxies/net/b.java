package com.xinzhu.overmind.client.hook.proxies.net;

import com.xinzhu.haunted.android.os.h;
import com.xinzhu.haunted.android.os.q;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.client.e;
import com.xinzhu.overmind.client.hook.g;
import java.lang.reflect.Method;
/* compiled from: NetworkManagementStub.java */
/* loaded from: classes.dex */
public class b extends com.xinzhu.overmind.client.hook.b {

    /* renamed from: f  reason: collision with root package name */
    static final String f64195f = "network_management";

    /* compiled from: NetworkManagementStub.java */
    /* loaded from: classes.dex */
    static class a extends g {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "getNetworkStatsUidDetail";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            b.o(args, 0);
            return method.invoke(who, args);
        }
    }

    /* compiled from: NetworkManagementStub.java */
    /* renamed from: com.xinzhu.overmind.client.hook.proxies.net.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    static class C0415b extends g {
        C0415b() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "setUidCleartextNetworkPolicy";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            b.o(args, 0);
            return method.invoke(who, args);
        }
    }

    /* compiled from: NetworkManagementStub.java */
    /* loaded from: classes.dex */
    static class c extends g {
        c() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "setUidMeteredNetworkBlacklist";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            b.o(args, 0);
            return method.invoke(who, args);
        }
    }

    /* compiled from: NetworkManagementStub.java */
    /* loaded from: classes.dex */
    static class d extends g {
        d() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "setUidMeteredNetworkWhitelist";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            b.o(args, 0);
            return method.invoke(who, args);
        }
    }

    public b() {
        super(q.h(f64195f));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void o(Object[] args, int index) {
        if (args != null && (args[index] instanceof Integer)) {
            if (((Integer) args[index]).intValue() == e.getVUid() || ((Integer) args[index]).intValue() == e.getBaseVUid()) {
                args[index] = Integer.valueOf(Overmind.getHostUid());
            }
        }
    }

    @Override // com.xinzhu.overmind.client.hook.e
    public boolean a() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected Object h() {
        return h.a.a(q.h(f64195f));
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected void i(Object baseInvocation, Object proxyInvocation) {
        m(f64195f);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.xinzhu.overmind.client.hook.b, com.xinzhu.overmind.client.hook.c
    public void k() {
        super.k();
        d(new C0415b());
        d(new c());
        d(new d());
        d(new a());
    }
}
