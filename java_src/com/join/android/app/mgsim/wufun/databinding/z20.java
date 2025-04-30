package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.cloudarchive.dialog.ChoiceArchiveDialogViewModle;
/* compiled from: ModChoiceArchiveDialogBinding.java */
/* loaded from: classes3.dex */
public abstract class z20 extends ViewDataBinding {
    @NonNull
    public final ImageView E;
    @NonNull
    public final LinearLayout F;
    @NonNull
    public final RecyclerView G;
    @Bindable
    protected ChoiceArchiveDialogViewModle H;
    @Bindable
    protected View.OnClickListener I;
    @Bindable
    protected RecyclerView.Adapter<RecyclerView.ViewHolder> J;

    /* JADX INFO: Access modifiers changed from: protected */
    public z20(Object obj, View view, int i2, ImageView imageView, LinearLayout linearLayout, RecyclerView recyclerView) {
        super(obj, view, i2);
        this.E = imageView;
        this.F = linearLayout;
        this.G = recyclerView;
    }

    public static z20 Z0(@NonNull View view) {
        return a1(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static z20 a1(@NonNull View view, @Nullable Object obj) {
        return (z20) ViewDataBinding.h(obj, view, R.layout.mod_choice_archive_dialog);
    }

    @NonNull
    public static z20 e1(@NonNull LayoutInflater layoutInflater) {
        return h1(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static z20 f1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        return g1(layoutInflater, viewGroup, z3, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static z20 g1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3, @Nullable Object obj) {
        return (z20) ViewDataBinding.Q(layoutInflater, R.layout.mod_choice_archive_dialog, viewGroup, z3, obj);
    }

    @NonNull
    @Deprecated
    public static z20 h1(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (z20) ViewDataBinding.Q(layoutInflater, R.layout.mod_choice_archive_dialog, null, false, obj);
    }

    @Nullable
    public RecyclerView.Adapter<RecyclerView.ViewHolder> b1() {
        return this.J;
    }

    @Nullable
    public View.OnClickListener c1() {
        return this.I;
    }

    @Nullable
    public ChoiceArchiveDialogViewModle d1() {
        return this.H;
    }

    public abstract void i1(@Nullable RecyclerView.Adapter<RecyclerView.ViewHolder> adapter);

    public abstract void j1(@Nullable View.OnClickListener onClickListener);

    public abstract void k1(@Nullable ChoiceArchiveDialogViewModle choiceArchiveDialogViewModle);
}
