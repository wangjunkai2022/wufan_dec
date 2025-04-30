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
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.domain.adapter.BaseDataBindingAdapter;
import com.join.kotlin.domain.common.LoadBindClickProxy;
import com.join.kotlin.ui.modleregin.viewModle.BtReginModle;
import com.join.kotlin.ui.notice.ClickProxy;
/* compiled from: BtReginActivityBinding.java */
/* loaded from: classes3.dex */
public abstract class f4 extends ViewDataBinding {
    @NonNull
    public final ImageView E;
    @NonNull
    public final XRecyclerView F;
    @NonNull
    public final TextView G;
    @Bindable
    protected BtReginModle H;
    @Bindable
    protected BaseDataBindingAdapter<Object, ViewDataBinding> I;
    @Bindable
    protected ClickProxy J;
    @Bindable
    protected LoadBindClickProxy K;
    @Bindable

    /* renamed from: n0  reason: collision with root package name */
    protected XRecyclerView.f f20018n0;

    /* JADX INFO: Access modifiers changed from: protected */
    public f4(Object obj, View view, int i2, ImageView imageView, XRecyclerView xRecyclerView, TextView textView) {
        super(obj, view, i2);
        this.E = imageView;
        this.F = xRecyclerView;
        this.G = textView;
    }

    public static f4 Z0(@NonNull View view) {
        return a1(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static f4 a1(@NonNull View view, @Nullable Object obj) {
        return (f4) ViewDataBinding.h(obj, view, R.layout.bt_regin_activity);
    }

    @NonNull
    public static f4 g1(@NonNull LayoutInflater layoutInflater) {
        return j1(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static f4 h1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        return i1(layoutInflater, viewGroup, z3, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static f4 i1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3, @Nullable Object obj) {
        return (f4) ViewDataBinding.Q(layoutInflater, R.layout.bt_regin_activity, viewGroup, z3, obj);
    }

    @NonNull
    @Deprecated
    public static f4 j1(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (f4) ViewDataBinding.Q(layoutInflater, R.layout.bt_regin_activity, null, false, obj);
    }

    @Nullable
    public BaseDataBindingAdapter<Object, ViewDataBinding> b1() {
        return this.I;
    }

    @Nullable
    public ClickProxy c1() {
        return this.J;
    }

    @Nullable
    public LoadBindClickProxy d1() {
        return this.K;
    }

    @Nullable
    public XRecyclerView.f e1() {
        return this.f20018n0;
    }

    @Nullable
    public BtReginModle f1() {
        return this.H;
    }

    public abstract void k1(@Nullable BaseDataBindingAdapter<Object, ViewDataBinding> baseDataBindingAdapter);

    public abstract void l1(@Nullable ClickProxy clickProxy);

    public abstract void m1(@Nullable LoadBindClickProxy loadBindClickProxy);

    public abstract void n1(@Nullable XRecyclerView.f fVar);

    public abstract void o1(@Nullable BtReginModle btReginModle);
}
