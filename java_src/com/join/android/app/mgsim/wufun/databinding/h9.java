package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.modleregin.modle.TitleModle;
/* compiled from: DatabindingTitleLayoutBinding.java */
/* loaded from: classes3.dex */
public abstract class h9 extends ViewDataBinding {
    @NonNull
    public final TextView E;
    @NonNull
    public final TextView F;
    @NonNull
    public final TextView G;
    @Bindable
    protected Boolean H;
    @Bindable
    protected View.OnClickListener I;
    @Bindable
    protected TitleModle J;

    /* JADX INFO: Access modifiers changed from: protected */
    public h9(Object obj, View view, int i2, TextView textView, TextView textView2, TextView textView3) {
        super(obj, view, i2);
        this.E = textView;
        this.F = textView2;
        this.G = textView3;
    }

    public static h9 Z0(@NonNull View view) {
        return a1(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static h9 a1(@NonNull View view, @Nullable Object obj) {
        return (h9) ViewDataBinding.h(obj, view, R.layout.databinding_title_layout);
    }

    @NonNull
    public static h9 e1(@NonNull LayoutInflater layoutInflater) {
        return h1(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static h9 f1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        return g1(layoutInflater, viewGroup, z3, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static h9 g1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3, @Nullable Object obj) {
        return (h9) ViewDataBinding.Q(layoutInflater, R.layout.databinding_title_layout, viewGroup, z3, obj);
    }

    @NonNull
    @Deprecated
    public static h9 h1(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (h9) ViewDataBinding.Q(layoutInflater, R.layout.databinding_title_layout, null, false, obj);
    }

    @Nullable
    public View.OnClickListener b1() {
        return this.I;
    }

    @Nullable
    public TitleModle c1() {
        return this.J;
    }

    @Nullable
    public Boolean d1() {
        return this.H;
    }

    public abstract void i1(@Nullable View.OnClickListener onClickListener);

    public abstract void j1(@Nullable TitleModle titleModle);

    public abstract void k1(@Nullable Boolean bool);
}
