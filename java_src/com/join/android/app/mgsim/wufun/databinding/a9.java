package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.lifecycle.MutableLiveData;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.kotlin.domain.adapter.BaseDataBindingAdapter;
import com.join.kotlin.ui.modleregin.viewModle.GameListViewModle;
import com.psk.kotlin.util.CommonListMainData;
import java.util.List;
/* compiled from: DatabGamelistLayoutBindingImpl.java */
/* loaded from: classes3.dex */
public class a9 extends z8 {
    @Nullable
    private static final ViewDataBinding.IncludedLayouts K = null;
    @Nullable

    /* renamed from: n0  reason: collision with root package name */
    private static final SparseIntArray f18069n0 = null;
    @NonNull
    private final ConstraintLayout I;
    private long J;

    public a9(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.T(dataBindingComponent, view, 2, K, f18069n0));
    }

    private boolean l1(MutableLiveData<List<CommonListMainData>> mutableLiveData, int i2) {
        if (i2 == 0) {
            synchronized (this) {
                this.J |= 1;
            }
            return true;
        }
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean W(int i2, Object obj, int i4) {
        if (i2 != 0) {
            return false;
        }
        return l1((MutableLiveData) obj, i4);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.J != 0;
        }
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.z8
    public void i1(@Nullable BaseDataBindingAdapter<Object, ViewDataBinding> baseDataBindingAdapter) {
        this.G = baseDataBindingAdapter;
        synchronized (this) {
            this.J |= 4;
        }
        notifyPropertyChanged(1);
        super.n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.J = 16L;
        }
        n0();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.z8
    public void j1(@Nullable XRecyclerView.f fVar) {
        this.F = fVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:23:? A[RETURN, SYNTHETIC] */
    @Override // androidx.databinding.ViewDataBinding
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void k() {
        /*
            r8 = this;
            monitor-enter(r8)
            long r0 = r8.J     // Catch: java.lang.Throwable -> L34
            r2 = 0
            r8.J = r2     // Catch: java.lang.Throwable -> L34
            monitor-exit(r8)     // Catch: java.lang.Throwable -> L34
            com.join.kotlin.domain.adapter.BaseDataBindingAdapter<java.lang.Object, androidx.databinding.ViewDataBinding> r4 = r8.G
            com.join.kotlin.ui.modleregin.viewModle.GameListViewModle r5 = r8.H
            r6 = 29
            long r0 = r0 & r6
            r6 = 0
            int r7 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r7 == 0) goto L29
            if (r5 == 0) goto L1b
            androidx.lifecycle.MutableLiveData r5 = r5.getShowDatas()
            goto L1c
        L1b:
            r5 = r6
        L1c:
            r7 = 0
            r8.U0(r7, r5)
            if (r5 == 0) goto L29
            java.lang.Object r5 = r5.getValue()
            java.util.List r5 = (java.util.List) r5
            goto L2a
        L29:
            r5 = r6
        L2a:
            int r7 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r7 == 0) goto L33
            com.join.android.app.component.xrecyclerview.XRecyclerView r0 = r8.E
            com.join.kotlin.bindingadapter.ViewbindingRecycleviewAdapterKt.xrecycleviewadapterBinding(r0, r5, r4, r6, r6)
        L33:
            return
        L34:
            r0 = move-exception
            monitor-exit(r8)     // Catch: java.lang.Throwable -> L34
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.android.app.mgsim.wufun.databinding.a9.k():void");
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.z8
    public void k1(@Nullable GameListViewModle gameListViewModle) {
        this.H = gameListViewModle;
        synchronized (this) {
            this.J |= 8;
        }
        notifyPropertyChanged(27);
        super.n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i2, @Nullable Object obj) {
        if (23 == i2) {
            j1((XRecyclerView.f) obj);
            return true;
        } else if (1 == i2) {
            i1((BaseDataBindingAdapter) obj);
            return true;
        } else if (27 == i2) {
            k1((GameListViewModle) obj);
            return true;
        } else {
            return false;
        }
    }

    private a9(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 1, (XRecyclerView) objArr[1]);
        this.J = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.I = constraintLayout;
        constraintLayout.setTag(null);
        this.E.setTag(null);
        A0(view);
        invalidateAll();
    }
}
