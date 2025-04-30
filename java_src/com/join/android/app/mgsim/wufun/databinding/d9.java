package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.BannerBean;
/* compiled from: DatabindingHtaglistItemBinding.java */
/* loaded from: classes3.dex */
public abstract class d9 extends ViewDataBinding {
    @NonNull
    public final SimpleDraweeView E;
    @NonNull
    public final LinearLayout F;
    @Bindable
    protected BannerBean G;

    /* JADX INFO: Access modifiers changed from: protected */
    public d9(Object obj, View view, int i2, SimpleDraweeView simpleDraweeView, LinearLayout linearLayout) {
        super(obj, view, i2);
        this.E = simpleDraweeView;
        this.F = linearLayout;
    }

    public static d9 Z0(@NonNull View view) {
        return a1(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static d9 a1(@NonNull View view, @Nullable Object obj) {
        return (d9) ViewDataBinding.h(obj, view, R.layout.databinding_htaglist_item);
    }

    @NonNull
    public static d9 c1(@NonNull LayoutInflater layoutInflater) {
        return f1(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static d9 d1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        return e1(layoutInflater, viewGroup, z3, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static d9 e1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3, @Nullable Object obj) {
        return (d9) ViewDataBinding.Q(layoutInflater, R.layout.databinding_htaglist_item, viewGroup, z3, obj);
    }

    @NonNull
    @Deprecated
    public static d9 f1(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (d9) ViewDataBinding.Q(layoutInflater, R.layout.databinding_htaglist_item, null, false, obj);
    }

    @Nullable
    public BannerBean b1() {
        return this.G;
    }

    public abstract void g1(@Nullable BannerBean bannerBean);
}
