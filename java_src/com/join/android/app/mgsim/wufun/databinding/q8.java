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
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.generated.callback.a;
import com.join.kotlin.ui.coupon.ClickProxy;
import com.join.mgps.dto.BTGameCouponBean;
/* compiled from: CouponListItemLayoutBindingImpl.java */
/* loaded from: classes3.dex */
public class q8 extends p8 implements a.InterfaceC0141a {
    @Nullable
    private static final ViewDataBinding.IncludedLayouts B0 = null;
    @Nullable
    private static final SparseIntArray C0;
    private long A0;
    @NonNull

    /* renamed from: r0  reason: collision with root package name */
    private final LinearLayout f23890r0;
    @NonNull

    /* renamed from: s0  reason: collision with root package name */
    private final TextView f23891s0;
    @NonNull

    /* renamed from: t0  reason: collision with root package name */
    private final LinearLayout f23892t0;
    @NonNull

    /* renamed from: u0  reason: collision with root package name */
    private final TextView f23893u0;
    @NonNull

    /* renamed from: v0  reason: collision with root package name */
    private final TextView f23894v0;
    @NonNull

    /* renamed from: w0  reason: collision with root package name */
    private final TextView f23895w0;
    @NonNull

    /* renamed from: x0  reason: collision with root package name */
    private final ImageView f23896x0;
    @Nullable

    /* renamed from: y0  reason: collision with root package name */
    private final View.OnClickListener f23897y0;
    @Nullable

    /* renamed from: z0  reason: collision with root package name */
    private final View.OnClickListener f23898z0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        C0 = sparseIntArray;
        sparseIntArray.put(R.id.money, 13);
        sparseIntArray.put(R.id.line, 14);
    }

    public q8(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.T(dataBindingComponent, view, 15, B0, C0));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean W(int i2, Object obj, int i4) {
        return false;
    }

    @Override // com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0141a
    public final void a(int i2, View view) {
        if (i2 == 1) {
            BTGameCouponBean bTGameCouponBean = this.f23512o0;
            ClickProxy clickProxy = this.f23514q0;
            if (clickProxy != null) {
                clickProxy.onClickGet(bTGameCouponBean);
            }
        } else if (i2 != 2) {
        } else {
            BTGameCouponBean bTGameCouponBean2 = this.f23512o0;
            ClickProxy clickProxy2 = this.f23514q0;
            if (clickProxy2 != null) {
                clickProxy2.onClickMore(bTGameCouponBean2);
            }
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.A0 != 0;
        }
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.p8
    public void i1(@Nullable BTGameCouponBean bTGameCouponBean) {
        this.f23512o0 = bTGameCouponBean;
        synchronized (this) {
            this.A0 |= 1;
        }
        notifyPropertyChanged(3);
        super.n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.A0 = 8L;
        }
        n0();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.p8
    public void j1(@Nullable ClickProxy clickProxy) {
        this.f23514q0 = clickProxy;
        synchronized (this) {
            this.A0 |= 4;
        }
        notifyPropertyChanged(7);
        super.n0();
    }

    /* JADX WARN: Removed duplicated region for block: B:101:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0150  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x016e  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0177  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x017e  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0187  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01c8  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x01dd  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x01ef  */
    @Override // androidx.databinding.ViewDataBinding
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void k() {
        /*
            Method dump skipped, instructions count: 504
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.android.app.mgsim.wufun.databinding.q8.k():void");
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.p8
    public void k1(@Nullable Boolean bool) {
        this.f23513p0 = bool;
        synchronized (this) {
            this.A0 |= 2;
        }
        notifyPropertyChanged(15);
        super.n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i2, @Nullable Object obj) {
        if (3 == i2) {
            i1((BTGameCouponBean) obj);
        } else if (15 == i2) {
            k1((Boolean) obj);
        } else if (7 != i2) {
            return false;
        } else {
            j1((ClickProxy) obj);
        }
        return true;
    }

    private q8(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TextView) objArr[5], (TextView) objArr[7], (View) objArr[14], (ConstraintLayout) objArr[13], (TextView) objArr[4], (TextView) objArr[2], (TextView) objArr[8], (TextView) objArr[6]);
        this.A0 = -1L;
        this.E.setTag(null);
        this.F.setTag(null);
        LinearLayout linearLayout = (LinearLayout) objArr[0];
        this.f23890r0 = linearLayout;
        linearLayout.setTag(null);
        TextView textView = (TextView) objArr[1];
        this.f23891s0 = textView;
        textView.setTag(null);
        LinearLayout linearLayout2 = (LinearLayout) objArr[10];
        this.f23892t0 = linearLayout2;
        linearLayout2.setTag(null);
        TextView textView2 = (TextView) objArr[11];
        this.f23893u0 = textView2;
        textView2.setTag(null);
        TextView textView3 = (TextView) objArr[12];
        this.f23894v0 = textView3;
        textView3.setTag(null);
        TextView textView4 = (TextView) objArr[3];
        this.f23895w0 = textView4;
        textView4.setTag(null);
        ImageView imageView = (ImageView) objArr[9];
        this.f23896x0 = imageView;
        imageView.setTag(null);
        this.I.setTag(null);
        this.J.setTag(null);
        this.K.setTag(null);
        this.f23511n0.setTag(null);
        A0(view);
        this.f23897y0 = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 1);
        this.f23898z0 = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 2);
        invalidateAll();
    }
}
