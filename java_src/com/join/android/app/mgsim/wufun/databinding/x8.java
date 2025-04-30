package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.domain.adapter.BaseDataBindingAdapter;
import com.join.kotlin.ui.modleregin.modle.BtTagSelecterBean;
import java.util.List;
/* compiled from: DatabBtHviewlistBinding.java */
/* loaded from: classes3.dex */
public abstract class x8 extends ViewDataBinding {
    @Bindable
    protected List<BtTagSelecterBean> E;
    @Bindable
    protected BaseDataBindingAdapter<Object, ViewDataBinding> F;

    /* JADX INFO: Access modifiers changed from: protected */
    public x8(Object obj, View view, int i2) {
        super(obj, view, i2);
    }

    public static x8 Z0(@NonNull View view) {
        return a1(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static x8 a1(@NonNull View view, @Nullable Object obj) {
        return (x8) ViewDataBinding.h(obj, view, R.layout.datab_bt_hviewlist);
    }

    @NonNull
    public static x8 d1(@NonNull LayoutInflater layoutInflater) {
        return g1(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static x8 e1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        return f1(layoutInflater, viewGroup, z3, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static x8 f1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3, @Nullable Object obj) {
        return (x8) ViewDataBinding.Q(layoutInflater, R.layout.datab_bt_hviewlist, viewGroup, z3, obj);
    }

    @NonNull
    @Deprecated
    public static x8 g1(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (x8) ViewDataBinding.Q(layoutInflater, R.layout.datab_bt_hviewlist, null, false, obj);
    }

    @Nullable
    public BaseDataBindingAdapter<Object, ViewDataBinding> b1() {
        return this.F;
    }

    @Nullable
    public List<BtTagSelecterBean> c1() {
        return this.E;
    }

    public abstract void h1(@Nullable BaseDataBindingAdapter<Object, ViewDataBinding> baseDataBindingAdapter);

    public abstract void i1(@Nullable List<BtTagSelecterBean> list);
}
