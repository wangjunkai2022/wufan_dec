package com.xinzhu.overmind.client.service;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: ServiceRecord.java */
/* loaded from: classes3.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private Service f64243a;

    /* renamed from: b  reason: collision with root package name */
    private Map<Intent.FilterComparison, b> f64244b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    private boolean f64245c;

    /* renamed from: d  reason: collision with root package name */
    private int f64246d;

    /* compiled from: ServiceRecord.java */
    /* renamed from: com.xinzhu.overmind.client.service.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    class C0426a implements IBinder.DeathRecipient {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ IBinder f64247a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Intent.FilterComparison f64248b;

        C0426a(final IBinder val$iBinder, final Intent.FilterComparison val$filterComparison) {
            this.f64247a = val$iBinder;
            this.f64248b = val$filterComparison;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            this.f64247a.unlinkToDeath(this, 0);
            a.this.f64244b.remove(this.f64248b);
        }
    }

    /* compiled from: ServiceRecord.java */
    /* loaded from: classes3.dex */
    public class b {

        /* renamed from: a  reason: collision with root package name */
        private IBinder f64250a;

        /* renamed from: b  reason: collision with root package name */
        private AtomicInteger f64251b = new AtomicInteger(0);

        public b() {
        }

        public int a() {
            return this.f64251b.decrementAndGet();
        }

        public int b() {
            return this.f64251b.get();
        }

        public IBinder c() {
            return this.f64250a;
        }

        public int d() {
            return this.f64251b.incrementAndGet();
        }

        public void e(IBinder IBinder) {
            this.f64250a = IBinder;
        }
    }

    public void b(Intent intent, final IBinder iBinder) {
        Intent.FilterComparison filterComparison = new Intent.FilterComparison(intent);
        b f4 = f(intent);
        if (f4 == null) {
            f4 = new b();
            this.f64244b.put(filterComparison, f4);
        }
        f4.e(iBinder);
        try {
            iBinder.linkToDeath(new C0426a(iBinder, filterComparison), 0);
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    public boolean c(Intent intent) {
        b bVar = this.f64244b.get(new Intent.FilterComparison(intent));
        return bVar == null || bVar.a() <= 0;
    }

    public int d(Intent intent) {
        return f(intent).b();
    }

    public IBinder e(Intent intent) {
        return f(intent).c();
    }

    public b f(Intent intent) {
        Intent.FilterComparison filterComparison = new Intent.FilterComparison(intent);
        b bVar = this.f64244b.get(filterComparison);
        if (bVar == null) {
            b bVar2 = new b();
            this.f64244b.put(filterComparison, bVar2);
            return bVar2;
        }
        return bVar;
    }

    public Service g() {
        return this.f64243a;
    }

    public int h() {
        return this.f64246d;
    }

    public boolean i(Intent intent) {
        return f(intent).c() != null;
    }

    public int j(Intent intent) {
        return f(intent).d();
    }

    public boolean k() {
        return this.f64245c;
    }

    public void l(boolean rebind) {
        this.f64245c = rebind;
    }

    public void m(Service service) {
        this.f64243a = service;
    }

    public void n(int startId) {
        this.f64246d = startId;
    }
}
