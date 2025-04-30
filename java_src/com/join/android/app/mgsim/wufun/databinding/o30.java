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
import androidx.databinding.adapters.TextViewBindingAdapter;
import androidx.lifecycle.MutableLiveData;
import com.facebook.drawee.view.SimpleDraweeView;
import com.google.android.material.textfield.TextInputEditText;
import com.join.android.app.mgsim.wufun.generated.callback.a;
import com.join.kotlin.ui.cloudarchive.ModUploadArchiveViewModle;
import com.join.kotlin.ui.cloudarchive.data.ArchiveData;
import java.util.List;
/* compiled from: ModUploadArchiveActivityBindingImpl.java */
/* loaded from: classes3.dex */
public class o30 extends n30 implements a.InterfaceC0141a {
    @Nullable
    private static final ViewDataBinding.IncludedLayouts D0 = null;
    @Nullable
    private static final SparseIntArray E0 = null;
    @Nullable
    private final View.OnClickListener A0;
    @Nullable
    private final View.OnClickListener B0;
    private long C0;
    @NonNull

    /* renamed from: r0  reason: collision with root package name */
    private final LinearLayout f23104r0;
    @NonNull

    /* renamed from: s0  reason: collision with root package name */
    private final TextView f23105s0;
    @NonNull

    /* renamed from: t0  reason: collision with root package name */
    private final TextView f23106t0;
    @NonNull

    /* renamed from: u0  reason: collision with root package name */
    private final TextView f23107u0;
    @NonNull

    /* renamed from: v0  reason: collision with root package name */
    private final ImageView f23108v0;
    @NonNull

    /* renamed from: w0  reason: collision with root package name */
    private final RelativeLayout f23109w0;
    @Nullable

    /* renamed from: x0  reason: collision with root package name */
    private final View.OnClickListener f23110x0;
    @Nullable

    /* renamed from: y0  reason: collision with root package name */
    private final View.OnClickListener f23111y0;
    @Nullable

    /* renamed from: z0  reason: collision with root package name */
    private final View.OnClickListener f23112z0;

    public o30(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.T(dataBindingComponent, view, 13, D0, E0));
    }

    private boolean n1(MutableLiveData<ArchiveData> mutableLiveData, int i2) {
        if (i2 == 0) {
            synchronized (this) {
                this.C0 |= 8;
            }
            return true;
        }
        return false;
    }

    private boolean o1(MutableLiveData<List<ArchiveData>> mutableLiveData, int i2) {
        if (i2 == 0) {
            synchronized (this) {
                this.C0 |= 2;
            }
            return true;
        }
        return false;
    }

    private boolean p1(MutableLiveData<String> mutableLiveData, int i2) {
        if (i2 == 0) {
            synchronized (this) {
                this.C0 |= 1;
            }
            return true;
        }
        return false;
    }

    private boolean q1(MutableLiveData<String> mutableLiveData, int i2) {
        if (i2 == 0) {
            synchronized (this) {
                this.C0 |= 4;
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
                    if (i2 != 3) {
                        return false;
                    }
                    return n1((MutableLiveData) obj, i4);
                }
                return q1((MutableLiveData) obj, i4);
            }
            return o1((MutableLiveData) obj, i4);
        }
        return p1((MutableLiveData) obj, i4);
    }

    @Override // com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0141a
    public final void a(int i2, View view) {
        if (i2 == 1) {
            View.OnClickListener onClickListener = this.f22721o0;
            if (onClickListener != null) {
                onClickListener.onClick(view);
            }
        } else if (i2 == 2) {
            View.OnClickListener onClickListener2 = this.f22721o0;
            if (onClickListener2 != null) {
                onClickListener2.onClick(view);
            }
        } else if (i2 == 3) {
            View.OnClickListener onClickListener3 = this.f22721o0;
            if (onClickListener3 != null) {
                onClickListener3.onClick(view);
            }
        } else if (i2 == 4) {
            View.OnClickListener onClickListener4 = this.f22721o0;
            if (onClickListener4 != null) {
                onClickListener4.onClick(view);
            }
        } else if (i2 != 5) {
        } else {
            View.OnClickListener onClickListener5 = this.f22721o0;
            if (onClickListener5 != null) {
                onClickListener5.onClick(view);
            }
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.C0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.C0 = 256L;
        }
        n0();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.n30
    public void j1(@Nullable TextViewBindingAdapter.OnTextChanged onTextChanged) {
        this.f22722p0 = onTextChanged;
        synchronized (this) {
            this.C0 |= 32;
        }
        notifyPropertyChanged(2);
        super.n0();
    }

    /* JADX WARN: Code restructure failed: missing block: B:63:0x00a6, code lost:
        if (r11 != false) goto L98;
     */
    /* JADX WARN: Removed duplicated region for block: B:76:0x00d0  */
    @Override // androidx.databinding.ViewDataBinding
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void k() {
        /*
            Method dump skipped, instructions count: 381
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.android.app.mgsim.wufun.databinding.o30.k():void");
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.n30
    public void k1(@Nullable TextViewBindingAdapter.BeforeTextChanged beforeTextChanged) {
        this.f22723q0 = beforeTextChanged;
        synchronized (this) {
            this.C0 |= 16;
        }
        notifyPropertyChanged(5);
        super.n0();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.n30
    public void l1(@Nullable View.OnClickListener onClickListener) {
        this.f22721o0 = onClickListener;
        synchronized (this) {
            this.C0 |= 64;
        }
        notifyPropertyChanged(21);
        super.n0();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.n30
    public void m1(@Nullable ModUploadArchiveViewModle modUploadArchiveViewModle) {
        this.f22720n0 = modUploadArchiveViewModle;
        synchronized (this) {
            this.C0 |= 128;
        }
        notifyPropertyChanged(27);
        super.n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i2, @Nullable Object obj) {
        if (5 == i2) {
            k1((TextViewBindingAdapter.BeforeTextChanged) obj);
        } else if (2 == i2) {
            j1((TextViewBindingAdapter.OnTextChanged) obj);
        } else if (21 == i2) {
            l1((View.OnClickListener) obj);
        } else if (27 != i2) {
            return false;
        } else {
            m1((ModUploadArchiveViewModle) obj);
        }
        return true;
    }

    private o30(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 4, (LinearLayout) objArr[4], (ImageView) objArr[1], (ImageView) objArr[12], (ImageView) objArr[11], (TextInputEditText) objArr[8], (TextView) objArr[3], (SimpleDraweeView) objArr[10]);
        this.C0 = -1L;
        this.E.setTag(null);
        this.F.setTag(null);
        this.G.setTag(null);
        this.H.setTag(null);
        LinearLayout linearLayout = (LinearLayout) objArr[0];
        this.f23104r0 = linearLayout;
        linearLayout.setTag(null);
        TextView textView = (TextView) objArr[2];
        this.f23105s0 = textView;
        textView.setTag(null);
        TextView textView2 = (TextView) objArr[5];
        this.f23106t0 = textView2;
        textView2.setTag(null);
        TextView textView3 = (TextView) objArr[6];
        this.f23107u0 = textView3;
        textView3.setTag(null);
        ImageView imageView = (ImageView) objArr[7];
        this.f23108v0 = imageView;
        imageView.setTag(null);
        RelativeLayout relativeLayout = (RelativeLayout) objArr[9];
        this.f23109w0 = relativeLayout;
        relativeLayout.setTag(null);
        this.I.setTag(null);
        this.J.setTag(null);
        this.K.setTag(null);
        A0(view);
        this.f23110x0 = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 5);
        this.f23111y0 = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 4);
        this.f23112z0 = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 2);
        this.A0 = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 3);
        this.B0 = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 1);
        invalidateAll();
    }
}
