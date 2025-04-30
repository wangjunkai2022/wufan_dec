package com.google.android.material.transition.platform;

import android.animation.Animator;
import android.transition.TransitionValues;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
/* compiled from: MaterialElevationScale.java */
@RequiresApi(21)
/* loaded from: classes2.dex */
public final class m extends p<q> {

    /* renamed from: e  reason: collision with root package name */
    private static final float f16598e = 0.85f;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f16599d;

    public m(boolean z3) {
        super(m(z3), n());
        this.f16599d = z3;
    }

    private static q m(boolean z3) {
        q qVar = new q(z3);
        qVar.m(f16598e);
        qVar.l(f16598e);
        return qVar;
    }

    private static t n() {
        return new d();
    }

    @Override // com.google.android.material.transition.platform.p
    public /* bridge */ /* synthetic */ void a(@NonNull t tVar) {
        super.a(tVar);
    }

    @Override // com.google.android.material.transition.platform.p
    public /* bridge */ /* synthetic */ void c() {
        super.c();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.material.transition.platform.q, com.google.android.material.transition.platform.t] */
    @Override // com.google.android.material.transition.platform.p
    @NonNull
    public /* bridge */ /* synthetic */ q h() {
        return super.h();
    }

    @Override // com.google.android.material.transition.platform.p
    @Nullable
    public /* bridge */ /* synthetic */ t i() {
        return super.i();
    }

    @Override // com.google.android.material.transition.platform.p
    public /* bridge */ /* synthetic */ boolean k(@NonNull t tVar) {
        return super.k(tVar);
    }

    @Override // com.google.android.material.transition.platform.p
    public /* bridge */ /* synthetic */ void l(@Nullable t tVar) {
        super.l(tVar);
    }

    public boolean o() {
        return this.f16599d;
    }

    @Override // com.google.android.material.transition.platform.p, android.transition.Visibility
    public /* bridge */ /* synthetic */ Animator onAppear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return super.onAppear(viewGroup, view, transitionValues, transitionValues2);
    }

    @Override // com.google.android.material.transition.platform.p, android.transition.Visibility
    public /* bridge */ /* synthetic */ Animator onDisappear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return super.onDisappear(viewGroup, view, transitionValues, transitionValues2);
    }
}
