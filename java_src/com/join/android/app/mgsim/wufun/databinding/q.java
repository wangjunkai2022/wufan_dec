package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.MutableLiveData;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.generated.callback.a;
import com.join.kotlin.domain.adapter.BaseDataBindingAdapter;
import com.join.kotlin.domain.common.LoadBindClickProxy;
import com.join.kotlin.domain.common.LoadBindindData;
import com.join.kotlin.ui.coupon.ClickProxy;
import com.join.kotlin.ui.coupon.CouponViewModle;
import com.join.mgps.dto.BTGameCouponBean;
import java.util.ArrayList;
/* compiled from: ActivityCouponlistActivityBindingImpl.java */
/* loaded from: classes3.dex */
public class q extends p implements a.InterfaceC0141a {
    @Nullable

    /* renamed from: r0  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f23761r0;
    @Nullable

    /* renamed from: s0  reason: collision with root package name */
    private static final SparseIntArray f23762s0;
    @NonNull

    /* renamed from: n0  reason: collision with root package name */
    private final LinearLayout f23763n0;
    @Nullable

    /* renamed from: o0  reason: collision with root package name */
    private final w3 f23764o0;
    @Nullable

    /* renamed from: p0  reason: collision with root package name */
    private final View.OnClickListener f23765p0;

    /* renamed from: q0  reason: collision with root package name */
    private long f23766q0;

    static {
        ViewDataBinding.IncludedLayouts includedLayouts = new ViewDataBinding.IncludedLayouts(5);
        f23761r0 = includedLayouts;
        includedLayouts.setIncludes(0, new String[]{"bindding_load_layout_include"}, new int[]{4}, new int[]{R.layout.bindding_load_layout_include});
        f23762s0 = null;
    }

    public q(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.T(dataBindingComponent, view, 5, f23761r0, f23762s0));
    }

    private boolean n1(MutableLiveData<ArrayList<BTGameCouponBean>> mutableLiveData, int i2) {
        if (i2 == 0) {
            synchronized (this) {
                this.f23766q0 |= 1;
            }
            return true;
        }
        return false;
    }

    private boolean o1(MutableLiveData<LoadBindindData> mutableLiveData, int i2) {
        if (i2 == 0) {
            synchronized (this) {
                this.f23766q0 |= 2;
            }
            return true;
        }
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean W(int i2, Object obj, int i4) {
        if (i2 != 0) {
            if (i2 != 1) {
                return false;
            }
            return o1((MutableLiveData) obj, i4);
        }
        return n1((MutableLiveData) obj, i4);
    }

    @Override // com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0141a
    public final void a(int i2, View view) {
        ClickProxy clickProxy = this.J;
        if (clickProxy != null) {
            clickProxy.onClickBack();
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            if (this.f23766q0 != 0) {
                return true;
            }
            return this.f23764o0.hasPendingBindings();
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f23766q0 = 64L;
        }
        this.f23764o0.invalidateAll();
        n0();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.p
    public void j1(@Nullable BaseDataBindingAdapter baseDataBindingAdapter) {
        this.I = baseDataBindingAdapter;
        synchronized (this) {
            this.f23766q0 |= 16;
        }
        notifyPropertyChanged(1);
        super.n0();
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00d2  */
    @Override // androidx.databinding.ViewDataBinding
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void k() {
        /*
            Method dump skipped, instructions count: 224
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.android.app.mgsim.wufun.databinding.q.k():void");
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.p
    public void k1(@Nullable ClickProxy clickProxy) {
        this.J = clickProxy;
        synchronized (this) {
            this.f23766q0 |= 32;
        }
        notifyPropertyChanged(7);
        super.n0();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.p
    public void l1(@Nullable LoadBindClickProxy loadBindClickProxy) {
        this.K = loadBindClickProxy;
        synchronized (this) {
            this.f23766q0 |= 4;
        }
        notifyPropertyChanged(19);
        super.n0();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.p
    public void m1(@Nullable CouponViewModle couponViewModle) {
        this.H = couponViewModle;
        synchronized (this) {
            this.f23766q0 |= 8;
        }
        notifyPropertyChanged(29);
        super.n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void setLifecycleOwner(@Nullable LifecycleOwner lifecycleOwner) {
        super.setLifecycleOwner(lifecycleOwner);
        this.f23764o0.setLifecycleOwner(lifecycleOwner);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i2, @Nullable Object obj) {
        if (19 == i2) {
            l1((LoadBindClickProxy) obj);
            return true;
        } else if (29 == i2) {
            m1((CouponViewModle) obj);
            return true;
        } else if (1 == i2) {
            j1((BaseDataBindingAdapter) obj);
            return true;
        } else if (7 == i2) {
            k1((ClickProxy) obj);
            return true;
        } else {
            return false;
        }
    }

    private q(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 2, (ImageView) objArr[1], (RecyclerView) objArr[3], (TextView) objArr[2]);
        this.f23766q0 = -1L;
        this.E.setTag(null);
        LinearLayout linearLayout = (LinearLayout) objArr[0];
        this.f23763n0 = linearLayout;
        linearLayout.setTag(null);
        w3 w3Var = (w3) objArr[4];
        this.f23764o0 = w3Var;
        z0(w3Var);
        this.F.setTag(null);
        this.G.setTag(null);
        A0(view);
        this.f23765p0 = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 1);
        invalidateAll();
    }
}
