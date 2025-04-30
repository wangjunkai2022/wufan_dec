package com.facebook.imagepipeline.animated.base;

import android.graphics.Bitmap;
import java.util.List;
/* compiled from: AnimatedImageResultBuilder.java */
/* loaded from: classes2.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private final d f12412a;

    /* renamed from: b  reason: collision with root package name */
    private com.facebook.common.references.a<Bitmap> f12413b;

    /* renamed from: c  reason: collision with root package name */
    private List<com.facebook.common.references.a<Bitmap>> f12414c;

    /* renamed from: d  reason: collision with root package name */
    private int f12415d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(d dVar) {
        this.f12412a = dVar;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.List<com.facebook.common.references.a<android.graphics.Bitmap>>, com.facebook.common.references.a<android.graphics.Bitmap>] */
    public f a() {
        try {
            return new f(this);
        } finally {
            com.facebook.common.references.a.g(this.f12413b);
            this.f12413b = null;
            com.facebook.common.references.a.h(this.f12414c);
            this.f12414c = null;
        }
    }

    public List<com.facebook.common.references.a<Bitmap>> b() {
        return com.facebook.common.references.a.e(this.f12414c);
    }

    public int c() {
        return this.f12415d;
    }

    public d d() {
        return this.f12412a;
    }

    public com.facebook.common.references.a<Bitmap> e() {
        return com.facebook.common.references.a.d(this.f12413b);
    }

    public g f(List<com.facebook.common.references.a<Bitmap>> list) {
        this.f12414c = com.facebook.common.references.a.e(list);
        return this;
    }

    public g g(int i2) {
        this.f12415d = i2;
        return this;
    }

    public g h(com.facebook.common.references.a<Bitmap> aVar) {
        this.f12413b = com.facebook.common.references.a.d(aVar);
        return this;
    }
}
