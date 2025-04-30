package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.lifecycle.MutableLiveData;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.generated.callback.a;
import com.join.kotlin.ui.cloudarchive.DelArchiveDialogViewModle;
import com.join.kotlin.ui.cloudarchive.dialog.DialogData;
/* compiled from: ModCommentlArchiveDialogBindingImpl.java */
/* loaded from: classes3.dex */
public class e30 extends d30 implements a.InterfaceC0141a {
    @Nullable

    /* renamed from: y0  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f19573y0 = null;
    @Nullable

    /* renamed from: z0  reason: collision with root package name */
    private static final SparseIntArray f19574z0;
    @NonNull

    /* renamed from: s0  reason: collision with root package name */
    private final ConstraintLayout f19575s0;
    @Nullable

    /* renamed from: t0  reason: collision with root package name */
    private final View.OnClickListener f19576t0;
    @Nullable

    /* renamed from: u0  reason: collision with root package name */
    private final View.OnClickListener f19577u0;
    @Nullable

    /* renamed from: v0  reason: collision with root package name */
    private final View.OnClickListener f19578v0;
    @Nullable

    /* renamed from: w0  reason: collision with root package name */
    private final View.OnClickListener f19579w0;

    /* renamed from: x0  reason: collision with root package name */
    private long f19580x0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f19574z0 = sparseIntArray;
        sparseIntArray.put(R.id.main, 6);
        sparseIntArray.put(R.id.imageView631, 7);
        sparseIntArray.put(R.id.imageView632, 8);
        sparseIntArray.put(R.id.imageView633, 9);
        sparseIntArray.put(R.id.textView109, 10);
    }

    public e30(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.T(dataBindingComponent, view, 11, f19573y0, f19574z0));
    }

    private boolean j1(MutableLiveData<DialogData> mutableLiveData, int i2) {
        if (i2 == 0) {
            synchronized (this) {
                this.f19580x0 |= 1;
            }
            return true;
        }
        return false;
    }

    private boolean k1(MutableLiveData<Boolean> mutableLiveData, int i2) {
        if (i2 == 0) {
            synchronized (this) {
                this.f19580x0 |= 2;
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
            View.OnClickListener onClickListener = this.f19193r0;
            if (onClickListener != null) {
                onClickListener.onClick(view);
            }
        } else if (i2 == 2) {
            View.OnClickListener onClickListener2 = this.f19193r0;
            if (onClickListener2 != null) {
                onClickListener2.onClick(view);
            }
        } else if (i2 == 3) {
            View.OnClickListener onClickListener3 = this.f19193r0;
            if (onClickListener3 != null) {
                onClickListener3.onClick(view);
            }
        } else if (i2 != 4) {
        } else {
            View.OnClickListener onClickListener4 = this.f19193r0;
            if (onClickListener4 != null) {
                onClickListener4.onClick(view);
            }
        }
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.d30
    public void h1(@Nullable View.OnClickListener onClickListener) {
        this.f19193r0 = onClickListener;
        synchronized (this) {
            this.f19580x0 |= 8;
        }
        notifyPropertyChanged(7);
        super.n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f19580x0 != 0;
        }
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.d30
    public void i1(@Nullable DelArchiveDialogViewModle delArchiveDialogViewModle) {
        this.f19192q0 = delArchiveDialogViewModle;
        synchronized (this) {
            this.f19580x0 |= 4;
        }
        notifyPropertyChanged(27);
        super.n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f19580x0 = 16L;
        }
        n0();
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0040  */
    @Override // androidx.databinding.ViewDataBinding
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void k() {
        /*
            r15 = this;
            monitor-enter(r15)
            long r0 = r15.f19580x0     // Catch: java.lang.Throwable -> L97
            r2 = 0
            r15.f19580x0 = r2     // Catch: java.lang.Throwable -> L97
            monitor-exit(r15)     // Catch: java.lang.Throwable -> L97
            com.join.kotlin.ui.cloudarchive.DelArchiveDialogViewModle r4 = r15.f19192q0
            r5 = 23
            long r5 = r5 & r0
            r7 = 22
            r9 = 21
            r11 = 0
            r12 = 0
            int r13 = (r5 > r2 ? 1 : (r5 == r2 ? 0 : -1))
            if (r13 == 0) goto L63
            long r5 = r0 & r9
            int r13 = (r5 > r2 ? 1 : (r5 == r2 ? 0 : -1))
            if (r13 == 0) goto L39
            if (r4 == 0) goto L24
            androidx.lifecycle.MutableLiveData r5 = r4.getDialogData()
            goto L25
        L24:
            r5 = r12
        L25:
            r15.U0(r11, r5)
            if (r5 == 0) goto L31
            java.lang.Object r5 = r5.getValue()
            com.join.kotlin.ui.cloudarchive.dialog.DialogData r5 = (com.join.kotlin.ui.cloudarchive.dialog.DialogData) r5
            goto L32
        L31:
            r5 = r12
        L32:
            if (r5 == 0) goto L39
            java.lang.String r5 = r5.getTitle()
            goto L3a
        L39:
            r5 = r12
        L3a:
            long r13 = r0 & r7
            int r6 = (r13 > r2 ? 1 : (r13 == r2 ? 0 : -1))
            if (r6 == 0) goto L62
            if (r4 == 0) goto L47
            androidx.lifecycle.MutableLiveData r4 = r4.isCommitLoding()
            goto L48
        L47:
            r4 = r12
        L48:
            r6 = 1
            r15.U0(r6, r4)
            if (r4 == 0) goto L55
            java.lang.Object r4 = r4.getValue()
            r12 = r4
            java.lang.Boolean r12 = (java.lang.Boolean) r12
        L55:
            boolean r4 = androidx.databinding.ViewDataBinding.w0(r12)
            r4 = r4 ^ r6
            java.lang.Boolean r4 = java.lang.Boolean.valueOf(r4)
            boolean r11 = androidx.databinding.ViewDataBinding.w0(r4)
        L62:
            r12 = r5
        L63:
            r4 = 16
            long r4 = r4 & r0
            int r6 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r6 == 0) goto L71
            android.widget.ImageView r4 = r15.E
            android.view.View$OnClickListener r5 = r15.f19577u0
            r4.setOnClickListener(r5)
        L71:
            long r4 = r0 & r7
            int r6 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r6 == 0) goto L8c
            androidx.constraintlayout.widget.ConstraintLayout r4 = r15.J
            android.view.View$OnClickListener r5 = r15.f19578v0
            androidx.databinding.adapters.ViewBindingAdapter.setOnClick(r4, r5, r11)
            androidx.constraintlayout.widget.ConstraintLayout r4 = r15.K
            android.view.View$OnClickListener r5 = r15.f19579w0
            androidx.databinding.adapters.ViewBindingAdapter.setOnClick(r4, r5, r11)
            androidx.constraintlayout.widget.ConstraintLayout r4 = r15.f19191p0
            android.view.View$OnClickListener r5 = r15.f19576t0
            androidx.databinding.adapters.ViewBindingAdapter.setOnClick(r4, r5, r11)
        L8c:
            long r0 = r0 & r9
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 == 0) goto L96
            android.widget.TextView r0 = r15.f19189n0
            androidx.databinding.adapters.TextViewBindingAdapter.setText(r0, r12)
        L96:
            return
        L97:
            r0 = move-exception
            monitor-exit(r15)     // Catch: java.lang.Throwable -> L97
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.android.app.mgsim.wufun.databinding.e30.k():void");
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i2, @Nullable Object obj) {
        if (27 == i2) {
            i1((DelArchiveDialogViewModle) obj);
        } else if (7 != i2) {
            return false;
        } else {
            h1((View.OnClickListener) obj);
        }
        return true;
    }

    private e30(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 2, (ImageView) objArr[2], (ImageView) objArr[7], (ImageView) objArr[8], (ImageView) objArr[9], (ConstraintLayout) objArr[6], (ConstraintLayout) objArr[5], (ConstraintLayout) objArr[3], (TextView) objArr[1], (TextView) objArr[10], (ConstraintLayout) objArr[4]);
        this.f19580x0 = -1L;
        this.E.setTag(null);
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f19575s0 = constraintLayout;
        constraintLayout.setTag(null);
        this.J.setTag(null);
        this.K.setTag(null);
        this.f19189n0.setTag(null);
        this.f19191p0.setTag(null);
        A0(view);
        this.f19576t0 = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 3);
        this.f19577u0 = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 1);
        this.f19578v0 = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 4);
        this.f19579w0 = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 2);
        invalidateAll();
    }
}
