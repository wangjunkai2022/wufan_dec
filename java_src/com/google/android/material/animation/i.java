package com.google.android.material.animation;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* compiled from: MotionTiming.java */
/* loaded from: classes2.dex */
public class i {

    /* renamed from: a  reason: collision with root package name */
    private long f14020a;

    /* renamed from: b  reason: collision with root package name */
    private long f14021b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private TimeInterpolator f14022c;

    /* renamed from: d  reason: collision with root package name */
    private int f14023d;

    /* renamed from: e  reason: collision with root package name */
    private int f14024e;

    public i(long j4, long j5) {
        this.f14020a = 0L;
        this.f14021b = 300L;
        this.f14022c = null;
        this.f14023d = 0;
        this.f14024e = 1;
        this.f14020a = j4;
        this.f14021b = j5;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public static i b(@NonNull ValueAnimator valueAnimator) {
        i iVar = new i(valueAnimator.getStartDelay(), valueAnimator.getDuration(), f(valueAnimator));
        iVar.f14023d = valueAnimator.getRepeatCount();
        iVar.f14024e = valueAnimator.getRepeatMode();
        return iVar;
    }

    private static TimeInterpolator f(@NonNull ValueAnimator valueAnimator) {
        TimeInterpolator interpolator = valueAnimator.getInterpolator();
        if (!(interpolator instanceof AccelerateDecelerateInterpolator) && interpolator != null) {
            if (interpolator instanceof AccelerateInterpolator) {
                return a.f14006c;
            }
            return interpolator instanceof DecelerateInterpolator ? a.f14007d : interpolator;
        }
        return a.f14005b;
    }

    public void a(@NonNull Animator animator) {
        animator.setStartDelay(c());
        animator.setDuration(d());
        animator.setInterpolator(e());
        if (animator instanceof ValueAnimator) {
            ValueAnimator valueAnimator = (ValueAnimator) animator;
            valueAnimator.setRepeatCount(g());
            valueAnimator.setRepeatMode(h());
        }
    }

    public long c() {
        return this.f14020a;
    }

    public long d() {
        return this.f14021b;
    }

    @Nullable
    public TimeInterpolator e() {
        TimeInterpolator timeInterpolator = this.f14022c;
        return timeInterpolator != null ? timeInterpolator : a.f14005b;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof i) {
            i iVar = (i) obj;
            if (c() == iVar.c() && d() == iVar.d() && g() == iVar.g() && h() == iVar.h()) {
                return e().getClass().equals(iVar.e().getClass());
            }
            return false;
        }
        return false;
    }

    public int g() {
        return this.f14023d;
    }

    public int h() {
        return this.f14024e;
    }

    public int hashCode() {
        return (((((((((int) (c() ^ (c() >>> 32))) * 31) + ((int) (d() ^ (d() >>> 32)))) * 31) + e().getClass().hashCode()) * 31) + g()) * 31) + h();
    }

    @NonNull
    public String toString() {
        return '\n' + getClass().getName() + '{' + Integer.toHexString(System.identityHashCode(this)) + " delay: " + c() + " duration: " + d() + " interpolator: " + e().getClass() + " repeatCount: " + g() + " repeatMode: " + h() + "}\n";
    }

    public i(long j4, long j5, @NonNull TimeInterpolator timeInterpolator) {
        this.f14020a = 0L;
        this.f14021b = 300L;
        this.f14022c = null;
        this.f14023d = 0;
        this.f14024e = 1;
        this.f14020a = j4;
        this.f14021b = j5;
        this.f14022c = timeInterpolator;
    }
}
