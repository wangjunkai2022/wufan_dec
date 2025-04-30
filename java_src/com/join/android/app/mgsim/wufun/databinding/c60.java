package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import com.join.kotlin.ui.notice.ClickProxy;
import com.join.mgps.dto.BTActivityBean;
/* compiled from: NoticeItemItemBindingImpl.java */
/* loaded from: classes3.dex */
public class c60 extends b60 {
    @Nullable

    /* renamed from: n0  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f18790n0 = null;
    @Nullable

    /* renamed from: o0  reason: collision with root package name */
    private static final SparseIntArray f18791o0 = null;
    private long K;

    public c60(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.T(dataBindingComponent, view, 4, f18790n0, f18791o0));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean W(int i2, Object obj, int i4) {
        return false;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.b60
    public void h1(@Nullable BTActivityBean bTActivityBean) {
        this.I = bTActivityBean;
        synchronized (this) {
            this.K |= 1;
        }
        notifyPropertyChanged(3);
        super.n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.K != 0;
        }
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.b60
    public void i1(@Nullable ClickProxy clickProxy) {
        this.J = clickProxy;
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.K = 4L;
        }
        n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void k() {
        long j4;
        String str;
        String str2;
        synchronized (this) {
            j4 = this.K;
            this.K = 0L;
        }
        BTActivityBean bTActivityBean = this.I;
        long j5 = j4 & 5;
        String str3 = null;
        if (j5 == 0 || bTActivityBean == null) {
            str = null;
            str2 = null;
        } else {
            str3 = bTActivityBean.getSub_head();
            str2 = bTActivityBean.getTitle();
            str = bTActivityBean.getType();
        }
        if (j5 != 0) {
            TextViewBindingAdapter.setText(this.F, str3);
            TextViewBindingAdapter.setText(this.G, str);
            TextViewBindingAdapter.setText(this.H, str2);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i2, @Nullable Object obj) {
        if (3 == i2) {
            h1((BTActivityBean) obj);
        } else if (7 != i2) {
            return false;
        } else {
            i1((ClickProxy) obj);
        }
        return true;
    }

    private c60(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ConstraintLayout) objArr[0], (TextView) objArr[3], (TextView) objArr[1], (TextView) objArr[2]);
        this.K = -1L;
        this.E.setTag(null);
        this.F.setTag(null);
        this.G.setTag(null);
        this.H.setTag(null);
        A0(view);
        invalidateAll();
    }
}
