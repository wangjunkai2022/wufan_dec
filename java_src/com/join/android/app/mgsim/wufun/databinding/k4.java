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
import com.join.mgps.dto.BannerBean;
import java.util.List;
/* compiled from: BtTagRecycviewLayoutBinding.java */
/* loaded from: classes3.dex */
public abstract class k4 extends ViewDataBinding {
    @Bindable
    protected List<BannerBean> E;
    @Bindable
    protected BaseDataBindingAdapter<Object, ViewDataBinding> F;

    /* JADX INFO: Access modifiers changed from: protected */
    public k4(Object obj, View view, int i2) {
        super(obj, view, i2);
    }

    public static k4 Z0(@NonNull View view) {
        return a1(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static k4 a1(@NonNull View view, @Nullable Object obj) {
        return (k4) ViewDataBinding.h(obj, view, R.layout.bt_tag_recycview_layout);
    }

    @NonNull
    public static k4 d1(@NonNull LayoutInflater layoutInflater) {
        return g1(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static k4 e1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        return f1(layoutInflater, viewGroup, z3, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static k4 f1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3, @Nullable Object obj) {
        return (k4) ViewDataBinding.Q(layoutInflater, R.layout.bt_tag_recycview_layout, viewGroup, z3, obj);
    }

    @NonNull
    @Deprecated
    public static k4 g1(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (k4) ViewDataBinding.Q(layoutInflater, R.layout.bt_tag_recycview_layout, null, false, obj);
    }

    @Nullable
    public BaseDataBindingAdapter<Object, ViewDataBinding> b1() {
        return this.F;
    }

    @Nullable
    public List<BannerBean> c1() {
        return this.E;
    }

    public abstract void h1(@Nullable BaseDataBindingAdapter<Object, ViewDataBinding> baseDataBindingAdapter);

    public abstract void i1(@Nullable List<BannerBean> list);
}
