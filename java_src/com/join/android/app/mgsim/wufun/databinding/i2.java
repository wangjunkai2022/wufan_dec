package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.domain.adapter.BaseDataBindingAdapter;
import com.join.kotlin.ui.userrecom.RecomViewModle;
/* compiled from: ActivityUserrecomActivityBinding.java */
/* loaded from: classes3.dex */
public abstract class i2 extends ViewDataBinding {
    @NonNull
    public final RecyclerView E;
    @NonNull
    public final TextView F;
    @NonNull
    public final RelativeLayout G;
    @Bindable
    protected RecomViewModle H;
    @Bindable
    protected BaseDataBindingAdapter I;
    @Bindable
    protected View.OnClickListener J;

    /* JADX INFO: Access modifiers changed from: protected */
    public i2(Object obj, View view, int i2, RecyclerView recyclerView, TextView textView, RelativeLayout relativeLayout) {
        super(obj, view, i2);
        this.E = recyclerView;
        this.F = textView;
        this.G = relativeLayout;
    }

    public static i2 Z0(@NonNull View view) {
        return a1(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static i2 a1(@NonNull View view, @Nullable Object obj) {
        return (i2) ViewDataBinding.h(obj, view, R.layout.activity_userrecom_activity);
    }

    @NonNull
    public static i2 e1(@NonNull LayoutInflater layoutInflater) {
        return h1(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static i2 f1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        return g1(layoutInflater, viewGroup, z3, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static i2 g1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3, @Nullable Object obj) {
        return (i2) ViewDataBinding.Q(layoutInflater, R.layout.activity_userrecom_activity, viewGroup, z3, obj);
    }

    @NonNull
    @Deprecated
    public static i2 h1(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (i2) ViewDataBinding.Q(layoutInflater, R.layout.activity_userrecom_activity, null, false, obj);
    }

    @Nullable
    public BaseDataBindingAdapter b1() {
        return this.I;
    }

    @Nullable
    public View.OnClickListener c1() {
        return this.J;
    }

    @Nullable
    public RecomViewModle d1() {
        return this.H;
    }

    public abstract void i1(@Nullable BaseDataBindingAdapter baseDataBindingAdapter);

    public abstract void j1(@Nullable View.OnClickListener onClickListener);

    public abstract void k1(@Nullable RecomViewModle recomViewModle);
}
