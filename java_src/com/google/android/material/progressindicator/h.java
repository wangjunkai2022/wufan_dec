package com.google.android.material.progressindicator;

import android.animation.Animator;
import androidx.annotation.NonNull;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: IndeterminateAnimatorDelegate.java */
/* loaded from: classes2.dex */
public abstract class h<T extends Animator> {

    /* renamed from: a  reason: collision with root package name */
    protected i f15445a;

    /* renamed from: b  reason: collision with root package name */
    protected final float[] f15446b;

    /* renamed from: c  reason: collision with root package name */
    protected final int[] f15447c;

    /* JADX INFO: Access modifiers changed from: protected */
    public h(int i2) {
        this.f15446b = new float[i2 * 2];
        this.f15447c = new int[i2];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void a();

    /* JADX INFO: Access modifiers changed from: protected */
    public float b(int i2, int i4, int i5) {
        return (i2 - i4) / i5;
    }

    public abstract void c();

    public abstract void d(@NonNull Animatable2Compat.AnimationCallback animationCallback);

    /* JADX INFO: Access modifiers changed from: protected */
    public void e(@NonNull i iVar) {
        this.f15445a = iVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void f();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void g();

    public abstract void h();
}
