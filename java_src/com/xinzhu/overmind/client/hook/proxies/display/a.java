package com.xinzhu.overmind.client.hook.proxies.display;

import android.os.IInterface;
import com.xinzhu.overmind.client.hook.c;
import com.xinzhu.overmind.client.hook.g;
import java.lang.reflect.Method;
/* compiled from: DisplayManagerStub.java */
/* loaded from: classes.dex */
public class a extends c {

    /* compiled from: DisplayManagerStub.java */
    /* renamed from: com.xinzhu.overmind.client.hook.proxies.display.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    static class C0413a extends g {
        C0413a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "createVirtualDisplay";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            com.xinzhu.overmind.utils.helpers.a.d(args);
            return method.invoke(who, args);
        }
    }

    @Override // com.xinzhu.overmind.client.hook.e
    public boolean a() {
        return new com.xinzhu.haunted.android.hardware.display.a(com.xinzhu.haunted.android.hardware.display.a.c()).d() != g();
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected Object h() {
        return new com.xinzhu.haunted.android.hardware.display.a(com.xinzhu.haunted.android.hardware.display.a.c()).d();
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected void i(Object baseInvocation, Object proxyInvocation) {
        new com.xinzhu.haunted.android.hardware.display.a(com.xinzhu.haunted.android.hardware.display.a.c()).e((IInterface) g());
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected void k() {
        d(new C0413a());
    }
}
