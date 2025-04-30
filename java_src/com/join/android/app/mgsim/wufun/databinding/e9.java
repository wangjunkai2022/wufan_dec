package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.kotlin.bindingadapter.SimpleDrawableViewKt;
import com.join.mgps.dto.BannerBean;
/* compiled from: DatabindingHtaglistItemBindingImpl.java */
/* loaded from: classes3.dex */
public class e9 extends d9 {
    @Nullable
    private static final ViewDataBinding.IncludedLayouts I = null;
    @Nullable
    private static final SparseIntArray J = null;
    private long H;

    public e9(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.T(dataBindingComponent, view, 2, I, J));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean W(int i2, Object obj, int i4) {
        return false;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.d9
    public void g1(@Nullable BannerBean bannerBean) {
        this.G = bannerBean;
        synchronized (this) {
            this.H |= 1;
        }
        notifyPropertyChanged(9);
        super.n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.H != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.H = 2L;
        }
        n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void k() {
        long j4;
        synchronized (this) {
            j4 = this.H;
            this.H = 0L;
        }
        BannerBean bannerBean = this.G;
        long j5 = j4 & 3;
        String pic_remote = (j5 == 0 || bannerBean == null) ? null : bannerBean.getPic_remote();
        if (j5 != 0) {
            SimpleDrawableViewKt.loadUrl(this.E, pic_remote, null, 0);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i2, @Nullable Object obj) {
        if (9 == i2) {
            g1((BannerBean) obj);
            return true;
        }
        return false;
    }

    private e9(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (SimpleDraweeView) objArr[1], (LinearLayout) objArr[0]);
        this.H = -1L;
        this.E.setTag(null);
        this.F.setTag(null);
        A0(view);
        invalidateAll();
    }
}
