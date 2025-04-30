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
import com.join.kotlin.ui.notice.ClickProxy;
import com.join.mgps.dto.BTActivityBean;
/* compiled from: NoticeItemItemBinding.java */
/* loaded from: classes3.dex */
public abstract class b60 extends ViewDataBinding {
    @NonNull
    public final ConstraintLayout E;
    @NonNull
    public final TextView F;
    @NonNull
    public final TextView G;
    @NonNull
    public final TextView H;
    @Bindable
    protected BTActivityBean I;
    @Bindable
    protected ClickProxy J;

    /* JADX INFO: Access modifiers changed from: protected */
    public b60(Object obj, View view, int i2, ConstraintLayout constraintLayout, TextView textView, TextView textView2, TextView textView3) {
        super(obj, view, i2);
        this.E = constraintLayout;
        this.F = textView;
        this.G = textView2;
        this.H = textView3;
    }

    public static b60 Z0(@NonNull View view) {
        return a1(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static b60 a1(@NonNull View view, @Nullable Object obj) {
        return (b60) ViewDataBinding.h(obj, view, R.layout.notice_item_item);
    }

    @NonNull
    public static b60 d1(@NonNull LayoutInflater layoutInflater) {
        return g1(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static b60 e1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        return f1(layoutInflater, viewGroup, z3, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static b60 f1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3, @Nullable Object obj) {
        return (b60) ViewDataBinding.Q(layoutInflater, R.layout.notice_item_item, viewGroup, z3, obj);
    }

    @NonNull
    @Deprecated
    public static b60 g1(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (b60) ViewDataBinding.Q(layoutInflater, R.layout.notice_item_item, null, false, obj);
    }

    @Nullable
    public BTActivityBean b1() {
        return this.I;
    }

    @Nullable
    public ClickProxy c1() {
        return this.J;
    }

    public abstract void h1(@Nullable BTActivityBean bTActivityBean);

    public abstract void i1(@Nullable ClickProxy clickProxy);
}
