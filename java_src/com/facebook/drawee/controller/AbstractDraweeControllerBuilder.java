package com.facebook.drawee.controller;

import android.content.Context;
import android.graphics.drawable.Animatable;
import com.facebook.common.internal.g;
import com.facebook.common.internal.h;
import com.facebook.common.internal.k;
import com.facebook.datasource.f;
import com.facebook.drawee.controller.AbstractDraweeControllerBuilder;
import com.facebook.infer.annotation.ReturnsOwnership;
import java.util.ArrayList;
import java.util.Set;
import java.util.concurrent.atomic.AtomicLong;
import javax.annotation.Nullable;
/* loaded from: classes.dex */
public abstract class AbstractDraweeControllerBuilder<BUILDER extends AbstractDraweeControllerBuilder<BUILDER, REQUEST, IMAGE, INFO>, REQUEST, IMAGE, INFO> implements k0.d {

    /* renamed from: p  reason: collision with root package name */
    private static final c<Object> f11926p = new a();

    /* renamed from: q  reason: collision with root package name */
    private static final NullPointerException f11927q = new NullPointerException("No image request was specified!");

    /* renamed from: r  reason: collision with root package name */
    private static final AtomicLong f11928r = new AtomicLong();

    /* renamed from: a  reason: collision with root package name */
    private final Context f11929a;

    /* renamed from: b  reason: collision with root package name */
    private final Set<c> f11930b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private Object f11931c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private REQUEST f11932d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private REQUEST f11933e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private REQUEST[] f11934f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f11935g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private k<com.facebook.datasource.c<IMAGE>> f11936h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private c<? super INFO> f11937i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private d f11938j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f11939k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f11940l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f11941m;

    /* renamed from: n  reason: collision with root package name */
    private String f11942n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private k0.a f11943o;

    /* loaded from: classes2.dex */
    public enum CacheLevel {
        FULL_FETCH,
        DISK_CACHE,
        BITMAP_MEMORY_CACHE
    }

    /* loaded from: classes.dex */
    static class a extends com.facebook.drawee.controller.b<Object> {
        a() {
        }

        @Override // com.facebook.drawee.controller.b, com.facebook.drawee.controller.c
        public void d(String str, @Nullable Object obj, @Nullable Animatable animatable) {
            if (animatable != null) {
                animatable.start();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b implements k<com.facebook.datasource.c<IMAGE>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ k0.a f11944a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f11945b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Object f11946c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ Object f11947d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ CacheLevel f11948e;

        b(k0.a aVar, String str, Object obj, Object obj2, CacheLevel cacheLevel) {
            this.f11944a = aVar;
            this.f11945b = str;
            this.f11946c = obj;
            this.f11947d = obj2;
            this.f11948e = cacheLevel;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.facebook.common.internal.k
        /* renamed from: a */
        public com.facebook.datasource.c<IMAGE> get() {
            return AbstractDraweeControllerBuilder.this.l(this.f11944a, this.f11945b, this.f11946c, this.f11947d, this.f11948e);
        }

        public String toString() {
            return g.f(this).f("request", this.f11946c.toString()).toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractDraweeControllerBuilder(Context context, Set<c> set) {
        this.f11929a = context;
        this.f11930b = set;
        x();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String f() {
        return String.valueOf(f11928r.getAndIncrement());
    }

    private void x() {
        this.f11931c = null;
        this.f11932d = null;
        this.f11933e = null;
        this.f11934f = null;
        this.f11935g = true;
        this.f11937i = null;
        this.f11938j = null;
        this.f11939k = false;
        this.f11940l = false;
        this.f11943o = null;
        this.f11942n = null;
    }

    protected void A(com.facebook.drawee.controller.a aVar) {
        if (this.f11939k) {
            aVar.x().g(this.f11939k);
            z(aVar);
        }
    }

    @ReturnsOwnership
    protected abstract com.facebook.drawee.controller.a B();

    /* JADX INFO: Access modifiers changed from: protected */
    public k<com.facebook.datasource.c<IMAGE>> C(k0.a aVar, String str) {
        k<com.facebook.datasource.c<IMAGE>> kVar = this.f11936h;
        if (kVar != null) {
            return kVar;
        }
        k<com.facebook.datasource.c<IMAGE>> kVar2 = null;
        REQUEST request = this.f11932d;
        if (request != null) {
            kVar2 = n(aVar, str, request);
        } else {
            REQUEST[] requestArr = this.f11934f;
            if (requestArr != null) {
                kVar2 = p(aVar, str, requestArr, this.f11935g);
            }
        }
        if (kVar2 != null && this.f11933e != null) {
            ArrayList arrayList = new ArrayList(2);
            arrayList.add(kVar2);
            arrayList.add(n(aVar, str, this.f11933e));
            kVar2 = com.facebook.datasource.g.d(arrayList, false);
        }
        return kVar2 == null ? com.facebook.datasource.d.a(f11927q) : kVar2;
    }

    public BUILDER D() {
        x();
        return w();
    }

    public BUILDER E(boolean z3) {
        this.f11940l = z3;
        return w();
    }

    @Override // k0.d
    /* renamed from: F */
    public BUILDER b(Object obj) {
        this.f11931c = obj;
        return w();
    }

    public BUILDER G(String str) {
        this.f11942n = str;
        return w();
    }

    public BUILDER H(@Nullable c<? super INFO> cVar) {
        this.f11937i = cVar;
        return w();
    }

    public BUILDER I(@Nullable d dVar) {
        this.f11938j = dVar;
        return w();
    }

    public BUILDER J(@Nullable k<com.facebook.datasource.c<IMAGE>> kVar) {
        this.f11936h = kVar;
        return w();
    }

    public BUILDER K(REQUEST[] requestArr) {
        return L(requestArr, true);
    }

    public BUILDER L(REQUEST[] requestArr, boolean z3) {
        h.e(requestArr == null || requestArr.length > 0, "No requests specified!");
        this.f11934f = requestArr;
        this.f11935g = z3;
        return w();
    }

    public BUILDER M(REQUEST request) {
        this.f11932d = request;
        return w();
    }

    public BUILDER N(REQUEST request) {
        this.f11933e = request;
        return w();
    }

    @Override // k0.d
    /* renamed from: O */
    public BUILDER c(@Nullable k0.a aVar) {
        this.f11943o = aVar;
        return w();
    }

    public BUILDER P(boolean z3) {
        this.f11941m = z3;
        return w();
    }

    public BUILDER Q(boolean z3) {
        this.f11939k = z3;
        return w();
    }

    protected void R() {
        boolean z3 = false;
        h.p(this.f11934f == null || this.f11932d == null, "Cannot specify both ImageRequest and FirstAvailableImageRequests!");
        if (this.f11936h == null || (this.f11934f == null && this.f11932d == null && this.f11933e == null)) {
            z3 = true;
        }
        h.p(z3, "Cannot specify DataSourceSupplier with other ImageRequests! Use one or the other.");
    }

    @Override // k0.d
    /* renamed from: d */
    public com.facebook.drawee.controller.a build() {
        REQUEST request;
        R();
        if (this.f11932d == null && this.f11934f == null && (request = this.f11933e) != null) {
            this.f11932d = request;
            this.f11933e = null;
        }
        return e();
    }

    protected com.facebook.drawee.controller.a e() {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("AbstractDraweeControllerBuilder#buildController");
        }
        com.facebook.drawee.controller.a B = B();
        B.O(u());
        B.c(i());
        B.M(k());
        A(B);
        y(B);
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
        return B;
    }

    public boolean g() {
        return this.f11940l;
    }

    protected Context getContext() {
        return this.f11929a;
    }

    @Nullable
    public Object h() {
        return this.f11931c;
    }

    @Nullable
    public String i() {
        return this.f11942n;
    }

    @Nullable
    public c<? super INFO> j() {
        return this.f11937i;
    }

    @Nullable
    public d k() {
        return this.f11938j;
    }

    protected abstract com.facebook.datasource.c<IMAGE> l(k0.a aVar, String str, REQUEST request, Object obj, CacheLevel cacheLevel);

    @Nullable
    public k<com.facebook.datasource.c<IMAGE>> m() {
        return this.f11936h;
    }

    protected k<com.facebook.datasource.c<IMAGE>> n(k0.a aVar, String str, REQUEST request) {
        return o(aVar, str, request, CacheLevel.FULL_FETCH);
    }

    protected k<com.facebook.datasource.c<IMAGE>> o(k0.a aVar, String str, REQUEST request, CacheLevel cacheLevel) {
        return new b(aVar, str, request, h(), cacheLevel);
    }

    protected k<com.facebook.datasource.c<IMAGE>> p(k0.a aVar, String str, REQUEST[] requestArr, boolean z3) {
        ArrayList arrayList = new ArrayList(requestArr.length * 2);
        if (z3) {
            for (REQUEST request : requestArr) {
                arrayList.add(o(aVar, str, request, CacheLevel.BITMAP_MEMORY_CACHE));
            }
        }
        for (REQUEST request2 : requestArr) {
            arrayList.add(n(aVar, str, request2));
        }
        return f.b(arrayList);
    }

    @Nullable
    public REQUEST[] q() {
        return this.f11934f;
    }

    @Nullable
    public REQUEST r() {
        return this.f11932d;
    }

    @Nullable
    public REQUEST s() {
        return this.f11933e;
    }

    @Nullable
    public k0.a t() {
        return this.f11943o;
    }

    public boolean u() {
        return this.f11941m;
    }

    public boolean v() {
        return this.f11939k;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final BUILDER w() {
        return this;
    }

    protected void y(com.facebook.drawee.controller.a aVar) {
        Set<c> set = this.f11930b;
        if (set != null) {
            for (c cVar : set) {
                aVar.l(cVar);
            }
        }
        c<? super INFO> cVar2 = this.f11937i;
        if (cVar2 != null) {
            aVar.l(cVar2);
        }
        if (this.f11940l) {
            aVar.l(f11926p);
        }
    }

    protected void z(com.facebook.drawee.controller.a aVar) {
        if (aVar.s() == null) {
            aVar.N(com.facebook.drawee.gestures.a.c(this.f11929a));
        }
    }
}
