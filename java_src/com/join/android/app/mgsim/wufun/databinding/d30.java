package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.cloudarchive.DelArchiveDialogViewModle;
/* compiled from: ModCommentlArchiveDialogBinding.java */
/* loaded from: classes3.dex */
public abstract class d30 extends ViewDataBinding {
    @NonNull
    public final ImageView E;
    @NonNull
    public final ImageView F;
    @NonNull
    public final ImageView G;
    @NonNull
    public final ImageView H;
    @NonNull
    public final ConstraintLayout I;
    @NonNull
    public final ConstraintLayout J;
    @NonNull
    public final ConstraintLayout K;
    @NonNull

    /* renamed from: n0  reason: collision with root package name */
    public final TextView f19189n0;
    @NonNull

    /* renamed from: o0  reason: collision with root package name */
    public final TextView f19190o0;
    @NonNull

    /* renamed from: p0  reason: collision with root package name */
    public final ConstraintLayout f19191p0;
    @Bindable

    /* renamed from: q0  reason: collision with root package name */
    protected DelArchiveDialogViewModle f19192q0;
    @Bindable

    /* renamed from: r0  reason: collision with root package name */
    protected View.OnClickListener f19193r0;

    /* JADX INFO: Access modifiers changed from: protected */
    public d30(Object obj, View view, int i2, ImageView imageView, ImageView imageView2, ImageView imageView3, ImageView imageView4, ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2, ConstraintLayout constraintLayout3, TextView textView, TextView textView2, ConstraintLayout constraintLayout4) {
        super(obj, view, i2);
        this.E = imageView;
        this.F = imageView2;
        this.G = imageView3;
        this.H = imageView4;
        this.I = constraintLayout;
        this.J = constraintLayout2;
        this.K = constraintLayout3;
        this.f19189n0 = textView;
        this.f19190o0 = textView2;
        this.f19191p0 = constraintLayout4;
    }

    public static d30 Z0(@NonNull View view) {
        return a1(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static d30 a1(@NonNull View view, @Nullable Object obj) {
        return (d30) ViewDataBinding.h(obj, view, R.layout.mod_commentl_archive_dialog);
    }

    @NonNull
    public static d30 d1(@NonNull LayoutInflater layoutInflater) {
        return g1(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static d30 e1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        return f1(layoutInflater, viewGroup, z3, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static d30 f1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3, @Nullable Object obj) {
        return (d30) ViewDataBinding.Q(layoutInflater, R.layout.mod_commentl_archive_dialog, viewGroup, z3, obj);
    }

    @NonNull
    @Deprecated
    public static d30 g1(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (d30) ViewDataBinding.Q(layoutInflater, R.layout.mod_commentl_archive_dialog, null, false, obj);
    }

    @Nullable
    public View.OnClickListener b1() {
        return this.f19193r0;
    }

    @Nullable
    public DelArchiveDialogViewModle c1() {
        return this.f19192q0;
    }

    public abstract void h1(@Nullable View.OnClickListener onClickListener);

    public abstract void i1(@Nullable DelArchiveDialogViewModle delArchiveDialogViewModle);
}
