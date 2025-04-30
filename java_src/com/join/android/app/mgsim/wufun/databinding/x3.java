package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.generated.callback.a;
import com.join.kotlin.domain.common.LoadBindClickProxy;
import com.join.kotlin.domain.common.LoadBindindData;
import com.join.mgps.customview.LoadingImageView;
/* compiled from: BinddingLoadLayoutIncludeBindingImpl.java */
/* loaded from: classes3.dex */
public class x3 extends w3 implements a.InterfaceC0141a {
    @Nullable
    private static final SparseIntArray A0;
    @Nullable

    /* renamed from: z0  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f26404z0 = null;
    @NonNull

    /* renamed from: v0  reason: collision with root package name */
    private final RelativeLayout f26405v0;
    @Nullable

    /* renamed from: w0  reason: collision with root package name */
    private final View.OnClickListener f26406w0;
    @Nullable

    /* renamed from: x0  reason: collision with root package name */
    private final View.OnClickListener f26407x0;

    /* renamed from: y0  reason: collision with root package name */
    private long f26408y0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        A0 = sparseIntArray;
        sparseIntArray.put(R.id.loading_view, 6);
        sparseIntArray.put(R.id.textView2, 7);
        sparseIntArray.put(R.id.failedMessage, 8);
        sparseIntArray.put(R.id.lodingBackImage, 9);
        sparseIntArray.put(R.id.setting, 10);
        sparseIntArray.put(R.id.noneReloadImage, 11);
        sparseIntArray.put(R.id.noneMessage, 12);
        sparseIntArray.put(R.id.setAll, 13);
    }

    public x3(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.T(dataBindingComponent, view, 14, f26404z0, A0));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean W(int i2, Object obj, int i4) {
        return false;
    }

    @Override // com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0141a
    public final void a(int i2, View view) {
        if (i2 == 1) {
            LoadBindClickProxy loadBindClickProxy = this.f26039u0;
            if (loadBindClickProxy != null) {
                loadBindClickProxy.onClickReload();
            }
        } else if (i2 != 2) {
        } else {
            LoadBindClickProxy loadBindClickProxy2 = this.f26039u0;
            if (loadBindClickProxy2 != null) {
                loadBindClickProxy2.onClickSetNetWork();
            }
        }
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.w3
    public void h1(@Nullable LoadBindindData loadBindindData) {
        this.f26038t0 = loadBindindData;
        synchronized (this) {
            this.f26408y0 |= 2;
        }
        notifyPropertyChanged(6);
        super.n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f26408y0 != 0;
        }
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.w3
    public void i1(@Nullable LoadBindClickProxy loadBindClickProxy) {
        this.f26039u0 = loadBindClickProxy;
        synchronized (this) {
            this.f26408y0 |= 1;
        }
        notifyPropertyChanged(19);
        super.n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f26408y0 = 4L;
        }
        n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void k() {
        long j4;
        int i2;
        int i4;
        synchronized (this) {
            j4 = this.f26408y0;
            this.f26408y0 = 0L;
        }
        LoadBindindData loadBindindData = this.f26038t0;
        long j5 = j4 & 6;
        if (j5 != 0) {
            int showStatus = loadBindindData != null ? loadBindindData.getShowStatus() : 0;
            boolean z3 = showStatus == 4;
            boolean z4 = showStatus == 2;
            boolean z5 = showStatus == 3;
            if (j5 != 0) {
                j4 |= z3 ? 16L : 8L;
            }
            if ((j4 & 6) != 0) {
                j4 |= z4 ? 256L : 128L;
            }
            if ((j4 & 6) != 0) {
                j4 |= z5 ? 64L : 32L;
            }
            int i5 = z3 ? 0 : 8;
            i4 = z4 ? 0 : 8;
            i2 = z5 ? 0 : 8;
            r9 = i5;
        } else {
            i2 = 0;
            i4 = 0;
        }
        if ((6 & j4) != 0) {
            this.F.setVisibility(r9);
            this.I.setVisibility(i2);
            this.J.setVisibility(i4);
        }
        if ((j4 & 4) != 0) {
            this.f26033o0.setOnClickListener(this.f26407x0);
            this.f26035q0.setOnClickListener(this.f26406w0);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i2, @Nullable Object obj) {
        if (19 == i2) {
            i1((LoadBindClickProxy) obj);
        } else if (6 != i2) {
            return false;
        } else {
            h1((LoadBindindData) obj);
        }
        return true;
    }

    private x3(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TextView) objArr[8], (LinearLayout) objArr[5], (LoadingImageView) objArr[6], (ImageView) objArr[9], (LinearLayout) objArr[2], (LinearLayout) objArr[1], (TextView) objArr[12], (ImageView) objArr[11], (ImageView) objArr[3], (TextView) objArr[13], (Button) objArr[4], (TextView) objArr[10], (TextView) objArr[7]);
        this.f26408y0 = -1L;
        this.F.setTag(null);
        this.I.setTag(null);
        this.J.setTag(null);
        RelativeLayout relativeLayout = (RelativeLayout) objArr[0];
        this.f26405v0 = relativeLayout;
        relativeLayout.setTag(null);
        this.f26033o0.setTag(null);
        this.f26035q0.setTag(null);
        A0(view);
        this.f26406w0 = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 2);
        this.f26407x0 = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 1);
        invalidateAll();
    }
}
