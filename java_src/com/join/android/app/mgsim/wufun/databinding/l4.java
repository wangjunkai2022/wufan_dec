package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.join.kotlin.bindingadapter.ViewbindingRecycleviewAdapterKt;
import com.join.kotlin.domain.adapter.BaseDataBindingAdapter;
import com.join.mgps.dto.BannerBean;
import java.util.List;
/* compiled from: BtTagRecycviewLayoutBindingImpl.java */
/* loaded from: classes3.dex */
public class l4 extends k4 {
    @Nullable
    private static final ViewDataBinding.IncludedLayouts J = null;
    @Nullable
    private static final SparseIntArray K = null;
    @NonNull
    private final ConstraintLayout G;
    @NonNull
    private final RecyclerView H;
    private long I;

    public l4(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.T(dataBindingComponent, view, 2, J, K));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean W(int i2, Object obj, int i4) {
        return false;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.k4
    public void h1(@Nullable BaseDataBindingAdapter<Object, ViewDataBinding> baseDataBindingAdapter) {
        this.F = baseDataBindingAdapter;
        synchronized (this) {
            this.I |= 2;
        }
        notifyPropertyChanged(1);
        super.n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.I != 0;
        }
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.k4
    public void i1(@Nullable List<BannerBean> list) {
        this.E = list;
        synchronized (this) {
            this.I |= 1;
        }
        notifyPropertyChanged(22);
        super.n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.I = 4L;
        }
        n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void k() {
        long j4;
        synchronized (this) {
            j4 = this.I;
            this.I = 0L;
        }
        List<BannerBean> list = this.E;
        BaseDataBindingAdapter<Object, ViewDataBinding> baseDataBindingAdapter = this.F;
        long j5 = 5 & j4;
        if ((j4 & 6) != 0) {
            this.H.setAdapter(baseDataBindingAdapter);
        }
        if (j5 != 0) {
            ViewbindingRecycleviewAdapterKt.recycleviewdataBinding(this.H, list);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i2, @Nullable Object obj) {
        if (22 == i2) {
            i1((List) obj);
            return true;
        } else if (1 == i2) {
            h1((BaseDataBindingAdapter) obj);
            return true;
        } else {
            return false;
        }
    }

    private l4(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0);
        this.I = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.G = constraintLayout;
        constraintLayout.setTag(null);
        RecyclerView recyclerView = (RecyclerView) objArr[1];
        this.H = recyclerView;
        recyclerView.setTag(null);
        A0(view);
        invalidateAll();
    }
}
