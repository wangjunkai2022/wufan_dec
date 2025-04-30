package com.facebook.imagepipeline.animated.base;

import android.graphics.Bitmap;
import java.util.List;
import javax.annotation.Nullable;
/* compiled from: AnimatedImageResult.java */
/* loaded from: classes.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private final d f12408a;

    /* renamed from: b  reason: collision with root package name */
    private final int f12409b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private com.facebook.common.references.a<Bitmap> f12410c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private List<com.facebook.common.references.a<Bitmap>> f12411d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(g gVar) {
        this.f12408a = (d) com.facebook.common.internal.h.i(gVar.d());
        this.f12409b = gVar.c();
        this.f12410c = gVar.e();
        this.f12411d = gVar.b();
    }

    public static f b(d dVar) {
        return new f(dVar);
    }

    public static g h(d dVar) {
        return new g(dVar);
    }

    public synchronized void a() {
        com.facebook.common.references.a.g(this.f12410c);
        this.f12410c = null;
        com.facebook.common.references.a.h(this.f12411d);
        this.f12411d = null;
    }

    @Nullable
    public synchronized com.facebook.common.references.a<Bitmap> c(int i2) {
        List<com.facebook.common.references.a<Bitmap>> list = this.f12411d;
        if (list != null) {
            return com.facebook.common.references.a.d(list.get(i2));
        }
        return null;
    }

    public int d() {
        return this.f12409b;
    }

    public d e() {
        return this.f12408a;
    }

    public synchronized com.facebook.common.references.a<Bitmap> f() {
        return com.facebook.common.references.a.d(this.f12410c);
    }

    public synchronized boolean g(int i2) {
        boolean z3;
        List<com.facebook.common.references.a<Bitmap>> list = this.f12411d;
        if (list != null) {
            z3 = list.get(i2) != null;
        }
        return z3;
    }

    private f(d dVar) {
        this.f12408a = (d) com.facebook.common.internal.h.i(dVar);
        this.f12409b = 0;
    }
}
