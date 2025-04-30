package com.google.android.material.transition;

import android.animation.Animator;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.transition.TransitionValues;
/* compiled from: MaterialElevationScale.java */
/* loaded from: classes2.dex */
public final class l extends o<p> {
    private static final float D0 = 0.85f;
    private final boolean C0;

    public l(boolean z3) {
        super(V(z3), W());
        this.C0 = z3;
    }

    private static p V(boolean z3) {
        p pVar = new p(z3);
        pVar.m(D0);
        pVar.l(D0);
        return pVar;
    }

    private static s W() {
        return new d();
    }

    @Override // com.google.android.material.transition.o
    public /* bridge */ /* synthetic */ void J(@NonNull s sVar) {
        super.J(sVar);
    }

    @Override // com.google.android.material.transition.o
    public /* bridge */ /* synthetic */ void L() {
        super.L();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.material.transition.p, com.google.android.material.transition.s] */
    @Override // com.google.android.material.transition.o
    @NonNull
    public /* bridge */ /* synthetic */ p Q() {
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

    public boolean X() {
        return this.C0;
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
