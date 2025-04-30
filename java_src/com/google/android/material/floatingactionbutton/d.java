package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.FloatEvaluator;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.animation.TypeEvaluator;
import android.animation.ValueAnimator;
import android.content.res.ColorStateList;
import android.graphics.Matrix;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.util.Preconditions;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.q;
import java.util.ArrayList;
import java.util.Iterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FloatingActionButtonImpl.java */
/* loaded from: classes2.dex */
public class d {
    static final long E = 100;
    static final long F = 100;
    static final int G = 0;
    static final int H = 1;
    static final int I = 2;
    static final float J = 1.5f;
    private static final float K = 0.0f;
    private static final float L = 0.4f;
    private static final float M = 0.4f;
    private static final float N = 1.0f;
    private static final float O = 1.0f;
    private static final float P = 1.0f;
    private static final float Q = 0.0f;
    private static final float R = 0.0f;
    @Nullable
    private ViewTreeObserver.OnPreDrawListener C;
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    com.google.android.material.shape.m f14960a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    MaterialShapeDrawable f14961b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    Drawable f14962c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    com.google.android.material.floatingactionbutton.c f14963d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    Drawable f14964e;

    /* renamed from: f  reason: collision with root package name */
    boolean f14965f;

    /* renamed from: h  reason: collision with root package name */
    float f14967h;

    /* renamed from: i  reason: collision with root package name */
    float f14968i;

    /* renamed from: j  reason: collision with root package name */
    float f14969j;

    /* renamed from: k  reason: collision with root package name */
    int f14970k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    private final com.google.android.material.internal.k f14971l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private Animator f14972m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private com.google.android.material.animation.h f14973n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private com.google.android.material.animation.h f14974o;

    /* renamed from: p  reason: collision with root package name */
    private float f14975p;

    /* renamed from: r  reason: collision with root package name */
    private int f14977r;

    /* renamed from: t  reason: collision with root package name */
    private ArrayList<Animator.AnimatorListener> f14979t;

    /* renamed from: u  reason: collision with root package name */
    private ArrayList<Animator.AnimatorListener> f14980u;

    /* renamed from: v  reason: collision with root package name */
    private ArrayList<j> f14981v;

    /* renamed from: w  reason: collision with root package name */
    final FloatingActionButton f14982w;

    /* renamed from: x  reason: collision with root package name */
    final com.google.android.material.shadow.c f14983x;
    static final TimeInterpolator D = com.google.android.material.animation.a.f14006c;
    static final int[] S = {16842919, 16842910};
    static final int[] T = {16843623, 16842908, 16842910};
    static final int[] U = {16842908, 16842910};
    static final int[] V = {16843623, 16842910};
    static final int[] W = {16842910};
    static final int[] X = new int[0];

    /* renamed from: g  reason: collision with root package name */
    boolean f14966g = true;

    /* renamed from: q  reason: collision with root package name */
    private float f14976q = 1.0f;

    /* renamed from: s  reason: collision with root package name */
    private int f14978s = 0;

    /* renamed from: y  reason: collision with root package name */
    private final Rect f14984y = new Rect();

    /* renamed from: z  reason: collision with root package name */
    private final RectF f14985z = new RectF();
    private final RectF A = new RectF();
    private final Matrix B = new Matrix();

    /* compiled from: FloatingActionButtonImpl.java */
    /* loaded from: classes2.dex */
    class a extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        private boolean f14986a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f14987b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ k f14988c;

        a(boolean z3, k kVar) {
            this.f14987b = z3;
            this.f14988c = kVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f14986a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            d.this.f14978s = 0;
            d.this.f14972m = null;
            if (this.f14986a) {
                return;
            }
            FloatingActionButton floatingActionButton = d.this.f14982w;
            boolean z3 = this.f14987b;
            floatingActionButton.c(z3 ? 8 : 4, z3);
            k kVar = this.f14988c;
            if (kVar != null) {
                kVar.onHidden();
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            d.this.f14982w.c(0, this.f14987b);
            d.this.f14978s = 1;
            d.this.f14972m = animator;
            this.f14986a = false;
        }
    }

    /* compiled from: FloatingActionButtonImpl.java */
    /* loaded from: classes2.dex */
    class b extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f14990a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ k f14991b;

        b(boolean z3, k kVar) {
            this.f14990a = z3;
            this.f14991b = kVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            d.this.f14978s = 0;
            d.this.f14972m = null;
            k kVar = this.f14991b;
            if (kVar != null) {
                kVar.onShown();
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            d.this.f14982w.c(0, this.f14990a);
            d.this.f14978s = 2;
            d.this.f14972m = animator;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FloatingActionButtonImpl.java */
    /* loaded from: classes2.dex */
    public class c extends com.google.android.material.animation.g {
        c() {
        }

        @Override // com.google.android.material.animation.g, android.animation.TypeEvaluator
        /* renamed from: a */
        public Matrix evaluate(float f4, @NonNull Matrix matrix, @NonNull Matrix matrix2) {
            d.this.f14976q = f4;
            return super.evaluate(f4, matrix, matrix2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FloatingActionButtonImpl.java */
    /* renamed from: com.google.android.material.floatingactionbutton.d$d  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public class C0107d implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ float f14994a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ float f14995b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ float f14996c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ float f14997d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ float f14998e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ float f14999f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ float f15000g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ Matrix f15001h;

        C0107d(float f4, float f5, float f6, float f7, float f8, float f9, float f10, Matrix matrix) {
            this.f14994a = f4;
            this.f14995b = f5;
            this.f14996c = f6;
            this.f14997d = f7;
            this.f14998e = f8;
            this.f14999f = f9;
            this.f15000g = f10;
            this.f15001h = matrix;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            d.this.f14982w.setAlpha(com.google.android.material.animation.a.b(this.f14994a, this.f14995b, 0.0f, 0.2f, floatValue));
            d.this.f14982w.setScaleX(com.google.android.material.animation.a.a(this.f14996c, this.f14997d, floatValue));
            d.this.f14982w.setScaleY(com.google.android.material.animation.a.a(this.f14998e, this.f14997d, floatValue));
            d.this.f14976q = com.google.android.material.animation.a.a(this.f14999f, this.f15000g, floatValue);
            d.this.h(com.google.android.material.animation.a.a(this.f14999f, this.f15000g, floatValue), this.f15001h);
            d.this.f14982w.setImageMatrix(this.f15001h);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FloatingActionButtonImpl.java */
    /* loaded from: classes2.dex */
    public class e implements TypeEvaluator<Float> {

        /* renamed from: a  reason: collision with root package name */
        FloatEvaluator f15003a = new FloatEvaluator();

        e() {
        }

        @Override // android.animation.TypeEvaluator
        /* renamed from: a */
        public Float evaluate(float f4, Float f5, Float f6) {
            float floatValue = this.f15003a.evaluate(f4, (Number) f5, (Number) f6).floatValue();
            if (floatValue < 0.1f) {
                floatValue = 0.0f;
            }
            return Float.valueOf(floatValue);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FloatingActionButtonImpl.java */
    /* loaded from: classes2.dex */
    public class f implements ViewTreeObserver.OnPreDrawListener {
        f() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            d.this.H();
            return true;
        }
    }

    /* compiled from: FloatingActionButtonImpl.java */
    /* loaded from: classes2.dex */
    private class g extends m {
        g() {
            super(d.this, null);
        }

        @Override // com.google.android.material.floatingactionbutton.d.m
        protected float a() {
            return 0.0f;
        }
    }

    /* compiled from: FloatingActionButtonImpl.java */
    /* loaded from: classes2.dex */
    private class h extends m {
        h() {
            super(d.this, null);
        }

        @Override // com.google.android.material.floatingactionbutton.d.m
        protected float a() {
            d dVar = d.this;
            return dVar.f14967h + dVar.f14968i;
        }
    }

    /* compiled from: FloatingActionButtonImpl.java */
    /* loaded from: classes2.dex */
    private class i extends m {
        i() {
            super(d.this, null);
        }

        @Override // com.google.android.material.floatingactionbutton.d.m
        protected float a() {
            d dVar = d.this;
            return dVar.f14967h + dVar.f14969j;
        }
    }

    /* compiled from: FloatingActionButtonImpl.java */
    /* loaded from: classes2.dex */
    interface j {
        void a();

        void b();
    }

    /* compiled from: FloatingActionButtonImpl.java */
    /* loaded from: classes2.dex */
    interface k {
        void onHidden();

        void onShown();
    }

    /* compiled from: FloatingActionButtonImpl.java */
    /* loaded from: classes2.dex */
    private class l extends m {
        l() {
            super(d.this, null);
        }

        @Override // com.google.android.material.floatingactionbutton.d.m
        protected float a() {
            return d.this.f14967h;
        }
    }

    /* compiled from: FloatingActionButtonImpl.java */
    /* loaded from: classes2.dex */
    private abstract class m extends AnimatorListenerAdapter implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a  reason: collision with root package name */
        private boolean f15010a;

        /* renamed from: b  reason: collision with root package name */
        private float f15011b;

        /* renamed from: c  reason: collision with root package name */
        private float f15012c;

        private m() {
        }

        protected abstract float a();

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            d.this.j0((int) this.f15012c);
            this.f15010a = false;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            if (!this.f15010a) {
                MaterialShapeDrawable materialShapeDrawable = d.this.f14961b;
                this.f15011b = materialShapeDrawable == null ? 0.0f : materialShapeDrawable.x();
                this.f15012c = a();
                this.f15010a = true;
            }
            d dVar = d.this;
            float f4 = this.f15011b;
            dVar.j0((int) (f4 + ((this.f15012c - f4) * valueAnimator.getAnimatedFraction())));
        }

        /* synthetic */ m(d dVar, a aVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(FloatingActionButton floatingActionButton, com.google.android.material.shadow.c cVar) {
        this.f14982w = floatingActionButton;
        this.f14983x = cVar;
        com.google.android.material.internal.k kVar = new com.google.android.material.internal.k();
        this.f14971l = kVar;
        kVar.a(S, k(new i()));
        kVar.a(T, k(new h()));
        kVar.a(U, k(new h()));
        kVar.a(V, k(new h()));
        kVar.a(W, k(new l()));
        kVar.a(X, k(new g()));
        this.f14975p = floatingActionButton.getRotation();
    }

    private boolean d0() {
        return ViewCompat.isLaidOut(this.f14982w) && !this.f14982w.isInEditMode();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h(float f4, @NonNull Matrix matrix) {
        matrix.reset();
        Drawable drawable = this.f14982w.getDrawable();
        if (drawable == null || this.f14977r == 0) {
            return;
        }
        RectF rectF = this.f14985z;
        RectF rectF2 = this.A;
        rectF.set(0.0f, 0.0f, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        int i2 = this.f14977r;
        rectF2.set(0.0f, 0.0f, i2, i2);
        matrix.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.CENTER);
        int i4 = this.f14977r;
        matrix.postScale(f4, f4, i4 / 2.0f, i4 / 2.0f);
    }

    @NonNull
    private AnimatorSet i(@NonNull com.google.android.material.animation.h hVar, float f4, float f5, float f6) {
        ArrayList arrayList = new ArrayList();
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.f14982w, View.ALPHA, f4);
        hVar.h("opacity").a(ofFloat);
        arrayList.add(ofFloat);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.f14982w, View.SCALE_X, f5);
        hVar.h("scale").a(ofFloat2);
        k0(ofFloat2);
        arrayList.add(ofFloat2);
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(this.f14982w, View.SCALE_Y, f5);
        hVar.h("scale").a(ofFloat3);
        k0(ofFloat3);
        arrayList.add(ofFloat3);
        h(f6, this.B);
        ObjectAnimator ofObject = ObjectAnimator.ofObject(this.f14982w, new com.google.android.material.animation.f(), new c(), new Matrix(this.B));
        hVar.h("iconScale").a(ofObject);
        arrayList.add(ofObject);
        AnimatorSet animatorSet = new AnimatorSet();
        com.google.android.material.animation.b.a(animatorSet, arrayList);
        return animatorSet;
    }

    private AnimatorSet j(float f4, float f5, float f6) {
        AnimatorSet animatorSet = new AnimatorSet();
        ArrayList arrayList = new ArrayList();
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.addUpdateListener(new C0107d(this.f14982w.getAlpha(), f4, this.f14982w.getScaleX(), f5, this.f14982w.getScaleY(), this.f14976q, f6, new Matrix(this.B)));
        arrayList.add(ofFloat);
        com.google.android.material.animation.b.a(animatorSet, arrayList);
        animatorSet.setDuration(d1.a.d(this.f14982w.getContext(), R.attr.motionDurationLong1, this.f14982w.getContext().getResources().getInteger(R.integer.material_motion_duration_long_1)));
        animatorSet.setInterpolator(d1.a.e(this.f14982w.getContext(), R.attr.motionEasingStandard, com.google.android.material.animation.a.f14005b));
        return animatorSet;
    }

    @NonNull
    private ValueAnimator k(@NonNull m mVar) {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setInterpolator(D);
        valueAnimator.setDuration(100L);
        valueAnimator.addListener(mVar);
        valueAnimator.addUpdateListener(mVar);
        valueAnimator.setFloatValues(0.0f, 1.0f);
        return valueAnimator;
    }

    private void k0(ObjectAnimator objectAnimator) {
        if (Build.VERSION.SDK_INT != 26) {
            return;
        }
        objectAnimator.setEvaluator(new e());
    }

    @NonNull
    private ViewTreeObserver.OnPreDrawListener r() {
        if (this.C == null) {
            this.C = new f();
        }
        return this.C;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void A() {
        this.f14971l.c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void B() {
        MaterialShapeDrawable materialShapeDrawable = this.f14961b;
        if (materialShapeDrawable != null) {
            com.google.android.material.shape.i.f(this.f14982w, materialShapeDrawable);
        }
        if (N()) {
            this.f14982w.getViewTreeObserver().addOnPreDrawListener(r());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void C() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void D() {
        ViewTreeObserver viewTreeObserver = this.f14982w.getViewTreeObserver();
        ViewTreeObserver.OnPreDrawListener onPreDrawListener = this.C;
        if (onPreDrawListener != null) {
            viewTreeObserver.removeOnPreDrawListener(onPreDrawListener);
            this.C = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void E(int[] iArr) {
        this.f14971l.d(iArr);
    }

    void F(float f4, float f5, float f6) {
        i0();
        j0(f4);
    }

    void G(@NonNull Rect rect) {
        Preconditions.checkNotNull(this.f14964e, "Didn't initialize content background");
        if (c0()) {
            this.f14983x.setBackgroundDrawable(new InsetDrawable(this.f14964e, rect.left, rect.top, rect.right, rect.bottom));
            return;
        }
        this.f14983x.setBackgroundDrawable(this.f14964e);
    }

    void H() {
        float rotation = this.f14982w.getRotation();
        if (this.f14975p != rotation) {
            this.f14975p = rotation;
            g0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void I() {
        ArrayList<j> arrayList = this.f14981v;
        if (arrayList != null) {
            Iterator<j> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                it2.next().b();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void J() {
        ArrayList<j> arrayList = this.f14981v;
        if (arrayList != null) {
            Iterator<j> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                it2.next().a();
            }
        }
    }

    public void K(@NonNull Animator.AnimatorListener animatorListener) {
        ArrayList<Animator.AnimatorListener> arrayList = this.f14980u;
        if (arrayList == null) {
            return;
        }
        arrayList.remove(animatorListener);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void L(@NonNull Animator.AnimatorListener animatorListener) {
        ArrayList<Animator.AnimatorListener> arrayList = this.f14979t;
        if (arrayList == null) {
            return;
        }
        arrayList.remove(animatorListener);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void M(@NonNull j jVar) {
        ArrayList<j> arrayList = this.f14981v;
        if (arrayList == null) {
            return;
        }
        arrayList.remove(jVar);
    }

    boolean N() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void O(@Nullable ColorStateList colorStateList) {
        MaterialShapeDrawable materialShapeDrawable = this.f14961b;
        if (materialShapeDrawable != null) {
            materialShapeDrawable.setTintList(colorStateList);
        }
        com.google.android.material.floatingactionbutton.c cVar = this.f14963d;
        if (cVar != null) {
            cVar.d(colorStateList);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void P(@Nullable PorterDuff.Mode mode) {
        MaterialShapeDrawable materialShapeDrawable = this.f14961b;
        if (materialShapeDrawable != null) {
            materialShapeDrawable.setTintMode(mode);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void Q(float f4) {
        if (this.f14967h != f4) {
            this.f14967h = f4;
            F(f4, this.f14968i, this.f14969j);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void R(boolean z3) {
        this.f14965f = z3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void S(@Nullable com.google.android.material.animation.h hVar) {
        this.f14974o = hVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void T(float f4) {
        if (this.f14968i != f4) {
            this.f14968i = f4;
            F(this.f14967h, f4, this.f14969j);
        }
    }

    final void U(float f4) {
        this.f14976q = f4;
        Matrix matrix = this.B;
        h(f4, matrix);
        this.f14982w.setImageMatrix(matrix);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void V(int i2) {
        if (this.f14977r != i2) {
            this.f14977r = i2;
            h0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void W(int i2) {
        this.f14970k = i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void X(float f4) {
        if (this.f14969j != f4) {
            this.f14969j = f4;
            F(this.f14967h, this.f14968i, f4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void Y(@Nullable ColorStateList colorStateList) {
        Drawable drawable = this.f14962c;
        if (drawable != null) {
            DrawableCompat.setTintList(drawable, com.google.android.material.ripple.b.d(colorStateList));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void Z(boolean z3) {
        this.f14966g = z3;
        i0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a0(@NonNull com.google.android.material.shape.m mVar) {
        this.f14960a = mVar;
        MaterialShapeDrawable materialShapeDrawable = this.f14961b;
        if (materialShapeDrawable != null) {
            materialShapeDrawable.setShapeAppearanceModel(mVar);
        }
        Drawable drawable = this.f14962c;
        if (drawable instanceof q) {
            ((q) drawable).setShapeAppearanceModel(mVar);
        }
        com.google.android.material.floatingactionbutton.c cVar = this.f14963d;
        if (cVar != null) {
            cVar.g(mVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b0(@Nullable com.google.android.material.animation.h hVar) {
        this.f14973n = hVar;
    }

    boolean c0() {
        return true;
    }

    public void e(@NonNull Animator.AnimatorListener animatorListener) {
        if (this.f14980u == null) {
            this.f14980u = new ArrayList<>();
        }
        this.f14980u.add(animatorListener);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean e0() {
        return !this.f14965f || this.f14982w.getSizeDimension() >= this.f14970k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f(@NonNull Animator.AnimatorListener animatorListener) {
        if (this.f14979t == null) {
            this.f14979t = new ArrayList<>();
        }
        this.f14979t.add(animatorListener);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f0(@Nullable k kVar, boolean z3) {
        AnimatorSet j4;
        if (z()) {
            return;
        }
        Animator animator = this.f14972m;
        if (animator != null) {
            animator.cancel();
        }
        boolean z4 = this.f14973n == null;
        if (d0()) {
            if (this.f14982w.getVisibility() != 0) {
                this.f14982w.setAlpha(0.0f);
                this.f14982w.setScaleY(z4 ? 0.4f : 0.0f);
                this.f14982w.setScaleX(z4 ? 0.4f : 0.0f);
                U(z4 ? 0.4f : 0.0f);
            }
            com.google.android.material.animation.h hVar = this.f14973n;
            if (hVar != null) {
                j4 = i(hVar, 1.0f, 1.0f, 1.0f);
            } else {
                j4 = j(1.0f, 1.0f, 1.0f);
            }
            j4.addListener(new b(z3, kVar));
            ArrayList<Animator.AnimatorListener> arrayList = this.f14979t;
            if (arrayList != null) {
                Iterator<Animator.AnimatorListener> it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    j4.addListener(it2.next());
                }
            }
            j4.start();
            return;
        }
        this.f14982w.c(0, z3);
        this.f14982w.setAlpha(1.0f);
        this.f14982w.setScaleY(1.0f);
        this.f14982w.setScaleX(1.0f);
        U(1.0f);
        if (kVar != null) {
            kVar.onShown();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g(@NonNull j jVar) {
        if (this.f14981v == null) {
            this.f14981v = new ArrayList<>();
        }
        this.f14981v.add(jVar);
    }

    void g0() {
        if (Build.VERSION.SDK_INT == 19) {
            if (this.f14975p % 90.0f != 0.0f) {
                if (this.f14982w.getLayerType() != 1) {
                    this.f14982w.setLayerType(1, null);
                }
            } else if (this.f14982w.getLayerType() != 0) {
                this.f14982w.setLayerType(0, null);
            }
        }
        MaterialShapeDrawable materialShapeDrawable = this.f14961b;
        if (materialShapeDrawable != null) {
            materialShapeDrawable.w0((int) this.f14975p);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void h0() {
        U(this.f14976q);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void i0() {
        Rect rect = this.f14984y;
        s(rect);
        G(rect);
        this.f14983x.setShadowPadding(rect.left, rect.top, rect.right, rect.bottom);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void j0(float f4) {
        MaterialShapeDrawable materialShapeDrawable = this.f14961b;
        if (materialShapeDrawable != null) {
            materialShapeDrawable.n0(f4);
        }
    }

    MaterialShapeDrawable l() {
        return new MaterialShapeDrawable((com.google.android.material.shape.m) Preconditions.checkNotNull(this.f14960a));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public final Drawable m() {
        return this.f14964e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float n() {
        return this.f14967h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean o() {
        return this.f14965f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public final com.google.android.material.animation.h p() {
        return this.f14974o;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float q() {
        return this.f14968i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void s(@NonNull Rect rect) {
        int sizeDimension = this.f14965f ? (this.f14970k - this.f14982w.getSizeDimension()) / 2 : 0;
        float n4 = this.f14966g ? n() + this.f14969j : 0.0f;
        int max = Math.max(sizeDimension, (int) Math.ceil(n4));
        int max2 = Math.max(sizeDimension, (int) Math.ceil(n4 * J));
        rect.set(max, max2, max, max2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float t() {
        return this.f14969j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public final com.google.android.material.shape.m u() {
        return this.f14960a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public final com.google.android.material.animation.h v() {
        return this.f14973n;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void w(@Nullable k kVar, boolean z3) {
        AnimatorSet j4;
        if (y()) {
            return;
        }
        Animator animator = this.f14972m;
        if (animator != null) {
            animator.cancel();
        }
        if (d0()) {
            com.google.android.material.animation.h hVar = this.f14974o;
            if (hVar != null) {
                j4 = i(hVar, 0.0f, 0.0f, 0.0f);
            } else {
                j4 = j(0.0f, 0.4f, 0.4f);
            }
            j4.addListener(new a(z3, kVar));
            ArrayList<Animator.AnimatorListener> arrayList = this.f14980u;
            if (arrayList != null) {
                Iterator<Animator.AnimatorListener> it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    j4.addListener(it2.next());
                }
            }
            j4.start();
            return;
        }
        this.f14982w.c(z3 ? 8 : 4, z3);
        if (kVar != null) {
            kVar.onHidden();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void x(ColorStateList colorStateList, @Nullable PorterDuff.Mode mode, ColorStateList colorStateList2, int i2) {
        MaterialShapeDrawable l4 = l();
        this.f14961b = l4;
        l4.setTintList(colorStateList);
        if (mode != null) {
            this.f14961b.setTintMode(mode);
        }
        this.f14961b.v0(-12303292);
        this.f14961b.Z(this.f14982w.getContext());
        com.google.android.material.ripple.a aVar = new com.google.android.material.ripple.a(this.f14961b.getShapeAppearanceModel());
        aVar.setTintList(com.google.android.material.ripple.b.d(colorStateList2));
        this.f14962c = aVar;
        this.f14964e = new LayerDrawable(new Drawable[]{(Drawable) Preconditions.checkNotNull(this.f14961b), aVar});
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean y() {
        return this.f14982w.getVisibility() == 0 ? this.f14978s == 1 : this.f14978s != 2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean z() {
        return this.f14982w.getVisibility() != 0 ? this.f14978s == 2 : this.f14978s != 1;
    }
}
