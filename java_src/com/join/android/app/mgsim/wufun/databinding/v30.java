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
/* compiled from: ModarchiveListLocalItem2Binding.java */
/* loaded from: classes3.dex */
public abstract class v30 extends ViewDataBinding {
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
    public final ImageView f25714n0;
    @NonNull

    /* renamed from: o0  reason: collision with root package name */
    public final ImageView f25715o0;
    @NonNull

    /* renamed from: p0  reason: collision with root package name */
    public final TextView f25716p0;
    @NonNull

    /* renamed from: q0  reason: collision with root package name */
    public final TextView f25717q0;
    @NonNull

    /* renamed from: r0  reason: collision with root package name */
    public final TextView f25718r0;
    @NonNull

    /* renamed from: s0  reason: collision with root package name */
    public final TextView f25719s0;
    @Bindable

    /* renamed from: t0  reason: collision with root package name */
    protected ArchiveData f25720t0;
    @Bindable

    /* renamed from: u0  reason: collision with root package name */
    protected OnClickArchiveListener f25721u0;

    /* JADX INFO: Access modifiers changed from: protected */
    public v30(Object obj, View view, int i2, TextView textView, ImageView imageView, TextView textView2, ImageView imageView2, TextView textView3, RelativeLayout relativeLayout, TextView textView4, ImageView imageView3, ImageView imageView4, TextView textView5, TextView textView6, TextView textView7, TextView textView8) {
        super(obj, view, i2);
        this.E = textView;
        this.F = imageView;
        this.G = textView2;
        this.H = imageView2;
        this.I = textView3;
        this.J = relativeLayout;
        this.K = textView4;
        this.f25714n0 = imageView3;
        this.f25715o0 = imageView4;
        this.f25716p0 = textView5;
        this.f25717q0 = textView6;
        this.f25718r0 = textView7;
        this.f25719s0 = textView8;
    }

    public static v30 Z0(@NonNull View view) {
        return a1(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static v30 a1(@NonNull View view, @Nullable Object obj) {
        return (v30) ViewDataBinding.h(obj, view, R.layout.modarchive_list_local_item2);
    }

    @NonNull
    public static v30 d1(@NonNull LayoutInflater layoutInflater) {
        return g1(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static v30 e1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        return f1(layoutInflater, viewGroup, z3, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static v30 f1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3, @Nullable Object obj) {
        return (v30) ViewDataBinding.Q(layoutInflater, R.layout.modarchive_list_local_item2, viewGroup, z3, obj);
    }

    @NonNull
    @Deprecated
    public static v30 g1(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (v30) ViewDataBinding.Q(layoutInflater, R.layout.modarchive_list_local_item2, null, false, obj);
    }

    @Nullable
    public OnClickArchiveListener b1() {
        return this.f25721u0;
    }

    @Nullable
    public ArchiveData c1() {
        return this.f25720t0;
    }

    public abstract void h1(@Nullable OnClickArchiveListener onClickArchiveListener);

    public abstract void i1(@Nullable ArchiveData archiveData);
}
