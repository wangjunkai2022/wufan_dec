package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.cloudarchive.dialog.ImageDialogViewmodle;
/* compiled from: ImageShowDialogBinding.java */
/* loaded from: classes3.dex */
public abstract class ko extends ViewDataBinding {
    @NonNull
    public final ImageView E;
    @NonNull
    public final ImageView F;
    @NonNull
    public final SimpleDraweeView G;
    @NonNull
    public final SimpleDraweeView H;
    @NonNull
    public final LinearLayout I;
    @NonNull
    public final FrameLayout J;
    @Bindable
    protected ImageDialogViewmodle K;
    @Bindable

    /* renamed from: n0  reason: collision with root package name */
    protected View.OnClickListener f21875n0;

    /* JADX INFO: Access modifiers changed from: protected */
    public ko(Object obj, View view, int i2, ImageView imageView, ImageView imageView2, SimpleDraweeView simpleDraweeView, SimpleDraweeView simpleDraweeView2, LinearLayout linearLayout, FrameLayout frameLayout) {
        super(obj, view, i2);
        this.E = imageView;
        this.F = imageView2;
        this.G = simpleDraweeView;
        this.H = simpleDraweeView2;
        this.I = linearLayout;
        this.J = frameLayout;
    }

    public static ko Z0(@NonNull View view) {
        return a1(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ko a1(@NonNull View view, @Nullable Object obj) {
        return (ko) ViewDataBinding.h(obj, view, R.layout.image_show_dialog);
    }

    @NonNull
    public static ko d1(@NonNull LayoutInflater layoutInflater) {
        return g1(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ko e1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        return f1(layoutInflater, viewGroup, z3, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ko f1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3, @Nullable Object obj) {
        return (ko) ViewDataBinding.Q(layoutInflater, R.layout.image_show_dialog, viewGroup, z3, obj);
    }

    @NonNull
    @Deprecated
    public static ko g1(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (ko) ViewDataBinding.Q(layoutInflater, R.layout.image_show_dialog, null, false, obj);
    }

    @Nullable
    public View.OnClickListener b1() {
        return this.f21875n0;
    }

    @Nullable
    public ImageDialogViewmodle c1() {
        return this.K;
    }

    public abstract void h1(@Nullable View.OnClickListener onClickListener);

    public abstract void i1(@Nullable ImageDialogViewmodle imageDialogViewmodle);
}
