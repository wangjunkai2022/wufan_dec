package com.google.android.material.transition;

import android.animation.Animator;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.view.GravityCompat;
import androidx.transition.TransitionValues;
import com.google.android.material.R;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes2.dex */
public final class MaterialSharedAxis extends o<s> {
    public static final int E0 = 0;
    public static final int F0 = 1;
    public static final int G0 = 2;
    @AttrRes
    private static final int H0 = R.attr.motionDurationLong1;
    @AttrRes
    private static final int I0 = R.attr.motionEasingStandard;
    private final int C0;
    private final boolean D0;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes.dex */
    public @interface Axis {
    }

    public MaterialSharedAxis(int i2, boolean z3) {
        super(V(i2, z3), W());
        this.C0 = i2;
        this.D0 = z3;
    }

    private static s V(int i2, boolean z3) {
        if (i2 == 0) {
            return new SlideDistanceProvider(z3 ? GravityCompat.END : GravityCompat.START);
        } else if (i2 == 1) {
            return new SlideDistanceProvider(z3 ? 80 : 48);
        } else if (i2 == 2) {
            return new p(z3);
        } else {
            throw new IllegalArgumentException("Invalid axis: " + i2);
        }
    }

    private static s W() {
        return new e();
    }

    @Override // com.google.android.material.transition.o
    public /* bridge */ /* synthetic */ void J(@NonNull s sVar) {
        super.J(sVar);
    }

    @Override // com.google.android.material.transition.o
    public /* bridge */ /* synthetic */ void L() {
        super.L();
    }

    @Override // com.google.android.material.transition.o
    @AttrRes
    int O(boolean z3) {
        return H0;
    }

    @Override // com.google.android.material.transition.o
    @AttrRes
    int P(boolean z3) {
        return I0;
    }

    @Override // com.google.android.material.transition.o
    @NonNull
    public /* bridge */ /* synthetic */ s Q() {
        return super.Q();
    }

    @Override // com.google.android.material.transition.o
    @Nullable
    public /* bridge */ /* synthetic */ s R() {
        return super.R();
    }

    @Override // com.google.android.material.transition.o
    public /* bridge */ /* synthetic */ boolean T(@NonNull s sVar) {
        return super.T(sVar);
    }

    @Override // com.google.android.material.transition.o
    public /* bridge */ /* synthetic */ void U(@Nullable s sVar) {
        super.U(sVar);
    }

    public int X() {
        return this.C0;
    }

    public boolean Y() {
        return this.D0;
    }

    @Override // com.google.android.material.transition.o, androidx.transition.Visibility
    public /* bridge */ /* synthetic */ Animator onAppear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return super.onAppear(viewGroup, view, transitionValues, transitionValues2);
    }

    @Override // com.google.android.material.transition.o, androidx.transition.Visibility
    public /* bridge */ /* synthetic */ Animator onDisappear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return super.onDisappear(viewGroup, view, transitionValues, transitionValues2);
    }
}
