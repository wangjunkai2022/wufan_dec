package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.coupon.ClickProxy;
import com.join.mgps.dto.BTGameCouponBean;
/* compiled from: CouponListItemLayoutBinding.java */
/* loaded from: classes3.dex */
public abstract class p8 extends ViewDataBinding {
    @NonNull
    public final TextView E;
    @NonNull
    public final TextView F;
    @NonNull
    public final View G;
    @NonNull
    public final ConstraintLayout H;
    @NonNull
    public final TextView I;
    @NonNull
    public final TextView J;
    @NonNull
    public final TextView K;
    @NonNull

    /* renamed from: n0  reason: collision with root package name */
    public final TextView f23511n0;
    @Bindable

    /* renamed from: o0  reason: collision with root package name */
    protected BTGameCouponBean f23512o0;
    @Bindable

    /* renamed from: p0  reason: collision with root package name */
    protected Boolean f23513p0;
    @Bindable

    /* renamed from: q0  reason: collision with root package name */
    protected ClickProxy f23514q0;

    /* JADX INFO: Access modifiers changed from: protected */
    public p8(Object obj, View view, int i2, TextView textView, TextView textView2, View view2, ConstraintLayout constraintLayout, TextView textView3, TextView textView4, TextView textView5, TextView textView6) {
        super(obj, view, i2);
        this.E = textView;
        this.F = textView2;
        this.G = view2;
        this.H = constraintLayout;
        this.I = textView3;
        this.J = textView4;
        this.K = textView5;
        this.f23511n0 = textView6;
    }

    public static p8 Z0(@NonNull View view) {
        return a1(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static p8 a1(@NonNull View view, @Nullable Object obj) {
        return (p8) ViewDataBinding.h(obj, view, R.layout.coupon_list_item_layout);
    }

    @NonNull
    public static p8 e1(@NonNull LayoutInflater layoutInflater) {
        return h1(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static p8 f1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        return g1(layoutInflater, viewGroup, z3, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static p8 g1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3, @Nullable Object obj) {
        return (p8) ViewDataBinding.Q(layoutInflater, R.layout.coupon_list_item_layout, viewGroup, z3, obj);
    }

    @NonNull
    @Deprecated
    public static p8 h1(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (p8) ViewDataBinding.Q(layoutInflater, R.layout.coupon_list_item_layout, null, false, obj);
    }

    @Nullable
    public BTGameCouponBean b1() {
        return this.f23512o0;
    }

    @Nullable
    public ClickProxy c1() {
        return this.f23514q0;
    }

    @Nullable
    public Boolean d1() {
        return this.f23513p0;
    }

    public abstract void i1(@Nullable BTGameCouponBean bTGameCouponBean);

    public abstract void j1(@Nullable ClickProxy clickProxy);

    public abstract void k1(@Nullable Boolean bool);
}
