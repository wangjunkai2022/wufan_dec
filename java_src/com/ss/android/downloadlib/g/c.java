package com.ss.android.downloadlib.g;

import java.lang.ref.SoftReference;
/* compiled from: Chain.java */
/* loaded from: classes4.dex */
public class c<P, R> implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private P f57507a;

    /* renamed from: b  reason: collision with root package name */
    private R f57508b;

    /* renamed from: c  reason: collision with root package name */
    private int f57509c;

    /* renamed from: d  reason: collision with root package name */
    private SoftReference<a<P, R>> f57510d;

    /* renamed from: e  reason: collision with root package name */
    private c<?, P> f57511e;

    /* renamed from: f  reason: collision with root package name */
    private c<R, ?> f57512f;

    /* compiled from: Chain.java */
    /* loaded from: classes4.dex */
    public interface a<PARAM, RESULT> {
        RESULT a(PARAM param);
    }

    private c(int i2, a<P, R> aVar, P p3) {
        this.f57509c = i2;
        this.f57510d = new SoftReference<>(aVar);
        this.f57507a = p3;
    }

    public static <P, R> c<P, R> a(a<P, R> aVar, P p3) {
        return new c<>(2, aVar, p3);
    }

    private R b() {
        return this.f57508b;
    }

    @Override // java.lang.Runnable
    public void run() {
        c<?, P> cVar;
        if (this.f57509c == 0 && !l.a()) {
            com.ss.android.downloadlib.f.a().b().post(this);
        } else if (this.f57509c == 1 && l.a()) {
            com.ss.android.downloadlib.d.a().a(this);
        } else if (this.f57509c == 2 && l.a()) {
            com.ss.android.downloadlib.d.a().b(this);
        } else {
            if (this.f57507a == null && (cVar = this.f57511e) != null) {
                this.f57507a = cVar.b();
            }
            a<P, R> aVar = this.f57510d.get();
            if (aVar == null) {
                return;
            }
            this.f57508b = aVar.a(this.f57507a);
            c<R, ?> cVar2 = this.f57512f;
            if (cVar2 != null) {
                cVar2.run();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <NR> c<R, NR> a(int i2, a<R, NR> aVar) {
        c cVar = (c<R, ?>) new c(i2, aVar, null);
        this.f57512f = cVar;
        cVar.f57511e = this;
        return cVar;
    }

    public <NR> c<R, NR> a(a<R, NR> aVar) {
        return a(0, aVar);
    }

    public void a() {
        c<?, P> cVar = this.f57511e;
        if (cVar != null) {
            cVar.a();
        } else {
            run();
        }
    }
}
