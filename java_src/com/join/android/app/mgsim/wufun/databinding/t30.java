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
/* compiled from: ModarchiveListItemBinding.java */
/* loaded from: classes3.dex */
public abstract class t30 extends ViewDataBinding {
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
    public final TextView f25077n0;
    @NonNull

    /* renamed from: o0  reason: collision with root package name */
    public final TextView f25078o0;
    @NonNull

    /* renamed from: p0  reason: collision with root package name */
    public final TextView f25079p0;
    @NonNull

    /* renamed from: q0  reason: collision with root package name */
    public final SimpleDraweeView f25080q0;
    @NonNull

    /* renamed from: r0  reason: collision with root package name */
    public final TextView f25081r0;
    @Bindable

    /* renamed from: s0  reason: collision with root package name */
    protected ArchiveData f25082s0;
    @Bindable

    /* renamed from: t0  reason: collision with root package name */
    protected OnClickArchiveListener f25083t0;
    @Bindable

    /* renamed from: u0  reason: collision with root package name */
    protected Boolean f25084u0;
    @Bindable

    /* renamed from: v0  reason: collision with root package name */
    protected Boolean f25085v0;

    /* JADX INFO: Access modifiers changed from: protected */
    public t30(Object obj, View view, int i2, TextView textView, ImageView imageView, TextView textView2, RelativeLayout relativeLayout, TextView textView3, ImageView imageView2, ImageView imageView3, TextView textView4, TextView textView5, TextView textView6, SimpleDraweeView simpleDraweeView, TextView textView7) {
        super(obj, view, i2);
        this.E = textView;
        this.F = imageView;
        this.G = textView2;
        this.H = relativeLayout;
        this.I = textView3;
        this.J = imageView2;
        this.K = imageView3;
        this.f25077n0 = textView4;
        this.f25078o0 = textView5;
        this.f25079p0 = textView6;
        this.f25080q0 = simpleDraweeView;
        this.f25081r0 = textView7;
    }

    public static t30 Z0(@NonNull View view) {
        return a1(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static t30 a1(@NonNull View view, @Nullable Object obj) {
        return (t30) ViewDataBinding.h(obj, view, R.layout.modarchive_list_item);
    }

    @NonNull
    public static t30 f1(@NonNull LayoutInflater layoutInflater) {
        return i1(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static t30 g1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        return h1(layoutInflater, viewGroup, z3, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static t30 h1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3, @Nullable Object obj) {
        return (t30) ViewDataBinding.Q(layoutInflater, R.layout.modarchive_list_item, viewGroup, z3, obj);
    }

    @NonNull
    @Deprecated
    public static t30 i1(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (t30) ViewDataBinding.Q(layoutInflater, R.layout.modarchive_list_item, null, false, obj);
    }

    @Nullable
    public OnClickArchiveListener b1() {
        return this.f25083t0;
    }

    @Nullable
    public Boolean c1() {
        return this.f25084u0;
    }

    @Nullable
    public Boolean d1() {
        return this.f25085v0;
    }

    @Nullable
    public ArchiveData e1() {
        return this.f25082s0;
    }

    public abstract void j1(@Nullable OnClickArchiveListener onClickArchiveListener);

    public abstract void k1(@Nullable Boolean bool);

    public abstract void l1(@Nullable Boolean bool);

    public abstract void m1(@Nullable ArchiveData archiveData);
}
