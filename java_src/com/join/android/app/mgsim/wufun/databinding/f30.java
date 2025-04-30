package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.cloudarchive.DelArchiveDialogViewModle;
/* compiled from: ModDelArchiveDialogBinding.java */
/* loaded from: classes3.dex */
public abstract class f30 extends ViewDataBinding {
    @NonNull
    public final TextView E;
    @NonNull
    public final ImageView F;
    @NonNull
    public final LinearLayout G;
    @NonNull
    public final TextView H;
    @Bindable
    protected DelArchiveDialogViewModle I;
    @Bindable
    protected View.OnClickListener J;

    /* JADX INFO: Access modifiers changed from: protected */
    public f30(Object obj, View view, int i2, TextView textView, ImageView imageView, LinearLayout linearLayout, TextView textView2) {
        super(obj, view, i2);
        this.E = textView;
        this.F = imageView;
        this.G = linearLayout;
        this.H = textView2;
    }

    public static f30 Z0(@NonNull View view) {
        return a1(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static f30 a1(@NonNull View view, @Nullable Object obj) {
        return (f30) ViewDataBinding.h(obj, view, R.layout.mod_del_archive_dialog);
    }

    @NonNull
    public static f30 d1(@NonNull LayoutInflater layoutInflater) {
        return g1(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static f30 e1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        return f1(layoutInflater, viewGroup, z3, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static f30 f1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3, @Nullable Object obj) {
        return (f30) ViewDataBinding.Q(layoutInflater, R.layout.mod_del_archive_dialog, viewGroup, z3, obj);
    }

    @NonNull
    @Deprecated
    public static f30 g1(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (f30) ViewDataBinding.Q(layoutInflater, R.layout.mod_del_archive_dialog, null, false, obj);
    }

    @Nullable
    public View.OnClickListener b1() {
        return this.J;
    }

    @Nullable
    public DelArchiveDialogViewModle c1() {
        return this.I;
    }

    public abstract void h1(@Nullable View.OnClickListener onClickListener);

    public abstract void i1(@Nullable DelArchiveDialogViewModle delArchiveDialogViewModle);
}
