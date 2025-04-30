package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.domain.common.AppListItemShowBean;
import com.join.mgps.business.CollectionBeanSubBusiness;
import com.join.mgps.customview.DownloadViewStroke;
/* compiled from: UserRecomendListitemBinding.java */
/* loaded from: classes3.dex */
public abstract class fd0 extends ViewDataBinding {
    @NonNull
    public final TextView E;
    @NonNull
    public final DownloadViewStroke F;
    @NonNull
    public final SimpleDraweeView G;
    @NonNull
    public final TextView H;
    @NonNull
    public final LinearLayout I;
    @NonNull
    public final ImageView J;
    @NonNull
    public final LinearLayout K;
    @NonNull

    /* renamed from: n0  reason: collision with root package name */
    public final TextView f20100n0;
    @NonNull

    /* renamed from: o0  reason: collision with root package name */
    public final ProgressBar f20101o0;
    @NonNull

    /* renamed from: p0  reason: collision with root package name */
    public final ProgressBar f20102p0;
    @Bindable

    /* renamed from: q0  reason: collision with root package name */
    protected CollectionBeanSubBusiness f20103q0;
    @Bindable

    /* renamed from: r0  reason: collision with root package name */
    protected AppListItemShowBean f20104r0;

    /* JADX INFO: Access modifiers changed from: protected */
    public fd0(Object obj, View view, int i2, TextView textView, DownloadViewStroke downloadViewStroke, SimpleDraweeView simpleDraweeView, TextView textView2, LinearLayout linearLayout, ImageView imageView, LinearLayout linearLayout2, TextView textView3, ProgressBar progressBar, ProgressBar progressBar2) {
        super(obj, view, i2);
        this.E = textView;
        this.F = downloadViewStroke;
        this.G = simpleDraweeView;
        this.H = textView2;
        this.I = linearLayout;
        this.J = imageView;
        this.K = linearLayout2;
        this.f20100n0 = textView3;
        this.f20101o0 = progressBar;
        this.f20102p0 = progressBar2;
    }

    public static fd0 Z0(@NonNull View view) {
        return a1(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static fd0 a1(@NonNull View view, @Nullable Object obj) {
        return (fd0) ViewDataBinding.h(obj, view, R.layout.user_recomend_listitem);
    }

    @NonNull
    public static fd0 d1(@NonNull LayoutInflater layoutInflater) {
        return g1(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static fd0 e1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        return f1(layoutInflater, viewGroup, z3, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static fd0 f1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3, @Nullable Object obj) {
        return (fd0) ViewDataBinding.Q(layoutInflater, R.layout.user_recomend_listitem, viewGroup, z3, obj);
    }

    @NonNull
    @Deprecated
    public static fd0 g1(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (fd0) ViewDataBinding.Q(layoutInflater, R.layout.user_recomend_listitem, null, false, obj);
    }

    @Nullable
    public CollectionBeanSubBusiness b1() {
        return this.f20103q0;
    }

    @Nullable
    public AppListItemShowBean c1() {
        return this.f20104r0;
    }

    public abstract void h1(@Nullable CollectionBeanSubBusiness collectionBeanSubBusiness);

    public abstract void i1(@Nullable AppListItemShowBean appListItemShowBean);
}
