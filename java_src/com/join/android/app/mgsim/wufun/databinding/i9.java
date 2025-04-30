package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.join.android.app.mgsim.wufun.generated.callback.a;
import com.join.kotlin.ui.modleregin.modle.TitleModle;
/* compiled from: DatabindingTitleLayoutBindingImpl.java */
/* loaded from: classes3.dex */
public class i9 extends h9 implements a.InterfaceC0141a {
    @Nullable

    /* renamed from: p0  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f21095p0 = null;
    @Nullable

    /* renamed from: q0  reason: collision with root package name */
    private static final SparseIntArray f21096q0 = null;
    @NonNull
    private final ConstraintLayout K;
    @Nullable

    /* renamed from: n0  reason: collision with root package name */
    private final View.OnClickListener f21097n0;

    /* renamed from: o0  reason: collision with root package name */
    private long f21098o0;

    public i9(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.T(dataBindingComponent, view, 4, f21095p0, f21096q0));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean W(int i2, Object obj, int i4) {
        return false;
    }

    @Override // com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0141a
    public final void a(int i2, View view) {
        View.OnClickListener onClickListener = this.I;
        if (onClickListener != null) {
            onClickListener.onClick(view);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f21098o0 != 0;
        }
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.h9
    public void i1(@Nullable View.OnClickListener onClickListener) {
        this.I = onClickListener;
        synchronized (this) {
            this.f21098o0 |= 4;
        }
        notifyPropertyChanged(7);
        super.n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f21098o0 = 8L;
        }
        n0();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.h9
    public void j1(@Nullable TitleModle titleModle) {
        this.J = titleModle;
        synchronized (this) {
            this.f21098o0 |= 2;
        }
        notifyPropertyChanged(9);
        super.n0();
    }

    /* JADX WARN: Code restructure failed: missing block: B:63:0x00bf, code lost:
        if (r17 != false) goto L55;
     */
    @Override // androidx.databinding.ViewDataBinding
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void k() {
        /*
            Method dump skipped, instructions count: 248
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.android.app.mgsim.wufun.databinding.i9.k():void");
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.h9
    public void k1(@Nullable Boolean bool) {
        this.H = bool;
        synchronized (this) {
            this.f21098o0 |= 1;
        }
        notifyPropertyChanged(16);
        super.n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i2, @Nullable Object obj) {
        if (16 == i2) {
            k1((Boolean) obj);
        } else if (9 == i2) {
            j1((TitleModle) obj);
        } else if (7 != i2) {
            return false;
        } else {
            i1((View.OnClickListener) obj);
        }
        return true;
    }

    private i9(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TextView) objArr[3], (TextView) objArr[2], (TextView) objArr[1]);
        this.f21098o0 = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.K = constraintLayout;
        constraintLayout.setTag(null);
        this.E.setTag(null);
        this.F.setTag(null);
        this.G.setTag(null);
        A0(view);
        this.f21097n0 = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 1);
        invalidateAll();
    }
}
