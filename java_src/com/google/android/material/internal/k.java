package com.google.android.material.internal;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.util.StateSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import java.util.ArrayList;
/* compiled from: StateListAnimator.java */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    private final ArrayList<b> f15191a = new ArrayList<>();
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private b f15192b = null;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    ValueAnimator f15193c = null;

    /* renamed from: d  reason: collision with root package name */
    private final Animator.AnimatorListener f15194d = new a();

    /* compiled from: StateListAnimator.java */
    /* loaded from: classes2.dex */
    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            k kVar = k.this;
            if (kVar.f15193c == animator) {
                kVar.f15193c = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: StateListAnimator.java */
    /* loaded from: classes2.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        final int[] f15196a;

        /* renamed from: b  reason: collision with root package name */
        final ValueAnimator f15197b;

        b(int[] iArr, ValueAnimator valueAnimator) {
            this.f15196a = iArr;
            this.f15197b = valueAnimator;
        }
    }

    private void b() {
        ValueAnimator valueAnimator = this.f15193c;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.f15193c = null;
        }
    }

    private void e(@NonNull b bVar) {
        ValueAnimator valueAnimator = bVar.f15197b;
        this.f15193c = valueAnimator;
        valueAnimator.start();
    }

    public void a(int[] iArr, ValueAnimator valueAnimator) {
        b bVar = new b(iArr, valueAnimator);
        valueAnimator.addListener(this.f15194d);
        this.f15191a.add(bVar);
    }

    public void c() {
        ValueAnimator valueAnimator = this.f15193c;
        if (valueAnimator != null) {
            valueAnimator.end();
            this.f15193c = null;
        }
    }

    public void d(int[] iArr) {
        b bVar;
        int size = this.f15191a.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                bVar = null;
                break;
            }
            bVar = this.f15191a.get(i2);
            if (StateSet.stateSetMatches(bVar.f15196a, iArr)) {
                break;
            }
            i2++;
        }
        b bVar2 = this.f15192b;
        if (bVar == bVar2) {
            return;
        }
        if (bVar2 != null) {
            b();
        }
        this.f15192b = bVar;
        if (bVar != null) {
            e(bVar);
        }
    }
}
