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
import com.join.kotlin.ui.cloudarchive.GameDetailEmusCloudViewModle;
/* compiled from: GameDetailEmusCloudListLayoutDatabindingBinding.java */
/* loaded from: classes3.dex */
public abstract class ki extends ViewDataBinding {
    @NonNull
    public final w3 E;
    @NonNull
    public final XRecyclerView F;
    @Bindable
    protected GameDetailEmusCloudViewModle G;
    @Bindable
    protected RecyclerView.Adapter H;
    @Bindable
    protected LoadBindClickProxy I;

    /* JADX INFO: Access modifiers changed from: protected */
    public ki(Object obj, View view, int i2, w3 w3Var, XRecyclerView xRecyclerView) {
        super(obj, view, i2);
        this.E = w3Var;
        this.F = xRecyclerView;
    }

    public static ki Z0(@NonNull View view) {
        return a1(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ki a1(@NonNull View view, @Nullable Object obj) {
        return (ki) ViewDataBinding.h(obj, view, R.layout.game_detail_emus_cloud_list_layout_databinding);
    }

    @NonNull
    public static ki e1(@NonNull LayoutInflater layoutInflater) {
        return h1(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ki f1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        return g1(layoutInflater, viewGroup, z3, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ki g1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3, @Nullable Object obj) {
        return (ki) ViewDataBinding.Q(layoutInflater, R.layout.game_detail_emus_cloud_list_layout_databinding, viewGroup, z3, obj);
    }

    @NonNull
    @Deprecated
    public static ki h1(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (ki) ViewDataBinding.Q(layoutInflater, R.layout.game_detail_emus_cloud_list_layout_databinding, null, false, obj);
    }

    @Nullable
    public RecyclerView.Adapter b1() {
        return this.H;
    }

    @Nullable
    public LoadBindClickProxy c1() {
        return this.I;
    }

    @Nullable
    public GameDetailEmusCloudViewModle d1() {
        return this.G;
    }

    public abstract void i1(@Nullable RecyclerView.Adapter adapter);

    public abstract void j1(@Nullable LoadBindClickProxy loadBindClickProxy);

    public abstract void k1(@Nullable GameDetailEmusCloudViewModle gameDetailEmusCloudViewModle);
}
