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
import androidx.databinding.adapters.TextViewBindingAdapter;
import androidx.lifecycle.MutableLiveData;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.generated.callback.a;
import com.join.kotlin.ui.cloudarchive.DelArchiveDialogViewModle;
import com.join.kotlin.ui.cloudarchive.dialog.DialogData;
/* compiled from: NoticeWhiteDialogBindingImpl.java */
/* loaded from: classes3.dex */
public class e60 extends d60 implements a.InterfaceC0141a {
    @Nullable

    /* renamed from: r0  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f19600r0 = null;
    @Nullable

    /* renamed from: s0  reason: collision with root package name */
    private static final SparseIntArray f19601s0;
    @NonNull
    private final ConstraintLayout J;
    @NonNull
    private final TextView K;
    @NonNull

    /* renamed from: n0  reason: collision with root package name */
    private final TextView f19602n0;
    @Nullable

    /* renamed from: o0  reason: collision with root package name */
    private final View.OnClickListener f19603o0;
    @Nullable

    /* renamed from: p0  reason: collision with root package name */
    private final View.OnClickListener f19604p0;

    /* renamed from: q0  reason: collision with root package name */
    private long f19605q0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f19601s0 = sparseIntArray;
        sparseIntArray.put(R.id.main, 5);
    }

    public e60(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.T(dataBindingComponent, view, 6, f19600r0, f19601s0));
    }

    private boolean j1(MutableLiveData<DialogData> mutableLiveData, int i2) {
        if (i2 == 0) {
            synchronized (this) {
                this.f19605q0 |= 1;
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
            View.OnClickListener onClickListener = this.I;
            if (onClickListener != null) {
                onClickListener.onClick(view);
            }
        } else if (i2 != 2) {
        } else {
            View.OnClickListener onClickListener2 = this.I;
            if (onClickListener2 != null) {
                onClickListener2.onClick(view);
            }
        }
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.d60
    public void h1(@Nullable View.OnClickListener onClickListener) {
        this.I = onClickListener;
        synchronized (this) {
            this.f19605q0 |= 4;
        }
        notifyPropertyChanged(7);
        super.n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f19605q0 != 0;
        }
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.d60
    public void i1(@Nullable DelArchiveDialogViewModle delArchiveDialogViewModle) {
        this.H = delArchiveDialogViewModle;
        synchronized (this) {
            this.f19605q0 |= 2;
        }
        notifyPropertyChanged(27);
        super.n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f19605q0 = 8L;
        }
        n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void k() {
        long j4;
        String str;
        String str2;
        String str3;
        boolean z3;
        synchronized (this) {
            j4 = this.f19605q0;
            this.f19605q0 = 0L;
        }
        DelArchiveDialogViewModle delArchiveDialogViewModle = this.H;
        long j5 = j4 & 11;
        String str4 = null;
        if (j5 != 0) {
            MutableLiveData<DialogData> dialogData = delArchiveDialogViewModle != null ? delArchiveDialogViewModle.getDialogData() : null;
            U0(0, dialogData);
            DialogData value = dialogData != null ? dialogData.getValue() : null;
            if (value != null) {
                str4 = value.getContent();
                z3 = value.getShowClose();
                str2 = value.getOkButn();
                str3 = value.getTitle();
            } else {
                str3 = null;
                str2 = null;
                z3 = false;
            }
            if (j5 != 0) {
                j4 |= z3 ? 32L : 16L;
            }
            r9 = z3 ? 0 : 8;
            String str5 = str4;
            str4 = str3;
            str = str5;
        } else {
            str = null;
            str2 = null;
        }
        if ((8 & j4) != 0) {
            this.E.setOnClickListener(this.f19603o0);
            this.G.setOnClickListener(this.f19604p0);
        }
        if ((j4 & 11) != 0) {
            this.E.setVisibility(r9);
            TextViewBindingAdapter.setText(this.K, str4);
            TextViewBindingAdapter.setText(this.f19602n0, str);
            TextViewBindingAdapter.setText(this.G, str2);
        }
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

    private e60(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 1, (ImageView) objArr[4], (LinearLayout) objArr[5], (TextView) objArr[3]);
        this.f19605q0 = -1L;
        this.E.setTag(null);
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.J = constraintLayout;
        constraintLayout.setTag(null);
        TextView textView = (TextView) objArr[1];
        this.K = textView;
        textView.setTag(null);
        TextView textView2 = (TextView) objArr[2];
        this.f19602n0 = textView2;
        textView2.setTag(null);
        this.G.setTag(null);
        A0(view);
        this.f19603o0 = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 2);
        this.f19604p0 = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 1);
        invalidateAll();
    }
}
