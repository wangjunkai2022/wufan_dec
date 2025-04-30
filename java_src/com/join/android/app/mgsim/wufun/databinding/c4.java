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
import com.join.mgps.business.CollectionBeanSubBusiness;
import java.util.List;
/* compiled from: BtHrecyclerviewGamelistLayoutBindingImpl.java */
/* loaded from: classes3.dex */
public class c4 extends b4 {
    @Nullable
    private static final ViewDataBinding.IncludedLayouts J = null;
    @Nullable
    private static final SparseIntArray K = null;
    @NonNull
    private final ConstraintLayout H;
    private long I;

    public c4(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.T(dataBindingComponent, view, 2, J, K));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean W(int i2, Object obj, int i4) {
        return false;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.b4
    public void h1(@Nullable BaseDataBindingAdapter<Object, ViewDataBinding> baseDataBindingAdapter) {
        this.G = baseDataBindingAdapter;
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

    @Override // com.join.android.app.mgsim.wufun.databinding.b4
    public void i1(@Nullable List<CollectionBeanSubBusiness> list) {
        this.F = list;
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
        List<CollectionBeanSubBusiness> list = this.F;
        BaseDataBindingAdapter<Object, ViewDataBinding> baseDataBindingAdapter = this.G;
        long j5 = 5 & j4;
        if ((j4 & 6) != 0) {
            this.E.setAdapter(baseDataBindingAdapter);
        }
        if (j5 != 0) {
            ViewbindingRecycleviewAdapterKt.recycleviewdataBinding(this.E, list);
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

    private c4(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (RecyclerView) objArr[1]);
        this.I = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.H = constraintLayout;
        constraintLayout.setTag(null);
        this.E.setTag(null);
        A0(view);
        invalidateAll();
    }
}
