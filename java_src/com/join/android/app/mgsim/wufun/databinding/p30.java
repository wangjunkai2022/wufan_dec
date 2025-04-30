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
/* compiled from: ModarchiveGameDetailListItemBinding.java */
/* loaded from: classes3.dex */
public abstract class p30 extends ViewDataBinding {
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
    public final TextView f23458n0;
    @NonNull

    /* renamed from: o0  reason: collision with root package name */
    public final TextView f23459o0;
    @NonNull

    /* renamed from: p0  reason: collision with root package name */
    public final TextView f23460p0;
    @NonNull

    /* renamed from: q0  reason: collision with root package name */
    public final SimpleDraweeView f23461q0;
    @NonNull

    /* renamed from: r0  reason: collision with root package name */
    public final TextView f23462r0;
    @Bindable

    /* renamed from: s0  reason: collision with root package name */
    protected ArchiveData f23463s0;
    @Bindable

    /* renamed from: t0  reason: collision with root package name */
    protected OnClickArchiveListener f23464t0;
    @Bindable

    /* renamed from: u0  reason: collision with root package name */
    protected Boolean f23465u0;

    /* JADX INFO: Access modifiers changed from: protected */
    public p30(Object obj, View view, int i2, TextView textView, ImageView imageView, TextView textView2, RelativeLayout relativeLayout, TextView textView3, ImageView imageView2, ImageView imageView3, TextView textView4, TextView textView5, TextView textView6, SimpleDraweeView simpleDraweeView, TextView textView7) {
        super(obj, view, i2);
        this.E = textView;
        this.F = imageView;
        this.G = textView2;
        this.H = relativeLayout;
        this.I = textView3;
        this.J = imageView2;
        this.K = imageView3;
        this.f23458n0 = textView4;
        this.f23459o0 = textView5;
        this.f23460p0 = textView6;
        this.f23461q0 = simpleDraweeView;
        this.f23462r0 = textView7;
    }

    public static p30 Z0(@NonNull View view) {
        return a1(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static p30 a1(@NonNull View view, @Nullable Object obj) {
        return (p30) ViewDataBinding.h(obj, view, R.layout.modarchive_game_detail_list_item);
    }

    @NonNull
    public static p30 e1(@NonNull LayoutInflater layoutInflater) {
        return h1(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static p30 f1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        return g1(layoutInflater, viewGroup, z3, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static p30 g1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3, @Nullable Object obj) {
        return (p30) ViewDataBinding.Q(layoutInflater, R.layout.modarchive_game_detail_list_item, viewGroup, z3, obj);
    }

    @NonNull
    @Deprecated
    public static p30 h1(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (p30) ViewDataBinding.Q(layoutInflater, R.layout.modarchive_game_detail_list_item, null, false, obj);
    }

    @Nullable
    public OnClickArchiveListener b1() {
        return this.f23464t0;
    }

    @Nullable
    public Boolean c1() {
        return this.f23465u0;
    }

    @Nullable
    public ArchiveData d1() {
        return this.f23463s0;
    }

    public abstract void i1(@Nullable OnClickArchiveListener onClickArchiveListener);

    public abstract void j1(@Nullable Boolean bool);

    public abstract void k1(@Nullable ArchiveData archiveData);
}
