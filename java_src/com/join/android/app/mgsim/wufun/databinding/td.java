package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.lifecycle.MutableLiveData;
import com.join.android.app.mgsim.wufun.generated.callback.a;
import com.join.kotlin.ui.cloudarchive.DownloadArchivDialogeViewModle;
/* compiled from: DownloadArchiveDialogBindingImpl.java */
/* loaded from: classes3.dex */
public class td extends sd implements a.InterfaceC0141a {
    @Nullable

    /* renamed from: p0  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f25185p0 = null;
    @Nullable

    /* renamed from: q0  reason: collision with root package name */
    private static final SparseIntArray f25186q0 = null;
    @NonNull
    private final ConstraintLayout G;
    @NonNull
    private final TextView H;
    @NonNull
    private final TextView I;
    @NonNull
    private final ProgressBar J;
    @NonNull
    private final TextView K;
    @Nullable

    /* renamed from: n0  reason: collision with root package name */
    private final View.OnClickListener f25187n0;

    /* renamed from: o0  reason: collision with root package name */
    private long f25188o0;

    public td(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.T(dataBindingComponent, view, 5, f25185p0, f25186q0));
    }

    private boolean j1(MutableLiveData<String> mutableLiveData, int i2) {
        if (i2 == 0) {
            synchronized (this) {
                this.f25188o0 |= 2;
            }
            return true;
        }
        return false;
    }

    private boolean k1(MutableLiveData<Integer> mutableLiveData, int i2) {
        if (i2 == 0) {
            synchronized (this) {
                this.f25188o0 |= 1;
            }
            return true;
        }
        return false;
    }

    private boolean l1(MutableLiveData<String> mutableLiveData, int i2) {
        if (i2 == 0) {
            synchronized (this) {
                this.f25188o0 |= 4;
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
                return l1((MutableLiveData) obj, i4);
            }
            return j1((MutableLiveData) obj, i4);
        }
        return k1((MutableLiveData) obj, i4);
    }

    @Override // com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0141a
    public final void a(int i2, View view) {
        View.OnClickListener onClickListener = this.F;
        if (onClickListener != null) {
            onClickListener.onClick(view);
        }
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.sd
    public void h1(@Nullable View.OnClickListener onClickListener) {
        this.F = onClickListener;
        synchronized (this) {
            this.f25188o0 |= 16;
        }
        notifyPropertyChanged(7);
        super.n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f25188o0 != 0;
        }
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.sd
    public void i1(@Nullable DownloadArchivDialogeViewModle downloadArchivDialogeViewModle) {
        this.E = downloadArchivDialogeViewModle;
        synchronized (this) {
            this.f25188o0 |= 8;
        }
        notifyPropertyChanged(27);
        super.n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f25188o0 = 32L;
        }
        n0();
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0065  */
    @Override // androidx.databinding.ViewDataBinding
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void k() {
        /*
            r18 = this;
            r1 = r18
            monitor-enter(r18)
            long r2 = r1.f25188o0     // Catch: java.lang.Throwable -> Laa
            r4 = 0
            r1.f25188o0 = r4     // Catch: java.lang.Throwable -> Laa
            monitor-exit(r18)     // Catch: java.lang.Throwable -> Laa
            com.join.kotlin.ui.cloudarchive.DownloadArchivDialogeViewModle r0 = r1.E
            r6 = 47
            long r6 = r6 & r2
            r8 = 44
            r10 = 41
            r12 = 42
            r14 = 0
            r15 = 0
            int r16 = (r6 > r4 ? 1 : (r6 == r4 ? 0 : -1))
            if (r16 == 0) goto L7b
            long r6 = r2 & r10
            int r16 = (r6 > r4 ? 1 : (r6 == r4 ? 0 : -1))
            if (r16 == 0) goto L3b
            if (r0 == 0) goto L28
            androidx.lifecycle.MutableLiveData r6 = r0.getProgress()
            goto L29
        L28:
            r6 = r15
        L29:
            r1.U0(r14, r6)
            if (r6 == 0) goto L35
            java.lang.Object r6 = r6.getValue()
            java.lang.Integer r6 = (java.lang.Integer) r6
            goto L36
        L35:
            r6 = r15
        L36:
            int r6 = androidx.databinding.ViewDataBinding.s0(r6)
            r14 = r6
        L3b:
            long r6 = r2 & r8
            int r16 = (r6 > r4 ? 1 : (r6 == r4 ? 0 : -1))
            if (r16 == 0) goto L5e
            if (r0 == 0) goto L48
            com.join.kotlin.ui.cloudarchive.data.ModDataRequest r6 = r0.getRequest()
            goto L49
        L48:
            r6 = r15
        L49:
            if (r6 == 0) goto L50
            androidx.lifecycle.MutableLiveData r6 = r6.getProgressTextShow()
            goto L51
        L50:
            r6 = r15
        L51:
            r7 = 2
            r1.U0(r7, r6)
            if (r6 == 0) goto L5e
            java.lang.Object r6 = r6.getValue()
            java.lang.String r6 = (java.lang.String) r6
            goto L5f
        L5e:
            r6 = r15
        L5f:
            long r16 = r2 & r12
            int r7 = (r16 > r4 ? 1 : (r16 == r4 ? 0 : -1))
            if (r7 == 0) goto L7c
            if (r0 == 0) goto L6c
            androidx.lifecycle.MutableLiveData r0 = r0.getDialogTitle()
            goto L6d
        L6c:
            r0 = r15
        L6d:
            r7 = 1
            r1.U0(r7, r0)
            if (r0 == 0) goto L7c
            java.lang.Object r0 = r0.getValue()
            r15 = r0
            java.lang.String r15 = (java.lang.String) r15
            goto L7c
        L7b:
            r6 = r15
        L7c:
            long r12 = r12 & r2
            int r0 = (r12 > r4 ? 1 : (r12 == r4 ? 0 : -1))
            if (r0 == 0) goto L86
            android.widget.TextView r0 = r1.H
            androidx.databinding.adapters.TextViewBindingAdapter.setText(r0, r15)
        L86:
            long r8 = r8 & r2
            int r0 = (r8 > r4 ? 1 : (r8 == r4 ? 0 : -1))
            if (r0 == 0) goto L90
            android.widget.TextView r0 = r1.I
            androidx.databinding.adapters.TextViewBindingAdapter.setText(r0, r6)
        L90:
            long r6 = r2 & r10
            int r0 = (r6 > r4 ? 1 : (r6 == r4 ? 0 : -1))
            if (r0 == 0) goto L9b
            android.widget.ProgressBar r0 = r1.J
            r0.setProgress(r14)
        L9b:
            r6 = 32
            long r2 = r2 & r6
            int r0 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r0 == 0) goto La9
            android.widget.TextView r0 = r1.K
            android.view.View$OnClickListener r2 = r1.f25187n0
            r0.setOnClickListener(r2)
        La9:
            return
        Laa:
            r0 = move-exception
            monitor-exit(r18)     // Catch: java.lang.Throwable -> Laa
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.android.app.mgsim.wufun.databinding.td.k():void");
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i2, @Nullable Object obj) {
        if (27 == i2) {
            i1((DownloadArchivDialogeViewModle) obj);
        } else if (7 != i2) {
            return false;
        } else {
            h1((View.OnClickListener) obj);
        }
        return true;
    }

    private td(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 3);
        this.f25188o0 = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.G = constraintLayout;
        constraintLayout.setTag(null);
        TextView textView = (TextView) objArr[1];
        this.H = textView;
        textView.setTag(null);
        TextView textView2 = (TextView) objArr[2];
        this.I = textView2;
        textView2.setTag(null);
        ProgressBar progressBar = (ProgressBar) objArr[3];
        this.J = progressBar;
        progressBar.setTag(null);
        TextView textView3 = (TextView) objArr[4];
        this.K = textView3;
        textView3.setTag(null);
        A0(view);
        this.f25187n0 = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 1);
        invalidateAll();
    }
}
