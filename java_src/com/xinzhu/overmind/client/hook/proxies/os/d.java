package com.xinzhu.overmind.client.hook.proxies.os;

import android.content.ComponentName;
import com.xinzhu.haunted.android.app.admin.a;
import com.xinzhu.haunted.android.os.q;
import java.lang.reflect.Method;
/* compiled from: DevicePolicyManagerStub.java */
/* loaded from: classes.dex */
public class d extends com.xinzhu.overmind.client.hook.b {

    /* renamed from: f  reason: collision with root package name */
    static final String f64203f = "device_policy";

    /* compiled from: DevicePolicyManagerStub.java */
    /* loaded from: classes.dex */
    class a extends com.xinzhu.overmind.client.hook.g {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "getDeviceOwnerComponent";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            return new ComponentName(com.xinzhu.overmind.client.e.getVPackageName(), "");
        }
    }

    public d() {
        super(q.h(f64203f));
    }

    @Override // com.xinzhu.overmind.client.hook.e
    public boolean a() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected Object h() {
        return a.C0369a.a(q.h(f64203f));
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected void i(Object baseInvocation, Object proxyInvocation) {
        m(f64203f);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.xinzhu.overmind.client.hook.b, com.xinzhu.overmind.client.hook.c
    public void k() {
        super.k();
        d(new com.xinzhu.overmind.client.hook.common.d("getStorageEncryptionStatus", com.xinzhu.overmind.client.hook.common.d.f64084f, com.xinzhu.overmind.client.hook.common.d.f64085g));
        d(new a());
        d(new com.xinzhu.overmind.client.hook.common.c("getProfileOwnerName", ""));
        d(new com.xinzhu.overmind.client.hook.common.c("getDeviceOwnerName", ""));
        d(new com.xinzhu.overmind.client.hook.common.c("isDeviceProvisioned", Boolean.TRUE));
        d(new com.xinzhu.overmind.client.hook.common.c("getFactoryResetProtectionPolicy", null));
    }
}
