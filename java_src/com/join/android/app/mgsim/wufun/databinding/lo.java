package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.lifecycle.MutableLiveData;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.generated.callback.a;
import com.join.kotlin.ui.cloudarchive.dialog.ImageDialogViewmodle;
/* compiled from: ImageShowDialogBindingImpl.java */
/* loaded from: classes3.dex */
public class lo extends ko implements a.InterfaceC0141a {
    @Nullable

    /* renamed from: s0  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f22184s0 = null;
    @Nullable

    /* renamed from: t0  reason: collision with root package name */
    private static final SparseIntArray f22185t0 = null;
    @NonNull

    /* renamed from: o0  reason: collision with root package name */
    private final ConstraintLayout f22186o0;
    @Nullable

    /* renamed from: p0  reason: collision with root package name */
    private final View.OnClickListener f22187p0;
    @Nullable

    /* renamed from: q0  reason: collision with root package name */
    private final View.OnClickListener f22188q0;

    /* renamed from: r0  reason: collision with root package name */
    private long f22189r0;

    public lo(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.T(dataBindingComponent, view, 7, f22184s0, f22185t0));
    }

    private boolean j1(MutableLiveData<String> mutableLiveData, int i2) {
        if (i2 == 0) {
            synchronized (this) {
                this.f22189r0 |= 1;
            }
            return true;
        }
        return false;
    }

    private boolean k1(MutableLiveData<Integer> mutableLiveData, int i2) {
        if (i2 == 0) {
            synchronized (this) {
                this.f22189r0 |= 2;
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
            return k1((MutableLiveData) obj, i4);
        }
        return j1((MutableLiveData) obj, i4);
    }

    @Override // com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0141a
    public final void a(int i2, View view) {
        if (i2 == 1) {
            View.OnClickListener onClickListener = this.f21875n0;
            if (onClickListener != null) {
                onClickListener.onClick(view);
            }
        } else if (i2 != 2) {
        } else {
            View.OnClickListener onClickListener2 = this.f21875n0;
            if (onClickListener2 != null) {
                onClickListener2.onClick(view);
            }
        }
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.ko
    public void h1(@Nullable View.OnClickListener onClickListener) {
        this.f21875n0 = onClickListener;
        synchronized (this) {
            this.f22189r0 |= 8;
        }
        notifyPropertyChanged(7);
        super.n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f22189r0 != 0;
        }
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.ko
    public void i1(@Nullable ImageDialogViewmodle imageDialogViewmodle) {
        this.K = imageDialogViewmodle;
        synchronized (this) {
            this.f22189r0 |= 4;
        }
        notifyPropertyChanged(27);
        super.n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f22189r0 = 16L;
        }
        n0();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:68:? A[RETURN, SYNTHETIC] */
    @Override // androidx.databinding.ViewDataBinding
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void k() {
        /*
            Method dump skipped, instructions count: 201
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.android.app.mgsim.wufun.databinding.lo.k():void");
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i2, @Nullable Object obj) {
        if (27 == i2) {
            i1((ImageDialogViewmodle) obj);
        } else if (7 != i2) {
            return false;
        } else {
            h1((View.OnClickListener) obj);
        }
        return true;
    }

    private lo(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 2, (ImageView) objArr[5], (ImageView) objArr[6], (SimpleDraweeView) objArr[2], (SimpleDraweeView) objArr[4], (LinearLayout) objArr[1], (FrameLayout) objArr[3]);
        this.f22189r0 = -1L;
        this.E.setTag(null);
        this.F.setTag(null);
        this.G.setTag(null);
        this.H.setTag(null);
        this.I.setTag(null);
        this.J.setTag(null);
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f22186o0 = constraintLayout;
        constraintLayout.setTag(null);
        A0(view);
        this.f22187p0 = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 2);
        this.f22188q0 = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 1);
        invalidateAll();
    }
}
