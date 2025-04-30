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
import com.join.kotlin.ui.modleregin.viewModle.BtReginModle;
import com.join.kotlin.ui.notice.ClickProxy;
import com.psk.kotlin.util.CommonListMainData;
import java.util.List;
/* compiled from: BtReginActivityBindingImpl.java */
/* loaded from: classes3.dex */
public class g4 extends f4 implements a.InterfaceC0141a {
    @Nullable

    /* renamed from: s0  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f20312s0;
    @Nullable

    /* renamed from: t0  reason: collision with root package name */
    private static final SparseIntArray f20313t0;
    @NonNull

    /* renamed from: o0  reason: collision with root package name */
    private final LinearLayout f20314o0;
    @Nullable

    /* renamed from: p0  reason: collision with root package name */
    private final w3 f20315p0;
    @Nullable

    /* renamed from: q0  reason: collision with root package name */
    private final View.OnClickListener f20316q0;

    /* renamed from: r0  reason: collision with root package name */
    private long f20317r0;

    static {
        ViewDataBinding.IncludedLayouts includedLayouts = new ViewDataBinding.IncludedLayouts(5);
        f20312s0 = includedLayouts;
        includedLayouts.setIncludes(0, new String[]{"bindding_load_layout_include"}, new int[]{4}, new int[]{R.layout.bindding_load_layout_include});
        f20313t0 = null;
    }

    public g4(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.T(dataBindingComponent, view, 5, f20312s0, f20313t0));
    }

    private boolean p1(MutableLiveData<LoadBindindData> mutableLiveData, int i2) {
        if (i2 == 0) {
            synchronized (this) {
                this.f20317r0 |= 2;
            }
            return true;
        }
        return false;
    }

    private boolean q1(MutableLiveData<Integer> mutableLiveData, int i2) {
        if (i2 == 0) {
            synchronized (this) {
                this.f20317r0 |= 1;
            }
            return true;
        }
        return false;
    }

    private boolean r1(MutableLiveData<List<CommonListMainData>> mutableLiveData, int i2) {
        if (i2 == 0) {
            synchronized (this) {
                this.f20317r0 |= 4;
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
            if (this.f20317r0 != 0) {
                return true;
            }
            return this.f20315p0.hasPendingBindings();
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f20317r0 = 256L;
        }
        this.f20315p0.invalidateAll();
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
        throw new UnsupportedOperationException("Method not decompiled: com.join.android.app.mgsim.wufun.databinding.g4.k():void");
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.f4
    public void k1(@Nullable BaseDataBindingAdapter<Object, ViewDataBinding> baseDataBindingAdapter) {
        this.I = baseDataBindingAdapter;
        synchronized (this) {
            this.f20317r0 |= 64;
        }
        notifyPropertyChanged(1);
        super.n0();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.f4
    public void l1(@Nullable ClickProxy clickProxy) {
        this.J = clickProxy;
        synchronized (this) {
            this.f20317r0 |= 128;
        }
        notifyPropertyChanged(7);
        super.n0();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.f4
    public void m1(@Nullable LoadBindClickProxy loadBindClickProxy) {
        this.K = loadBindClickProxy;
        synchronized (this) {
            this.f20317r0 |= 8;
        }
        notifyPropertyChanged(19);
        super.n0();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.f4
    public void n1(@Nullable XRecyclerView.f fVar) {
        this.f20018n0 = fVar;
        synchronized (this) {
            this.f20317r0 |= 32;
        }
        notifyPropertyChanged(23);
        super.n0();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.f4
    public void o1(@Nullable BtReginModle btReginModle) {
        this.H = btReginModle;
        synchronized (this) {
            this.f20317r0 |= 16;
        }
        notifyPropertyChanged(27);
        super.n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void setLifecycleOwner(@Nullable LifecycleOwner lifecycleOwner) {
        super.setLifecycleOwner(lifecycleOwner);
        this.f20315p0.setLifecycleOwner(lifecycleOwner);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i2, @Nullable Object obj) {
        if (19 == i2) {
            m1((LoadBindClickProxy) obj);
            return true;
        } else if (27 == i2) {
            o1((BtReginModle) obj);
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

    private g4(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 3, (ImageView) objArr[1], (XRecyclerView) objArr[3], (TextView) objArr[2]);
        this.f20317r0 = -1L;
        this.E.setTag(null);
        LinearLayout linearLayout = (LinearLayout) objArr[0];
        this.f20314o0 = linearLayout;
        linearLayout.setTag(null);
        w3 w3Var = (w3) objArr[4];
        this.f20315p0 = w3Var;
        z0(w3Var);
        this.F.setTag(null);
        this.G.setTag(null);
        A0(view);
        this.f20316q0 = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 1);
        invalidateAll();
    }
}
