package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.viewpager.widget.ViewPager;
import com.flyco.tablayout.SlidingTabLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.cloudarchive.ModGameCloudViewModle;
import com.join.kotlin.ui.cloudarchive.adapter.MyPagerAdapter;
/* compiled from: ModgameCloudArchiveFragmentBindingImpl.java */
/* loaded from: classes3.dex */
public class a40 extends z30 {
    @Nullable

    /* renamed from: n0  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f18012n0 = null;
    @Nullable

    /* renamed from: o0  reason: collision with root package name */
    private static final SparseIntArray f18013o0;
    @NonNull
    private final RelativeLayout J;
    private long K;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f18013o0 = sparseIntArray;
        sparseIntArray.put(R.id.title, 1);
        sparseIntArray.put(R.id.tabLayout, 2);
        sparseIntArray.put(R.id.viewPager, 3);
    }

    public a40(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.T(dataBindingComponent, view, 4, f18012n0, f18013o0));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean W(int i2, Object obj, int i4) {
        return false;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.z30
    public void h1(@Nullable MyPagerAdapter myPagerAdapter) {
        this.I = myPagerAdapter;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.K != 0;
        }
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.z30
    public void i1(@Nullable ModGameCloudViewModle modGameCloudViewModle) {
        this.H = modGameCloudViewModle;
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
        synchronized (this) {
            this.K = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i2, @Nullable Object obj) {
        if (1 == i2) {
            h1((MyPagerAdapter) obj);
            return true;
        } else if (27 == i2) {
            i1((ModGameCloudViewModle) obj);
            return true;
        } else {
            return false;
        }
    }

    private a40(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (SlidingTabLayout) objArr[2], (RelativeLayout) objArr[1], (ViewPager) objArr[3]);
        this.K = -1L;
        RelativeLayout relativeLayout = (RelativeLayout) objArr[0];
        this.J = relativeLayout;
        relativeLayout.setTag(null);
        A0(view);
        invalidateAll();
    }
}
