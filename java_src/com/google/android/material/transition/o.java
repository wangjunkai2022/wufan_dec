package com.google.android.material.transition;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.transition.TransitionValues;
import androidx.transition.Visibility;
import com.google.android.material.transition.s;
import java.util.ArrayList;
import java.util.List;
/* compiled from: MaterialVisibility.java */
/* loaded from: classes2.dex */
abstract class o<P extends s> extends Visibility {
    @Nullable
    private s A0;
    private final List<s> B0 = new ArrayList();

    /* renamed from: z0  reason: collision with root package name */
    private final P f16451z0;

    /* JADX INFO: Access modifiers changed from: protected */
    public o(P p3, @Nullable s sVar) {
        this.f16451z0 = p3;
        this.A0 = sVar;
    }

    private static void K(List<Animator> list, @Nullable s sVar, ViewGroup viewGroup, View view, boolean z3) {
        Animator a4;
        if (sVar == null) {
            return;
        }
        if (z3) {
            a4 = sVar.b(viewGroup, view);
        } else {
            a4 = sVar.a(viewGroup, view);
        }
        if (a4 != null) {
            list.add(a4);
        }
    }

    private Animator M(@NonNull ViewGroup viewGroup, @NonNull View view, boolean z3) {
        AnimatorSet animatorSet = new AnimatorSet();
        ArrayList arrayList = new ArrayList();
        K(arrayList, this.f16451z0, viewGroup, view, z3);
        K(arrayList, this.A0, viewGroup, view, z3);
        for (s sVar : this.B0) {
            K(arrayList, sVar, viewGroup, view, z3);
        }
        S(viewGroup.getContext(), z3);
        com.google.android.material.animation.b.a(animatorSet, arrayList);
        return animatorSet;
    }

    private void S(@NonNull Context context, boolean z3) {
        r.q(this, context, O(z3));
        r.r(this, context, P(z3), N(z3));
    }

    public void J(@NonNull s sVar) {
        this.B0.add(sVar);
    }

    public void L() {
        this.B0.clear();
    }

    @NonNull
    TimeInterpolator N(boolean z3) {
        return com.google.android.material.animation.a.f14005b;
    }

    @AttrRes
    int O(boolean z3) {
        return 0;
    }

    @AttrRes
    int P(boolean z3) {
        return 0;
    }

    @NonNull
    public P Q() {
        return this.f16451z0;
    }

    @Nullable
    public s R() {
        return this.A0;
    }

    public boolean T(@NonNull s sVar) {
        return this.B0.remove(sVar);
    }

    public void U(@Nullable s sVar) {
        this.A0 = sVar;
    }

    @Override // androidx.transition.Visibility
    public Animator onAppear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return M(viewGroup, view, true);
    }

    @Override // androidx.transition.Visibility
    public Animator onDisappear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return M(viewGroup, view, false);
    }
}
