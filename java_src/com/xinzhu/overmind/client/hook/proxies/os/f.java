package com.xinzhu.overmind.client.hook.proxies.os;

import android.os.WorkSource;
import com.xinzhu.haunted.android.os.i;
import com.xinzhu.haunted.android.os.q;
import com.xinzhu.overmind.Overmind;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* compiled from: PowerManagerStub.java */
/* loaded from: classes.dex */
public class f extends com.xinzhu.overmind.client.hook.b {

    /* renamed from: f  reason: collision with root package name */
    static final String f64206f = "power";

    /* compiled from: PowerManagerStub.java */
    /* loaded from: classes.dex */
    class a extends com.xinzhu.overmind.client.hook.common.d {
        a(String name, int replace_pkg_index, int replace_userId_index) {
            super(name, replace_pkg_index, replace_userId_index);
        }

        @Override // com.xinzhu.overmind.client.hook.common.d, com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            int l4 = com.xinzhu.overmind.utils.d.l(args, WorkSource.class);
            if (l4 >= 0) {
                args[l4] = null;
            }
            try {
                return super.d(who, method, args);
            } catch (InvocationTargetException e4) {
                throw e4.getCause();
            }
        }
    }

    /* compiled from: PowerManagerStub.java */
    /* loaded from: classes.dex */
    class b extends com.xinzhu.overmind.client.hook.common.d {
        b(String name, int replace_pkg_index, int replace_userId_index) {
            super(name, replace_pkg_index, replace_userId_index);
        }

        @Override // com.xinzhu.overmind.client.hook.common.d, com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            int l4 = com.xinzhu.overmind.utils.d.l(args, WorkSource.class);
            if (l4 >= 0) {
                args[l4] = null;
            }
            int intValue = ((Integer) args[args.length - 1]).intValue();
            if (intValue == com.xinzhu.overmind.client.e.getBaseVUid() || intValue == com.xinzhu.overmind.client.e.getVUid()) {
                args[args.length - 1] = Integer.valueOf(Overmind.getHostUid());
            }
            try {
                return super.d(who, method, args);
            } catch (InvocationTargetException e4) {
                throw e4.getCause();
            }
        }
    }

    public f() {
        super(q.h(f64206f));
    }

    @Override // com.xinzhu.overmind.client.hook.e
    public boolean a() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected Object h() {
        return i.a.a(q.h(f64206f));
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected void i(Object baseInvocation, Object proxyInvocation) {
        m(f64206f);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.xinzhu.overmind.client.hook.b, com.xinzhu.overmind.client.hook.c
    public void k() {
        super.k();
        d(new a("acquireWakeLock", 3, com.xinzhu.overmind.client.hook.common.d.f64083e));
        d(new b("acquireWakeLockWithUid", 3, com.xinzhu.overmind.client.hook.common.d.f64083e));
        d(new com.xinzhu.overmind.client.hook.common.c("updateWakeLockWorkSource", 0));
        d(new com.xinzhu.overmind.client.hook.common.d("wakeUp", com.xinzhu.overmind.client.hook.common.d.f64085g, com.xinzhu.overmind.client.hook.common.d.f64083e));
    }
}
