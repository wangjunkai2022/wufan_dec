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
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.cloudarchive.adapter.OnClickArchiveListener;
import com.join.kotlin.ui.cloudarchive.data.ArchiveData;
/* compiled from: ModarchiveListItem2Binding.java */
/* loaded from: classes3.dex */
public abstract class r30 extends ViewDataBinding {
    @NonNull
    public final TextView E;
    @NonNull
    public final ImageView F;
    @NonNull
    public final TextView G;
    @NonNull
    public final RelativeLayout H;
    @NonNull
    public final TextView I;
    @NonNull
    public final ImageView J;
    @NonNull
    public final ImageView K;
    @NonNull

    /* renamed from: n0  reason: collision with root package name */
    public final TextView f24193n0;
    @NonNull

    /* renamed from: o0  reason: collision with root package name */
    public final TextView f24194o0;
    @NonNull

    /* renamed from: p0  reason: collision with root package name */
    public final SimpleDraweeView f24195p0;
    @NonNull

    /* renamed from: q0  reason: collision with root package name */
    public final TextView f24196q0;
    @Bindable

    /* renamed from: r0  reason: collision with root package name */
    protected ArchiveData f24197r0;
    @Bindable

    /* renamed from: s0  reason: collision with root package name */
    protected OnClickArchiveListener f24198s0;
    @Bindable

    /* renamed from: t0  reason: collision with root package name */
    protected Boolean f24199t0;

    /* JADX INFO: Access modifiers changed from: protected */
    public r30(Object obj, View view, int i2, TextView textView, ImageView imageView, TextView textView2, RelativeLayout relativeLayout, TextView textView3, ImageView imageView2, ImageView imageView3, TextView textView4, TextView textView5, SimpleDraweeView simpleDraweeView, TextView textView6) {
        super(obj, view, i2);
        this.E = textView;
        this.F = imageView;
        this.G = textView2;
        this.H = relativeLayout;
        this.I = textView3;
        this.J = imageView2;
        this.K = imageView3;
        this.f24193n0 = textView4;
        this.f24194o0 = textView5;
        this.f24195p0 = simpleDraweeView;
        this.f24196q0 = textView6;
    }

    public static r30 Z0(@NonNull View view) {
        return a1(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static r30 a1(@NonNull View view, @Nullable Object obj) {
        return (r30) ViewDataBinding.h(obj, view, R.layout.modarchive_list_item2);
    }

    @NonNull
    public static r30 e1(@NonNull LayoutInflater layoutInflater) {
        return h1(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static r30 f1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        return g1(layoutInflater, viewGroup, z3, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static r30 g1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3, @Nullable Object obj) {
        return (r30) ViewDataBinding.Q(layoutInflater, R.layout.modarchive_list_item2, viewGroup, z3, obj);
    }

    @NonNull
    @Deprecated
    public static r30 h1(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (r30) ViewDataBinding.Q(layoutInflater, R.layout.modarchive_list_item2, null, false, obj);
    }

    @Nullable
    public OnClickArchiveListener b1() {
        return this.f24198s0;
    }

    @Nullable
    public Boolean c1() {
        return this.f24199t0;
    }

    @Nullable
    public ArchiveData d1() {
        return this.f24197r0;
    }

    public abstract void i1(@Nullable OnClickArchiveListener onClickArchiveListener);

    public abstract void j1(@Nullable Boolean bool);

    public abstract void k1(@Nullable ArchiveData archiveData);
}
