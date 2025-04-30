package com.facebook.drawee.controller;

import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import com.facebook.common.internal.g;
import com.facebook.common.internal.h;
import com.facebook.drawee.components.DraweeEventTracker;
import com.facebook.drawee.components.a;
import com.facebook.drawee.gestures.a;
import com.facebook.infer.annotation.ReturnsOwnership;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;
import javax.annotation.concurrent.NotThreadSafe;
/* compiled from: AbstractDraweeController.java */
@NotThreadSafe
/* loaded from: classes.dex */
public abstract class a<T, INFO> implements k0.a, a.b, a.InterfaceC0069a {

    /* renamed from: v  reason: collision with root package name */
    private static final Class<?> f11950v = a.class;

    /* renamed from: b  reason: collision with root package name */
    private final com.facebook.drawee.components.a f11952b;

    /* renamed from: c  reason: collision with root package name */
    private final Executor f11953c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private com.facebook.drawee.components.b f11954d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private com.facebook.drawee.gestures.a f11955e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private d f11956f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    protected c<INFO> f11957g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private k0.c f11958h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private Drawable f11959i;

    /* renamed from: j  reason: collision with root package name */
    private String f11960j;

    /* renamed from: k  reason: collision with root package name */
    private Object f11961k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f11962l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f11963m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f11964n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f11965o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f11966p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private String f11967q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private com.facebook.datasource.c<T> f11968r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private T f11969s;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    private Drawable f11970t;

    /* renamed from: a  reason: collision with root package name */
    private final DraweeEventTracker f11951a = DraweeEventTracker.b();

    /* renamed from: u  reason: collision with root package name */
    private boolean f11971u = true;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AbstractDraweeController.java */
    /* renamed from: com.facebook.drawee.controller.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public class C0067a extends com.facebook.datasource.b<T> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f11972a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f11973b;

        C0067a(String str, boolean z3) {
            this.f11972a = str;
            this.f11973b = z3;
        }

        @Override // com.facebook.datasource.b, com.facebook.datasource.e
        public void d(com.facebook.datasource.c<T> cVar) {
            boolean c4 = cVar.c();
            a.this.G(this.f11972a, cVar, cVar.getProgress(), c4);
        }

        @Override // com.facebook.datasource.b
        public void e(com.facebook.datasource.c<T> cVar) {
            a.this.D(this.f11972a, cVar, cVar.d(), true);
        }

        @Override // com.facebook.datasource.b
        public void f(com.facebook.datasource.c<T> cVar) {
            boolean c4 = cVar.c();
            boolean f4 = cVar.f();
            float progress = cVar.getProgress();
            T g4 = cVar.g();
            if (g4 != null) {
                a.this.F(this.f11972a, cVar, g4, progress, c4, this.f11973b, f4);
            } else if (c4) {
                a.this.D(this.f11972a, cVar, new NullPointerException(), true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AbstractDraweeController.java */
    /* loaded from: classes2.dex */
    public static class b<INFO> extends e<INFO> {
        private b() {
        }

        public static <INFO> b<INFO> n(c<? super INFO> cVar, c<? super INFO> cVar2) {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("AbstractDraweeController#createInternal");
            }
            b<INFO> bVar = new b<>();
            bVar.g(cVar);
            bVar.g(cVar2);
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
            return bVar;
        }
    }

    public a(com.facebook.drawee.components.a aVar, Executor executor, String str, Object obj) {
        this.f11952b = aVar;
        this.f11953c = executor;
        y(str, obj);
    }

    private boolean A(String str, com.facebook.datasource.c<T> cVar) {
        if (cVar == null && this.f11968r == null) {
            return true;
        }
        return str.equals(this.f11960j) && cVar == this.f11968r && this.f11963m;
    }

    private void B(String str, Throwable th) {
        if (com.facebook.common.logging.a.R(2)) {
            com.facebook.common.logging.a.Y(f11950v, "controller %x %s: %s: failure: %s", Integer.valueOf(System.identityHashCode(this)), this.f11960j, str, th);
        }
    }

    private void C(String str, T t3) {
        if (com.facebook.common.logging.a.R(2)) {
            com.facebook.common.logging.a.a0(f11950v, "controller %x %s: %s: image: %s %x", Integer.valueOf(System.identityHashCode(this)), this.f11960j, str, u(t3), Integer.valueOf(v(t3)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D(String str, com.facebook.datasource.c<T> cVar, Throwable th, boolean z3) {
        Drawable drawable;
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("AbstractDraweeController#onFailureInternal");
        }
        if (!A(str, cVar)) {
            B("ignore_old_datasource @ onFailure", th);
            cVar.close();
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
                return;
            }
            return;
        }
        this.f11951a.c(z3 ? DraweeEventTracker.Event.ON_DATASOURCE_FAILURE : DraweeEventTracker.Event.ON_DATASOURCE_FAILURE_INT);
        if (z3) {
            B("final_failed @ onFailure", th);
            this.f11968r = null;
            this.f11965o = true;
            if (this.f11966p && (drawable = this.f11970t) != null) {
                this.f11958h.d(drawable, 1.0f, true);
            } else if (Q()) {
                this.f11958h.a(th);
            } else {
                this.f11958h.setFailure(th);
            }
            p().b(this.f11960j, th);
        } else {
            B("intermediate_failed @ onFailure", th);
            p().f(this.f11960j, th);
        }
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void F(String str, com.facebook.datasource.c<T> cVar, @Nullable T t3, float f4, boolean z3, boolean z4, boolean z5) {
        try {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("AbstractDraweeController#onNewResultInternal");
            }
            if (!A(str, cVar)) {
                C("ignore_old_datasource @ onNewResult", t3);
                J(t3);
                cVar.close();
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.c();
                    return;
                }
                return;
            }
            this.f11951a.c(z3 ? DraweeEventTracker.Event.ON_DATASOURCE_RESULT : DraweeEventTracker.Event.ON_DATASOURCE_RESULT_INT);
            try {
                Drawable m4 = m(t3);
                T t4 = this.f11969s;
                Drawable drawable = this.f11970t;
                this.f11969s = t3;
                this.f11970t = m4;
                if (z3) {
                    C("set_final_result @ onNewResult", t3);
                    this.f11968r = null;
                    this.f11958h.d(m4, 1.0f, z4);
                    p().d(str, w(t3), f());
                } else if (z5) {
                    C("set_temporary_result @ onNewResult", t3);
                    this.f11958h.d(m4, 1.0f, z4);
                    p().d(str, w(t3), f());
                } else {
                    C("set_intermediate_result @ onNewResult", t3);
                    this.f11958h.d(m4, f4, z4);
                    p().a(str, w(t3));
                }
                if (drawable != null && drawable != m4) {
                    H(drawable);
                }
                if (t4 != null && t4 != t3) {
                    C("release_previous_result @ onNewResult", t4);
                    J(t4);
                }
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.c();
                }
            } catch (Exception e4) {
                C("drawable_failed @ onNewResult", t3);
                J(t3);
                D(str, cVar, e4, z3);
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.c();
                }
            }
        } catch (Throwable th) {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void G(String str, com.facebook.datasource.c<T> cVar, float f4, boolean z3) {
        if (!A(str, cVar)) {
            B("ignore_old_datasource @ onProgress", null);
            cVar.close();
        } else if (z3) {
        } else {
            this.f11958h.b(f4, false);
        }
    }

    private void I() {
        boolean z3 = this.f11963m;
        this.f11963m = false;
        this.f11965o = false;
        com.facebook.datasource.c<T> cVar = this.f11968r;
        if (cVar != null) {
            cVar.close();
            this.f11968r = null;
        }
        Drawable drawable = this.f11970t;
        if (drawable != null) {
            H(drawable);
        }
        if (this.f11967q != null) {
            this.f11967q = null;
        }
        this.f11970t = null;
        T t3 = this.f11969s;
        if (t3 != null) {
            C("release", t3);
            J(this.f11969s);
            this.f11969s = null;
        }
        if (z3) {
            p().c(this.f11960j);
        }
    }

    private boolean Q() {
        com.facebook.drawee.components.b bVar;
        return this.f11965o && (bVar = this.f11954d) != null && bVar.h();
    }

    private synchronized void y(String str, Object obj) {
        com.facebook.drawee.components.a aVar;
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("AbstractDraweeController#init");
        }
        this.f11951a.c(DraweeEventTracker.Event.ON_INIT_CONTROLLER);
        if (!this.f11971u && (aVar = this.f11952b) != null) {
            aVar.c(this);
        }
        this.f11962l = false;
        this.f11964n = false;
        I();
        this.f11966p = false;
        com.facebook.drawee.components.b bVar = this.f11954d;
        if (bVar != null) {
            bVar.a();
        }
        com.facebook.drawee.gestures.a aVar2 = this.f11955e;
        if (aVar2 != null) {
            aVar2.a();
            this.f11955e.f(this);
        }
        c<INFO> cVar = this.f11957g;
        if (cVar instanceof b) {
            ((b) cVar).h();
        } else {
            this.f11957g = null;
        }
        this.f11956f = null;
        k0.c cVar2 = this.f11958h;
        if (cVar2 != null) {
            cVar2.reset();
            this.f11958h.e(null);
            this.f11958h = null;
        }
        this.f11959i = null;
        if (com.facebook.common.logging.a.R(2)) {
            com.facebook.common.logging.a.X(f11950v, "controller %x %s -> %s: initialize", Integer.valueOf(System.identityHashCode(this)), this.f11960j, str);
        }
        this.f11960j = str;
        this.f11961k = obj;
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void E(String str, T t3) {
    }

    protected abstract void H(@Nullable Drawable drawable);

    protected abstract void J(@Nullable T t3);

    public void K(c<? super INFO> cVar) {
        h.i(cVar);
        c<INFO> cVar2 = this.f11957g;
        if (cVar2 instanceof b) {
            ((b) cVar2).m(cVar);
        } else if (cVar2 == cVar) {
            this.f11957g = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void L(@Nullable Drawable drawable) {
        this.f11959i = drawable;
        k0.c cVar = this.f11958h;
        if (cVar != null) {
            cVar.e(drawable);
        }
    }

    public void M(@Nullable d dVar) {
        this.f11956f = dVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void N(@Nullable com.facebook.drawee.gestures.a aVar) {
        this.f11955e = aVar;
        if (aVar != null) {
            aVar.f(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void O(boolean z3) {
        this.f11966p = z3;
    }

    protected boolean P() {
        return Q();
    }

    protected void R() {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("AbstractDraweeController#submitRequest");
        }
        T n4 = n();
        if (n4 != null) {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("AbstractDraweeController#submitRequest->cache");
            }
            this.f11968r = null;
            this.f11963m = true;
            this.f11965o = false;
            this.f11951a.c(DraweeEventTracker.Event.ON_SUBMIT_CACHE_HIT);
            p().e(this.f11960j, this.f11961k);
            E(this.f11960j, n4);
            F(this.f11960j, this.f11968r, n4, 1.0f, true, true, true);
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
                return;
            }
            return;
        }
        this.f11951a.c(DraweeEventTracker.Event.ON_DATASOURCE_SUBMIT);
        p().e(this.f11960j, this.f11961k);
        this.f11958h.b(0.0f, true);
        this.f11963m = true;
        this.f11965o = false;
        this.f11968r = r();
        if (com.facebook.common.logging.a.R(2)) {
            com.facebook.common.logging.a.X(f11950v, "controller %x %s: submitRequest: dataSource: %x", Integer.valueOf(System.identityHashCode(this)), this.f11960j, Integer.valueOf(System.identityHashCode(this.f11968r)));
        }
        this.f11968r.e(new C0067a(this.f11960j, this.f11968r.a()), this.f11953c);
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
    }

    @Override // k0.a
    public void a(@Nullable k0.b bVar) {
        if (com.facebook.common.logging.a.R(2)) {
            com.facebook.common.logging.a.X(f11950v, "controller %x %s: setHierarchy: %s", Integer.valueOf(System.identityHashCode(this)), this.f11960j, bVar);
        }
        this.f11951a.c(bVar != null ? DraweeEventTracker.Event.ON_SET_HIERARCHY : DraweeEventTracker.Event.ON_CLEAR_HIERARCHY);
        if (this.f11963m) {
            this.f11952b.c(this);
            release();
        }
        k0.c cVar = this.f11958h;
        if (cVar != null) {
            cVar.e(null);
            this.f11958h = null;
        }
        if (bVar != null) {
            h.d(bVar instanceof k0.c);
            k0.c cVar2 = (k0.c) bVar;
            this.f11958h = cVar2;
            cVar2.e(this.f11959i);
        }
    }

    @Override // k0.a
    public void b() {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("AbstractDraweeController#onAttach");
        }
        if (com.facebook.common.logging.a.R(2)) {
            com.facebook.common.logging.a.X(f11950v, "controller %x %s: onAttach: %s", Integer.valueOf(System.identityHashCode(this)), this.f11960j, this.f11963m ? "request already submitted" : "request needs submit");
        }
        this.f11951a.c(DraweeEventTracker.Event.ON_ATTACH_CONTROLLER);
        h.i(this.f11958h);
        this.f11952b.c(this);
        this.f11962l = true;
        if (!this.f11963m) {
            R();
        }
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
    }

    @Override // k0.a
    public void c(@Nullable String str) {
        this.f11967q = str;
    }

    @Override // k0.a
    public void d() {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("AbstractDraweeController#onDetach");
        }
        if (com.facebook.common.logging.a.R(2)) {
            com.facebook.common.logging.a.W(f11950v, "controller %x %s: onDetach", Integer.valueOf(System.identityHashCode(this)), this.f11960j);
        }
        this.f11951a.c(DraweeEventTracker.Event.ON_DETACH_CONTROLLER);
        this.f11962l = false;
        this.f11952b.f(this);
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
    }

    @Override // k0.a
    @Nullable
    public k0.b e() {
        return this.f11958h;
    }

    @Override // k0.a
    @Nullable
    public Animatable f() {
        Drawable drawable = this.f11970t;
        if (drawable instanceof Animatable) {
            return (Animatable) drawable;
        }
        return null;
    }

    @Override // k0.a
    public void g(boolean z3) {
        d dVar = this.f11956f;
        if (dVar != null) {
            if (z3 && !this.f11964n) {
                dVar.b(this.f11960j);
            } else if (!z3 && this.f11964n) {
                dVar.a(this.f11960j);
            }
        }
        this.f11964n = z3;
    }

    @Override // k0.a
    @Nullable
    public String getContentDescription() {
        return this.f11967q;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void l(c<? super INFO> cVar) {
        h.i(cVar);
        c<INFO> cVar2 = this.f11957g;
        if (cVar2 instanceof b) {
            ((b) cVar2).g(cVar);
        } else if (cVar2 != null) {
            this.f11957g = b.n(cVar2, cVar);
        } else {
            this.f11957g = cVar;
        }
    }

    protected abstract Drawable m(T t3);

    @Nullable
    protected T n() {
        return null;
    }

    public Object o() {
        return this.f11961k;
    }

    @Override // com.facebook.drawee.gestures.a.InterfaceC0069a
    public boolean onClick() {
        if (com.facebook.common.logging.a.R(2)) {
            com.facebook.common.logging.a.W(f11950v, "controller %x %s: onClick", Integer.valueOf(System.identityHashCode(this)), this.f11960j);
        }
        if (Q()) {
            this.f11954d.d();
            this.f11958h.reset();
            R();
            return true;
        }
        return false;
    }

    @Override // k0.a
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (com.facebook.common.logging.a.R(2)) {
            com.facebook.common.logging.a.X(f11950v, "controller %x %s: onTouchEvent %s", Integer.valueOf(System.identityHashCode(this)), this.f11960j, motionEvent);
        }
        com.facebook.drawee.gestures.a aVar = this.f11955e;
        if (aVar == null) {
            return false;
        }
        if (aVar.b() || P()) {
            this.f11955e.d(motionEvent);
            return true;
        }
        return false;
    }

    protected c<INFO> p() {
        c<INFO> cVar = this.f11957g;
        return cVar == null ? com.facebook.drawee.controller.b.g() : cVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public Drawable q() {
        return this.f11959i;
    }

    protected abstract com.facebook.datasource.c<T> r();

    @Override // com.facebook.drawee.components.a.b
    public void release() {
        this.f11951a.c(DraweeEventTracker.Event.ON_RELEASE_CONTROLLER);
        com.facebook.drawee.components.b bVar = this.f11954d;
        if (bVar != null) {
            bVar.e();
        }
        com.facebook.drawee.gestures.a aVar = this.f11955e;
        if (aVar != null) {
            aVar.e();
        }
        k0.c cVar = this.f11958h;
        if (cVar != null) {
            cVar.reset();
        }
        I();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public com.facebook.drawee.gestures.a s() {
        return this.f11955e;
    }

    public String t() {
        return this.f11960j;
    }

    public String toString() {
        return g.f(this).g("isAttached", this.f11962l).g("isRequestSubmitted", this.f11963m).g("hasFetchFailed", this.f11965o).d("fetchedImage", v(this.f11969s)).f(com.umeng.analytics.pro.c.ar, this.f11951a.toString()).toString();
    }

    protected String u(@Nullable T t3) {
        return t3 != null ? t3.getClass().getSimpleName() : "<null>";
    }

    protected int v(@Nullable T t3) {
        return System.identityHashCode(t3);
    }

    @Nullable
    protected abstract INFO w(T t3);

    /* JADX INFO: Access modifiers changed from: protected */
    @ReturnsOwnership
    public com.facebook.drawee.components.b x() {
        if (this.f11954d == null) {
            this.f11954d = new com.facebook.drawee.components.b();
        }
        return this.f11954d;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void z(String str, Object obj) {
        y(str, obj);
        this.f11971u = false;
    }
}
