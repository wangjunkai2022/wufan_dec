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
import com.join.kotlin.domain.widget.CornersLinearLayout;
import com.join.kotlin.ui.modleregin.modle.MustplayItemBean;
import com.join.kotlin.ui.modleregin.modle.VideoModle;
import com.join.mgps.customview.DownloadViewStroke;
/* compiled from: BtVideoItemLayoutBinding.java */
/* loaded from: classes3.dex */
public abstract class m4 extends ViewDataBinding {
    @NonNull
    public final DownloadViewStroke E;
    @NonNull
    public final TextView F;
    @NonNull
    public final SimpleDraweeView G;
    @NonNull
    public final TextView H;
    @NonNull
    public final LinearLayout I;
    @NonNull
    public final CornersLinearLayout J;
    @Bindable
    protected Boolean K;
    @Bindable

    /* renamed from: n0  reason: collision with root package name */
    protected com.join.android.app.component.video.c f22333n0;
    @Bindable

    /* renamed from: o0  reason: collision with root package name */
    protected MustplayItemBean f22334o0;
    @Bindable

    /* renamed from: p0  reason: collision with root package name */
    protected VideoModle f22335p0;

    /* JADX INFO: Access modifiers changed from: protected */
    public m4(Object obj, View view, int i2, DownloadViewStroke downloadViewStroke, TextView textView, SimpleDraweeView simpleDraweeView, TextView textView2, LinearLayout linearLayout, CornersLinearLayout cornersLinearLayout) {
        super(obj, view, i2);
        this.E = downloadViewStroke;
        this.F = textView;
        this.G = simpleDraweeView;
        this.H = textView2;
        this.I = linearLayout;
        this.J = cornersLinearLayout;
    }

    public static m4 Z0(@NonNull View view) {
        return a1(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static m4 a1(@NonNull View view, @Nullable Object obj) {
        return (m4) ViewDataBinding.h(obj, view, R.layout.bt_video_item_layout);
    }

    @NonNull
    public static m4 f1(@NonNull LayoutInflater layoutInflater) {
        return i1(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static m4 g1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        return h1(layoutInflater, viewGroup, z3, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static m4 h1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3, @Nullable Object obj) {
        return (m4) ViewDataBinding.Q(layoutInflater, R.layout.bt_video_item_layout, viewGroup, z3, obj);
    }

    @NonNull
    @Deprecated
    public static m4 i1(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (m4) ViewDataBinding.Q(layoutInflater, R.layout.bt_video_item_layout, null, false, obj);
    }

    @Nullable
    public MustplayItemBean b1() {
        return this.f22334o0;
    }

    @Nullable
    public Boolean c1() {
        return this.K;
    }

    @Nullable
    public VideoModle d1() {
        return this.f22335p0;
    }

    @Nullable
    public com.join.android.app.component.video.c e1() {
        return this.f22333n0;
    }

    public abstract void j1(@Nullable MustplayItemBean mustplayItemBean);

    public abstract void k1(@Nullable Boolean bool);

    public abstract void l1(@Nullable VideoModle videoModle);

    public abstract void m1(@Nullable com.join.android.app.component.video.c cVar);
}
