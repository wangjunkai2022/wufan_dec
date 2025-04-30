package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: DatabindingLineLayoutBinding.java */
/* loaded from: classes3.dex */
public abstract class f9 extends ViewDataBinding {
    /* JADX INFO: Access modifiers changed from: protected */
    public f9(Object obj, View view, int i2) {
        super(obj, view, i2);
    }

    public static f9 Z0(@NonNull View view) {
        return a1(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static f9 a1(@NonNull View view, @Nullable Object obj) {
        return (f9) ViewDataBinding.h(obj, view, R.layout.databinding_line_layout);
    }

    @NonNull
    public static f9 b1(@NonNull LayoutInflater layoutInflater) {
        return e1(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static f9 c1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        return d1(layoutInflater, viewGroup, z3, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static f9 d1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3, @Nullable Object obj) {
        return (f9) ViewDataBinding.Q(layoutInflater, R.layout.databinding_line_layout, viewGroup, z3, obj);
    }

    @NonNull
    @Deprecated
    public static f9 e1(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (f9) ViewDataBinding.Q(layoutInflater, R.layout.databinding_line_layout, null, false, obj);
    }
}
