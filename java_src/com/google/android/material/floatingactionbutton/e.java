package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.content.ContextCompat;
import androidx.core.util.Preconditions;
import com.google.android.material.R;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.m;
import java.util.ArrayList;
/* compiled from: FloatingActionButtonImplLollipop.java */
@RequiresApi(21)
/* loaded from: classes2.dex */
class e extends d {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FloatingActionButtonImplLollipop.java */
    /* loaded from: classes2.dex */
    public static class a extends MaterialShapeDrawable {
        a(m mVar) {
            super(mVar);
        }

        @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
        public boolean isStateful() {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(FloatingActionButton floatingActionButton, com.google.android.material.shadow.c cVar) {
        super(floatingActionButton, cVar);
    }

    @NonNull
    private Animator m0(float f4, float f5) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(ObjectAnimator.ofFloat(this.f14982w, "elevation", f4).setDuration(0L)).with(ObjectAnimator.ofFloat(this.f14982w, View.TRANSLATION_Z, f5).setDuration(100L));
        animatorSet.setInterpolator(d.D);
        return animatorSet;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.floatingactionbutton.d
    public void A() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.floatingactionbutton.d
    public void C() {
        i0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.floatingactionbutton.d
    public void E(int[] iArr) {
        if (Build.VERSION.SDK_INT == 21) {
            if (this.f14982w.isEnabled()) {
                this.f14982w.setElevation(this.f14967h);
                if (this.f14982w.isPressed()) {
                    this.f14982w.setTranslationZ(this.f14969j);
                    return;
                } else if (!this.f14982w.isFocused() && !this.f14982w.isHovered()) {
                    this.f14982w.setTranslationZ(0.0f);
                    return;
                } else {
                    this.f14982w.setTranslationZ(this.f14968i);
                    return;
                }
            }
            this.f14982w.setElevation(0.0f);
            this.f14982w.setTranslationZ(0.0f);
        }
    }

    @Override // com.google.android.material.floatingactionbutton.d
    void F(float f4, float f5, float f6) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 == 21) {
            this.f14982w.refreshDrawableState();
        } else {
            StateListAnimator stateListAnimator = new StateListAnimator();
            stateListAnimator.addState(d.S, m0(f4, f6));
            stateListAnimator.addState(d.T, m0(f4, f5));
            stateListAnimator.addState(d.U, m0(f4, f5));
            stateListAnimator.addState(d.V, m0(f4, f5));
            AnimatorSet animatorSet = new AnimatorSet();
            ArrayList arrayList = new ArrayList();
            arrayList.add(ObjectAnimator.ofFloat(this.f14982w, "elevation", f4).setDuration(0L));
            if (i2 >= 22 && i2 <= 24) {
                FloatingActionButton floatingActionButton = this.f14982w;
                arrayList.add(ObjectAnimator.ofFloat(floatingActionButton, View.TRANSLATION_Z, floatingActionButton.getTranslationZ()).setDuration(100L));
            }
            arrayList.add(ObjectAnimator.ofFloat(this.f14982w, View.TRANSLATION_Z, 0.0f).setDuration(100L));
            animatorSet.playSequentially((Animator[]) arrayList.toArray(new Animator[0]));
            animatorSet.setInterpolator(d.D);
            stateListAnimator.addState(d.W, animatorSet);
            stateListAnimator.addState(d.X, m0(0.0f, 0.0f));
            this.f14982w.setStateListAnimator(stateListAnimator);
        }
        if (c0()) {
            i0();
        }
    }

    @Override // com.google.android.material.floatingactionbutton.d
    boolean N() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.floatingactionbutton.d
    public void Y(@Nullable ColorStateList colorStateList) {
        Drawable drawable = this.f14962c;
        if (drawable instanceof RippleDrawable) {
            ((RippleDrawable) drawable).setColor(com.google.android.material.ripple.b.d(colorStateList));
        } else {
            super.Y(colorStateList);
        }
    }

    @Override // com.google.android.material.floatingactionbutton.d
    boolean c0() {
        return this.f14983x.a() || !e0();
    }

    @Override // com.google.android.material.floatingactionbutton.d
    void g0() {
    }

    @Override // com.google.android.material.floatingactionbutton.d
    @NonNull
    MaterialShapeDrawable l() {
        return new a((m) Preconditions.checkNotNull(this.f14960a));
    }

    @NonNull
    c l0(int i2, ColorStateList colorStateList) {
        Context context = this.f14982w.getContext();
        c cVar = new c((m) Preconditions.checkNotNull(this.f14960a));
        cVar.f(ContextCompat.getColor(context, R.color.design_fab_stroke_top_outer_color), ContextCompat.getColor(context, R.color.design_fab_stroke_top_inner_color), ContextCompat.getColor(context, R.color.design_fab_stroke_end_inner_color), ContextCompat.getColor(context, R.color.design_fab_stroke_end_outer_color));
        cVar.e(i2);
        cVar.d(colorStateList);
        return cVar;
    }

    @Override // com.google.android.material.floatingactionbutton.d
    public float n() {
        return this.f14982w.getElevation();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.floatingactionbutton.d
    public void s(@NonNull Rect rect) {
        if (this.f14983x.a()) {
            super.s(rect);
        } else if (!e0()) {
            int sizeDimension = (this.f14970k - this.f14982w.getSizeDimension()) / 2;
            rect.set(sizeDimension, sizeDimension, sizeDimension, sizeDimension);
        } else {
            rect.set(0, 0, 0, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.floatingactionbutton.d
    public void x(ColorStateList colorStateList, @Nullable PorterDuff.Mode mode, ColorStateList colorStateList2, int i2) {
        Drawable drawable;
        MaterialShapeDrawable l4 = l();
        this.f14961b = l4;
        l4.setTintList(colorStateList);
        if (mode != null) {
            this.f14961b.setTintMode(mode);
        }
        this.f14961b.Z(this.f14982w.getContext());
        if (i2 > 0) {
            this.f14963d = l0(i2, colorStateList);
            drawable = new LayerDrawable(new Drawable[]{(Drawable) Preconditions.checkNotNull(this.f14963d), (Drawable) Preconditions.checkNotNull(this.f14961b)});
        } else {
            this.f14963d = null;
            drawable = this.f14961b;
        }
        RippleDrawable rippleDrawable = new RippleDrawable(com.google.android.material.ripple.b.d(colorStateList2), drawable, null);
        this.f14962c = rippleDrawable;
        this.f14964e = rippleDrawable;
    }
}
