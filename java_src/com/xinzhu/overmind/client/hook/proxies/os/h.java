package com.xinzhu.overmind.client.hook.proxies.os;

import android.os.Bundle;
import com.xinzhu.haunted.android.os.k;
import com.xinzhu.haunted.android.os.q;
import java.lang.reflect.Method;
/* compiled from: SystemUpdateManagerStub.java */
/* loaded from: classes.dex */
public class h extends com.xinzhu.overmind.client.hook.b {

    /* renamed from: f  reason: collision with root package name */
    static final String f64210f = "system_update";

    /* compiled from: SystemUpdateManagerStub.java */
    /* loaded from: classes.dex */
    class a extends com.xinzhu.overmind.client.hook.g {

        /* renamed from: b  reason: collision with root package name */
        public static final String f64211b = "status";

        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "retrieveSystemUpdateInfo";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            Bundle bundle = new Bundle();
            bundle.putInt("status", 0);
            return bundle;
        }
    }

    public h() {
        super(q.h(f64210f));
    }

    @Override // com.xinzhu.overmind.client.hook.e
    public boolean a() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected Object h() {
        return k.a.a(q.h(f64210f));
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected void i(Object baseInvocation, Object proxyInvocation) {
        m(f64210f);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.xinzhu.overmind.client.hook.b, com.xinzhu.overmind.client.hook.c
    public void k() {
        super.k();
        d(new a());
        d(new com.xinzhu.overmind.client.hook.common.c("updateSystemUpdateInfo", null));
    }
}
