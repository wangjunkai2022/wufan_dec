package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.cloudarchive.data.ArchiveData;
/* compiled from: ModChoiceDialogItemBinding.java */
/* loaded from: classes3.dex */
public abstract class b30 extends ViewDataBinding {
    @NonNull
    public final LinearLayout E;
    @Bindable
    protected ArchiveData F;

    /* JADX INFO: Access modifiers changed from: protected */
    public b30(Object obj, View view, int i2, LinearLayout linearLayout) {
        super(obj, view, i2);
        this.E = linearLayout;
    }

    public static b30 Z0(@NonNull View view) {
        return a1(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static b30 a1(@NonNull View view, @Nullable Object obj) {
        return (b30) ViewDataBinding.h(obj, view, R.layout.mod_choice_dialog_item);
    }

    @NonNull
    public static b30 c1(@NonNull LayoutInflater layoutInflater) {
        return f1(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static b30 d1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        return e1(layoutInflater, viewGroup, z3, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static b30 e1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3, @Nullable Object obj) {
        return (b30) ViewDataBinding.Q(layoutInflater, R.layout.mod_choice_dialog_item, viewGroup, z3, obj);
    }

    @NonNull
    @Deprecated
    public static b30 f1(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (b30) ViewDataBinding.Q(layoutInflater, R.layout.mod_choice_dialog_item, null, false, obj);
    }

    @Nullable
    public ArchiveData b1() {
        return this.F;
    }

    public abstract void g1(@Nullable ArchiveData archiveData);
}
