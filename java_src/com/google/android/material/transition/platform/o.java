package com.google.android.material.transition.platform;

import android.animation.Animator;
import android.transition.TransitionValues;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.material.R;
/* compiled from: MaterialFadeThrough.java */
@RequiresApi(21)
/* loaded from: classes2.dex */
public final class o extends p<e> {

    /* renamed from: d  reason: collision with root package name */
    private static final float f16605d = 0.92f;
    @AttrRes

    /* renamed from: e  reason: collision with root package name */
    private static final int f16606e = R.attr.motionDurationLong1;
    @AttrRes

    /* renamed from: f  reason: collision with root package name */
    private static final int f16607f = R.attr.motionEasingStandard;

    public o() {
        super(m(), n());
    }

    private static e m() {
        return new e();
    }

    private static t n() {
        q qVar = new q();
        qVar.o(false);
        qVar.l(f16605d);
        return qVar;
    }

    @Override // com.google.android.material.transition.platform.p
    public /* bridge */ /* synthetic */ void a(@NonNull t tVar) {
        super.a(tVar);
    }

    @Override // com.google.android.material.transition.platform.p
    public /* bridge */ /* synthetic */ void c() {
        super.c();
    }

    @Override // com.google.android.material.transition.platform.p
    @AttrRes
    int f(boolean z3) {
        return f16606e;
    }

    @Override // com.google.android.material.transition.platform.p
    @AttrRes
    int g(boolean z3) {
        return f16607f;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.material.transition.platform.t, com.google.android.material.transition.platform.e] */
    @Override // com.google.android.material.transition.platform.p
    @NonNull
    public /* bridge */ /* synthetic */ e h() {
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

    @Override // com.google.android.material.transition.platform.p, android.transition.Visibility
    public /* bridge */ /* synthetic */ Animator onAppear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return super.onAppear(viewGroup, view, transitionValues, transitionValues2);
    }

    @Override // com.google.android.material.transition.platform.p, android.transition.Visibility
    public /* bridge */ /* synthetic */ Animator onDisappear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return super.onDisappear(viewGroup, view, transitionValues, transitionValues2);
    }
}
