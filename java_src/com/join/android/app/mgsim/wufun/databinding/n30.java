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
import androidx.databinding.adapters.TextViewBindingAdapter;
import com.facebook.drawee.view.SimpleDraweeView;
import com.google.android.material.textfield.TextInputEditText;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.cloudarchive.ModUploadArchiveViewModle;
/* compiled from: ModUploadArchiveActivityBinding.java */
/* loaded from: classes3.dex */
public abstract class n30 extends ViewDataBinding {
    @NonNull
    public final LinearLayout E;
    @NonNull
    public final ImageView F;
    @NonNull
    public final ImageView G;
    @NonNull
    public final ImageView H;
    @NonNull
    public final TextInputEditText I;
    @NonNull
    public final TextView J;
    @NonNull
    public final SimpleDraweeView K;
    @Bindable

    /* renamed from: n0  reason: collision with root package name */
    protected ModUploadArchiveViewModle f22720n0;
    @Bindable

    /* renamed from: o0  reason: collision with root package name */
    protected View.OnClickListener f22721o0;
    @Bindable

    /* renamed from: p0  reason: collision with root package name */
    protected TextViewBindingAdapter.OnTextChanged f22722p0;
    @Bindable

    /* renamed from: q0  reason: collision with root package name */
    protected TextViewBindingAdapter.BeforeTextChanged f22723q0;

    /* JADX INFO: Access modifiers changed from: protected */
    public n30(Object obj, View view, int i2, LinearLayout linearLayout, ImageView imageView, ImageView imageView2, ImageView imageView3, TextInputEditText textInputEditText, TextView textView, SimpleDraweeView simpleDraweeView) {
        super(obj, view, i2);
        this.E = linearLayout;
        this.F = imageView;
        this.G = imageView2;
        this.H = imageView3;
        this.I = textInputEditText;
        this.J = textView;
        this.K = simpleDraweeView;
    }

    public static n30 Z0(@NonNull View view) {
        return a1(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static n30 a1(@NonNull View view, @Nullable Object obj) {
        return (n30) ViewDataBinding.h(obj, view, R.layout.mod_upload_archive_activity);
    }

    @NonNull
    public static n30 f1(@NonNull LayoutInflater layoutInflater) {
        return i1(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static n30 g1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        return h1(layoutInflater, viewGroup, z3, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static n30 h1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3, @Nullable Object obj) {
        return (n30) ViewDataBinding.Q(layoutInflater, R.layout.mod_upload_archive_activity, viewGroup, z3, obj);
    }

    @NonNull
    @Deprecated
    public static n30 i1(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (n30) ViewDataBinding.Q(layoutInflater, R.layout.mod_upload_archive_activity, null, false, obj);
    }

    @Nullable
    public TextViewBindingAdapter.OnTextChanged b1() {
        return this.f22722p0;
    }

    @Nullable
    public TextViewBindingAdapter.BeforeTextChanged c1() {
        return this.f22723q0;
    }

    @Nullable
    public View.OnClickListener d1() {
        return this.f22721o0;
    }

    @Nullable
    public ModUploadArchiveViewModle e1() {
        return this.f22720n0;
    }

    public abstract void j1(@Nullable TextViewBindingAdapter.OnTextChanged onTextChanged);

    public abstract void k1(@Nullable TextViewBindingAdapter.BeforeTextChanged beforeTextChanged);

    public abstract void l1(@Nullable View.OnClickListener onClickListener);

    public abstract void m1(@Nullable ModUploadArchiveViewModle modUploadArchiveViewModle);
}
