package com.xinzhu.overmind.client.hook.proxies.os;

import com.xinzhu.haunted.android.os.f;
import com.xinzhu.haunted.android.os.q;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.utils.o;
import java.lang.reflect.Method;
/* compiled from: DeviceIdentifiersPolicyStub.java */
/* loaded from: classes.dex */
public class b extends com.xinzhu.overmind.client.hook.b {

    /* compiled from: DeviceIdentifiersPolicyStub.java */
    /* loaded from: classes.dex */
    class a extends com.xinzhu.overmind.client.hook.g {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "getSerialForPackage";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            return o.d(Overmind.getHostPkg());
        }
    }

    public b() {
        super(q.h("device_identifiers"));
    }

    @Override // com.xinzhu.overmind.client.hook.e
    public boolean a() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected Object h() {
        return f.a.a(q.h("device_identifiers"));
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected void i(Object baseInvocation, Object proxyInvocation) {
        m("device_identifiers");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.xinzhu.overmind.client.hook.b, com.xinzhu.overmind.client.hook.c
    public void k() {
        super.k();
        d(new a());
    }
}
