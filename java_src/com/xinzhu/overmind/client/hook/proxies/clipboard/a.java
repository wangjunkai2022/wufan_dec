package com.xinzhu.overmind.client.hook.proxies.clipboard;

import android.content.ClipboardManager;
import android.os.IInterface;
import com.xinzhu.haunted.android.content.d;
import com.xinzhu.haunted.android.content.i;
import com.xinzhu.haunted.android.os.q;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.utils.e;
import java.lang.reflect.Method;
/* compiled from: ClipboardStub.java */
/* loaded from: classes.dex */
public class a extends com.xinzhu.overmind.client.hook.b {
    public a() {
        super(q.h("clipboard"));
    }

    private static IInterface n() {
        d dVar = new d((ClipboardManager) Overmind.getContext().getSystemService("clipboard"));
        if (dVar.a()) {
            return dVar.c();
        }
        if (d.b()) {
            return d.d();
        }
        return null;
    }

    @Override // com.xinzhu.overmind.client.hook.e
    public boolean a() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected Object h() {
        return i.a.a(q.h("clipboard"));
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected void i(Object baseInvocation, Object proxyInvocation) {
        d dVar = new d((ClipboardManager) Overmind.getContext().getSystemService("clipboard"));
        if (dVar.a()) {
            dVar.e((IInterface) g());
        } else if (d.b()) {
            d.f((IInterface) g());
        }
        m("clipboard");
    }

    @Override // com.xinzhu.overmind.client.hook.c, java.lang.reflect.InvocationHandler
    public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
        return super.invoke(proxy, method, args);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.xinzhu.overmind.client.hook.b, com.xinzhu.overmind.client.hook.c
    public void k() {
        super.k();
        d(new com.xinzhu.overmind.client.hook.common.d("setPrimaryClip", com.xinzhu.overmind.client.hook.common.d.f64084f, e.f() ? com.xinzhu.overmind.client.hook.common.d.f64085g : com.xinzhu.overmind.client.hook.common.d.f64083e));
        d(new com.xinzhu.overmind.client.hook.common.d("clearPrimaryClip", com.xinzhu.overmind.client.hook.common.d.f64084f, e.f() ? com.xinzhu.overmind.client.hook.common.d.f64085g : com.xinzhu.overmind.client.hook.common.d.f64083e));
        d(new com.xinzhu.overmind.client.hook.common.d("getPrimaryClip", com.xinzhu.overmind.client.hook.common.d.f64084f, e.f() ? com.xinzhu.overmind.client.hook.common.d.f64085g : com.xinzhu.overmind.client.hook.common.d.f64083e));
        d(new com.xinzhu.overmind.client.hook.common.d("getPrimaryClipDescription", com.xinzhu.overmind.client.hook.common.d.f64084f, e.f() ? com.xinzhu.overmind.client.hook.common.d.f64085g : com.xinzhu.overmind.client.hook.common.d.f64083e));
        d(new com.xinzhu.overmind.client.hook.common.d("addPrimaryClipChangedListener", com.xinzhu.overmind.client.hook.common.d.f64084f, e.f() ? com.xinzhu.overmind.client.hook.common.d.f64085g : com.xinzhu.overmind.client.hook.common.d.f64083e));
        d(new com.xinzhu.overmind.client.hook.common.d("removePrimaryClipChangedListener", com.xinzhu.overmind.client.hook.common.d.f64084f, e.f() ? com.xinzhu.overmind.client.hook.common.d.f64085g : com.xinzhu.overmind.client.hook.common.d.f64083e));
        d(new com.xinzhu.overmind.client.hook.common.d("hasClipboardText", com.xinzhu.overmind.client.hook.common.d.f64084f, e.f() ? com.xinzhu.overmind.client.hook.common.d.f64085g : com.xinzhu.overmind.client.hook.common.d.f64083e));
    }
}
