package com.google.android.material.transition.platform;

import android.animation.Animator;
import android.transition.TransitionValues;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.view.GravityCompat;
import com.google.android.material.R;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
@RequiresApi(21)
/* loaded from: classes2.dex */
public final class MaterialSharedAxis extends p<t> {

    /* renamed from: f  reason: collision with root package name */
    public static final int f16535f = 0;

    /* renamed from: g  reason: collision with root package name */
    public static final int f16536g = 1;

    /* renamed from: h  reason: collision with root package name */
    public static final int f16537h = 2;
    @AttrRes

    /* renamed from: i  reason: collision with root package name */
    private static final int f16538i = R.attr.motionDurationLong1;
    @AttrRes

    /* renamed from: j  reason: collision with root package name */
    private static final int f16539j = R.attr.motionEasingStandard;

    /* renamed from: d  reason: collision with root package name */
    private final int f16540d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f16541e;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes.dex */
    public @interface Axis {
    }

    public MaterialSharedAxis(int i2, boolean z3) {
        super(m(i2, z3), n());
        this.f16540d = i2;
        this.f16541e = z3;
    }

    private static t m(int i2, boolean z3) {
        if (i2 == 0) {
            return new SlideDistanceProvider(z3 ? GravityCompat.END : GravityCompat.START);
        } else if (i2 == 1) {
            return new SlideDistanceProvider(z3 ? 80 : 48);
        } else if (i2 == 2) {
            return new q(z3);
        } else {
            throw new IllegalArgumentException("Invalid axis: " + i2);
        }
    }

    private static t n() {
        return new e();
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
        return f16538i;
    }

    @Override // com.google.android.material.transition.platform.p
    @AttrRes
    int g(boolean z3) {
        return f16539j;
    }

    @Override // com.google.android.material.transition.platform.p
    @NonNull
    public /* bridge */ /* synthetic */ t h() {
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

    public int o() {
        return this.f16540d;
    }

    @Override // com.google.android.material.transition.platform.p, android.transition.Visibility
    public /* bridge */ /* synthetic */ Animator onAppear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return super.onAppear(viewGroup, view, transitionValues, transitionValues2);
    }

    @Override // com.google.android.material.transition.platform.p, android.transition.Visibility
    public /* bridge */ /* synthetic */ Animator onDisappear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return super.onDisappear(viewGroup, view, transitionValues, transitionValues2);
    }

    public boolean p() {
        return this.f16541e;
    }
}
