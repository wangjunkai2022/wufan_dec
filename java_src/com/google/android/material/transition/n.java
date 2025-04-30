package com.google.android.material.transition;

import android.animation.Animator;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.transition.TransitionValues;
import com.google.android.material.R;
/* compiled from: MaterialFadeThrough.java */
/* loaded from: classes2.dex */
public final class n extends o<e> {
    private static final float C0 = 0.92f;
    @AttrRes
    private static final int D0 = R.attr.motionDurationLong1;
    @AttrRes
    private static final int E0 = R.attr.motionEasingStandard;

    public n() {
        super(V(), W());
    }

    private static e V() {
        return new e();
    }

    private static s W() {
        p pVar = new p();
        pVar.o(false);
        pVar.l(C0);
        return pVar;
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
        return D0;
    }

    @Override // com.google.android.material.transition.o
    @AttrRes
    int P(boolean z3) {
        return E0;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.material.transition.s, com.google.android.material.transition.e] */
    @Override // com.google.android.material.transition.o
    @NonNull
    public /* bridge */ /* synthetic */ e Q() {
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

    @Override // com.google.android.material.transition.o, androidx.transition.Visibility
    public /* bridge */ /* synthetic */ Animator onAppear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return super.onAppear(viewGroup, view, transitionValues, transitionValues2);
    }

    @Override // com.google.android.material.transition.o, androidx.transition.Visibility
    public /* bridge */ /* synthetic */ Animator onDisappear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return super.onDisappear(viewGroup, view, transitionValues, transitionValues2);
    }
}
