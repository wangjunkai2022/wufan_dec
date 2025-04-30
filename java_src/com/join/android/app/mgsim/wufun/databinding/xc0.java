package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.InverseBindingListener;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import androidx.lifecycle.MutableLiveData;
import com.join.android.app.mgsim.wufun.generated.callback.a;
import com.join.kotlin.ui.account.viewmodle.UnbindViewModle;
import com.join.kotlin.ui.notice.ClickProxy;
/* compiled from: UnbindThridpartActivityBindingImpl.java */
/* loaded from: classes3.dex */
public class xc0 extends wc0 implements a.InterfaceC0141a {
    @Nullable

    /* renamed from: v0  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f26537v0 = null;
    @Nullable

    /* renamed from: w0  reason: collision with root package name */
    private static final SparseIntArray f26538w0 = null;
    @NonNull
    private final LinearLayout J;
    @NonNull
    private final TextView K;
    @NonNull

    /* renamed from: n0  reason: collision with root package name */
    private final TextView f26539n0;
    @NonNull

    /* renamed from: o0  reason: collision with root package name */
    private final EditText f26540o0;
    @NonNull

    /* renamed from: p0  reason: collision with root package name */
    private final TextView f26541p0;
    @Nullable

    /* renamed from: q0  reason: collision with root package name */
    private final View.OnClickListener f26542q0;
    @Nullable

    /* renamed from: r0  reason: collision with root package name */
    private final View.OnClickListener f26543r0;
    @Nullable

    /* renamed from: s0  reason: collision with root package name */
    private final View.OnClickListener f26544s0;

    /* renamed from: t0  reason: collision with root package name */
    private InverseBindingListener f26545t0;

    /* renamed from: u0  reason: collision with root package name */
    private long f26546u0;

    /* compiled from: UnbindThridpartActivityBindingImpl.java */
    /* loaded from: classes3.dex */
    class a implements InverseBindingListener {
        a() {
        }

        @Override // androidx.databinding.InverseBindingListener
        public void onChange() {
            String textString = TextViewBindingAdapter.getTextString(xc0.this.f26540o0);
            UnbindViewModle unbindViewModle = xc0.this.I;
            if (unbindViewModle != null) {
                MutableLiveData<String> codeText = unbindViewModle.getCodeText();
                if (codeText != null) {
                    codeText.setValue(textString);
                }
            }
        }
    }

    public xc0(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.T(dataBindingComponent, view, 8, f26537v0, f26538w0));
    }

    private boolean k1(MutableLiveData<String> mutableLiveData, int i2) {
        if (i2 == 0) {
            synchronized (this) {
                this.f26546u0 |= 16;
            }
            return true;
        }
        return false;
    }

    private boolean l1(MutableLiveData<String> mutableLiveData, int i2) {
        if (i2 == 0) {
            synchronized (this) {
                this.f26546u0 |= 4;
            }
            return true;
        }
        return false;
    }

    private boolean m1(MutableLiveData<String> mutableLiveData, int i2) {
        if (i2 == 0) {
            synchronized (this) {
                this.f26546u0 |= 32;
            }
            return true;
        }
        return false;
    }

    private boolean n1(MutableLiveData<Integer> mutableLiveData, int i2) {
        if (i2 == 0) {
            synchronized (this) {
                this.f26546u0 |= 2;
            }
            return true;
        }
        return false;
    }

    private boolean o1(MutableLiveData<String> mutableLiveData, int i2) {
        if (i2 == 0) {
            synchronized (this) {
                this.f26546u0 |= 1;
            }
            return true;
        }
        return false;
    }

    private boolean p1(MutableLiveData<String> mutableLiveData, int i2) {
        if (i2 == 0) {
            synchronized (this) {
                this.f26546u0 |= 8;
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
                        if (i2 != 4) {
                            if (i2 != 5) {
                                return false;
                            }
                            return m1((MutableLiveData) obj, i4);
                        }
                        return k1((MutableLiveData) obj, i4);
                    }
                    return p1((MutableLiveData) obj, i4);
                }
                return l1((MutableLiveData) obj, i4);
            }
            return n1((MutableLiveData) obj, i4);
        }
        return o1((MutableLiveData) obj, i4);
    }

    @Override // com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0141a
    public final void a(int i2, View view) {
        if (i2 == 1) {
            ClickProxy clickProxy = this.H;
            if (clickProxy != null) {
                clickProxy.onClickBack();
            }
        } else if (i2 == 2) {
            UnbindViewModle unbindViewModle = this.I;
            if (!(unbindViewModle != null) || view == null) {
                return;
            }
            view.getContext();
            unbindViewModle.sendsmsCode(view.getContext());
        } else if (i2 != 3) {
        } else {
            UnbindViewModle unbindViewModle2 = this.I;
            if (!(unbindViewModle2 != null) || view == null) {
                return;
            }
            view.getContext();
            unbindViewModle2.sendUnbindThridPart(view.getContext());
        }
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.wc0
    public void h1(@Nullable ClickProxy clickProxy) {
        this.H = clickProxy;
        synchronized (this) {
            this.f26546u0 |= 128;
        }
        notifyPropertyChanged(7);
        super.n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f26546u0 != 0;
        }
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.wc0
    public void i1(@Nullable UnbindViewModle unbindViewModle) {
        this.I = unbindViewModle;
        synchronized (this) {
            this.f26546u0 |= 64;
        }
        notifyPropertyChanged(27);
        super.n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f26546u0 = 256L;
        }
        n0();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00cd  */
    @Override // androidx.databinding.ViewDataBinding
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void k() {
        /*
            Method dump skipped, instructions count: 359
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.android.app.mgsim.wufun.databinding.xc0.k():void");
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i2, @Nullable Object obj) {
        if (27 == i2) {
            i1((UnbindViewModle) obj);
        } else if (7 != i2) {
            return false;
        } else {
            h1((ClickProxy) obj);
        }
        return true;
    }

    private xc0(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 6, (ImageView) objArr[1], (TextView) objArr[7], (TextView) objArr[2]);
        this.f26545t0 = new a();
        this.f26546u0 = -1L;
        this.E.setTag(null);
        LinearLayout linearLayout = (LinearLayout) objArr[0];
        this.J = linearLayout;
        linearLayout.setTag(null);
        TextView textView = (TextView) objArr[3];
        this.K = textView;
        textView.setTag(null);
        TextView textView2 = (TextView) objArr[4];
        this.f26539n0 = textView2;
        textView2.setTag(null);
        EditText editText = (EditText) objArr[5];
        this.f26540o0 = editText;
        editText.setTag(null);
        TextView textView3 = (TextView) objArr[6];
        this.f26541p0 = textView3;
        textView3.setTag(null);
        this.F.setTag(null);
        this.G.setTag(null);
        A0(view);
        this.f26542q0 = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 1);
        this.f26543r0 = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 3);
        this.f26544s0 = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 2);
        invalidateAll();
    }
}
