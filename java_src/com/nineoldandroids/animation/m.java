package com.nineoldandroids.animation;

import android.view.View;
import androidx.constraintlayout.motion.widget.Key;
/* compiled from: PreHoneycombCompat.java */
/* loaded from: classes4.dex */
final class m {

    /* renamed from: a  reason: collision with root package name */
    static com.nineoldandroids.util.c<View, Float> f54429a = new f("alpha");

    /* renamed from: b  reason: collision with root package name */
    static com.nineoldandroids.util.c<View, Float> f54430b = new g("pivotX");

    /* renamed from: c  reason: collision with root package name */
    static com.nineoldandroids.util.c<View, Float> f54431c = new h("pivotY");

    /* renamed from: d  reason: collision with root package name */
    static com.nineoldandroids.util.c<View, Float> f54432d = new i("translationX");

    /* renamed from: e  reason: collision with root package name */
    static com.nineoldandroids.util.c<View, Float> f54433e = new j("translationY");

    /* renamed from: f  reason: collision with root package name */
    static com.nineoldandroids.util.c<View, Float> f54434f = new k(Key.ROTATION);

    /* renamed from: g  reason: collision with root package name */
    static com.nineoldandroids.util.c<View, Float> f54435g = new l("rotationX");

    /* renamed from: h  reason: collision with root package name */
    static com.nineoldandroids.util.c<View, Float> f54436h = new C0261m("rotationY");

    /* renamed from: i  reason: collision with root package name */
    static com.nineoldandroids.util.c<View, Float> f54437i = new n("scaleX");

    /* renamed from: j  reason: collision with root package name */
    static com.nineoldandroids.util.c<View, Float> f54438j = new a("scaleY");

    /* renamed from: k  reason: collision with root package name */
    static com.nineoldandroids.util.c<View, Integer> f54439k = new b("scrollX");

    /* renamed from: l  reason: collision with root package name */
    static com.nineoldandroids.util.c<View, Integer> f54440l = new c("scrollY");

    /* renamed from: m  reason: collision with root package name */
    static com.nineoldandroids.util.c<View, Float> f54441m = new d("x");

    /* renamed from: n  reason: collision with root package name */
    static com.nineoldandroids.util.c<View, Float> f54442n = new e("y");

    /* compiled from: PreHoneycombCompat.java */
    /* loaded from: classes4.dex */
    static class a extends com.nineoldandroids.util.a<View> {
        a(String str) {
            super(str);
        }

        @Override // com.nineoldandroids.util.c
        /* renamed from: h */
        public Float a(View view) {
            return Float.valueOf(com.nineoldandroids.view.animation.a.G(view).i());
        }

        @Override // com.nineoldandroids.util.a
        /* renamed from: i */
        public void g(View view, float f4) {
            com.nineoldandroids.view.animation.a.G(view).y(f4);
        }
    }

    /* compiled from: PreHoneycombCompat.java */
    /* loaded from: classes4.dex */
    static class b extends com.nineoldandroids.util.b<View> {
        b(String str) {
            super(str);
        }

        @Override // com.nineoldandroids.util.c
        /* renamed from: h */
        public Integer a(View view) {
            return Integer.valueOf(com.nineoldandroids.view.animation.a.G(view).j());
        }

        @Override // com.nineoldandroids.util.b
        /* renamed from: i */
        public void g(View view, int i2) {
            com.nineoldandroids.view.animation.a.G(view).z(i2);
        }
    }

    /* compiled from: PreHoneycombCompat.java */
    /* loaded from: classes4.dex */
    static class c extends com.nineoldandroids.util.b<View> {
        c(String str) {
            super(str);
        }

        @Override // com.nineoldandroids.util.c
        /* renamed from: h */
        public Integer a(View view) {
            return Integer.valueOf(com.nineoldandroids.view.animation.a.G(view).k());
        }

        @Override // com.nineoldandroids.util.b
        /* renamed from: i */
        public void g(View view, int i2) {
            com.nineoldandroids.view.animation.a.G(view).A(i2);
        }
    }

    /* compiled from: PreHoneycombCompat.java */
    /* loaded from: classes4.dex */
    static class d extends com.nineoldandroids.util.a<View> {
        d(String str) {
            super(str);
        }

        @Override // com.nineoldandroids.util.c
        /* renamed from: h */
        public Float a(View view) {
            return Float.valueOf(com.nineoldandroids.view.animation.a.G(view).n());
        }

        @Override // com.nineoldandroids.util.a
        /* renamed from: i */
        public void g(View view, float f4) {
            com.nineoldandroids.view.animation.a.G(view).D(f4);
        }
    }

    /* compiled from: PreHoneycombCompat.java */
    /* loaded from: classes4.dex */
    static class e extends com.nineoldandroids.util.a<View> {
        e(String str) {
            super(str);
        }

        @Override // com.nineoldandroids.util.c
        /* renamed from: h */
        public Float a(View view) {
            return Float.valueOf(com.nineoldandroids.view.animation.a.G(view).o());
        }

        @Override // com.nineoldandroids.util.a
        /* renamed from: i */
        public void g(View view, float f4) {
            com.nineoldandroids.view.animation.a.G(view).E(f4);
        }
    }

    /* compiled from: PreHoneycombCompat.java */
    /* loaded from: classes4.dex */
    static class f extends com.nineoldandroids.util.a<View> {
        f(String str) {
            super(str);
        }

        @Override // com.nineoldandroids.util.c
        /* renamed from: h */
        public Float a(View view) {
            return Float.valueOf(com.nineoldandroids.view.animation.a.G(view).b());
        }

        @Override // com.nineoldandroids.util.a
        /* renamed from: i */
        public void g(View view, float f4) {
            com.nineoldandroids.view.animation.a.G(view).r(f4);
        }
    }

    /* compiled from: PreHoneycombCompat.java */
    /* loaded from: classes4.dex */
    static class g extends com.nineoldandroids.util.a<View> {
        g(String str) {
            super(str);
        }

        @Override // com.nineoldandroids.util.c
        /* renamed from: h */
        public Float a(View view) {
            return Float.valueOf(com.nineoldandroids.view.animation.a.G(view).c());
        }

        @Override // com.nineoldandroids.util.a
        /* renamed from: i */
        public void g(View view, float f4) {
            com.nineoldandroids.view.animation.a.G(view).s(f4);
        }
    }

    /* compiled from: PreHoneycombCompat.java */
    /* loaded from: classes4.dex */
    static class h extends com.nineoldandroids.util.a<View> {
        h(String str) {
            super(str);
        }

        @Override // com.nineoldandroids.util.c
        /* renamed from: h */
        public Float a(View view) {
            return Float.valueOf(com.nineoldandroids.view.animation.a.G(view).d());
        }

        @Override // com.nineoldandroids.util.a
        /* renamed from: i */
        public void g(View view, float f4) {
            com.nineoldandroids.view.animation.a.G(view).t(f4);
        }
    }

    /* compiled from: PreHoneycombCompat.java */
    /* loaded from: classes4.dex */
    static class i extends com.nineoldandroids.util.a<View> {
        i(String str) {
            super(str);
        }

        @Override // com.nineoldandroids.util.c
        /* renamed from: h */
        public Float a(View view) {
            return Float.valueOf(com.nineoldandroids.view.animation.a.G(view).l());
        }

        @Override // com.nineoldandroids.util.a
        /* renamed from: i */
        public void g(View view, float f4) {
            com.nineoldandroids.view.animation.a.G(view).B(f4);
        }
    }

    /* compiled from: PreHoneycombCompat.java */
    /* loaded from: classes4.dex */
    static class j extends com.nineoldandroids.util.a<View> {
        j(String str) {
            super(str);
        }

        @Override // com.nineoldandroids.util.c
        /* renamed from: h */
        public Float a(View view) {
            return Float.valueOf(com.nineoldandroids.view.animation.a.G(view).m());
        }

        @Override // com.nineoldandroids.util.a
        /* renamed from: i */
        public void g(View view, float f4) {
            com.nineoldandroids.view.animation.a.G(view).C(f4);
        }
    }

    /* compiled from: PreHoneycombCompat.java */
    /* loaded from: classes4.dex */
    static class k extends com.nineoldandroids.util.a<View> {
        k(String str) {
            super(str);
        }

        @Override // com.nineoldandroids.util.c
        /* renamed from: h */
        public Float a(View view) {
            return Float.valueOf(com.nineoldandroids.view.animation.a.G(view).e());
        }

        @Override // com.nineoldandroids.util.a
        /* renamed from: i */
        public void g(View view, float f4) {
            com.nineoldandroids.view.animation.a.G(view).u(f4);
        }
    }

    /* compiled from: PreHoneycombCompat.java */
    /* loaded from: classes4.dex */
    static class l extends com.nineoldandroids.util.a<View> {
        l(String str) {
            super(str);
        }

        @Override // com.nineoldandroids.util.c
        /* renamed from: h */
        public Float a(View view) {
            return Float.valueOf(com.nineoldandroids.view.animation.a.G(view).f());
        }

        @Override // com.nineoldandroids.util.a
        /* renamed from: i */
        public void g(View view, float f4) {
            com.nineoldandroids.view.animation.a.G(view).v(f4);
        }
    }

    /* compiled from: PreHoneycombCompat.java */
    /* renamed from: com.nineoldandroids.animation.m$m  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    static class C0261m extends com.nineoldandroids.util.a<View> {
        C0261m(String str) {
            super(str);
        }

        @Override // com.nineoldandroids.util.c
        /* renamed from: h */
        public Float a(View view) {
            return Float.valueOf(com.nineoldandroids.view.animation.a.G(view).g());
        }

        @Override // com.nineoldandroids.util.a
        /* renamed from: i */
        public void g(View view, float f4) {
            com.nineoldandroids.view.animation.a.G(view).w(f4);
        }
    }

    /* compiled from: PreHoneycombCompat.java */
    /* loaded from: classes4.dex */
    static class n extends com.nineoldandroids.util.a<View> {
        n(String str) {
            super(str);
        }

        @Override // com.nineoldandroids.util.c
        /* renamed from: h */
        public Float a(View view) {
            return Float.valueOf(com.nineoldandroids.view.animation.a.G(view).h());
        }

        @Override // com.nineoldandroids.util.a
        /* renamed from: i */
        public void g(View view, float f4) {
            com.nineoldandroids.view.animation.a.G(view).x(f4);
        }
    }

    private m() {
    }
}
