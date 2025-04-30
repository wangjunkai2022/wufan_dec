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
import com.join.kotlin.ui.modleregin.modle.BtGameListItem;
import com.join.mgps.customview.DownloadViewStroke;
/* compiled from: BtListitemBinding.java */
/* loaded from: classes3.dex */
public abstract class d4 extends ViewDataBinding {
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
    public final TextView f19194n0;
    @NonNull

    /* renamed from: o0  reason: collision with root package name */
    public final ProgressBar f19195o0;
    @NonNull

    /* renamed from: p0  reason: collision with root package name */
    public final ProgressBar f19196p0;
    @Bindable

    /* renamed from: q0  reason: collision with root package name */
    protected BtGameListItem f19197q0;
    @Bindable

    /* renamed from: r0  reason: collision with root package name */
    protected AppListItemShowBean f19198r0;

    /* JADX INFO: Access modifiers changed from: protected */
    public d4(Object obj, View view, int i2, TextView textView, DownloadViewStroke downloadViewStroke, SimpleDraweeView simpleDraweeView, TextView textView2, LinearLayout linearLayout, ImageView imageView, LinearLayout linearLayout2, TextView textView3, ProgressBar progressBar, ProgressBar progressBar2) {
        super(obj, view, i2);
        this.E = textView;
        this.F = downloadViewStroke;
        this.G = simpleDraweeView;
        this.H = textView2;
        this.I = linearLayout;
        this.J = imageView;
        this.K = linearLayout2;
        this.f19194n0 = textView3;
        this.f19195o0 = progressBar;
        this.f19196p0 = progressBar2;
    }

    public static d4 Z0(@NonNull View view) {
        return a1(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static d4 a1(@NonNull View view, @Nullable Object obj) {
        return (d4) ViewDataBinding.h(obj, view, R.layout.bt_listitem);
    }

    @NonNull
    public static d4 d1(@NonNull LayoutInflater layoutInflater) {
        return g1(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static d4 e1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        return f1(layoutInflater, viewGroup, z3, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static d4 f1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3, @Nullable Object obj) {
        return (d4) ViewDataBinding.Q(layoutInflater, R.layout.bt_listitem, viewGroup, z3, obj);
    }

    @NonNull
    @Deprecated
    public static d4 g1(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (d4) ViewDataBinding.Q(layoutInflater, R.layout.bt_listitem, null, false, obj);
    }

    @Nullable
    public BtGameListItem b1() {
        return this.f19197q0;
    }

    @Nullable
    public AppListItemShowBean c1() {
        return this.f19198r0;
    }

    public abstract void h1(@Nullable BtGameListItem btGameListItem);

    public abstract void i1(@Nullable AppListItemShowBean appListItemShowBean);
}
