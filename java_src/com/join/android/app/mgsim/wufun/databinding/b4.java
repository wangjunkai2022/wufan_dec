package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.domain.adapter.BaseDataBindingAdapter;
import com.join.mgps.business.CollectionBeanSubBusiness;
import java.util.List;
/* compiled from: BtHrecyclerviewGamelistLayoutBinding.java */
/* loaded from: classes3.dex */
public abstract class b4 extends ViewDataBinding {
    @NonNull
    public final RecyclerView E;
    @Bindable
    protected List<CollectionBeanSubBusiness> F;
    @Bindable
    protected BaseDataBindingAdapter<Object, ViewDataBinding> G;

    /* JADX INFO: Access modifiers changed from: protected */
    public b4(Object obj, View view, int i2, RecyclerView recyclerView) {
        super(obj, view, i2);
        this.E = recyclerView;
    }

    public static b4 Z0(@NonNull View view) {
        return a1(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static b4 a1(@NonNull View view, @Nullable Object obj) {
        return (b4) ViewDataBinding.h(obj, view, R.layout.bt_hrecyclerview_gamelist_layout);
    }

    @NonNull
    public static b4 d1(@NonNull LayoutInflater layoutInflater) {
        return g1(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static b4 e1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        return f1(layoutInflater, viewGroup, z3, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static b4 f1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3, @Nullable Object obj) {
        return (b4) ViewDataBinding.Q(layoutInflater, R.layout.bt_hrecyclerview_gamelist_layout, viewGroup, z3, obj);
    }

    @NonNull
    @Deprecated
    public static b4 g1(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (b4) ViewDataBinding.Q(layoutInflater, R.layout.bt_hrecyclerview_gamelist_layout, null, false, obj);
    }

    @Nullable
    public BaseDataBindingAdapter<Object, ViewDataBinding> b1() {
        return this.G;
    }

    @Nullable
    public List<CollectionBeanSubBusiness> c1() {
        return this.F;
    }

    public abstract void h1(@Nullable BaseDataBindingAdapter<Object, ViewDataBinding> baseDataBindingAdapter);

    public abstract void i1(@Nullable List<CollectionBeanSubBusiness> list);
}
