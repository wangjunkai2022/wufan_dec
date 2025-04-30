package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.viewpager.widget.ViewPager;
import com.facebook.drawee.view.SimpleDraweeView;
import com.google.android.material.tabs.TabLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.domain.common.LoadBindClickProxy;
import com.join.kotlin.ui.cloudarchive.VASingleGameViewModle;
/* compiled from: ActivityVasingleGameIndexBinding.java */
/* loaded from: classes3.dex */
public abstract class k2 extends ViewDataBinding {
    @NonNull
    public final ViewPager A0;
    @Bindable
    protected LoadBindClickProxy B0;
    @Bindable
    protected VASingleGameViewModle C0;
    @NonNull
    public final ConstraintLayout E;
    @NonNull
    public final ImageView F;
    @NonNull
    public final ImageView G;
    @NonNull
    public final ImageView H;
    @NonNull
    public final LinearLayout I;
    @NonNull
    public final LinearLayout J;
    @NonNull
    public final LinearLayout K;
    @NonNull

    /* renamed from: n0  reason: collision with root package name */
    public final LinearLayout f21634n0;
    @NonNull

    /* renamed from: o0  reason: collision with root package name */
    public final SimpleDraweeView f21635o0;
    @NonNull

    /* renamed from: p0  reason: collision with root package name */
    public final SimpleDraweeView f21636p0;
    @NonNull

    /* renamed from: q0  reason: collision with root package name */
    public final TabLayout f21637q0;
    @NonNull

    /* renamed from: r0  reason: collision with root package name */
    public final TextView f21638r0;
    @NonNull

    /* renamed from: s0  reason: collision with root package name */
    public final TextView f21639s0;
    @NonNull

    /* renamed from: t0  reason: collision with root package name */
    public final TextView f21640t0;
    @NonNull

    /* renamed from: u0  reason: collision with root package name */
    public final TextView f21641u0;
    @NonNull

    /* renamed from: v0  reason: collision with root package name */
    public final TextView f21642v0;
    @NonNull

    /* renamed from: w0  reason: collision with root package name */
    public final TextView f21643w0;
    @NonNull

    /* renamed from: x0  reason: collision with root package name */
    public final TextView f21644x0;
    @NonNull

    /* renamed from: y0  reason: collision with root package name */
    public final TextView f21645y0;
    @NonNull

    /* renamed from: z0  reason: collision with root package name */
    public final TextView f21646z0;

    /* JADX INFO: Access modifiers changed from: protected */
    public k2(Object obj, View view, int i2, ConstraintLayout constraintLayout, ImageView imageView, ImageView imageView2, ImageView imageView3, LinearLayout linearLayout, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, SimpleDraweeView simpleDraweeView, SimpleDraweeView simpleDraweeView2, TabLayout tabLayout, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7, TextView textView8, TextView textView9, ViewPager viewPager) {
        super(obj, view, i2);
        this.E = constraintLayout;
        this.F = imageView;
        this.G = imageView2;
        this.H = imageView3;
        this.I = linearLayout;
        this.J = linearLayout2;
        this.K = linearLayout3;
        this.f21634n0 = linearLayout4;
        this.f21635o0 = simpleDraweeView;
        this.f21636p0 = simpleDraweeView2;
        this.f21637q0 = tabLayout;
        this.f21638r0 = textView;
        this.f21639s0 = textView2;
        this.f21640t0 = textView3;
        this.f21641u0 = textView4;
        this.f21642v0 = textView5;
        this.f21643w0 = textView6;
        this.f21644x0 = textView7;
        this.f21645y0 = textView8;
        this.f21646z0 = textView9;
        this.A0 = viewPager;
    }

    public static k2 Z0(@NonNull View view) {
        return a1(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static k2 a1(@NonNull View view, @Nullable Object obj) {
        return (k2) ViewDataBinding.h(obj, view, R.layout.activity_vasingle_game_index);
    }

    @NonNull
    public static k2 d1(@NonNull LayoutInflater layoutInflater) {
        return g1(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static k2 e1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        return f1(layoutInflater, viewGroup, z3, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static k2 f1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3, @Nullable Object obj) {
        return (k2) ViewDataBinding.Q(layoutInflater, R.layout.activity_vasingle_game_index, viewGroup, z3, obj);
    }

    @NonNull
    @Deprecated
    public static k2 g1(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (k2) ViewDataBinding.Q(layoutInflater, R.layout.activity_vasingle_game_index, null, false, obj);
    }

    @Nullable
    public LoadBindClickProxy b1() {
        return this.B0;
    }

    @Nullable
    public VASingleGameViewModle c1() {
        return this.C0;
    }

    public abstract void h1(@Nullable LoadBindClickProxy loadBindClickProxy);

    public abstract void i1(@Nullable VASingleGameViewModle vASingleGameViewModle);
}
