package com.google.android.material.transition.platform;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.transition.TransitionValues;
import android.transition.Visibility;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.material.transition.platform.t;
import java.util.ArrayList;
import java.util.List;
/* compiled from: MaterialVisibility.java */
@RequiresApi(21)
/* loaded from: classes2.dex */
abstract class p<P extends t> extends Visibility {

    /* renamed from: a  reason: collision with root package name */
    private final P f16608a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private t f16609b;

    /* renamed from: c  reason: collision with root package name */
    private final List<t> f16610c = new ArrayList();

    /* JADX INFO: Access modifiers changed from: protected */
    public p(P p3, @Nullable t tVar) {
        this.f16608a = p3;
        this.f16609b = tVar;
    }

    private static void b(List<Animator> list, @Nullable t tVar, ViewGroup viewGroup, View view, boolean z3) {
        Animator a4;
        if (tVar == null) {
            return;
        }
        if (z3) {
            a4 = tVar.b(viewGroup, view);
        } else {
            a4 = tVar.a(viewGroup, view);
        }
        if (a4 != null) {
            list.add(a4);
        }
    }

    private Animator d(@NonNull ViewGroup viewGroup, @NonNull View view, boolean z3) {
        AnimatorSet animatorSet = new AnimatorSet();
        ArrayList arrayList = new ArrayList();
        b(arrayList, this.f16608a, viewGroup, view, z3);
        b(arrayList, this.f16609b, viewGroup, view, z3);
        for (t tVar : this.f16610c) {
            b(arrayList, tVar, viewGroup, view, z3);
        }
        j(viewGroup.getContext(), z3);
        com.google.android.material.animation.b.a(animatorSet, arrayList);
        return animatorSet;
    }

    private void j(@NonNull Context context, boolean z3) {
        s.q(this, context, f(z3));
        s.r(this, context, g(z3), e(z3));
    }

    public void a(@NonNull t tVar) {
        this.f16610c.add(tVar);
    }

    public void c() {
        this.f16610c.clear();
    }

    @NonNull
    TimeInterpolator e(boolean z3) {
        return com.google.android.material.animation.a.f14005b;
    }

    @AttrRes
    int f(boolean z3) {
        return 0;
    }

    @AttrRes
    int g(boolean z3) {
        return 0;
    }

    @NonNull
    public P h() {
        return this.f16608a;
    }

    @Nullable
    public t i() {
        return this.f16609b;
    }

    public boolean k(@NonNull t tVar) {
        return this.f16610c.remove(tVar);
    }

    public void l(@Nullable t tVar) {
        this.f16609b = tVar;
    }

    @Override // android.transition.Visibility
    public Animator onAppear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return d(viewGroup, view, true);
    }

    @Override // android.transition.Visibility
    public Animator onDisappear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return d(viewGroup, view, false);
    }
}
