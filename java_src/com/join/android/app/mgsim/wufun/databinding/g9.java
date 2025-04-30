package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
/* compiled from: DatabindingLineLayoutBindingImpl.java */
/* loaded from: classes3.dex */
public class g9 extends f9 {
    @Nullable
    private static final ViewDataBinding.IncludedLayouts G = null;
    @Nullable
    private static final SparseIntArray H = null;
    @NonNull
    private final LinearLayout E;
    private long F;

    public g9(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.T(dataBindingComponent, view, 1, G, H));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean W(int i2, Object obj, int i4) {
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.F != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.F = 1L;
        }
        n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void k() {
        synchronized (this) {
            this.F = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i2, @Nullable Object obj) {
        return true;
    }

    private g9(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0);
        this.F = -1L;
        LinearLayout linearLayout = (LinearLayout) objArr[0];
        this.E = linearLayout;
        linearLayout.setTag(null);
        A0(view);
        invalidateAll();
    }
}
