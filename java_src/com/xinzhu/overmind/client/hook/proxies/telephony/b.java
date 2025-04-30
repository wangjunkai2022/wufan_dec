package com.xinzhu.overmind.client.hook.proxies.telephony;

import com.xinzhu.haunted.android.os.q;
import com.xinzhu.haunted.com.android.internal.telephony.a;
import com.xinzhu.overmind.client.hook.g;
import com.xinzhu.overmind.server.os.MindDeviceInfo;
import java.lang.reflect.Method;
/* compiled from: HwTelephonyStub.java */
/* loaded from: classes.dex */
public class b extends com.xinzhu.overmind.client.hook.b {

    /* renamed from: f  reason: collision with root package name */
    static final String f64229f = "phone_huawei";

    /* compiled from: HwTelephonyStub.java */
    /* loaded from: classes.dex */
    class a extends g {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "getDeviceId";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            return "";
        }
    }

    /* compiled from: HwTelephonyStub.java */
    /* renamed from: com.xinzhu.overmind.client.hook.proxies.telephony.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    class C0421b extends g {
        C0421b() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "getDeviceIdWithFeature";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            MindDeviceInfo b4 = com.xinzhu.overmind.client.frameworks.b.a().b();
            if (b4 != null) {
                return b4.f64491b;
            }
            return method.invoke(who, args);
        }
    }

    /* compiled from: HwTelephonyStub.java */
    /* loaded from: classes.dex */
    class c extends g {
        c() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "getImeiForSlot";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            MindDeviceInfo b4 = com.xinzhu.overmind.client.frameworks.b.a().b();
            if (b4 != null) {
                return b4.f64491b;
            }
            return method.invoke(who, args);
        }
    }

    /* compiled from: HwTelephonyStub.java */
    /* loaded from: classes.dex */
    class d extends g {
        d() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "getUniqueDeviceId";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            MindDeviceInfo b4 = com.xinzhu.overmind.client.frameworks.b.a().b();
            if (b4 != null) {
                return b4.f64491b;
            }
            return method.invoke(who, args);
        }
    }

    public b() {
        super(q.h(f64229f));
    }

    @Override // com.xinzhu.overmind.client.hook.e
    public boolean a() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected Object h() {
        return a.C0395a.a(q.h(f64229f));
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected void i(Object baseInvocation, Object proxyInvocation) {
        m(f64229f);
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
        d(new a());
        d(new C0421b());
        d(new c());
        d(new d());
    }
}
