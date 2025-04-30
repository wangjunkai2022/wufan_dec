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
/* compiled from: NoticeWhiteDialogBinding.java */
/* loaded from: classes3.dex */
public abstract class d60 extends ViewDataBinding {
    @NonNull
    public final ImageView E;
    @NonNull
    public final LinearLayout F;
    @NonNull
    public final TextView G;
    @Bindable
    protected DelArchiveDialogViewModle H;
    @Bindable
    protected View.OnClickListener I;

    /* JADX INFO: Access modifiers changed from: protected */
    public d60(Object obj, View view, int i2, ImageView imageView, LinearLayout linearLayout, TextView textView) {
        super(obj, view, i2);
        this.E = imageView;
        this.F = linearLayout;
        this.G = textView;
    }

    public static d60 Z0(@NonNull View view) {
        return a1(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static d60 a1(@NonNull View view, @Nullable Object obj) {
        return (d60) ViewDataBinding.h(obj, view, R.layout.notice_white_dialog);
    }

    @NonNull
    public static d60 d1(@NonNull LayoutInflater layoutInflater) {
        return g1(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static d60 e1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        return f1(layoutInflater, viewGroup, z3, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static d60 f1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3, @Nullable Object obj) {
        return (d60) ViewDataBinding.Q(layoutInflater, R.layout.notice_white_dialog, viewGroup, z3, obj);
    }

    @NonNull
    @Deprecated
    public static d60 g1(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (d60) ViewDataBinding.Q(layoutInflater, R.layout.notice_white_dialog, null, false, obj);
    }

    @Nullable
    public View.OnClickListener b1() {
        return this.I;
    }

    @Nullable
    public DelArchiveDialogViewModle c1() {
        return this.H;
    }

    public abstract void h1(@Nullable View.OnClickListener onClickListener);

    public abstract void i1(@Nullable DelArchiveDialogViewModle delArchiveDialogViewModle);
}
