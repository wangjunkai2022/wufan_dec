package com.xinzhu.overmind.client.hook.proxies.input;

import android.os.IInterface;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputMethodManager;
import com.xinzhu.haunted.android.os.q;
import com.xinzhu.haunted.com.android.internal.view.a;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.client.hook.b;
import com.xinzhu.overmind.client.hook.common.d;
import java.lang.reflect.Method;
/* compiled from: InputMethodManagerStub.java */
/* loaded from: classes.dex */
public class a extends b {

    /* renamed from: f  reason: collision with root package name */
    static final String f64190f = "input_method";

    public a() {
        super(q.h(f64190f));
    }

    @Override // com.xinzhu.overmind.client.hook.e
    public boolean a() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected Object h() {
        return a.C0397a.a(q.h(f64190f));
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected void i(Object baseInvocation, Object proxyInvocation) {
        com.xinzhu.haunted.android.inputmethod.a aVar = new com.xinzhu.haunted.android.inputmethod.a((InputMethodManager) Overmind.getContext().getSystemService(f64190f));
        if (aVar.a()) {
            aVar.c((IInterface) proxyInvocation);
        }
        m(f64190f);
    }

    @Override // com.xinzhu.overmind.client.hook.c, java.lang.reflect.InvocationHandler
    public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
        if (args != null) {
            for (Object obj : args) {
                if (obj instanceof EditorInfo) {
                    ((EditorInfo) obj).packageName = Overmind.getHostPkg();
                }
            }
        }
        return super.invoke(proxy, method, args);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.xinzhu.overmind.client.hook.b, com.xinzhu.overmind.client.hook.c
    public void k() {
        super.k();
        d(new d("getInputMethodList", d.f64083e, 0));
        d(new d("getEnabledInputMethodList", d.f64083e, 0));
    }
}
