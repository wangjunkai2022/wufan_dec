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
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.generated.callback.a;
import com.join.kotlin.domain.adapter.BaseDataBindingAdapter;
import com.join.kotlin.domain.common.LoadBindClickProxy;
import com.join.kotlin.domain.common.LoadBindindData;
import com.join.kotlin.ui.modleregin.modle.MustplayItemBean;
import com.join.kotlin.ui.modleregin.viewModle.MustPlayViewModle;
import com.join.kotlin.ui.notice.ClickProxy;
import java.util.List;
/* compiled from: MustplayReginActivityBindingImpl.java */
/* loaded from: classes3.dex */
public class j40 extends i40 implements a.InterfaceC0141a {
    @Nullable

    /* renamed from: s0  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f21374s0;
    @Nullable

    /* renamed from: t0  reason: collision with root package name */
    private static final SparseIntArray f21375t0;
    @NonNull

    /* renamed from: o0  reason: collision with root package name */
    private final LinearLayout f21376o0;
    @Nullable

    /* renamed from: p0  reason: collision with root package name */
    private final w3 f21377p0;
    @Nullable

    /* renamed from: q0  reason: collision with root package name */
    private final View.OnClickListener f21378q0;

    /* renamed from: r0  reason: collision with root package name */
    private long f21379r0;

    static {
        ViewDataBinding.IncludedLayouts includedLayouts = new ViewDataBinding.IncludedLayouts(5);
        f21374s0 = includedLayouts;
        includedLayouts.setIncludes(0, new String[]{"bindding_load_layout_include"}, new int[]{4}, new int[]{R.layout.bindding_load_layout_include});
        f21375t0 = null;
    }

    public j40(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.T(dataBindingComponent, view, 5, f21374s0, f21375t0));
    }

    private boolean p1(MutableLiveData<LoadBindindData> mutableLiveData, int i2) {
        if (i2 == 0) {
            synchronized (this) {
                this.f21379r0 |= 2;
            }
            return true;
        }
        return false;
    }

    private boolean q1(MutableLiveData<Integer> mutableLiveData, int i2) {
        if (i2 == 0) {
            synchronized (this) {
                this.f21379r0 |= 1;
            }
            return true;
        }
        return false;
    }

    private boolean r1(MutableLiveData<List<MustplayItemBean>> mutableLiveData, int i2) {
        if (i2 == 0) {
            synchronized (this) {
                this.f21379r0 |= 4;
            }
            return true;
        }
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean W(int i2, Object obj, int i4) {
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 != 2) {
                    return false;
                }
                return r1((MutableLiveData) obj, i4);
            }
            return p1((MutableLiveData) obj, i4);
        }
        return q1((MutableLiveData) obj, i4);
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
            if (this.f21379r0 != 0) {
                return true;
            }
            return this.f21377p0.hasPendingBindings();
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f21379r0 = 256L;
        }
        this.f21377p0.invalidateAll();
        n0();
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x008f  */
    @Override // androidx.databinding.ViewDataBinding
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void k() {
        /*
            Method dump skipped, instructions count: 252
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.android.app.mgsim.wufun.databinding.j40.k():void");
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.i40
    public void k1(@Nullable BaseDataBindingAdapter<Object, ViewDataBinding> baseDataBindingAdapter) {
        this.I = baseDataBindingAdapter;
        synchronized (this) {
            this.f21379r0 |= 64;
        }
        notifyPropertyChanged(1);
        super.n0();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.i40
    public void l1(@Nullable ClickProxy clickProxy) {
        this.J = clickProxy;
        synchronized (this) {
            this.f21379r0 |= 128;
        }
        notifyPropertyChanged(7);
        super.n0();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.i40
    public void m1(@Nullable LoadBindClickProxy loadBindClickProxy) {
        this.K = loadBindClickProxy;
        synchronized (this) {
            this.f21379r0 |= 8;
        }
        notifyPropertyChanged(19);
        super.n0();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.i40
    public void n1(@Nullable XRecyclerView.f fVar) {
        this.f21043n0 = fVar;
        synchronized (this) {
            this.f21379r0 |= 32;
        }
        notifyPropertyChanged(23);
        super.n0();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.i40
    public void o1(@Nullable MustPlayViewModle mustPlayViewModle) {
        this.H = mustPlayViewModle;
        synchronized (this) {
            this.f21379r0 |= 16;
        }
        notifyPropertyChanged(27);
        super.n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void setLifecycleOwner(@Nullable LifecycleOwner lifecycleOwner) {
        super.setLifecycleOwner(lifecycleOwner);
        this.f21377p0.setLifecycleOwner(lifecycleOwner);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i2, @Nullable Object obj) {
        if (19 == i2) {
            m1((LoadBindClickProxy) obj);
            return true;
        } else if (27 == i2) {
            o1((MustPlayViewModle) obj);
            return true;
        } else if (23 == i2) {
            n1((XRecyclerView.f) obj);
            return true;
        } else if (1 == i2) {
            k1((BaseDataBindingAdapter) obj);
            return true;
        } else if (7 == i2) {
            l1((ClickProxy) obj);
            return true;
        } else {
            return false;
        }
    }

    private j40(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 3, (ImageView) objArr[1], (XRecyclerView) objArr[3], (TextView) objArr[2]);
        this.f21379r0 = -1L;
        this.E.setTag(null);
        LinearLayout linearLayout = (LinearLayout) objArr[0];
        this.f21376o0 = linearLayout;
        linearLayout.setTag(null);
        w3 w3Var = (w3) objArr[4];
        this.f21377p0 = w3Var;
        z0(w3Var);
        this.F.setTag(null);
        this.G.setTag(null);
        A0(view);
        this.f21378q0 = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 1);
        invalidateAll();
    }
}
