package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.generated.callback.a;
import com.join.kotlin.ui.cloudarchive.adapter.OnEmusClickArchiveListener;
import com.join.mgps.dto.CloudListDataBean;
/* compiled from: EmusArchiveGameDetailListItemBindingImpl.java */
/* loaded from: classes3.dex */
public class ke extends je implements a.InterfaceC0141a {
    @Nullable

    /* renamed from: w0  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f21820w0 = null;
    @Nullable

    /* renamed from: x0  reason: collision with root package name */
    private static final SparseIntArray f21821x0;
    @NonNull

    /* renamed from: q0  reason: collision with root package name */
    private final LinearLayout f21822q0;
    @NonNull

    /* renamed from: r0  reason: collision with root package name */
    private final SimpleDraweeView f21823r0;
    @NonNull

    /* renamed from: s0  reason: collision with root package name */
    private final ConstraintLayout f21824s0;
    @Nullable

    /* renamed from: t0  reason: collision with root package name */
    private final View.OnClickListener f21825t0;
    @Nullable

    /* renamed from: u0  reason: collision with root package name */
    private final View.OnClickListener f21826u0;

    /* renamed from: v0  reason: collision with root package name */
    private long f21827v0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f21821x0 = sparseIntArray;
        sparseIntArray.put(R.id.tvHotTag, 7);
        sparseIntArray.put(R.id.messageLayout, 8);
        sparseIntArray.put(R.id.more, 9);
        sparseIntArray.put(R.id.parise, 10);
    }

    public ke(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.T(dataBindingComponent, view, 11, f21820w0, f21821x0));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean W(int i2, Object obj, int i4) {
        return false;
    }

    @Override // com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0141a
    public final void a(int i2, View view) {
        if (i2 != 1) {
            if (i2 != 2) {
                return;
            }
            CloudListDataBean cloudListDataBean = this.f21458o0;
            OnEmusClickArchiveListener onEmusClickArchiveListener = this.f21459p0;
            if (onEmusClickArchiveListener != null) {
                onEmusClickArchiveListener.onClickRun(cloudListDataBean);
                return;
            }
            return;
        }
        CloudListDataBean cloudListDataBean2 = this.f21458o0;
        OnEmusClickArchiveListener onEmusClickArchiveListener2 = this.f21459p0;
        if (onEmusClickArchiveListener2 != null) {
            if (cloudListDataBean2 != null) {
                onEmusClickArchiveListener2.onClickImage(cloudListDataBean2.getArchiveCover());
            }
        }
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.je
    public void h1(@Nullable OnEmusClickArchiveListener onEmusClickArchiveListener) {
        this.f21459p0 = onEmusClickArchiveListener;
        synchronized (this) {
            this.f21827v0 |= 2;
        }
        notifyPropertyChanged(10);
        super.n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f21827v0 != 0;
        }
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.je
    public void i1(@Nullable CloudListDataBean cloudListDataBean) {
        this.f21458o0 = cloudListDataBean;
        synchronized (this) {
            this.f21827v0 |= 1;
        }
        notifyPropertyChanged(17);
        super.n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f21827v0 = 4L;
        }
        n0();
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:36:? A[RETURN, SYNTHETIC] */
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
            long r2 = r1.f21827v0     // Catch: java.lang.Throwable -> L8d
            r4 = 0
            r1.f21827v0 = r4     // Catch: java.lang.Throwable -> L8d
            monitor-exit(r18)     // Catch: java.lang.Throwable -> L8d
            com.join.mgps.dto.CloudListDataBean r0 = r1.f21458o0
            r6 = 5
            long r8 = r2 & r6
            r10 = 0
            r11 = 0
            int r12 = (r8 > r4 ? 1 : (r8 == r4 ? 0 : -1))
            if (r12 == 0) goto L4e
            if (r0 == 0) goto L2d
            java.lang.String r12 = r0.getArchiveCover()
            java.lang.String r13 = r0.getNickname()
            java.lang.String r14 = r0.getArchiveDesc()
            int r15 = r0.getHighComment()
            java.lang.String r0 = r0.getAvatar()
            goto L32
        L2d:
            r0 = r11
            r12 = r0
            r13 = r12
            r14 = r13
            r15 = 0
        L32:
            if (r12 != 0) goto L37
            r16 = 1
            goto L39
        L37:
            r16 = 0
        L39:
            java.lang.String r15 = java.lang.String.valueOf(r15)
            int r17 = (r8 > r4 ? 1 : (r8 == r4 ? 0 : -1))
            if (r17 == 0) goto L49
            if (r16 == 0) goto L46
            r8 = 16
            goto L48
        L46:
            r8 = 8
        L48:
            long r2 = r2 | r8
        L49:
            if (r16 == 0) goto L53
            r8 = 8
            goto L54
        L4e:
            r0 = r11
            r12 = r0
            r13 = r12
            r14 = r13
            r15 = r14
        L53:
            r8 = 0
        L54:
            long r6 = r6 & r2
            int r9 = (r6 > r4 ? 1 : (r6 == r4 ? 0 : -1))
            if (r9 == 0) goto L77
            android.widget.TextView r6 = r1.E
            androidx.databinding.adapters.TextViewBindingAdapter.setText(r6, r14)
            com.facebook.drawee.view.SimpleDraweeView r6 = r1.f21823r0
            r6.setVisibility(r8)
            com.facebook.drawee.view.SimpleDraweeView r6 = r1.f21823r0
            com.join.kotlin.bindingadapter.SimpleDrawableViewKt.loadUrl(r6, r12, r11, r10)
            android.widget.TextView r6 = r1.I
            androidx.databinding.adapters.TextViewBindingAdapter.setText(r6, r15)
            com.facebook.drawee.view.SimpleDraweeView r6 = r1.K
            com.join.kotlin.bindingadapter.SimpleDrawableViewKt.loadUrl(r6, r0, r11, r10)
            android.widget.TextView r0 = r1.f21457n0
            androidx.databinding.adapters.TextViewBindingAdapter.setText(r0, r13)
        L77:
            r6 = 4
            long r2 = r2 & r6
            int r0 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r0 == 0) goto L8c
            com.facebook.drawee.view.SimpleDraweeView r0 = r1.f21823r0
            android.view.View$OnClickListener r2 = r1.f21825t0
            r0.setOnClickListener(r2)
            androidx.constraintlayout.widget.ConstraintLayout r0 = r1.f21824s0
            android.view.View$OnClickListener r2 = r1.f21826u0
            r0.setOnClickListener(r2)
        L8c:
            return
        L8d:
            r0 = move-exception
            monitor-exit(r18)     // Catch: java.lang.Throwable -> L8d
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.android.app.mgsim.wufun.databinding.ke.k():void");
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i2, @Nullable Object obj) {
        if (17 == i2) {
            i1((CloudListDataBean) obj);
        } else if (10 != i2) {
            return false;
        } else {
            h1((OnEmusClickArchiveListener) obj);
        }
        return true;
    }

    private ke(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TextView) objArr[3], (RelativeLayout) objArr[8], (TextView) objArr[9], (ImageView) objArr[10], (TextView) objArr[6], (TextView) objArr[7], (SimpleDraweeView) objArr[4], (TextView) objArr[5]);
        this.f21827v0 = -1L;
        this.E.setTag(null);
        LinearLayout linearLayout = (LinearLayout) objArr[0];
        this.f21822q0 = linearLayout;
        linearLayout.setTag(null);
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) objArr[1];
        this.f21823r0 = simpleDraweeView;
        simpleDraweeView.setTag(null);
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[2];
        this.f21824s0 = constraintLayout;
        constraintLayout.setTag(null);
        this.I.setTag(null);
        this.K.setTag(null);
        this.f21457n0.setTag(null);
        A0(view);
        this.f21825t0 = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 1);
        this.f21826u0 = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 2);
        invalidateAll();
    }
}
