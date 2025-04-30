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
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.domain.widget.CornersLinearLayout;
import com.join.kotlin.ui.modleregin.modle.MustplayItemBean;
import com.join.kotlin.ui.modleregin.modle.VideoModle;
import com.join.mgps.customview.DownloadViewStroke;
/* compiled from: MustplayItemLayoutBinding.java */
/* loaded from: classes3.dex */
public abstract class g40 extends ViewDataBinding {
    @NonNull
    public final TextView E;
    @NonNull
    public final TextView F;
    @NonNull
    public final DownloadViewStroke G;
    @NonNull
    public final TextView H;
    @NonNull
    public final TextView I;
    @NonNull
    public final LinearLayout J;
    @NonNull
    public final CornersLinearLayout K;
    @Bindable

    /* renamed from: n0  reason: collision with root package name */
    protected com.join.android.app.component.video.c f20318n0;
    @Bindable

    /* renamed from: o0  reason: collision with root package name */
    protected MustplayItemBean f20319o0;
    @Bindable

    /* renamed from: p0  reason: collision with root package name */
    protected VideoModle f20320p0;

    /* JADX INFO: Access modifiers changed from: protected */
    public g40(Object obj, View view, int i2, TextView textView, TextView textView2, DownloadViewStroke downloadViewStroke, TextView textView3, TextView textView4, LinearLayout linearLayout, CornersLinearLayout cornersLinearLayout) {
        super(obj, view, i2);
        this.E = textView;
        this.F = textView2;
        this.G = downloadViewStroke;
        this.H = textView3;
        this.I = textView4;
        this.J = linearLayout;
        this.K = cornersLinearLayout;
    }

    public static g40 Z0(@NonNull View view) {
        return a1(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static g40 a1(@NonNull View view, @Nullable Object obj) {
        return (g40) ViewDataBinding.h(obj, view, R.layout.mustplay_item_layout);
    }

    @NonNull
    public static g40 e1(@NonNull LayoutInflater layoutInflater) {
        return h1(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static g40 f1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        return g1(layoutInflater, viewGroup, z3, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static g40 g1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3, @Nullable Object obj) {
        return (g40) ViewDataBinding.Q(layoutInflater, R.layout.mustplay_item_layout, viewGroup, z3, obj);
    }

    @NonNull
    @Deprecated
    public static g40 h1(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (g40) ViewDataBinding.Q(layoutInflater, R.layout.mustplay_item_layout, null, false, obj);
    }

    @Nullable
    public MustplayItemBean b1() {
        return this.f20319o0;
    }

    @Nullable
    public VideoModle c1() {
        return this.f20320p0;
    }

    @Nullable
    public com.join.android.app.component.video.c d1() {
        return this.f20318n0;
    }

    public abstract void i1(@Nullable MustplayItemBean mustplayItemBean);

    public abstract void j1(@Nullable VideoModle videoModle);

    public abstract void k1(@Nullable com.join.android.app.component.video.c cVar);
}
