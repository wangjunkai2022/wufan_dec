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
import com.join.kotlin.ui.modleregin.modle.BtTagSelecterBean;
/* compiled from: BtSelectItemBinding.java */
/* loaded from: classes3.dex */
public abstract class h4 extends ViewDataBinding {
    @Bindable
    protected BtTagSelecterBean E;

    /* JADX INFO: Access modifiers changed from: protected */
    public h4(Object obj, View view, int i2) {
        super(obj, view, i2);
    }

    public static h4 Z0(@NonNull View view) {
        return a1(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static h4 a1(@NonNull View view, @Nullable Object obj) {
        return (h4) ViewDataBinding.h(obj, view, R.layout.bt_select_item);
    }

    @NonNull
    public static h4 c1(@NonNull LayoutInflater layoutInflater) {
        return f1(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static h4 d1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        return e1(layoutInflater, viewGroup, z3, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static h4 e1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3, @Nullable Object obj) {
        return (h4) ViewDataBinding.Q(layoutInflater, R.layout.bt_select_item, viewGroup, z3, obj);
    }

    @NonNull
    @Deprecated
    public static h4 f1(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (h4) ViewDataBinding.Q(layoutInflater, R.layout.bt_select_item, null, false, obj);
    }

    @Nullable
    public BtTagSelecterBean b1() {
        return this.E;
    }

    public abstract void g1(@Nullable BtTagSelecterBean btTagSelecterBean);
}
