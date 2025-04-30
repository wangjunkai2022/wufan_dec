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
import com.join.kotlin.ui.cloudarchive.adapter.OnEmusClickArchiveListener;
import com.join.mgps.dto.CloudListDataBean;
/* compiled from: EmusArchiveGameDetailListItemBinding.java */
/* loaded from: classes3.dex */
public abstract class je extends ViewDataBinding {
    @NonNull
    public final TextView E;
    @NonNull
    public final RelativeLayout F;
    @NonNull
    public final TextView G;
    @NonNull
    public final ImageView H;
    @NonNull
    public final TextView I;
    @NonNull
    public final TextView J;
    @NonNull
    public final SimpleDraweeView K;
    @NonNull

    /* renamed from: n0  reason: collision with root package name */
    public final TextView f21457n0;
    @Bindable

    /* renamed from: o0  reason: collision with root package name */
    protected CloudListDataBean f21458o0;
    @Bindable

    /* renamed from: p0  reason: collision with root package name */
    protected OnEmusClickArchiveListener f21459p0;

    /* JADX INFO: Access modifiers changed from: protected */
    public je(Object obj, View view, int i2, TextView textView, RelativeLayout relativeLayout, TextView textView2, ImageView imageView, TextView textView3, TextView textView4, SimpleDraweeView simpleDraweeView, TextView textView5) {
        super(obj, view, i2);
        this.E = textView;
        this.F = relativeLayout;
        this.G = textView2;
        this.H = imageView;
        this.I = textView3;
        this.J = textView4;
        this.K = simpleDraweeView;
        this.f21457n0 = textView5;
    }

    public static je Z0(@NonNull View view) {
        return a1(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static je a1(@NonNull View view, @Nullable Object obj) {
        return (je) ViewDataBinding.h(obj, view, R.layout.emus_archive_game_detail_list_item);
    }

    @NonNull
    public static je d1(@NonNull LayoutInflater layoutInflater) {
        return g1(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static je e1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        return f1(layoutInflater, viewGroup, z3, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static je f1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3, @Nullable Object obj) {
        return (je) ViewDataBinding.Q(layoutInflater, R.layout.emus_archive_game_detail_list_item, viewGroup, z3, obj);
    }

    @NonNull
    @Deprecated
    public static je g1(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (je) ViewDataBinding.Q(layoutInflater, R.layout.emus_archive_game_detail_list_item, null, false, obj);
    }

    @Nullable
    public OnEmusClickArchiveListener b1() {
        return this.f21459p0;
    }

    @Nullable
    public CloudListDataBean c1() {
        return this.f21458o0;
    }

    public abstract void h1(@Nullable OnEmusClickArchiveListener onEmusClickArchiveListener);

    public abstract void i1(@Nullable CloudListDataBean cloudListDataBean);
}
