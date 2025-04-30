package com.google.android.material.progressindicator;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import com.google.android.material.progressindicator.b;
/* compiled from: IndeterminateDrawable.java */
/* loaded from: classes2.dex */
public final class i<S extends b> extends f {

    /* renamed from: r  reason: collision with root package name */
    private g<S> f15448r;

    /* renamed from: s  reason: collision with root package name */
    private h<ObjectAnimator> f15449s;

    i(@NonNull Context context, @NonNull b bVar, @NonNull g<S> gVar, @NonNull h<ObjectAnimator> hVar) {
        super(context, bVar);
        z(gVar);
        y(hVar);
    }

    @NonNull
    public static i<CircularProgressIndicatorSpec> u(@NonNull Context context, @NonNull CircularProgressIndicatorSpec circularProgressIndicatorSpec) {
        return new i<>(context, circularProgressIndicatorSpec, new c(circularProgressIndicatorSpec), new d(circularProgressIndicatorSpec));
    }

    @NonNull
    public static i<LinearProgressIndicatorSpec> v(@NonNull Context context, @NonNull LinearProgressIndicatorSpec linearProgressIndicatorSpec) {
        h lVar;
        j jVar = new j(linearProgressIndicatorSpec);
        if (linearProgressIndicatorSpec.f15378g == 0) {
            lVar = new k(linearProgressIndicatorSpec);
        } else {
            lVar = new l(context, linearProgressIndicatorSpec);
        }
        return new i<>(context, linearProgressIndicatorSpec, jVar, lVar);
    }

    @Override // com.google.android.material.progressindicator.f, androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public /* bridge */ /* synthetic */ void clearAnimationCallbacks() {
        super.clearAnimationCallbacks();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        Rect rect = new Rect();
        if (getBounds().isEmpty() || !isVisible() || !canvas.getClipBounds(rect)) {
            return;
        }
        canvas.save();
        this.f15448r.g(canvas, g());
        this.f15448r.c(canvas, this.f15439m);
        int i2 = 0;
        while (true) {
            h<ObjectAnimator> hVar = this.f15449s;
            int[] iArr = hVar.f15447c;
            if (i2 < iArr.length) {
                g<S> gVar = this.f15448r;
                Paint paint = this.f15439m;
                float[] fArr = hVar.f15446b;
                int i4 = i2 * 2;
                gVar.b(canvas, paint, fArr[i4], fArr[i4 + 1], iArr[i2]);
                i2++;
            } else {
                canvas.restore();
                return;
            }
        }
    }

    @Override // com.google.android.material.progressindicator.f, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getAlpha() {
        return super.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f15448r.d();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f15448r.e();
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

    @Override // com.google.android.material.progressindicator.f
    public /* bridge */ /* synthetic */ boolean k() {
        return super.k();
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
        if (!isRunning()) {
            this.f15449s.a();
        }
        float a4 = this.f15429c.a(this.f15427a.getContentResolver());
        if (z3 && (z5 || (Build.VERSION.SDK_INT <= 21 && a4 > 0.0f))) {
            this.f15449s.g();
        }
        return t3;
    }

    @Override // com.google.android.material.progressindicator.f, androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public /* bridge */ /* synthetic */ boolean unregisterAnimationCallback(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        return super.unregisterAnimationCallback(animationCallback);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public h<ObjectAnimator> w() {
        return this.f15449s;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public g<S> x() {
        return this.f15448r;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void y(@NonNull h<ObjectAnimator> hVar) {
        this.f15449s = hVar;
        hVar.e(this);
    }

    void z(@NonNull g<S> gVar) {
        this.f15448r = gVar;
        gVar.f(this);
    }
}
