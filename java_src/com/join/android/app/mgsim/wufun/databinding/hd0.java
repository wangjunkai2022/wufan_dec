package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.modleregin.modle.VideoModle;
/* compiled from: VideoDbsLayoutBinding.java */
/* loaded from: classes3.dex */
public abstract class hd0 extends ViewDataBinding {
    @NonNull
    public final SimpleDraweeView E;
    @NonNull
    public final SimpleDraweeView F;
    @NonNull
    public final FrameLayout G;
    @Bindable
    protected com.join.android.app.component.video.c H;
    @Bindable
    protected VideoModle I;

    /* JADX INFO: Access modifiers changed from: protected */
    public hd0(Object obj, View view, int i2, SimpleDraweeView simpleDraweeView, SimpleDraweeView simpleDraweeView2, FrameLayout frameLayout) {
        super(obj, view, i2);
        this.E = simpleDraweeView;
        this.F = simpleDraweeView2;
        this.G = frameLayout;
    }

    public static hd0 Z0(@NonNull View view) {
        return a1(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static hd0 a1(@NonNull View view, @Nullable Object obj) {
        return (hd0) ViewDataBinding.h(obj, view, R.layout.video_dbs_layout);
    }

    @NonNull
    public static hd0 d1(@NonNull LayoutInflater layoutInflater) {
        return g1(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static hd0 e1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        return f1(layoutInflater, viewGroup, z3, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static hd0 f1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3, @Nullable Object obj) {
        return (hd0) ViewDataBinding.Q(layoutInflater, R.layout.video_dbs_layout, viewGroup, z3, obj);
    }

    @NonNull
    @Deprecated
    public static hd0 g1(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (hd0) ViewDataBinding.Q(layoutInflater, R.layout.video_dbs_layout, null, false, obj);
    }

    @Nullable
    public VideoModle b1() {
        return this.I;
    }

    @Nullable
    public com.join.android.app.component.video.c c1() {
        return this.H;
    }

    public abstract void h1(@Nullable VideoModle videoModle);

    public abstract void i1(@Nullable com.join.android.app.component.video.c cVar);
}
