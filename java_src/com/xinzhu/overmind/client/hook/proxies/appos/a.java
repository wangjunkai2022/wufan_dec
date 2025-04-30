package com.xinzhu.overmind.client.hook.proxies.appos;

import android.annotation.SuppressLint;
import android.app.AppOpsManager;
import android.content.AttributionSource;
import android.os.IInterface;
import com.xinzhu.haunted.android.app.h;
import com.xinzhu.haunted.android.os.q;
import com.xinzhu.haunted.com.android.internal.app.a;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.client.hook.b;
import com.xinzhu.overmind.client.hook.common.c;
import com.xinzhu.overmind.client.hook.common.d;
import com.xinzhu.overmind.client.hook.fixer.ContextFixer;
import com.xinzhu.overmind.utils.e;
import java.lang.reflect.Method;
/* compiled from: AppOpsManagerStub.java */
/* loaded from: classes.dex */
public class a extends b {

    /* compiled from: AppOpsManagerStub.java */
    /* renamed from: com.xinzhu.overmind.client.hook.proxies.appos.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    class C0411a extends c {
        C0411a(String name, Object result) {
            super(name, result);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.common.c, com.xinzhu.overmind.client.hook.g
        @SuppressLint({"NewApi"})
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            int a4;
            if (e.h() && (a4 = com.xinzhu.overmind.utils.helpers.a.a(args, AttributionSource.class)) >= 0) {
                AttributionSource attributionSource = (AttributionSource) args[a4];
                ContextFixer.fixAttributionSource(attributionSource);
                args[a4] = attributionSource;
                return method.invoke(who, args);
            }
            return super.d(who, method, args);
        }
    }

    public a() {
        super(q.h("appops"));
    }

    @Override // com.xinzhu.overmind.client.hook.e
    public boolean a() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected Object h() {
        return a.C0390a.a(q.h("appops"));
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected void i(Object baseInvocation, Object proxyInvocation) {
        new h((AppOpsManager) Overmind.getContext().getSystemService("appops")).c((IInterface) g());
        m("appops");
    }

    @Override // com.xinzhu.overmind.client.hook.c, java.lang.reflect.InvocationHandler
    public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
        com.xinzhu.overmind.utils.helpers.a.d(args);
        return super.invoke(proxy, method, args);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.xinzhu.overmind.client.hook.b, com.xinzhu.overmind.client.hook.c
    public void k() {
        super.k();
        d(new com.xinzhu.overmind.client.hook.common.e("checkOperation", 1));
        d(new com.xinzhu.overmind.client.hook.common.e("noteOperation", 1));
        d(new com.xinzhu.overmind.client.hook.common.e("startOperation", 2));
        d(new com.xinzhu.overmind.client.hook.common.e("finishOperation", 2));
        d(new com.xinzhu.overmind.client.hook.common.e("checkAudioOperation", 2));
        d(new C0411a("noteProxyOperation", 0));
        d(new com.xinzhu.overmind.client.hook.common.e("checkPackage", 0));
        d(new com.xinzhu.overmind.client.hook.common.e("getOpsForPackage", 0));
        d(new com.xinzhu.overmind.client.hook.common.e("getHistoricalOps", 0));
        d(new com.xinzhu.overmind.client.hook.common.e("getHistoricalOpsFromDiskRaw", 0));
        d(new com.xinzhu.overmind.client.hook.common.e("getUidOps", 0));
        d(new com.xinzhu.overmind.client.hook.common.e("setUidMode", 1));
        d(new com.xinzhu.overmind.client.hook.common.e("setMode", 1));
        d(new d("resetAllModes", d.f64083e, 0));
        d(new com.xinzhu.overmind.client.hook.common.e("setAudioRestriction", 2));
        d(new com.xinzhu.overmind.client.hook.common.e("isOperationActive", 1));
        d(new com.xinzhu.overmind.client.hook.common.e("checkOperationRaw", 1));
    }
}
