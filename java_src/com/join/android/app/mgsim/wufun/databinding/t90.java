package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.MutableLiveData;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.domain.common.LoadBindClickProxy;
import com.join.kotlin.domain.common.LoadBindindData;
import com.join.kotlin.ui.cloudarchive.ModGameCloudViewModle;
import com.psk.kotlin.util.CommonListMainData;
import java.util.List;
/* compiled from: RecyclerviewLayoutDatabindingBindingImpl.java */
/* loaded from: classes3.dex */
public class t90 extends s90 {
    @Nullable

    /* renamed from: n0  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f25143n0;
    @Nullable

    /* renamed from: o0  reason: collision with root package name */
    private static final SparseIntArray f25144o0;
    @NonNull
    private final RelativeLayout I;
    @Nullable
    private final w3 J;
    private long K;

    static {
        ViewDataBinding.IncludedLayouts includedLayouts = new ViewDataBinding.IncludedLayouts(3);
        f25143n0 = includedLayouts;
        includedLayouts.setIncludes(0, new String[]{"bindding_load_layout_include"}, new int[]{2}, new int[]{R.layout.bindding_load_layout_include});
        f25144o0 = null;
    }

    public t90(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.T(dataBindingComponent, view, 3, f25143n0, f25144o0));
    }

    private boolean l1(MutableLiveData<List<CommonListMainData>> mutableLiveData, int i2) {
        if (i2 == 0) {
            synchronized (this) {
                this.K |= 2;
            }
            return true;
        }
        return false;
    }

    private boolean m1(MutableLiveData<LoadBindindData> mutableLiveData, int i2) {
        if (i2 == 0) {
            synchronized (this) {
                this.K |= 1;
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
            return l1((MutableLiveData) obj, i4);
        }
        return m1((MutableLiveData) obj, i4);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            if (this.K != 0) {
                return true;
            }
            return this.J.hasPendingBindings();
        }
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.s90
    public void i1(@Nullable RecyclerView.Adapter adapter) {
        this.G = adapter;
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.K = 32L;
        }
        this.J.invalidateAll();
        n0();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.s90
    public void j1(@Nullable LoadBindClickProxy loadBindClickProxy) {
        this.H = loadBindClickProxy;
        synchronized (this) {
            this.K |= 8;
        }
        notifyPropertyChanged(19);
        super.n0();
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x005f  */
    @Override // androidx.databinding.ViewDataBinding
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void k() {
        /*
            r19 = this;
            r1 = r19
            monitor-enter(r19)
            long r2 = r1.K     // Catch: java.lang.Throwable -> La3
            r4 = 0
            r1.K = r4     // Catch: java.lang.Throwable -> La3
            monitor-exit(r19)     // Catch: java.lang.Throwable -> La3
            com.join.kotlin.ui.cloudarchive.ModGameCloudViewModle r0 = r1.F
            com.join.kotlin.domain.common.LoadBindClickProxy r6 = r1.H
            r7 = 39
            long r7 = r7 & r2
            r9 = 38
            r11 = 37
            r14 = 0
            int r15 = (r7 > r4 ? 1 : (r7 == r4 ? 0 : -1))
            if (r15 == 0) goto L75
            long r7 = r2 & r11
            r15 = 1
            int r16 = (r7 > r4 ? 1 : (r7 == r4 ? 0 : -1))
            if (r16 == 0) goto L57
            if (r0 == 0) goto L2a
            androidx.lifecycle.MutableLiveData r16 = r0.getLoadBindData()
            r13 = r16
            goto L2b
        L2a:
            r13 = 0
        L2b:
            r1.U0(r14, r13)
            if (r13 == 0) goto L37
            java.lang.Object r13 = r13.getValue()
            com.join.kotlin.domain.common.LoadBindindData r13 = (com.join.kotlin.domain.common.LoadBindindData) r13
            goto L38
        L37:
            r13 = 0
        L38:
            if (r13 == 0) goto L40
            int r17 = r13.getShowStatus()
            r14 = r17
        L40:
            if (r14 != r15) goto L44
            r14 = 1
            goto L45
        L44:
            r14 = 0
        L45:
            int r18 = (r7 > r4 ? 1 : (r7 == r4 ? 0 : -1))
            if (r18 == 0) goto L51
            if (r14 == 0) goto L4e
            r7 = 128(0x80, double:6.32E-322)
            goto L50
        L4e:
            r7 = 64
        L50:
            long r2 = r2 | r7
        L51:
            if (r14 == 0) goto L54
            goto L58
        L54:
            r14 = 8
            goto L59
        L57:
            r13 = 0
        L58:
            r14 = 0
        L59:
            long r7 = r2 & r9
            int r17 = (r7 > r4 ? 1 : (r7 == r4 ? 0 : -1))
            if (r17 == 0) goto L73
            if (r0 == 0) goto L66
            androidx.lifecycle.MutableLiveData r0 = r0.getListArchive()
            goto L67
        L66:
            r0 = 0
        L67:
            r1.U0(r15, r0)
            if (r0 == 0) goto L73
            java.lang.Object r0 = r0.getValue()
            java.util.List r0 = (java.util.List) r0
            goto L78
        L73:
            r0 = 0
            goto L78
        L75:
            r0 = 0
            r13 = 0
            r14 = 0
        L78:
            r7 = 40
            long r7 = r7 & r2
            long r11 = r11 & r2
            int r15 = (r11 > r4 ? 1 : (r11 == r4 ? 0 : -1))
            if (r15 == 0) goto L8a
            com.join.android.app.mgsim.wufun.databinding.w3 r11 = r1.J
            r11.h1(r13)
            com.join.android.app.component.xrecyclerview.XRecyclerView r11 = r1.E
            r11.setVisibility(r14)
        L8a:
            int r11 = (r7 > r4 ? 1 : (r7 == r4 ? 0 : -1))
            if (r11 == 0) goto L93
            com.join.android.app.mgsim.wufun.databinding.w3 r7 = r1.J
            r7.i1(r6)
        L93:
            long r2 = r2 & r9
            int r6 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r6 == 0) goto L9d
            com.join.android.app.component.xrecyclerview.XRecyclerView r2 = r1.E
            com.join.kotlin.bindingadapter.ViewbindingRecycleviewAdapterKt.recycleviewdataBinding(r2, r0)
        L9d:
            com.join.android.app.mgsim.wufun.databinding.w3 r0 = r1.J
            androidx.databinding.ViewDataBinding.n(r0)
            return
        La3:
            r0 = move-exception
            monitor-exit(r19)     // Catch: java.lang.Throwable -> La3
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.android.app.mgsim.wufun.databinding.t90.k():void");
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.s90
    public void k1(@Nullable ModGameCloudViewModle modGameCloudViewModle) {
        this.F = modGameCloudViewModle;
        synchronized (this) {
            this.K |= 4;
        }
        notifyPropertyChanged(27);
        super.n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void setLifecycleOwner(@Nullable LifecycleOwner lifecycleOwner) {
        super.setLifecycleOwner(lifecycleOwner);
        this.J.setLifecycleOwner(lifecycleOwner);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i2, @Nullable Object obj) {
        if (27 == i2) {
            k1((ModGameCloudViewModle) obj);
            return true;
        } else if (19 == i2) {
            j1((LoadBindClickProxy) obj);
            return true;
        } else if (1 == i2) {
            i1((RecyclerView.Adapter) obj);
            return true;
        } else {
            return false;
        }
    }

    private t90(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 2, (XRecyclerView) objArr[1]);
        this.K = -1L;
        RelativeLayout relativeLayout = (RelativeLayout) objArr[0];
        this.I = relativeLayout;
        relativeLayout.setTag(null);
        w3 w3Var = (w3) objArr[2];
        this.J = w3Var;
        z0(w3Var);
        this.E.setTag(null);
        A0(view);
        invalidateAll();
    }
}
