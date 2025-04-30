package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.business.CollectionBeanSubBusiness;
/* compiled from: DatabindingHgamelistItemBinding.java */
/* loaded from: classes3.dex */
public abstract class b9 extends ViewDataBinding {
    @NonNull
    public final TextView E;
    @NonNull
    public final SimpleDraweeView F;
    @NonNull
    public final LinearLayout G;
    @Bindable
    protected CollectionBeanSubBusiness H;

    /* JADX INFO: Access modifiers changed from: protected */
    public b9(Object obj, View view, int i2, TextView textView, SimpleDraweeView simpleDraweeView, LinearLayout linearLayout) {
        super(obj, view, i2);
        this.E = textView;
        this.F = simpleDraweeView;
        this.G = linearLayout;
    }

    public static b9 Z0(@NonNull View view) {
        return a1(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static b9 a1(@NonNull View view, @Nullable Object obj) {
        return (b9) ViewDataBinding.h(obj, view, R.layout.databinding_hgamelist_item);
    }

    @NonNull
    public static b9 c1(@NonNull LayoutInflater layoutInflater) {
        return f1(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static b9 d1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        return e1(layoutInflater, viewGroup, z3, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static b9 e1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3, @Nullable Object obj) {
        return (b9) ViewDataBinding.Q(layoutInflater, R.layout.databinding_hgamelist_item, viewGroup, z3, obj);
    }

    @NonNull
    @Deprecated
    public static b9 f1(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (b9) ViewDataBinding.Q(layoutInflater, R.layout.databinding_hgamelist_item, null, false, obj);
    }

    @Nullable
    public CollectionBeanSubBusiness b1() {
        return this.H;
    }

    public abstract void g1(@Nullable CollectionBeanSubBusiness collectionBeanSubBusiness);
}
