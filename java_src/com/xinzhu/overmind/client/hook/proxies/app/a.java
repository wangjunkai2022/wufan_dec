package com.xinzhu.overmind.client.hook.proxies.app;

import android.os.WorkSource;
import androidx.core.app.NotificationCompat;
import com.xinzhu.haunted.android.app.n;
import com.xinzhu.haunted.android.os.q;
import java.lang.reflect.Method;
/* compiled from: AlarmManagerStub.java */
/* loaded from: classes.dex */
public class a extends com.xinzhu.overmind.client.hook.b {

    /* compiled from: AlarmManagerStub.java */
    /* renamed from: com.xinzhu.overmind.client.hook.proxies.app.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    class C0408a extends com.xinzhu.overmind.client.hook.common.d {
        C0408a(String name, int replace_pkg_index, int replace_userId_index) {
            super(name, replace_pkg_index, replace_userId_index);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.common.d, com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            int l4 = com.xinzhu.overmind.utils.d.l(args, WorkSource.class);
            if (l4 >= 0) {
                args[l4] = null;
            }
            return super.d(who, method, args);
        }
    }

    public a() {
        super(q.h(NotificationCompat.CATEGORY_ALARM));
    }

    @Override // com.xinzhu.overmind.client.hook.e
    public boolean a() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected Object h() {
        return n.a.a(q.h(NotificationCompat.CATEGORY_ALARM));
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected void i(Object baseInvocation, Object proxyInvocation) {
        m(NotificationCompat.CATEGORY_ALARM);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.xinzhu.overmind.client.hook.b, com.xinzhu.overmind.client.hook.c
    public void k() {
        super.k();
        d(new C0408a("set", com.xinzhu.overmind.client.hook.common.d.f64084f, com.xinzhu.overmind.client.hook.common.d.f64083e));
        d(new com.xinzhu.overmind.client.hook.common.d("getNextAlarmClock", com.xinzhu.overmind.client.hook.common.d.f64083e, 0));
    }
}
