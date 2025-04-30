package com.xinzhu.overmind.server.am;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Binder;
import android.os.IBinder;
import android.os.RemoteException;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.client.stub.record.StubServiceRecord;
import com.xinzhu.overmind.entity.UnbindRecord;
import com.xinzhu.overmind.server.ProcessRecord;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: ActiveServices.java */
/* loaded from: classes3.dex */
public class a {

    /* renamed from: c  reason: collision with root package name */
    public static final String f64423c = "ActiveServices";

    /* renamed from: a  reason: collision with root package name */
    private final Map<Intent.FilterComparison, c> f64424a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private Map<IBinder, b> f64425b = new HashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ActiveServices.java */
    /* renamed from: com.xinzhu.overmind.server.am.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public class C0430a implements IBinder.DeathRecipient {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ IBinder f64426a;

        C0430a(final IBinder val$binder) {
            this.f64426a = val$binder;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            this.f64426a.unlinkToDeath(this, 0);
            a.this.f64425b.remove(this.f64426a);
        }
    }

    /* compiled from: ActiveServices.java */
    /* loaded from: classes3.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private IBinder f64428a;

        /* renamed from: b  reason: collision with root package name */
        private Intent f64429b;
    }

    /* compiled from: ActiveServices.java */
    /* loaded from: classes3.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        private AtomicInteger f64430a = new AtomicInteger(1);

        /* renamed from: b  reason: collision with root package name */
        private AtomicInteger f64431b = new AtomicInteger(0);

        /* renamed from: c  reason: collision with root package name */
        private b f64432c;

        /* renamed from: d  reason: collision with root package name */
        private Intent f64433d;

        public int g() {
            return this.f64431b.decrementAndGet();
        }

        public int h() {
            return this.f64430a.getAndIncrement();
        }

        public int i() {
            return this.f64431b.incrementAndGet();
        }
    }

    private Intent b(Intent targetIntent, ServiceInfo serviceInfo, ProcessRecord processRecord, int startId) {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName(processRecord.runWithPlugin ? Overmind.getPluginPkg() : Overmind.getMainPkg(), com.xinzhu.overmind.client.f.m(processRecord.vpid)));
        intent.setAction(UUID.randomUUID().toString());
        StubServiceRecord.saveStub(intent, targetIntent, serviceInfo, processRecord.userId, startId);
        return intent;
    }

    private b c(Intent intent) {
        c cVar = this.f64424a.get(intent);
        if (cVar == null) {
            return null;
        }
        return cVar.f64432c;
    }

    private c d(Intent intent) {
        return this.f64424a.get(new Intent.FilterComparison(intent));
    }

    private c e(Intent intent) {
        c d4 = d(intent);
        if (d4 == null) {
            c cVar = new c();
            this.f64424a.put(new Intent.FilterComparison(intent), cVar);
            return cVar;
        }
        return d4;
    }

    private ResolveInfo j(Intent intent, String resolvedType, int userId) {
        return com.xinzhu.overmind.server.pm.h.get().resolveService(intent, 0, resolvedType, userId);
    }

    public Intent bindService(Intent intent, final IBinder binder, String resolvedType, int userId) {
        c e4;
        ResolveInfo j4 = j(intent, resolvedType, userId);
        if (j4 == null) {
            return intent;
        }
        ServiceInfo serviceInfo = j4.serviceInfo;
        ProcessRecord p3 = com.xinzhu.overmind.server.d.d().p(serviceInfo.packageName, serviceInfo.processName, userId, -1, Binder.getCallingUid(), Binder.getCallingPid());
        if (p3 != null) {
            synchronized (this.f64424a) {
                e4 = e(intent);
                if (binder != null) {
                    b bVar = this.f64425b.get(binder);
                    boolean z3 = false;
                    if (bVar != null) {
                        z3 = true;
                    } else {
                        bVar = new b();
                        try {
                            binder.linkToDeath(new C0430a(binder), 0);
                        } catch (RemoteException e5) {
                            e5.printStackTrace();
                        }
                        bVar.f64428a = binder;
                        bVar.f64429b = intent;
                        this.f64425b.put(binder, bVar);
                    }
                    if (!z3) {
                        e4.i();
                    }
                    e4.f64432c = bVar;
                }
            }
            Intent b4 = b(intent, serviceInfo, p3, e4.f64430a.get());
            e4.f64433d = b4;
            return b4;
        }
        throw new RuntimeException("Unable to create " + serviceInfo.name);
    }

    public void f(Intent proxyIntent, int userId) {
        if (proxyIntent == null) {
            return;
        }
        this.f64424a.remove(new Intent.FilterComparison(StubServiceRecord.create(proxyIntent).mServiceIntent));
    }

    public UnbindRecord g(Intent proxyIntent, int userId) throws RemoteException {
        if (proxyIntent == null) {
            return null;
        }
        StubServiceRecord create = StubServiceRecord.create(proxyIntent);
        ComponentName component = create.mServiceIntent.getComponent();
        c d4 = d(create.mServiceIntent);
        if (d4 == null) {
            return null;
        }
        UnbindRecord unbindRecord = new UnbindRecord();
        unbindRecord.f(component);
        unbindRecord.e(d4.f64431b.get());
        unbindRecord.g(d4.f64430a.get());
        return unbindRecord;
    }

    public void h(Intent proxyIntent, int userId) {
    }

    public IBinder i(Intent intent, String resolvedType, int userId) {
        ResolveInfo j4 = j(intent, resolvedType, userId);
        if (j4 == null) {
            return null;
        }
        com.xinzhu.overmind.server.d d4 = com.xinzhu.overmind.server.d.d();
        ServiceInfo serviceInfo = j4.serviceInfo;
        ProcessRecord c4 = d4.c(serviceInfo.packageName, serviceInfo.processName, userId);
        if (c4 == null) {
            return null;
        }
        try {
            return c4.client.peekService(intent);
        } catch (RemoteException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public Intent startService(Intent intent, String resolvedType, int userId) {
        ResolveInfo j4 = j(intent, resolvedType, userId);
        if (j4 == null) {
            return null;
        }
        ServiceInfo serviceInfo = j4.serviceInfo;
        ProcessRecord p3 = com.xinzhu.overmind.server.d.d().p(serviceInfo.packageName, serviceInfo.processName, userId, -1, Binder.getCallingUid(), Binder.getCallingPid());
        if (p3 != null) {
            c e4 = e(intent);
            Intent b4 = b(intent, serviceInfo, p3, e4.h());
            e4.f64433d = b4;
            return b4;
        }
        throw new RuntimeException("Unable to create " + serviceInfo.name);
    }

    public Intent stopService(Intent intent, String resolvedType, int userId) {
        synchronized (this.f64424a) {
            c d4 = d(intent);
            if (d4 == null) {
                return null;
            }
            if (d4.f64431b.get() > 0) {
                return null;
            }
            d4.f64430a.set(0);
            return d4.f64433d;
        }
    }

    public void unbindService(IBinder binder, int userId) {
        b bVar = this.f64425b.get(binder);
        if (bVar == null) {
            return;
        }
        c e4 = e(bVar.f64429b);
        e4.f64432c = null;
        e4.f64431b.decrementAndGet();
        this.f64425b.remove(binder);
    }
}
