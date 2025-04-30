package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.domain.adapter.BaseDataBindingAdapter;
import com.join.kotlin.domain.common.LoadBindClickProxy;
import com.join.kotlin.ui.coupon.ClickProxy;
import com.join.kotlin.ui.coupon.CouponViewModle;
/* compiled from: ActivityCouponlistActivityBinding.java */
/* loaded from: classes3.dex */
public abstract class p extends ViewDataBinding {
    @NonNull
    public final ImageView E;
    @NonNull
    public final RecyclerView F;
    @NonNull
    public final TextView G;
    @Bindable
    protected CouponViewModle H;
    @Bindable
    protected BaseDataBindingAdapter I;
    @Bindable
    protected ClickProxy J;
    @Bindable
    protected LoadBindClickProxy K;

    /* JADX INFO: Access modifiers changed from: protected */
    public p(Object obj, View view, int i2, ImageView imageView, RecyclerView recyclerView, TextView textView) {
        super(obj, view, i2);
        this.E = imageView;
        this.F = recyclerView;
        this.G = textView;
    }

    public static p Z0(@NonNull View view) {
        return a1(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static p a1(@NonNull View view, @Nullable Object obj) {
        return (p) ViewDataBinding.h(obj, view, R.layout.activity_couponlist_activity);
    }

    @NonNull
    public static p f1(@NonNull LayoutInflater layoutInflater) {
        return i1(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static p g1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        return h1(layoutInflater, viewGroup, z3, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static p h1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3, @Nullable Object obj) {
        return (p) ViewDataBinding.Q(layoutInflater, R.layout.activity_couponlist_activity, viewGroup, z3, obj);
    }

    @NonNull
    @Deprecated
    public static p i1(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (p) ViewDataBinding.Q(layoutInflater, R.layout.activity_couponlist_activity, null, false, obj);
    }

    @Nullable
    public BaseDataBindingAdapter b1() {
        return this.I;
    }

    @Nullable
    public ClickProxy c1() {
        return this.J;
    }

    @Nullable
    public LoadBindClickProxy d1() {
        return this.K;
    }

    @Nullable
    public CouponViewModle e1() {
        return this.H;
    }

    public abstract void j1(@Nullable BaseDataBindingAdapter baseDataBindingAdapter);

    public abstract void k1(@Nullable ClickProxy clickProxy);

    public abstract void l1(@Nullable LoadBindClickProxy loadBindClickProxy);

    public abstract void m1(@Nullable CouponViewModle couponViewModle);
}
