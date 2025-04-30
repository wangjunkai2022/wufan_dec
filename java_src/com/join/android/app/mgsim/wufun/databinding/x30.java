package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.cloudarchive.adapter.OnClickArchiveListener;
import com.join.kotlin.ui.cloudarchive.data.ArchiveData;
/* compiled from: ModarchiveListLocalItemBinding.java */
/* loaded from: classes3.dex */
public abstract class x30 extends ViewDataBinding {
    @NonNull
    public final TextView E;
    @NonNull
    public final ImageView F;
    @NonNull
    public final TextView G;
    @NonNull
    public final ImageView H;
    @NonNull
    public final TextView I;
    @NonNull
    public final RelativeLayout J;
    @NonNull
    public final TextView K;
    @NonNull

    /* renamed from: n0  reason: collision with root package name */
    public final ImageView f26409n0;
    @NonNull

    /* renamed from: o0  reason: collision with root package name */
    public final ImageView f26410o0;
    @NonNull

    /* renamed from: p0  reason: collision with root package name */
    public final TextView f26411p0;
    @NonNull

    /* renamed from: q0  reason: collision with root package name */
    public final TextView f26412q0;
    @NonNull

    /* renamed from: r0  reason: collision with root package name */
    public final TextView f26413r0;
    @NonNull

    /* renamed from: s0  reason: collision with root package name */
    public final TextView f26414s0;
    @Bindable

    /* renamed from: t0  reason: collision with root package name */
    protected ArchiveData f26415t0;
    @Bindable

    /* renamed from: u0  reason: collision with root package name */
    protected OnClickArchiveListener f26416u0;

    /* JADX INFO: Access modifiers changed from: protected */
    public x30(Object obj, View view, int i2, TextView textView, ImageView imageView, TextView textView2, ImageView imageView2, TextView textView3, RelativeLayout relativeLayout, TextView textView4, ImageView imageView3, ImageView imageView4, TextView textView5, TextView textView6, TextView textView7, TextView textView8) {
        super(obj, view, i2);
        this.E = textView;
        this.F = imageView;
        this.G = textView2;
        this.H = imageView2;
        this.I = textView3;
        this.J = relativeLayout;
        this.K = textView4;
        this.f26409n0 = imageView3;
        this.f26410o0 = imageView4;
        this.f26411p0 = textView5;
        this.f26412q0 = textView6;
        this.f26413r0 = textView7;
        this.f26414s0 = textView8;
    }

    public static x30 Z0(@NonNull View view) {
        return a1(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static x30 a1(@NonNull View view, @Nullable Object obj) {
        return (x30) ViewDataBinding.h(obj, view, R.layout.modarchive_list_local_item);
    }

    @NonNull
    public static x30 d1(@NonNull LayoutInflater layoutInflater) {
        return g1(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static x30 e1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        return f1(layoutInflater, viewGroup, z3, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static x30 f1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3, @Nullable Object obj) {
        return (x30) ViewDataBinding.Q(layoutInflater, R.layout.modarchive_list_local_item, viewGroup, z3, obj);
    }

    @NonNull
    @Deprecated
    public static x30 g1(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (x30) ViewDataBinding.Q(layoutInflater, R.layout.modarchive_list_local_item, null, false, obj);
    }

    @Nullable
    public OnClickArchiveListener b1() {
        return this.f26416u0;
    }

    @Nullable
    public ArchiveData c1() {
        return this.f26415t0;
    }

    public abstract void h1(@Nullable OnClickArchiveListener onClickArchiveListener);

    public abstract void i1(@Nullable ArchiveData archiveData);
}
