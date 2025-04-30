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
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.domain.common.LoadBindClickProxy;
import com.join.kotlin.ui.cloudarchive.ModGameCloudViewModle;
/* compiled from: RecyclerviewLayoutDatabindingBinding.java */
/* loaded from: classes3.dex */
public abstract class s90 extends ViewDataBinding {
    @NonNull
    public final XRecyclerView E;
    @Bindable
    protected ModGameCloudViewModle F;
    @Bindable
    protected RecyclerView.Adapter G;
    @Bindable
    protected LoadBindClickProxy H;

    /* JADX INFO: Access modifiers changed from: protected */
    public s90(Object obj, View view, int i2, XRecyclerView xRecyclerView) {
        super(obj, view, i2);
        this.E = xRecyclerView;
    }

    public static s90 Z0(@NonNull View view) {
        return a1(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static s90 a1(@NonNull View view, @Nullable Object obj) {
        return (s90) ViewDataBinding.h(obj, view, R.layout.recyclerview_layout_databinding);
    }

    @NonNull
    public static s90 e1(@NonNull LayoutInflater layoutInflater) {
        return h1(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static s90 f1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        return g1(layoutInflater, viewGroup, z3, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static s90 g1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3, @Nullable Object obj) {
        return (s90) ViewDataBinding.Q(layoutInflater, R.layout.recyclerview_layout_databinding, viewGroup, z3, obj);
    }

    @NonNull
    @Deprecated
    public static s90 h1(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (s90) ViewDataBinding.Q(layoutInflater, R.layout.recyclerview_layout_databinding, null, false, obj);
    }

    @Nullable
    public RecyclerView.Adapter b1() {
        return this.G;
    }

    @Nullable
    public LoadBindClickProxy c1() {
        return this.H;
    }

    @Nullable
    public ModGameCloudViewModle d1() {
        return this.F;
    }

    public abstract void i1(@Nullable RecyclerView.Adapter adapter);

    public abstract void j1(@Nullable LoadBindClickProxy loadBindClickProxy);

    public abstract void k1(@Nullable ModGameCloudViewModle modGameCloudViewModle);
}
