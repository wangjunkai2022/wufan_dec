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
import com.join.kotlin.ui.cloudarchive.data.ArchiveData;
import com.join.kotlin.ui.cloudarchive.dialog.DialogData;
/* compiled from: ModRedownArchiveDialogBindingImpl.java */
/* loaded from: classes3.dex */
public class l30 extends k30 implements a.InterfaceC0141a {
    @Nullable

    /* renamed from: w0  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f22008w0 = null;
    @Nullable

    /* renamed from: x0  reason: collision with root package name */
    private static final SparseIntArray f22009x0;
    @NonNull

    /* renamed from: o0  reason: collision with root package name */
    private final ConstraintLayout f22010o0;
    @NonNull

    /* renamed from: p0  reason: collision with root package name */
    private final TextView f22011p0;
    @NonNull

    /* renamed from: q0  reason: collision with root package name */
    private final TextView f22012q0;
    @NonNull

    /* renamed from: r0  reason: collision with root package name */
    private final TextView f22013r0;
    @Nullable

    /* renamed from: s0  reason: collision with root package name */
    private final View.OnClickListener f22014s0;
    @Nullable

    /* renamed from: t0  reason: collision with root package name */
    private final View.OnClickListener f22015t0;
    @Nullable

    /* renamed from: u0  reason: collision with root package name */
    private final View.OnClickListener f22016u0;

    /* renamed from: v0  reason: collision with root package name */
    private long f22017v0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f22009x0 = sparseIntArray;
        sparseIntArray.put(R.id.main, 8);
        sparseIntArray.put(R.id.radio, 9);
    }

    public l30(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.T(dataBindingComponent, view, 10, f22008w0, f22009x0));
    }

    private boolean j1(MutableLiveData<ArchiveData> mutableLiveData, int i2) {
        if (i2 == 0) {
            synchronized (this) {
                this.f22017v0 |= 2;
            }
            return true;
        }
        return false;
    }

    private boolean k1(MutableLiveData<DialogData> mutableLiveData, int i2) {
        if (i2 == 0) {
            synchronized (this) {
                this.f22017v0 |= 1;
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
            return j1((MutableLiveData) obj, i4);
        }
        return k1((MutableLiveData) obj, i4);
    }

    @Override // com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0141a
    public final void a(int i2, View view) {
        if (i2 == 1) {
            View.OnClickListener onClickListener = this.f21657n0;
            if (onClickListener != null) {
                onClickListener.onClick(view);
            }
        } else if (i2 == 2) {
            View.OnClickListener onClickListener2 = this.f21657n0;
            if (onClickListener2 != null) {
                onClickListener2.onClick(view);
            }
        } else if (i2 != 3) {
        } else {
            View.OnClickListener onClickListener3 = this.f21657n0;
            if (onClickListener3 != null) {
                onClickListener3.onClick(view);
            }
        }
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.k30
    public void h1(@Nullable View.OnClickListener onClickListener) {
        this.f21657n0 = onClickListener;
        synchronized (this) {
            this.f22017v0 |= 8;
        }
        notifyPropertyChanged(7);
        super.n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f22017v0 != 0;
        }
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.k30
    public void i1(@Nullable DelArchiveDialogViewModle delArchiveDialogViewModle) {
        this.K = delArchiveDialogViewModle;
        synchronized (this) {
            this.f22017v0 |= 4;
        }
        notifyPropertyChanged(27);
        super.n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f22017v0 = 16L;
        }
        n0();
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0051  */
    @Override // androidx.databinding.ViewDataBinding
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void k() {
        /*
            Method dump skipped, instructions count: 203
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.android.app.mgsim.wufun.databinding.l30.k():void");
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

    private l30(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 2, (TextView) objArr[5], (ImageView) objArr[7], (LinearLayout) objArr[8], (TextView) objArr[3], (TextView) objArr[6], (ImageView) objArr[9]);
        this.f22017v0 = -1L;
        this.E.setTag(null);
        this.F.setTag(null);
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f22010o0 = constraintLayout;
        constraintLayout.setTag(null);
        TextView textView = (TextView) objArr[1];
        this.f22011p0 = textView;
        textView.setTag(null);
        TextView textView2 = (TextView) objArr[2];
        this.f22012q0 = textView2;
        textView2.setTag(null);
        TextView textView3 = (TextView) objArr[4];
        this.f22013r0 = textView3;
        textView3.setTag(null);
        this.H.setTag(null);
        this.I.setTag(null);
        A0(view);
        this.f22014s0 = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 2);
        this.f22015t0 = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 3);
        this.f22016u0 = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 1);
        invalidateAll();
    }
}
