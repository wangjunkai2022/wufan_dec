package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.domain.adapter.BaseDataBindingAdapter;
import com.join.kotlin.ui.modleregin.viewModle.GameListViewModle;
/* compiled from: DatabGamelistLayoutBinding.java */
/* loaded from: classes3.dex */
public abstract class z8 extends ViewDataBinding {
    @NonNull
    public final XRecyclerView E;
    @Bindable
    protected XRecyclerView.f F;
    @Bindable
    protected BaseDataBindingAdapter<Object, ViewDataBinding> G;
    @Bindable
    protected GameListViewModle H;

    /* JADX INFO: Access modifiers changed from: protected */
    public z8(Object obj, View view, int i2, XRecyclerView xRecyclerView) {
        super(obj, view, i2);
        this.E = xRecyclerView;
    }

    public static z8 Z0(@NonNull View view) {
        return a1(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static z8 a1(@NonNull View view, @Nullable Object obj) {
        return (z8) ViewDataBinding.h(obj, view, R.layout.datab_gamelist_layout);
    }

    @NonNull
    public static z8 e1(@NonNull LayoutInflater layoutInflater) {
        return h1(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static z8 f1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        return g1(layoutInflater, viewGroup, z3, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static z8 g1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3, @Nullable Object obj) {
        return (z8) ViewDataBinding.Q(layoutInflater, R.layout.datab_gamelist_layout, viewGroup, z3, obj);
    }

    @NonNull
    @Deprecated
    public static z8 h1(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (z8) ViewDataBinding.Q(layoutInflater, R.layout.datab_gamelist_layout, null, false, obj);
    }

    @Nullable
    public BaseDataBindingAdapter<Object, ViewDataBinding> b1() {
        return this.G;
    }

    @Nullable
    public XRecyclerView.f c1() {
        return this.F;
    }

    @Nullable
    public GameListViewModle d1() {
        return this.H;
    }

    public abstract void i1(@Nullable BaseDataBindingAdapter<Object, ViewDataBinding> baseDataBindingAdapter);

    public abstract void j1(@Nullable XRecyclerView.f fVar);

    public abstract void k1(@Nullable GameListViewModle gameListViewModle);
}
