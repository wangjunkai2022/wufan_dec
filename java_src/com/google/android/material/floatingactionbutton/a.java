package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import androidx.annotation.Nullable;
/* compiled from: AnimatorTracker.java */
/* loaded from: classes2.dex */
class a {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private Animator f14934a;

    public void a() {
        Animator animator = this.f14934a;
        if (animator != null) {
            animator.cancel();
        }
    }

    public void b() {
        this.f14934a = null;
    }

    public void c(Animator animator) {
        a();
        this.f14934a = animator;
    }
}
