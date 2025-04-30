package com.xinzhu.overmind.client.hook.proxies.telephony;

import com.xinzhu.haunted.android.os.q;
import com.xinzhu.haunted.com.android.internal.telephony.b;
import com.xinzhu.overmind.client.hook.g;
import com.xinzhu.overmind.server.os.MindDeviceInfo;
import java.lang.reflect.Method;
/* compiled from: PhoneSubInfoStub.java */
/* loaded from: classes.dex */
public class c extends com.xinzhu.overmind.client.hook.b {

    /* renamed from: f  reason: collision with root package name */
    static final String f64234f = "iphonesubinfo";

    /* compiled from: PhoneSubInfoStub.java */
    /* loaded from: classes.dex */
    public static class a extends g {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "getDeviceId";
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

    /* compiled from: PhoneSubInfoStub.java */
    /* loaded from: classes.dex */
    public static class b extends a {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.proxies.telephony.c.a, com.xinzhu.overmind.client.hook.g
        public String c() {
            return "getDeviceIdForPhone";
        }
    }

    /* compiled from: PhoneSubInfoStub.java */
    /* renamed from: com.xinzhu.overmind.client.hook.proxies.telephony.c$c  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0422c extends g {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "getIccSerialNumber";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            MindDeviceInfo b4 = com.xinzhu.overmind.client.frameworks.b.a().b();
            if (b4 != null) {
                return b4.f64492c;
            }
            return method.invoke(who, args);
        }
    }

    /* compiled from: PhoneSubInfoStub.java */
    /* loaded from: classes.dex */
    public static class d extends C0422c {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.proxies.telephony.c.C0422c, com.xinzhu.overmind.client.hook.g
        public String c() {
            return "getIccSerialNumberForSubscriber";
        }
    }

    /* compiled from: PhoneSubInfoStub.java */
    /* loaded from: classes.dex */
    public static class e extends a {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.proxies.telephony.c.a, com.xinzhu.overmind.client.hook.g
        public String c() {
            return "getImeiForSubscriber";
        }
    }

    public c() {
        super(q.h(f64234f));
    }

    @Override // com.xinzhu.overmind.client.hook.e
    public boolean a() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected Object h() {
        return b.a.a(q.h(f64234f));
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected void i(Object baseInvocation, Object proxyInvocation) {
        m(f64234f);
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
        d(new b());
        d(new d());
        d(new e());
        d(new C0422c());
        d(new d());
    }
}
