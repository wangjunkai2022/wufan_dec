package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.cloudarchive.DownloadArchivDialogeViewModle;
/* compiled from: DownloadArchiveDialogBinding.java */
/* loaded from: classes3.dex */
public abstract class sd extends ViewDataBinding {
    @Bindable
    protected DownloadArchivDialogeViewModle E;
    @Bindable
    protected View.OnClickListener F;

    /* JADX INFO: Access modifiers changed from: protected */
    public sd(Object obj, View view, int i2) {
        super(obj, view, i2);
    }

    public static sd Z0(@NonNull View view) {
        return a1(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static sd a1(@NonNull View view, @Nullable Object obj) {
        return (sd) ViewDataBinding.h(obj, view, R.layout.download_archive_dialog);
    }

    @NonNull
    public static sd d1(@NonNull LayoutInflater layoutInflater) {
        return g1(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static sd e1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        return f1(layoutInflater, viewGroup, z3, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static sd f1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3, @Nullable Object obj) {
        return (sd) ViewDataBinding.Q(layoutInflater, R.layout.download_archive_dialog, viewGroup, z3, obj);
    }

    @NonNull
    @Deprecated
    public static sd g1(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (sd) ViewDataBinding.Q(layoutInflater, R.layout.download_archive_dialog, null, false, obj);
    }

    @Nullable
    public View.OnClickListener b1() {
        return this.F;
    }

    @Nullable
    public DownloadArchivDialogeViewModle c1() {
        return this.E;
    }

    public abstract void h1(@Nullable View.OnClickListener onClickListener);

    public abstract void i1(@Nullable DownloadArchivDialogeViewModle downloadArchivDialogeViewModle);
}
