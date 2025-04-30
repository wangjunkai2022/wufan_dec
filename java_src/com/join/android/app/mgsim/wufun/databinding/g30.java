package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
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
/* compiled from: ModDelArchiveDialogBindingImpl.java */
/* loaded from: classes3.dex */
public class g30 extends f30 implements a.InterfaceC0141a {
    @Nullable

    /* renamed from: t0  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f20304t0 = null;
    @Nullable

    /* renamed from: u0  reason: collision with root package name */
    private static final SparseIntArray f20305u0;
    @NonNull
    private final ConstraintLayout K;
    @NonNull

    /* renamed from: n0  reason: collision with root package name */
    private final TextView f20306n0;
    @NonNull

    /* renamed from: o0  reason: collision with root package name */
    private final TextView f20307o0;
    @Nullable

    /* renamed from: p0  reason: collision with root package name */
    private final View.OnClickListener f20308p0;
    @Nullable

    /* renamed from: q0  reason: collision with root package name */
    private final View.OnClickListener f20309q0;
    @Nullable

    /* renamed from: r0  reason: collision with root package name */
    private final View.OnClickListener f20310r0;

    /* renamed from: s0  reason: collision with root package name */
    private long f20311s0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f20305u0 = sparseIntArray;
        sparseIntArray.put(R.id.main, 6);
    }

    public g30(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.T(dataBindingComponent, view, 7, f20304t0, f20305u0));
    }

    private boolean j1(MutableLiveData<DialogData> mutableLiveData, int i2) {
        if (i2 == 0) {
            synchronized (this) {
                this.f20311s0 |= 1;
            }
            return true;
        }
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean W(int i2, Object obj, int i4) {
        if (i2 != 0) {
            return false;
        }
        return j1((MutableLiveData) obj, i4);
    }

    @Override // com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0141a
    public final void a(int i2, View view) {
        if (i2 == 1) {
            View.OnClickListener onClickListener = this.J;
            if (onClickListener != null) {
                onClickListener.onClick(view);
            }
        } else if (i2 == 2) {
            View.OnClickListener onClickListener2 = this.J;
            if (onClickListener2 != null) {
                onClickListener2.onClick(view);
            }
        } else if (i2 != 3) {
        } else {
            View.OnClickListener onClickListener3 = this.J;
            if (onClickListener3 != null) {
                onClickListener3.onClick(view);
            }
        }
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.f30
    public void h1(@Nullable View.OnClickListener onClickListener) {
        this.J = onClickListener;
        synchronized (this) {
            this.f20311s0 |= 4;
        }
        notifyPropertyChanged(7);
        super.n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f20311s0 != 0;
        }
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.f30
    public void i1(@Nullable DelArchiveDialogViewModle delArchiveDialogViewModle) {
        this.I = delArchiveDialogViewModle;
        synchronized (this) {
            this.f20311s0 |= 2;
        }
        notifyPropertyChanged(27);
        super.n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f20311s0 = 8L;
        }
        n0();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:29:? A[RETURN, SYNTHETIC] */
    @Override // androidx.databinding.ViewDataBinding
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void k() {
        /*
            r13 = this;
            monitor-enter(r13)
            long r0 = r13.f20311s0     // Catch: java.lang.Throwable -> L76
            r2 = 0
            r13.f20311s0 = r2     // Catch: java.lang.Throwable -> L76
            monitor-exit(r13)     // Catch: java.lang.Throwable -> L76
            com.join.kotlin.ui.cloudarchive.DelArchiveDialogViewModle r4 = r13.I
            r5 = 11
            long r5 = r5 & r0
            r7 = 0
            int r8 = (r5 > r2 ? 1 : (r5 == r2 ? 0 : -1))
            if (r8 == 0) goto L3e
            if (r4 == 0) goto L19
            androidx.lifecycle.MutableLiveData r4 = r4.getDialogData()
            goto L1a
        L19:
            r4 = r7
        L1a:
            r8 = 0
            r13.U0(r8, r4)
            if (r4 == 0) goto L27
            java.lang.Object r4 = r4.getValue()
            com.join.kotlin.ui.cloudarchive.dialog.DialogData r4 = (com.join.kotlin.ui.cloudarchive.dialog.DialogData) r4
            goto L28
        L27:
            r4 = r7
        L28:
            if (r4 == 0) goto L3e
            java.lang.String r7 = r4.getContent()
            java.lang.String r8 = r4.getOkButn()
            java.lang.String r9 = r4.getTitle()
            java.lang.String r4 = r4.getCancleButn()
            r12 = r7
            r7 = r4
            r4 = r12
            goto L41
        L3e:
            r4 = r7
            r8 = r4
            r9 = r8
        L41:
            r10 = 8
            long r0 = r0 & r10
            int r10 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r10 == 0) goto L5d
            android.widget.TextView r0 = r13.E
            android.view.View$OnClickListener r1 = r13.f20310r0
            r0.setOnClickListener(r1)
            android.widget.ImageView r0 = r13.F
            android.view.View$OnClickListener r1 = r13.f20309q0
            r0.setOnClickListener(r1)
            android.widget.TextView r0 = r13.H
            android.view.View$OnClickListener r1 = r13.f20308p0
            r0.setOnClickListener(r1)
        L5d:
            int r0 = (r5 > r2 ? 1 : (r5 == r2 ? 0 : -1))
            if (r0 == 0) goto L75
            android.widget.TextView r0 = r13.E
            androidx.databinding.adapters.TextViewBindingAdapter.setText(r0, r7)
            android.widget.TextView r0 = r13.f20306n0
            androidx.databinding.adapters.TextViewBindingAdapter.setText(r0, r9)
            android.widget.TextView r0 = r13.f20307o0
            androidx.databinding.adapters.TextViewBindingAdapter.setText(r0, r4)
            android.widget.TextView r0 = r13.H
            androidx.databinding.adapters.TextViewBindingAdapter.setText(r0, r8)
        L75:
            return
        L76:
            r0 = move-exception
            monitor-exit(r13)     // Catch: java.lang.Throwable -> L76
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.android.app.mgsim.wufun.databinding.g30.k():void");
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

    private g30(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 1, (TextView) objArr[3], (ImageView) objArr[5], (LinearLayout) objArr[6], (TextView) objArr[4]);
        this.f20311s0 = -1L;
        this.E.setTag(null);
        this.F.setTag(null);
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.K = constraintLayout;
        constraintLayout.setTag(null);
        TextView textView = (TextView) objArr[1];
        this.f20306n0 = textView;
        textView.setTag(null);
        TextView textView2 = (TextView) objArr[2];
        this.f20307o0 = textView2;
        textView2.setTag(null);
        this.H.setTag(null);
        A0(view);
        this.f20308p0 = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 2);
        this.f20309q0 = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 3);
        this.f20310r0 = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 1);
        invalidateAll();
    }
}
