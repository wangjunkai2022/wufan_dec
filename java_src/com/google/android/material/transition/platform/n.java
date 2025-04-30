package com.google.android.material.transition.platform;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.transition.TransitionValues;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.material.R;
/* compiled from: MaterialFade.java */
@RequiresApi(21)
/* loaded from: classes2.dex */
public final class n extends p<d> {

    /* renamed from: d  reason: collision with root package name */
    private static final float f16600d = 0.8f;

    /* renamed from: e  reason: collision with root package name */
    private static final float f16601e = 0.3f;
    @AttrRes

    /* renamed from: f  reason: collision with root package name */
    private static final int f16602f = R.attr.motionDurationShort2;
    @AttrRes

    /* renamed from: g  reason: collision with root package name */
    private static final int f16603g = R.attr.motionDurationShort1;
    @AttrRes

    /* renamed from: h  reason: collision with root package name */
    private static final int f16604h = R.attr.motionEasingLinear;

    public n() {
        super(m(), n());
    }

    private static d m() {
        d dVar = new d();
        dVar.e(f16601e);
        return dVar;
    }

    private static t n() {
        q qVar = new q();
        qVar.o(false);
        qVar.l(f16600d);
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
    @NonNull
    TimeInterpolator e(boolean z3) {
        return com.google.android.material.animation.a.f14004a;
    }

    @Override // com.google.android.material.transition.platform.p
    @AttrRes
    int f(boolean z3) {
        if (z3) {
            return f16602f;
        }
        return f16603g;
    }

    @Override // com.google.android.material.transition.platform.p
    @AttrRes
    int g(boolean z3) {
        return f16604h;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.material.transition.platform.t, com.google.android.material.transition.platform.d] */
    @Override // com.google.android.material.transition.platform.p
    @NonNull
    public /* bridge */ /* synthetic */ d h() {
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
