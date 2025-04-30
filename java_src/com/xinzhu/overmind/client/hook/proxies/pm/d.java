package com.xinzhu.overmind.client.hook.proxies.pm;

import android.content.Intent;
import com.xinzhu.haunted.android.content.pm.f;
import com.xinzhu.haunted.android.os.q;
import java.lang.reflect.Method;
/* compiled from: ShortcutManagerStub.java */
/* loaded from: classes.dex */
public class d extends com.xinzhu.overmind.client.hook.b {
    public d() {
        super(q.h("shortcut"));
    }

    @Override // com.xinzhu.overmind.client.hook.e
    public boolean a() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected Object h() {
        return f.a.a(q.h("shortcut"));
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected void i(Object baseInvocation, Object proxyInvocation) {
        m("shortcut");
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
        Boolean bool = Boolean.TRUE;
        d(new com.xinzhu.overmind.client.hook.common.c("requestPinShortcut", bool));
        d(new com.xinzhu.overmind.client.hook.common.c("setDynamicShortcuts", bool));
        d(new com.xinzhu.overmind.client.hook.common.c("addDynamicShortcuts", bool));
        d(new com.xinzhu.overmind.client.hook.common.c("createShortcutResultIntent", new Intent()));
    }
}
