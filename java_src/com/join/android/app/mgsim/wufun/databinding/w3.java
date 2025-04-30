package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.domain.common.LoadBindClickProxy;
import com.join.kotlin.domain.common.LoadBindindData;
import com.join.mgps.customview.LoadingImageView;
/* compiled from: BinddingLoadLayoutIncludeBinding.java */
/* loaded from: classes3.dex */
public abstract class w3 extends ViewDataBinding {
    @NonNull
    public final TextView E;
    @NonNull
    public final LinearLayout F;
    @NonNull
    public final LoadingImageView G;
    @NonNull
    public final ImageView H;
    @NonNull
    public final LinearLayout I;
    @NonNull
    public final LinearLayout J;
    @NonNull
    public final TextView K;
    @NonNull

    /* renamed from: n0  reason: collision with root package name */
    public final ImageView f26032n0;
    @NonNull

    /* renamed from: o0  reason: collision with root package name */
    public final ImageView f26033o0;
    @NonNull

    /* renamed from: p0  reason: collision with root package name */
    public final TextView f26034p0;
    @NonNull

    /* renamed from: q0  reason: collision with root package name */
    public final Button f26035q0;
    @NonNull

    /* renamed from: r0  reason: collision with root package name */
    public final TextView f26036r0;
    @NonNull

    /* renamed from: s0  reason: collision with root package name */
    public final TextView f26037s0;
    @Bindable

    /* renamed from: t0  reason: collision with root package name */
    protected LoadBindindData f26038t0;
    @Bindable

    /* renamed from: u0  reason: collision with root package name */
    protected LoadBindClickProxy f26039u0;

    /* JADX INFO: Access modifiers changed from: protected */
    public w3(Object obj, View view, int i2, TextView textView, LinearLayout linearLayout, LoadingImageView loadingImageView, ImageView imageView, LinearLayout linearLayout2, LinearLayout linearLayout3, TextView textView2, ImageView imageView2, ImageView imageView3, TextView textView3, Button button, TextView textView4, TextView textView5) {
        super(obj, view, i2);
        this.E = textView;
        this.F = linearLayout;
        this.G = loadingImageView;
        this.H = imageView;
        this.I = linearLayout2;
        this.J = linearLayout3;
        this.K = textView2;
        this.f26032n0 = imageView2;
        this.f26033o0 = imageView3;
        this.f26034p0 = textView3;
        this.f26035q0 = button;
        this.f26036r0 = textView4;
        this.f26037s0 = textView5;
    }

    public static w3 Z0(@NonNull View view) {
        return a1(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static w3 a1(@NonNull View view, @Nullable Object obj) {
        return (w3) ViewDataBinding.h(obj, view, R.layout.bindding_load_layout_include);
    }

    @NonNull
    public static w3 d1(@NonNull LayoutInflater layoutInflater) {
        return g1(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static w3 e1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        return f1(layoutInflater, viewGroup, z3, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static w3 f1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3, @Nullable Object obj) {
        return (w3) ViewDataBinding.Q(layoutInflater, R.layout.bindding_load_layout_include, viewGroup, z3, obj);
    }

    @NonNull
    @Deprecated
    public static w3 g1(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (w3) ViewDataBinding.Q(layoutInflater, R.layout.bindding_load_layout_include, null, false, obj);
    }

    @Nullable
    public LoadBindindData b1() {
        return this.f26038t0;
    }

    @Nullable
    public LoadBindClickProxy c1() {
        return this.f26039u0;
    }

    public abstract void h1(@Nullable LoadBindindData loadBindindData);

    public abstract void i1(@Nullable LoadBindClickProxy loadBindClickProxy);
}
