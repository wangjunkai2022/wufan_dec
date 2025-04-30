package com.facebook.imagepipeline.core;

import android.content.Context;
import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.common.webp.b;
import com.facebook.imagepipeline.cache.p;
import com.facebook.imagepipeline.core.ImagePipelineConfig;
/* compiled from: ImagePipelineExperiments.java */
/* loaded from: classes2.dex */
public class h {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f12614a;

    /* renamed from: b  reason: collision with root package name */
    private final b.a f12615b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f12616c;

    /* renamed from: d  reason: collision with root package name */
    private final com.facebook.common.webp.b f12617d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f12618e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f12619f;

    /* renamed from: g  reason: collision with root package name */
    private final int f12620g;

    /* renamed from: h  reason: collision with root package name */
    private final int f12621h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f12622i;

    /* renamed from: j  reason: collision with root package name */
    private final int f12623j;

    /* renamed from: k  reason: collision with root package name */
    private final boolean f12624k;

    /* renamed from: l  reason: collision with root package name */
    private final boolean f12625l;

    /* renamed from: m  reason: collision with root package name */
    private final d f12626m;

    /* renamed from: n  reason: collision with root package name */
    private final com.facebook.common.internal.k<Boolean> f12627n;

    /* renamed from: o  reason: collision with root package name */
    private final boolean f12628o;

    /* compiled from: ImagePipelineExperiments.java */
    /* loaded from: classes2.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private final ImagePipelineConfig.Builder f12629a;

        /* renamed from: c  reason: collision with root package name */
        private b.a f12631c;

        /* renamed from: e  reason: collision with root package name */
        private com.facebook.common.webp.b f12633e;

        /* renamed from: n  reason: collision with root package name */
        private d f12642n;

        /* renamed from: o  reason: collision with root package name */
        public com.facebook.common.internal.k<Boolean> f12643o;

        /* renamed from: p  reason: collision with root package name */
        public boolean f12644p;

        /* renamed from: b  reason: collision with root package name */
        private boolean f12630b = false;

        /* renamed from: d  reason: collision with root package name */
        private boolean f12632d = false;

        /* renamed from: f  reason: collision with root package name */
        private boolean f12634f = false;

        /* renamed from: g  reason: collision with root package name */
        private boolean f12635g = false;

        /* renamed from: h  reason: collision with root package name */
        private int f12636h = 0;

        /* renamed from: i  reason: collision with root package name */
        private int f12637i = 0;

        /* renamed from: j  reason: collision with root package name */
        public boolean f12638j = false;

        /* renamed from: k  reason: collision with root package name */
        private int f12639k = 2048;

        /* renamed from: l  reason: collision with root package name */
        private boolean f12640l = false;

        /* renamed from: m  reason: collision with root package name */
        private boolean f12641m = false;

        public b(ImagePipelineConfig.Builder builder) {
            this.f12629a = builder;
        }

        public h m() {
            return new h(this);
        }

        public boolean n() {
            return this.f12641m;
        }

        public ImagePipelineConfig.Builder o(boolean z3, int i2, int i4, boolean z4) {
            this.f12635g = z3;
            this.f12636h = i2;
            this.f12637i = i4;
            this.f12638j = z4;
            return this.f12629a;
        }

        public ImagePipelineConfig.Builder p(boolean z3) {
            this.f12632d = z3;
            return this.f12629a;
        }

        public ImagePipelineConfig.Builder q(boolean z3) {
            this.f12644p = z3;
            return this.f12629a;
        }

        public ImagePipelineConfig.Builder r(com.facebook.common.internal.k<Boolean> kVar) {
            this.f12643o = kVar;
            return this.f12629a;
        }

        public ImagePipelineConfig.Builder s(int i2) {
            this.f12639k = i2;
            return this.f12629a;
        }

        public ImagePipelineConfig.Builder t(boolean z3) {
            this.f12640l = z3;
            return this.f12629a;
        }

        public ImagePipelineConfig.Builder u(boolean z3) {
            this.f12641m = z3;
            return this.f12629a;
        }

        public ImagePipelineConfig.Builder v(d dVar) {
            this.f12642n = dVar;
            return this.f12629a;
        }

        public ImagePipelineConfig.Builder w(boolean z3) {
            this.f12634f = z3;
            return this.f12629a;
        }

        public ImagePipelineConfig.Builder x(com.facebook.common.webp.b bVar) {
            this.f12633e = bVar;
            return this.f12629a;
        }

        public ImagePipelineConfig.Builder y(b.a aVar) {
            this.f12631c = aVar;
            return this.f12629a;
        }

        public ImagePipelineConfig.Builder z(boolean z3) {
            this.f12630b = z3;
            return this.f12629a;
        }
    }

    /* compiled from: ImagePipelineExperiments.java */
    /* loaded from: classes2.dex */
    public static class c implements d {
        @Override // com.facebook.imagepipeline.core.h.d
        public k a(Context context, com.facebook.common.memory.a aVar, com.facebook.imagepipeline.decoder.b bVar, com.facebook.imagepipeline.decoder.d dVar, boolean z3, boolean z4, boolean z5, e eVar, com.facebook.common.memory.g gVar, p<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> pVar, p<com.facebook.cache.common.c, PooledByteBuffer> pVar2, com.facebook.imagepipeline.cache.e eVar2, com.facebook.imagepipeline.cache.e eVar3, com.facebook.imagepipeline.cache.f fVar, com.facebook.imagepipeline.bitmaps.f fVar2, int i2, int i4, boolean z6, int i5) {
            return new k(context, aVar, bVar, dVar, z3, z4, z5, eVar, gVar, pVar, pVar2, eVar2, eVar3, fVar, fVar2, i2, i4, z6, i5);
        }
    }

    /* compiled from: ImagePipelineExperiments.java */
    /* loaded from: classes2.dex */
    public interface d {
        k a(Context context, com.facebook.common.memory.a aVar, com.facebook.imagepipeline.decoder.b bVar, com.facebook.imagepipeline.decoder.d dVar, boolean z3, boolean z4, boolean z5, e eVar, com.facebook.common.memory.g gVar, p<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> pVar, p<com.facebook.cache.common.c, PooledByteBuffer> pVar2, com.facebook.imagepipeline.cache.e eVar2, com.facebook.imagepipeline.cache.e eVar3, com.facebook.imagepipeline.cache.f fVar, com.facebook.imagepipeline.bitmaps.f fVar2, int i2, int i4, boolean z6, int i5);
    }

    public static b p(ImagePipelineConfig.Builder builder) {
        return new b(builder);
    }

    public boolean a() {
        return this.f12622i;
    }

    public int b() {
        return this.f12621h;
    }

    public int c() {
        return this.f12620g;
    }

    public int d() {
        return this.f12623j;
    }

    public d e() {
        return this.f12626m;
    }

    public boolean f() {
        return this.f12619f;
    }

    public boolean g() {
        return this.f12618e;
    }

    public com.facebook.common.webp.b h() {
        return this.f12617d;
    }

    public b.a i() {
        return this.f12615b;
    }

    public boolean j() {
        return this.f12616c;
    }

    public boolean k() {
        return this.f12628o;
    }

    public com.facebook.common.internal.k<Boolean> l() {
        return this.f12627n;
    }

    public boolean m() {
        return this.f12624k;
    }

    public boolean n() {
        return this.f12625l;
    }

    public boolean o() {
        return this.f12614a;
    }

    private h(b bVar) {
        this.f12614a = bVar.f12630b;
        this.f12615b = bVar.f12631c;
        this.f12616c = bVar.f12632d;
        this.f12617d = bVar.f12633e;
        this.f12618e = bVar.f12634f;
        this.f12619f = bVar.f12635g;
        this.f12620g = bVar.f12636h;
        this.f12621h = bVar.f12637i;
        this.f12622i = bVar.f12638j;
        this.f12623j = bVar.f12639k;
        this.f12624k = bVar.f12640l;
        this.f12625l = bVar.f12641m;
        if (bVar.f12642n != null) {
            this.f12626m = bVar.f12642n;
        } else {
            this.f12626m = new c();
        }
        this.f12627n = bVar.f12643o;
        this.f12628o = bVar.f12644p;
    }
}
