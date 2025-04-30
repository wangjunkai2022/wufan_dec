package com.nineoldandroids.view.animation;

import android.graphics.Camera;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.os.Build;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
/* compiled from: AnimatorProxy.java */
/* loaded from: classes4.dex */
public final class a extends Animation {

    /* renamed from: q  reason: collision with root package name */
    public static final boolean f54503q;

    /* renamed from: r  reason: collision with root package name */
    private static final WeakHashMap<View, a> f54504r;

    /* renamed from: a  reason: collision with root package name */
    private final WeakReference<View> f54505a;

    /* renamed from: c  reason: collision with root package name */
    private boolean f54507c;

    /* renamed from: e  reason: collision with root package name */
    private float f54509e;

    /* renamed from: f  reason: collision with root package name */
    private float f54510f;

    /* renamed from: g  reason: collision with root package name */
    private float f54511g;

    /* renamed from: h  reason: collision with root package name */
    private float f54512h;

    /* renamed from: i  reason: collision with root package name */
    private float f54513i;

    /* renamed from: l  reason: collision with root package name */
    private float f54516l;

    /* renamed from: m  reason: collision with root package name */
    private float f54517m;

    /* renamed from: b  reason: collision with root package name */
    private final Camera f54506b = new Camera();

    /* renamed from: d  reason: collision with root package name */
    private float f54508d = 1.0f;

    /* renamed from: j  reason: collision with root package name */
    private float f54514j = 1.0f;

    /* renamed from: k  reason: collision with root package name */
    private float f54515k = 1.0f;

    /* renamed from: n  reason: collision with root package name */
    private final RectF f54518n = new RectF();

    /* renamed from: o  reason: collision with root package name */
    private final RectF f54519o = new RectF();

    /* renamed from: p  reason: collision with root package name */
    private final Matrix f54520p = new Matrix();

    static {
        f54503q = Integer.valueOf(Build.VERSION.SDK).intValue() < 11;
        f54504r = new WeakHashMap<>();
    }

    private a(View view) {
        setDuration(0L);
        setFillAfter(true);
        view.setAnimation(this);
        this.f54505a = new WeakReference<>(view);
    }

    private void F(Matrix matrix, View view) {
        float width = view.getWidth();
        float height = view.getHeight();
        boolean z3 = this.f54507c;
        float f4 = z3 ? this.f54509e : width / 2.0f;
        float f5 = z3 ? this.f54510f : height / 2.0f;
        float f6 = this.f54511g;
        float f7 = this.f54512h;
        float f8 = this.f54513i;
        if (f6 != 0.0f || f7 != 0.0f || f8 != 0.0f) {
            Camera camera = this.f54506b;
            camera.save();
            camera.rotateX(f6);
            camera.rotateY(f7);
            camera.rotateZ(-f8);
            camera.getMatrix(matrix);
            camera.restore();
            matrix.preTranslate(-f4, -f5);
            matrix.postTranslate(f4, f5);
        }
        float f9 = this.f54514j;
        float f10 = this.f54515k;
        if (f9 != 1.0f || f10 != 1.0f) {
            matrix.postScale(f9, f10);
            matrix.postTranslate((-(f4 / width)) * ((f9 * width) - width), (-(f5 / height)) * ((f10 * height) - height));
        }
        matrix.postTranslate(this.f54516l, this.f54517m);
    }

    public static a G(View view) {
        WeakHashMap<View, a> weakHashMap = f54504r;
        a aVar = weakHashMap.get(view);
        if (aVar == null || aVar != view.getAnimation()) {
            a aVar2 = new a(view);
            weakHashMap.put(view, aVar2);
            return aVar2;
        }
        return aVar;
    }

    private void a(RectF rectF, View view) {
        rectF.set(0.0f, 0.0f, view.getWidth(), view.getHeight());
        Matrix matrix = this.f54520p;
        matrix.reset();
        F(matrix, view);
        this.f54520p.mapRect(rectF);
        rectF.offset(view.getLeft(), view.getTop());
        float f4 = rectF.right;
        float f5 = rectF.left;
        if (f4 < f5) {
            rectF.right = f5;
            rectF.left = f4;
        }
        float f6 = rectF.bottom;
        float f7 = rectF.top;
        if (f6 < f7) {
            rectF.top = f6;
            rectF.bottom = f7;
        }
    }

    private void p() {
        View view = this.f54505a.get();
        if (view == null || view.getParent() == null) {
            return;
        }
        RectF rectF = this.f54519o;
        a(rectF, view);
        rectF.union(this.f54518n);
        ((View) view.getParent()).invalidate((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
    }

    private void q() {
        View view = this.f54505a.get();
        if (view != null) {
            a(this.f54518n, view);
        }
    }

    public void A(int i2) {
        View view = this.f54505a.get();
        if (view != null) {
            view.scrollTo(view.getScrollX(), i2);
        }
    }

    public void B(float f4) {
        if (this.f54516l != f4) {
            q();
            this.f54516l = f4;
            p();
        }
    }

    public void C(float f4) {
        if (this.f54517m != f4) {
            q();
            this.f54517m = f4;
            p();
        }
    }

    public void D(float f4) {
        View view = this.f54505a.get();
        if (view != null) {
            B(f4 - view.getLeft());
        }
    }

    public void E(float f4) {
        View view = this.f54505a.get();
        if (view != null) {
            C(f4 - view.getTop());
        }
    }

    @Override // android.view.animation.Animation
    protected void applyTransformation(float f4, Transformation transformation) {
        View view = this.f54505a.get();
        if (view != null) {
            transformation.setAlpha(this.f54508d);
            F(transformation.getMatrix(), view);
        }
    }

    public float b() {
        return this.f54508d;
    }

    public float c() {
        return this.f54509e;
    }

    public float d() {
        return this.f54510f;
    }

    public float e() {
        return this.f54513i;
    }

    public float f() {
        return this.f54511g;
    }

    public float g() {
        return this.f54512h;
    }

    public float h() {
        return this.f54514j;
    }

    public float i() {
        return this.f54515k;
    }

    public int j() {
        View view = this.f54505a.get();
        if (view == null) {
            return 0;
        }
        return view.getScrollX();
    }

    public int k() {
        View view = this.f54505a.get();
        if (view == null) {
            return 0;
        }
        return view.getScrollY();
    }

    public float l() {
        return this.f54516l;
    }

    public float m() {
        return this.f54517m;
    }

    public float n() {
        View view = this.f54505a.get();
        if (view == null) {
            return 0.0f;
        }
        return view.getLeft() + this.f54516l;
    }

    public float o() {
        View view = this.f54505a.get();
        if (view == null) {
            return 0.0f;
        }
        return view.getTop() + this.f54517m;
    }

    public void r(float f4) {
        if (this.f54508d != f4) {
            this.f54508d = f4;
            View view = this.f54505a.get();
            if (view != null) {
                view.invalidate();
            }
        }
    }

    public void s(float f4) {
        if (this.f54507c && this.f54509e == f4) {
            return;
        }
        q();
        this.f54507c = true;
        this.f54509e = f4;
        p();
    }

    public void t(float f4) {
        if (this.f54507c && this.f54510f == f4) {
            return;
        }
        q();
        this.f54507c = true;
        this.f54510f = f4;
        p();
    }

    public void u(float f4) {
        if (this.f54513i != f4) {
            q();
            this.f54513i = f4;
            p();
        }
    }

    public void v(float f4) {
        if (this.f54511g != f4) {
            q();
            this.f54511g = f4;
            p();
        }
    }

    public void w(float f4) {
        if (this.f54512h != f4) {
            q();
            this.f54512h = f4;
            p();
        }
    }

    public void x(float f4) {
        if (this.f54514j != f4) {
            q();
            this.f54514j = f4;
            p();
        }
    }

    public void y(float f4) {
        if (this.f54515k != f4) {
            q();
            this.f54515k = f4;
            p();
        }
    }

    public void z(int i2) {
        View view = this.f54505a.get();
        if (view != null) {
            view.scrollTo(i2, view.getScrollY());
        }
    }
}
