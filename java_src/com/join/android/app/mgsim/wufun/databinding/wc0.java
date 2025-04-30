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
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.account.viewmodle.UnbindViewModle;
import com.join.kotlin.ui.notice.ClickProxy;
/* compiled from: UnbindThridpartActivityBinding.java */
/* loaded from: classes3.dex */
public abstract class wc0 extends ViewDataBinding {
    @NonNull
    public final ImageView E;
    @NonNull
    public final TextView F;
    @NonNull
    public final TextView G;
    @Bindable
    protected ClickProxy H;
    @Bindable
    protected UnbindViewModle I;

    /* JADX INFO: Access modifiers changed from: protected */
    public wc0(Object obj, View view, int i2, ImageView imageView, TextView textView, TextView textView2) {
        super(obj, view, i2);
        this.E = imageView;
        this.F = textView;
        this.G = textView2;
    }

    public static wc0 Z0(@NonNull View view) {
        return a1(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static wc0 a1(@NonNull View view, @Nullable Object obj) {
        return (wc0) ViewDataBinding.h(obj, view, R.layout.unbind_thridpart_activity);
    }

    @NonNull
    public static wc0 d1(@NonNull LayoutInflater layoutInflater) {
        return g1(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static wc0 e1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        return f1(layoutInflater, viewGroup, z3, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static wc0 f1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3, @Nullable Object obj) {
        return (wc0) ViewDataBinding.Q(layoutInflater, R.layout.unbind_thridpart_activity, viewGroup, z3, obj);
    }

    @NonNull
    @Deprecated
    public static wc0 g1(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (wc0) ViewDataBinding.Q(layoutInflater, R.layout.unbind_thridpart_activity, null, false, obj);
    }

    @Nullable
    public ClickProxy b1() {
        return this.H;
    }

    @Nullable
    public UnbindViewModle c1() {
        return this.I;
    }

    public abstract void h1(@Nullable ClickProxy clickProxy);

    public abstract void i1(@Nullable UnbindViewModle unbindViewModle);
}
