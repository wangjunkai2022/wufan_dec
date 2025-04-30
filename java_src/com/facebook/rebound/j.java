package com.facebook.rebound;

import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
/* compiled from: SpringChain.java */
/* loaded from: classes2.dex */
public class j implements m {

    /* renamed from: h  reason: collision with root package name */
    private static final int f13458h = 40;

    /* renamed from: i  reason: collision with root package name */
    private static final int f13459i = 6;

    /* renamed from: j  reason: collision with root package name */
    private static final int f13460j = 70;

    /* renamed from: k  reason: collision with root package name */
    private static final int f13461k = 10;

    /* renamed from: a  reason: collision with root package name */
    private final o f13463a;

    /* renamed from: b  reason: collision with root package name */
    private final CopyOnWriteArrayList<m> f13464b;

    /* renamed from: c  reason: collision with root package name */
    private final CopyOnWriteArrayList<i> f13465c;

    /* renamed from: d  reason: collision with root package name */
    private int f13466d;

    /* renamed from: e  reason: collision with root package name */
    private final k f13467e;

    /* renamed from: f  reason: collision with root package name */
    private final k f13468f;

    /* renamed from: g  reason: collision with root package name */
    private static final l f13457g = l.c();

    /* renamed from: l  reason: collision with root package name */
    private static int f13462l = 0;

    private j() {
        this(40, 6, 70, 10);
    }

    public static j f() {
        return new j();
    }

    public static j g(int i2, int i4, int i5, int i6) {
        return new j(i2, i4, i5, i6);
    }

    @Override // com.facebook.rebound.m
    public void a(i iVar) {
        int i2;
        int i4;
        int indexOf = this.f13465c.indexOf(iVar);
        m mVar = this.f13464b.get(indexOf);
        int i5 = this.f13466d;
        if (indexOf == i5) {
            i4 = indexOf - 1;
            i2 = indexOf + 1;
        } else if (indexOf < i5) {
            i4 = indexOf - 1;
            i2 = -1;
        } else {
            i2 = indexOf > i5 ? indexOf + 1 : -1;
            i4 = -1;
        }
        if (i2 > -1 && i2 < this.f13465c.size()) {
            this.f13465c.get(i2).x(iVar.f());
        }
        if (i4 > -1 && i4 < this.f13465c.size()) {
            this.f13465c.get(i4).x(iVar.f());
        }
        mVar.a(iVar);
    }

    @Override // com.facebook.rebound.m
    public void b(i iVar) {
        this.f13464b.get(this.f13465c.indexOf(iVar)).b(iVar);
    }

    @Override // com.facebook.rebound.m
    public void c(i iVar) {
        this.f13464b.get(this.f13465c.indexOf(iVar)).c(iVar);
    }

    @Override // com.facebook.rebound.m
    public void d(i iVar) {
        this.f13464b.get(this.f13465c.indexOf(iVar)).d(iVar);
    }

    public j e(m mVar) {
        this.f13465c.add(this.f13463a.d().a(this).B(this.f13468f));
        this.f13464b.add(mVar);
        return this;
    }

    public List<i> h() {
        return this.f13465c;
    }

    public k i() {
        return this.f13468f;
    }

    public i j() {
        return this.f13465c.get(this.f13466d);
    }

    public k k() {
        return this.f13467e;
    }

    public j l(int i2) {
        this.f13466d = i2;
        if (this.f13465c.get(i2) == null) {
            return null;
        }
        for (i iVar : this.f13463a.f()) {
            iVar.B(this.f13468f);
        }
        j().B(this.f13467e);
        return this;
    }

    private j(int i2, int i4, int i5, int i6) {
        this.f13463a = o.m();
        this.f13464b = new CopyOnWriteArrayList<>();
        this.f13465c = new CopyOnWriteArrayList<>();
        this.f13466d = -1;
        k b4 = k.b(i2, i4);
        this.f13467e = b4;
        k b5 = k.b(i5, i6);
        this.f13468f = b5;
        l lVar = f13457g;
        StringBuilder sb = new StringBuilder();
        sb.append("main spring ");
        int i7 = f13462l;
        f13462l = i7 + 1;
        sb.append(i7);
        lVar.a(b4, sb.toString());
        StringBuilder sb2 = new StringBuilder();
        sb2.append("attachment spring ");
        int i8 = f13462l;
        f13462l = i8 + 1;
        sb2.append(i8);
        lVar.a(b5, sb2.toString());
    }
}
