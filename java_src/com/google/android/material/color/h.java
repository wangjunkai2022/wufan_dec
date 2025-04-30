package com.google.android.material.color;

import android.app.Activity;
import androidx.annotation.NonNull;
import androidx.annotation.StyleRes;
import com.google.android.material.color.g;
/* compiled from: DynamicColorsOptions.java */
/* loaded from: classes2.dex */
public class h {

    /* renamed from: d  reason: collision with root package name */
    private static final g.f f14590d = new a();

    /* renamed from: e  reason: collision with root package name */
    private static final g.e f14591e = new b();
    @StyleRes

    /* renamed from: a  reason: collision with root package name */
    private final int f14592a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final g.f f14593b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final g.e f14594c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DynamicColorsOptions.java */
    /* loaded from: classes2.dex */
    public class a implements g.f {
        a() {
        }

        @Override // com.google.android.material.color.g.f
        public boolean a(@NonNull Activity activity, int i2) {
            return true;
        }
    }

    /* compiled from: DynamicColorsOptions.java */
    /* loaded from: classes2.dex */
    class b implements g.e {
        b() {
        }

        @Override // com.google.android.material.color.g.e
        public void a(@NonNull Activity activity) {
        }
    }

    /* compiled from: DynamicColorsOptions.java */
    /* loaded from: classes2.dex */
    public static class c {
        @StyleRes

        /* renamed from: a  reason: collision with root package name */
        private int f14595a;
        @NonNull

        /* renamed from: b  reason: collision with root package name */
        private g.f f14596b = h.f14590d;
        @NonNull

        /* renamed from: c  reason: collision with root package name */
        private g.e f14597c = h.f14591e;

        @NonNull
        public h d() {
            return new h(this, null);
        }

        @NonNull
        public c e(@NonNull g.e eVar) {
            this.f14597c = eVar;
            return this;
        }

        @NonNull
        public c f(@NonNull g.f fVar) {
            this.f14596b = fVar;
            return this;
        }

        @NonNull
        public c g(@StyleRes int i2) {
            this.f14595a = i2;
            return this;
        }
    }

    /* synthetic */ h(c cVar, a aVar) {
        this(cVar);
    }

    @NonNull
    public g.e c() {
        return this.f14594c;
    }

    @NonNull
    public g.f d() {
        return this.f14593b;
    }

    @StyleRes
    public int e() {
        return this.f14592a;
    }

    private h(c cVar) {
        this.f14592a = cVar.f14595a;
        this.f14593b = cVar.f14596b;
        this.f14594c = cVar.f14597c;
    }
}
