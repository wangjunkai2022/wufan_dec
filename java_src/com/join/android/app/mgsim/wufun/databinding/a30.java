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
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.generated.callback.a;
import com.join.kotlin.ui.cloudarchive.data.ArchiveData;
import com.join.kotlin.ui.cloudarchive.dialog.ChoiceArchiveDialogViewModle;
import com.join.kotlin.ui.cloudarchive.dialog.DialogData;
import java.util.List;
/* compiled from: ModChoiceArchiveDialogBindingImpl.java */
/* loaded from: classes3.dex */
public class a30 extends z20 implements a.InterfaceC0141a {
    @Nullable

    /* renamed from: q0  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f18003q0 = null;
    @Nullable

    /* renamed from: r0  reason: collision with root package name */
    private static final SparseIntArray f18004r0;
    @NonNull
    private final ConstraintLayout K;
    @NonNull

    /* renamed from: n0  reason: collision with root package name */
    private final TextView f18005n0;
    @Nullable

    /* renamed from: o0  reason: collision with root package name */
    private final View.OnClickListener f18006o0;

    /* renamed from: p0  reason: collision with root package name */
    private long f18007p0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f18004r0 = sparseIntArray;
        sparseIntArray.put(R.id.main, 4);
    }

    public a30(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.T(dataBindingComponent, view, 5, f18003q0, f18004r0));
    }

    private boolean l1(MutableLiveData<List<ArchiveData>> mutableLiveData, int i2) {
        if (i2 == 0) {
            synchronized (this) {
                this.f18007p0 |= 2;
            }
            return true;
        }
        return false;
    }

    private boolean m1(MutableLiveData<DialogData> mutableLiveData, int i2) {
        if (i2 == 0) {
            synchronized (this) {
                this.f18007p0 |= 1;
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
            return this.f18007p0 != 0;
        }
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.z20
    public void i1(@Nullable RecyclerView.Adapter<RecyclerView.ViewHolder> adapter) {
        this.J = adapter;
        synchronized (this) {
            this.f18007p0 |= 8;
        }
        notifyPropertyChanged(1);
        super.n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f18007p0 = 32L;
        }
        n0();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.z20
    public void j1(@Nullable View.OnClickListener onClickListener) {
        this.I = onClickListener;
        synchronized (this) {
            this.f18007p0 |= 16;
        }
        notifyPropertyChanged(7);
        super.n0();
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0044  */
    @Override // androidx.databinding.ViewDataBinding
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void k() {
        /*
            r17 = this;
            r1 = r17
            monitor-enter(r17)
            long r2 = r1.f18007p0     // Catch: java.lang.Throwable -> L8c
            r4 = 0
            r1.f18007p0 = r4     // Catch: java.lang.Throwable -> L8c
            monitor-exit(r17)     // Catch: java.lang.Throwable -> L8c
            com.join.kotlin.ui.cloudarchive.dialog.ChoiceArchiveDialogViewModle r0 = r1.H
            androidx.recyclerview.widget.RecyclerView$Adapter<androidx.recyclerview.widget.RecyclerView$ViewHolder> r6 = r1.J
            r7 = 39
            long r7 = r7 & r2
            r9 = 38
            r11 = 37
            r13 = 0
            int r14 = (r7 > r4 ? 1 : (r7 == r4 ? 0 : -1))
            if (r14 == 0) goto L5c
            long r7 = r2 & r11
            int r14 = (r7 > r4 ? 1 : (r7 == r4 ? 0 : -1))
            if (r14 == 0) goto L3d
            if (r0 == 0) goto L27
            androidx.lifecycle.MutableLiveData r7 = r0.getDialogData()
            goto L28
        L27:
            r7 = r13
        L28:
            r8 = 0
            r1.U0(r8, r7)
            if (r7 == 0) goto L35
            java.lang.Object r7 = r7.getValue()
            com.join.kotlin.ui.cloudarchive.dialog.DialogData r7 = (com.join.kotlin.ui.cloudarchive.dialog.DialogData) r7
            goto L36
        L35:
            r7 = r13
        L36:
            if (r7 == 0) goto L3d
            java.lang.String r7 = r7.getTitle()
            goto L3e
        L3d:
            r7 = r13
        L3e:
            long r14 = r2 & r9
            int r8 = (r14 > r4 ? 1 : (r14 == r4 ? 0 : -1))
            if (r8 == 0) goto L59
            if (r0 == 0) goto L4b
            androidx.lifecycle.MutableLiveData r0 = r0.getArchiveList()
            goto L4c
        L4b:
            r0 = r13
        L4c:
            r8 = 1
            r1.U0(r8, r0)
            if (r0 == 0) goto L59
            java.lang.Object r0 = r0.getValue()
            r13 = r0
            java.util.List r13 = (java.util.List) r13
        L59:
            r0 = r13
            r13 = r7
            goto L5d
        L5c:
            r0 = r13
        L5d:
            r7 = 40
            long r7 = r7 & r2
            r14 = 32
            long r14 = r14 & r2
            int r16 = (r14 > r4 ? 1 : (r14 == r4 ? 0 : -1))
            if (r16 == 0) goto L6e
            android.widget.ImageView r14 = r1.E
            android.view.View$OnClickListener r15 = r1.f18006o0
            r14.setOnClickListener(r15)
        L6e:
            long r11 = r11 & r2
            int r14 = (r11 > r4 ? 1 : (r11 == r4 ? 0 : -1))
            if (r14 == 0) goto L78
            android.widget.TextView r11 = r1.f18005n0
            androidx.databinding.adapters.TextViewBindingAdapter.setText(r11, r13)
        L78:
            int r11 = (r7 > r4 ? 1 : (r7 == r4 ? 0 : -1))
            if (r11 == 0) goto L81
            androidx.recyclerview.widget.RecyclerView r7 = r1.G
            r7.setAdapter(r6)
        L81:
            long r2 = r2 & r9
            int r6 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r6 == 0) goto L8b
            androidx.recyclerview.widget.RecyclerView r2 = r1.G
            com.join.kotlin.bindingadapter.ViewbindingRecycleviewAdapterKt.recycleviewdataBinding(r2, r0)
        L8b:
            return
        L8c:
            r0 = move-exception
            monitor-exit(r17)     // Catch: java.lang.Throwable -> L8c
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.android.app.mgsim.wufun.databinding.a30.k():void");
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.z20
    public void k1(@Nullable ChoiceArchiveDialogViewModle choiceArchiveDialogViewModle) {
        this.H = choiceArchiveDialogViewModle;
        synchronized (this) {
            this.f18007p0 |= 4;
        }
        notifyPropertyChanged(27);
        super.n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i2, @Nullable Object obj) {
        if (27 == i2) {
            k1((ChoiceArchiveDialogViewModle) obj);
            return true;
        } else if (1 == i2) {
            i1((RecyclerView.Adapter) obj);
            return true;
        } else if (7 == i2) {
            j1((View.OnClickListener) obj);
            return true;
        } else {
            return false;
        }
    }

    private a30(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 2, (ImageView) objArr[3], (LinearLayout) objArr[4], (RecyclerView) objArr[2]);
        this.f18007p0 = -1L;
        this.E.setTag(null);
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.K = constraintLayout;
        constraintLayout.setTag(null);
        TextView textView = (TextView) objArr[1];
        this.f18005n0 = textView;
        textView.setTag(null);
        this.G.setTag(null);
        A0(view);
        this.f18006o0 = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 1);
        invalidateAll();
    }
}
