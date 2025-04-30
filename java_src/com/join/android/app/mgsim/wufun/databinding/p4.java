package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.bindingadapter.ViewBindingSlidingTablayoutKt;
import com.join.mgps.customview.BtReginSlidinTablayout;
import java.util.List;
/* compiled from: BtViewpagerLayoutBindingImpl.java */
/* loaded from: classes3.dex */
public class p4 extends o4 {
    @Nullable

    /* renamed from: o0  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f23466o0 = null;
    @Nullable

    /* renamed from: p0  reason: collision with root package name */
    private static final SparseIntArray f23467p0;
    @NonNull
    private final LinearLayout K;

    /* renamed from: n0  reason: collision with root package name */
    private long f23468n0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f23467p0 = sparseIntArray;
        sparseIntArray.put(R.id.viewPager, 2);
    }

    public p4(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.T(dataBindingComponent, view, 3, f23466o0, f23467p0));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean W(int i2, Object obj, int i4) {
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f23468n0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f23468n0 = 16L;
        }
        n0();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.o4
    public void j1(@Nullable FragmentManager fragmentManager) {
        this.G = fragmentManager;
        synchronized (this) {
            this.f23468n0 |= 2;
        }
        notifyPropertyChanged(11);
        super.n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void k() {
        long j4;
        synchronized (this) {
            j4 = this.f23468n0;
            this.f23468n0 = 0L;
        }
        List<Fragment> list = this.I;
        FragmentManager fragmentManager = this.G;
        List<String> list2 = this.H;
        ViewPager viewPager = this.J;
        if ((j4 & 31) != 0) {
            ViewBindingSlidingTablayoutKt.viewpagertabLayout(this.E, viewPager, list, list2, fragmentManager);
        }
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.o4
    public void k1(@Nullable List<Fragment> list) {
        this.I = list;
        synchronized (this) {
            this.f23468n0 |= 1;
        }
        notifyPropertyChanged(12);
        super.n0();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.o4
    public void l1(@Nullable List<String> list) {
        this.H = list;
        synchronized (this) {
            this.f23468n0 |= 4;
        }
        notifyPropertyChanged(24);
        super.n0();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.o4
    public void m1(@Nullable ViewPager viewPager) {
        this.J = viewPager;
        synchronized (this) {
            this.f23468n0 |= 8;
        }
        notifyPropertyChanged(28);
        super.n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i2, @Nullable Object obj) {
        if (12 == i2) {
            k1((List) obj);
        } else if (11 == i2) {
            j1((FragmentManager) obj);
        } else if (24 == i2) {
            l1((List) obj);
        } else if (28 != i2) {
            return false;
        } else {
            m1((ViewPager) obj);
        }
        return true;
    }

    private p4(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (BtReginSlidinTablayout) objArr[1], (ViewPager) objArr[2]);
        this.f23468n0 = -1L;
        LinearLayout linearLayout = (LinearLayout) objArr[0];
        this.K = linearLayout;
        linearLayout.setTag(null);
        this.E.setTag(null);
        A0(view);
        invalidateAll();
    }
}
