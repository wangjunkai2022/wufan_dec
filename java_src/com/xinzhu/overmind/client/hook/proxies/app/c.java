package com.xinzhu.overmind.client.hook.proxies.app;

import android.app.job.JobInfo;
import com.xinzhu.haunted.android.app.job.a;
import com.xinzhu.haunted.android.os.q;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.client.hook.g;
import java.lang.reflect.Method;
/* compiled from: JobServiceStub.java */
/* loaded from: classes.dex */
public class c extends com.xinzhu.overmind.client.hook.b {

    /* renamed from: f  reason: collision with root package name */
    public static final String f64159f = "JobServiceStub";

    /* compiled from: JobServiceStub.java */
    /* loaded from: classes.dex */
    class a extends g {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "schedule";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            args[0] = Overmind.getMindJobManager().f((JobInfo) args[0]);
            return method.invoke(who, args);
        }
    }

    /* compiled from: JobServiceStub.java */
    /* loaded from: classes.dex */
    class b extends g {
        b() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "enqueue";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            args[0] = Overmind.getMindJobManager().f((JobInfo) args[0]);
            return method.invoke(who, args);
        }
    }

    /* compiled from: JobServiceStub.java */
    /* renamed from: com.xinzhu.overmind.client.hook.proxies.app.c$c  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    class C0409c extends g {
        C0409c() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "cancel";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            args[0] = Integer.valueOf(Overmind.getMindJobManager().a(com.xinzhu.overmind.client.e.getClientConfig().f64269b, ((Integer) args[0]).intValue()));
            return method.invoke(who, args);
        }
    }

    /* compiled from: JobServiceStub.java */
    /* loaded from: classes.dex */
    class d extends g {
        d() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "cancelAll";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            Overmind.getMindJobManager().b(com.xinzhu.overmind.client.e.getClientConfig().f64269b);
            return method.invoke(who, args);
        }
    }

    public c() {
        super(q.h("jobscheduler"));
    }

    @Override // com.xinzhu.overmind.client.hook.e
    public boolean a() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected Object h() {
        return a.C0371a.a(q.h("jobscheduler"));
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected void i(Object baseInvocation, Object proxyInvocation) {
        m("jobscheduler");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.xinzhu.overmind.client.hook.b, com.xinzhu.overmind.client.hook.c
    public void k() {
        super.k();
        d(new a());
        d(new b());
        d(new C0409c());
        d(new d());
    }
}
