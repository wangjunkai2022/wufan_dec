package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.lifecycle.MutableLiveData;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.domain.adapter.BaseDataBindingAdapter;
import com.join.kotlin.ui.userrecom.RecomViewModle;
import com.psk.kotlin.util.CommonListMainData;
import java.util.ArrayList;
/* compiled from: ActivityUserrecomActivityBindingImpl.java */
/* loaded from: classes3.dex */
public class j2 extends i2 {
    @Nullable

    /* renamed from: q0  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f21351q0 = null;
    @Nullable

    /* renamed from: r0  reason: collision with root package name */
    private static final SparseIntArray f21352r0;
    @NonNull
    private final LinearLayout K;
    @NonNull

    /* renamed from: n0  reason: collision with root package name */
    private final ImageView f21353n0;

    /* renamed from: o0  reason: collision with root package name */
    private a f21354o0;

    /* renamed from: p0  reason: collision with root package name */
    private long f21355p0;

    /* compiled from: ActivityUserrecomActivityBindingImpl.java */
    /* loaded from: classes3.dex */
    public static class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        private View.OnClickListener f21356a;

        public a a(View.OnClickListener onClickListener) {
            this.f21356a = onClickListener;
            if (onClickListener == null) {
                return null;
            }
            return this;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f21356a.onClick(view);
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f21352r0 = sparseIntArray;
        sparseIntArray.put(R.id.toplayout, 4);
    }

    public j2(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.T(dataBindingComponent, view, 5, f21351q0, f21352r0));
    }

    private boolean l1(MutableLiveData<ArrayList<CommonListMainData>> mutableLiveData, int i2) {
        if (i2 == 0) {
            synchronized (this) {
                this.f21355p0 |= 1;
            }
            return true;
        }
        return false;
    }

    private boolean m1(MutableLiveData<String> mutableLiveData, int i2) {
        if (i2 == 0) {
            synchronized (this) {
                this.f21355p0 |= 2;
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
            return m1((MutableLiveData) obj, i4);
        }
        return l1((MutableLiveData) obj, i4);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f21355p0 != 0;
        }
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.i2
    public void i1(@Nullable BaseDataBindingAdapter baseDataBindingAdapter) {
        this.I = baseDataBindingAdapter;
        synchronized (this) {
            this.f21355p0 |= 8;
        }
        notifyPropertyChanged(1);
        super.n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f21355p0 = 32L;
        }
        n0();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.i2
    public void j1(@Nullable View.OnClickListener onClickListener) {
        this.J = onClickListener;
        synchronized (this) {
            this.f21355p0 |= 16;
        }
        notifyPropertyChanged(7);
        super.n0();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x003e  */
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
            long r2 = r1.f21355p0     // Catch: java.lang.Throwable -> L9b
            r4 = 0
            r1.f21355p0 = r4     // Catch: java.lang.Throwable -> L9b
            monitor-exit(r19)     // Catch: java.lang.Throwable -> L9b
            com.join.kotlin.ui.userrecom.RecomViewModle r0 = r1.H
            com.join.kotlin.domain.adapter.BaseDataBindingAdapter r6 = r1.I
            android.view.View$OnClickListener r7 = r1.J
            r8 = 39
            long r8 = r8 & r2
            r10 = 38
            r12 = 37
            r14 = 0
            int r15 = (r8 > r4 ? 1 : (r8 == r4 ? 0 : -1))
            if (r15 == 0) goto L55
            long r8 = r2 & r12
            int r15 = (r8 > r4 ? 1 : (r8 == r4 ? 0 : -1))
            if (r15 == 0) goto L37
            if (r0 == 0) goto L29
            androidx.lifecycle.MutableLiveData r8 = r0.getShowDataList()
            goto L2a
        L29:
            r8 = r14
        L2a:
            r9 = 0
            r1.U0(r9, r8)
            if (r8 == 0) goto L37
            java.lang.Object r8 = r8.getValue()
            java.util.ArrayList r8 = (java.util.ArrayList) r8
            goto L38
        L37:
            r8 = r14
        L38:
            long r15 = r2 & r10
            int r9 = (r15 > r4 ? 1 : (r15 == r4 ? 0 : -1))
            if (r9 == 0) goto L53
            if (r0 == 0) goto L45
            androidx.lifecycle.MutableLiveData r0 = r0.getTitleMessage()
            goto L46
        L45:
            r0 = r14
        L46:
            r9 = 1
            r1.U0(r9, r0)
            if (r0 == 0) goto L53
            java.lang.Object r0 = r0.getValue()
            java.lang.String r0 = (java.lang.String) r0
            goto L57
        L53:
            r0 = r14
            goto L57
        L55:
            r0 = r14
            r8 = r0
        L57:
            r15 = 40
            long r15 = r15 & r2
            r17 = 48
            long r17 = r2 & r17
            int r9 = (r17 > r4 ? 1 : (r17 == r4 ? 0 : -1))
            if (r9 == 0) goto L73
            if (r7 == 0) goto L73
            com.join.android.app.mgsim.wufun.databinding.j2$a r9 = r1.f21354o0
            if (r9 != 0) goto L6f
            com.join.android.app.mgsim.wufun.databinding.j2$a r9 = new com.join.android.app.mgsim.wufun.databinding.j2$a
            r9.<init>()
            r1.f21354o0 = r9
        L6f:
            com.join.android.app.mgsim.wufun.databinding.j2$a r14 = r9.a(r7)
        L73:
            int r7 = (r17 > r4 ? 1 : (r17 == r4 ? 0 : -1))
            if (r7 == 0) goto L7c
            android.widget.ImageView r7 = r1.f21353n0
            r7.setOnClickListener(r14)
        L7c:
            int r7 = (r15 > r4 ? 1 : (r15 == r4 ? 0 : -1))
            if (r7 == 0) goto L85
            androidx.recyclerview.widget.RecyclerView r7 = r1.E
            r7.setAdapter(r6)
        L85:
            long r6 = r2 & r12
            int r9 = (r6 > r4 ? 1 : (r6 == r4 ? 0 : -1))
            if (r9 == 0) goto L90
            androidx.recyclerview.widget.RecyclerView r6 = r1.E
            com.join.kotlin.bindingadapter.ViewbindingRecycleviewAdapterKt.recycleviewdataBinding(r6, r8)
        L90:
            long r2 = r2 & r10
            int r6 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r6 == 0) goto L9a
            android.widget.TextView r2 = r1.F
            androidx.databinding.adapters.TextViewBindingAdapter.setText(r2, r0)
        L9a:
            return
        L9b:
            r0 = move-exception
            monitor-exit(r19)     // Catch: java.lang.Throwable -> L9b
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.android.app.mgsim.wufun.databinding.j2.k():void");
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.i2
    public void k1(@Nullable RecomViewModle recomViewModle) {
        this.H = recomViewModle;
        synchronized (this) {
            this.f21355p0 |= 4;
        }
        notifyPropertyChanged(29);
        super.n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i2, @Nullable Object obj) {
        if (29 == i2) {
            k1((RecomViewModle) obj);
            return true;
        } else if (1 == i2) {
            i1((BaseDataBindingAdapter) obj);
            return true;
        } else if (7 == i2) {
            j1((View.OnClickListener) obj);
            return true;
        } else {
            return false;
        }
    }

    private j2(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 2, (RecyclerView) objArr[3], (TextView) objArr[1], (RelativeLayout) objArr[4]);
        this.f21355p0 = -1L;
        LinearLayout linearLayout = (LinearLayout) objArr[0];
        this.K = linearLayout;
        linearLayout.setTag(null);
        ImageView imageView = (ImageView) objArr[2];
        this.f21353n0 = imageView;
        imageView.setTag(null);
        this.E.setTag(null);
        this.F.setTag(null);
        A0(view);
        invalidateAll();
    }
}
