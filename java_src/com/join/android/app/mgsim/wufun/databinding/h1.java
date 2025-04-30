package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.domain.common.LoadBindClickProxy;
import com.join.kotlin.ui.notice.ClickProxy;
import com.join.kotlin.ui.notice.NoticeViewModle;
/* compiled from: ActivityNoticelistActivityBinding.java */
/* loaded from: classes3.dex */
public abstract class h1 extends ViewDataBinding {
    @NonNull
    public final ImageView E;
    @NonNull
    public final XRecyclerView F;
    @NonNull
    public final TextView G;
    @Bindable
    protected NoticeViewModle H;
    @Bindable
    protected RecyclerView.Adapter I;
    @Bindable
    protected ClickProxy J;
    @Bindable
    protected LoadBindClickProxy K;

    /* JADX INFO: Access modifiers changed from: protected */
    public h1(Object obj, View view, int i2, ImageView imageView, XRecyclerView xRecyclerView, TextView textView) {
        super(obj, view, i2);
        this.E = imageView;
        this.F = xRecyclerView;
        this.G = textView;
    }

    public static h1 Z0(@NonNull View view) {
        return a1(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static h1 a1(@NonNull View view, @Nullable Object obj) {
        return (h1) ViewDataBinding.h(obj, view, R.layout.activity_noticelist_activity);
    }

    @NonNull
    public static h1 f1(@NonNull LayoutInflater layoutInflater) {
        return i1(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static h1 g1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        return h1(layoutInflater, viewGroup, z3, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static h1 h1(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3, @Nullable Object obj) {
        return (h1) ViewDataBinding.Q(layoutInflater, R.layout.activity_noticelist_activity, viewGroup, z3, obj);
    }

    @NonNull
    @Deprecated
    public static h1 i1(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (h1) ViewDataBinding.Q(layoutInflater, R.layout.activity_noticelist_activity, null, false, obj);
    }

    @Nullable
    public RecyclerView.Adapter b1() {
        return this.I;
    }

    @Nullable
    public ClickProxy c1() {
        return this.J;
    }

    @Nullable
    public LoadBindClickProxy d1() {
        return this.K;
    }

    @Nullable
    public NoticeViewModle e1() {
        return this.H;
    }

    public abstract void j1(@Nullable RecyclerView.Adapter adapter);

    public abstract void k1(@Nullable ClickProxy clickProxy);

    public abstract void l1(@Nullable LoadBindClickProxy loadBindClickProxy);

    public abstract void m1(@Nullable NoticeViewModle noticeViewModle);
}
