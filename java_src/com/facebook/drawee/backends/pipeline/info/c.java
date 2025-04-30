package com.facebook.drawee.backends.pipeline.info;

import android.graphics.Rect;
import java.util.LinkedList;
import java.util.List;
import javax.annotation.Nullable;
/* compiled from: ImagePerfMonitor.java */
/* loaded from: classes.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private final com.facebook.drawee.backends.pipeline.d f11882a;

    /* renamed from: b  reason: collision with root package name */
    private final com.facebook.common.time.c f11883b;

    /* renamed from: c  reason: collision with root package name */
    private final d f11884c = new d();
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private a f11885d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private h0.b f11886e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private i0.c f11887f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private i0.a f11888g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private r0.b f11889h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private List<h0.d> f11890i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f11891j;

    public c(com.facebook.common.time.c cVar, com.facebook.drawee.backends.pipeline.d dVar) {
        this.f11883b = cVar;
        this.f11882a = dVar;
    }

    private void i() {
        if (this.f11888g == null) {
            this.f11888g = new i0.a(this.f11883b, this.f11884c, this);
        }
        if (this.f11887f == null) {
            this.f11887f = new i0.c(this.f11883b, this.f11884c);
        }
        if (this.f11886e == null) {
            this.f11886e = new i0.b(this.f11884c, this);
        }
        a aVar = this.f11885d;
        if (aVar == null) {
            this.f11885d = new a(this.f11882a.t(), this.f11886e);
        } else {
            aVar.l(this.f11882a.t());
        }
        if (this.f11889h == null) {
            this.f11889h = new r0.b(this.f11887f, this.f11885d);
        }
    }

    public void a(@Nullable h0.d dVar) {
        if (dVar == null) {
            return;
        }
        if (this.f11890i == null) {
            this.f11890i = new LinkedList();
        }
        this.f11890i.add(dVar);
    }

    public void b() {
        k0.b e4 = this.f11882a.e();
        if (e4 == null || e4.c() == null) {
            return;
        }
        Rect bounds = e4.c().getBounds();
        this.f11884c.s(bounds.width());
        this.f11884c.r(bounds.height());
    }

    public void c() {
        List<h0.d> list = this.f11890i;
        if (list != null) {
            list.clear();
        }
    }

    public void d(d dVar, int i2) {
        List<h0.d> list;
        if (!this.f11891j || (list = this.f11890i) == null || list.isEmpty()) {
            return;
        }
        b x3 = dVar.x();
        for (h0.d dVar2 : this.f11890i) {
            dVar2.b(x3, i2);
        }
    }

    public void e(d dVar, int i2) {
        List<h0.d> list;
        dVar.l(i2);
        if (!this.f11891j || (list = this.f11890i) == null || list.isEmpty()) {
            return;
        }
        if (i2 == 3) {
            b();
        }
        b x3 = dVar.x();
        for (h0.d dVar2 : this.f11890i) {
            dVar2.a(x3, i2);
        }
    }

    public void f(h0.d dVar) {
        List<h0.d> list = this.f11890i;
        if (list == null) {
            return;
        }
        list.remove(dVar);
    }

    public void g() {
        c();
        h(false);
        this.f11884c.b();
    }

    public void h(boolean z3) {
        this.f11891j = z3;
        if (z3) {
            i();
            h0.b bVar = this.f11886e;
            if (bVar != null) {
                this.f11882a.S(bVar);
            }
            i0.a aVar = this.f11888g;
            if (aVar != null) {
                this.f11882a.l(aVar);
            }
            r0.b bVar2 = this.f11889h;
            if (bVar2 != null) {
                this.f11882a.T(bVar2);
                return;
            }
            return;
        }
        h0.b bVar3 = this.f11886e;
        if (bVar3 != null) {
            this.f11882a.j0(bVar3);
        }
        i0.a aVar2 = this.f11888g;
        if (aVar2 != null) {
            this.f11882a.K(aVar2);
        }
        r0.b bVar4 = this.f11889h;
        if (bVar4 != null) {
            this.f11882a.k0(bVar4);
        }
    }
}
