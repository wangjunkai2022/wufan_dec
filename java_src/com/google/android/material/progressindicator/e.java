package com.google.android.material.progressindicator;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.dynamicanimation.animation.DynamicAnimation;
import androidx.dynamicanimation.animation.FloatPropertyCompat;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import com.google.android.material.color.m;
import com.google.android.material.progressindicator.b;
/* compiled from: DeterminateDrawable.java */
/* loaded from: classes2.dex */
public final class e<S extends b> extends f {

    /* renamed from: w  reason: collision with root package name */
    private static final int f15416w = 10000;

    /* renamed from: x  reason: collision with root package name */
    private static final float f15417x = 50.0f;

    /* renamed from: y  reason: collision with root package name */
    private static final FloatPropertyCompat<e> f15418y = new a("indicatorLevel");

    /* renamed from: r  reason: collision with root package name */
    private g<S> f15419r;

    /* renamed from: s  reason: collision with root package name */
    private final SpringForce f15420s;

    /* renamed from: t  reason: collision with root package name */
    private final SpringAnimation f15421t;

    /* renamed from: u  reason: collision with root package name */
    private float f15422u;

    /* renamed from: v  reason: collision with root package name */
    private boolean f15423v;

    /* compiled from: DeterminateDrawable.java */
    /* loaded from: classes2.dex */
    class a extends FloatPropertyCompat<e> {
        a(String str) {
            super(str);
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        /* renamed from: a */
        public float getValue(e eVar) {
            return eVar.A() * 10000.0f;
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        /* renamed from: b */
        public void setValue(e eVar, float f4) {
            eVar.D(f4 / 10000.0f);
        }
    }

    e(@NonNull Context context, @NonNull b bVar, @NonNull g<S> gVar) {
        super(context, bVar);
        this.f15423v = false;
        C(gVar);
        SpringForce springForce = new SpringForce();
        this.f15420s = springForce;
        springForce.setDampingRatio(1.0f);
        springForce.setStiffness(50.0f);
        SpringAnimation springAnimation = new SpringAnimation(this, f15418y);
        this.f15421t = springAnimation;
        springAnimation.setSpring(springForce);
        m(1.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float A() {
        return this.f15422u;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D(float f4) {
        this.f15422u = f4;
        invalidateSelf();
    }

    @NonNull
    public static e<CircularProgressIndicatorSpec> x(@NonNull Context context, @NonNull CircularProgressIndicatorSpec circularProgressIndicatorSpec) {
        return new e<>(context, circularProgressIndicatorSpec, new c(circularProgressIndicatorSpec));
    }

    @NonNull
    public static e<LinearProgressIndicatorSpec> y(@NonNull Context context, @NonNull LinearProgressIndicatorSpec linearProgressIndicatorSpec) {
        return new e<>(context, linearProgressIndicatorSpec, new j(linearProgressIndicatorSpec));
    }

    public void B(@NonNull DynamicAnimation.OnAnimationEndListener onAnimationEndListener) {
        this.f15421t.removeEndListener(onAnimationEndListener);
    }

    void C(@NonNull g<S> gVar) {
        this.f15419r = gVar;
        gVar.f(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void E(float f4) {
        setLevel((int) (f4 * 10000.0f));
    }

    @Override // com.google.android.material.progressindicator.f, androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public /* bridge */ /* synthetic */ void clearAnimationCallbacks() {
        super.clearAnimationCallbacks();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        Rect rect = new Rect();
        if (!getBounds().isEmpty() && isVisible() && canvas.getClipBounds(rect)) {
            canvas.save();
            this.f15419r.g(canvas, g());
            this.f15419r.c(canvas, this.f15439m);
            this.f15419r.b(canvas, this.f15439m, 0.0f, A(), m.a(this.f15428b.f15384c[0], getAlpha()));
            canvas.restore();
        }
    }

    @Override // com.google.android.material.progressindicator.f, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getAlpha() {
        return super.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f15419r.d();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f15419r.e();
    }

    @Override // com.google.android.material.progressindicator.f, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getOpacity() {
        return super.getOpacity();
    }

    @Override // com.google.android.material.progressindicator.f
    public /* bridge */ /* synthetic */ boolean i() {
        return super.i();
    }

    @Override // com.google.android.material.progressindicator.f, android.graphics.drawable.Animatable
    public /* bridge */ /* synthetic */ boolean isRunning() {
        return super.isRunning();
    }

    @Override // com.google.android.material.progressindicator.f
    public /* bridge */ /* synthetic */ boolean j() {
        return super.j();
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        this.f15421t.skipToEnd();
        D(getLevel() / 10000.0f);
    }

    @Override // com.google.android.material.progressindicator.f
    public /* bridge */ /* synthetic */ boolean k() {
        return super.k();
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i2) {
        if (this.f15423v) {
            this.f15421t.skipToEnd();
            D(i2 / 10000.0f);
            return true;
        }
        this.f15421t.setStartValue(A() * 10000.0f);
        this.f15421t.animateToFinalPosition(i2);
        return true;
    }

    @Override // com.google.android.material.progressindicator.f, androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public /* bridge */ /* synthetic */ void registerAnimationCallback(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        super.registerAnimationCallback(animationCallback);
    }

    @Override // com.google.android.material.progressindicator.f
    public /* bridge */ /* synthetic */ boolean s(boolean z3, boolean z4, boolean z5) {
        return super.s(z3, z4, z5);
    }

    @Override // com.google.android.material.progressindicator.f, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setAlpha(int i2) {
        super.setAlpha(i2);
    }

    @Override // com.google.android.material.progressindicator.f, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setColorFilter(@Nullable ColorFilter colorFilter) {
        super.setColorFilter(colorFilter);
    }

    @Override // com.google.android.material.progressindicator.f, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean setVisible(boolean z3, boolean z4) {
        return super.setVisible(z3, z4);
    }

    @Override // com.google.android.material.progressindicator.f, android.graphics.drawable.Animatable
    public /* bridge */ /* synthetic */ void start() {
        super.start();
    }

    @Override // com.google.android.material.progressindicator.f, android.graphics.drawable.Animatable
    public /* bridge */ /* synthetic */ void stop() {
        super.stop();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.progressindicator.f
    public boolean t(boolean z3, boolean z4, boolean z5) {
        boolean t3 = super.t(z3, z4, z5);
        float a4 = this.f15429c.a(this.f15427a.getContentResolver());
        if (a4 == 0.0f) {
            this.f15423v = true;
        } else {
            this.f15423v = false;
            this.f15420s.setStiffness(50.0f / a4);
        }
        return t3;
    }

    @Override // com.google.android.material.progressindicator.f, androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public /* bridge */ /* synthetic */ boolean unregisterAnimationCallback(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        return super.unregisterAnimationCallback(animationCallback);
    }

    public void w(@NonNull DynamicAnimation.OnAnimationEndListener onAnimationEndListener) {
        this.f15421t.addEndListener(onAnimationEndListener);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public g<S> z() {
        return this.f15419r;
    }
}
