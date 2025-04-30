package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import androidx.lifecycle.LifecycleOwner;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.bindingadapter.ViewBindingDownloadViewKt;
import com.join.kotlin.domain.widget.CornersLinearLayout;
import com.join.kotlin.ui.modleregin.modle.MustplayItemBean;
import com.join.kotlin.ui.modleregin.modle.VideoModle;
import com.join.mgps.business.CollectionBeanSubBusiness;
import com.join.mgps.customview.DownloadViewStroke;
import java.util.List;
/* compiled from: MustplayItemLayoutBindingImpl.java */
/* loaded from: classes3.dex */
public class h40 extends g40 {
    @Nullable

    /* renamed from: t0  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f20677t0;
    @Nullable

    /* renamed from: u0  reason: collision with root package name */
    private static final SparseIntArray f20678u0;
    @NonNull

    /* renamed from: q0  reason: collision with root package name */
    private final LinearLayout f20679q0;
    @Nullable

    /* renamed from: r0  reason: collision with root package name */
    private final hd0 f20680r0;

    /* renamed from: s0  reason: collision with root package name */
    private long f20681s0;

    static {
        ViewDataBinding.IncludedLayouts includedLayouts = new ViewDataBinding.IncludedLayouts(9);
        f20677t0 = includedLayouts;
        includedLayouts.setIncludes(1, new String[]{"video_dbs_layout"}, new int[]{7}, new int[]{R.layout.video_dbs_layout});
        SparseIntArray sparseIntArray = new SparseIntArray();
        f20678u0 = sparseIntArray;
        sparseIntArray.put(R.id.tag, 8);
    }

    public h40(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.T(dataBindingComponent, view, 9, f20677t0, f20678u0));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean W(int i2, Object obj, int i4) {
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            if (this.f20681s0 != 0) {
                return true;
            }
            return this.f20680r0.hasPendingBindings();
        }
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.g40
    public void i1(@Nullable MustplayItemBean mustplayItemBean) {
        this.f20319o0 = mustplayItemBean;
        synchronized (this) {
            this.f20681s0 |= 2;
        }
        notifyPropertyChanged(9);
        super.n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f20681s0 = 8L;
        }
        this.f20680r0.invalidateAll();
        n0();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.g40
    public void j1(@Nullable VideoModle videoModle) {
        this.f20320p0 = videoModle;
        synchronized (this) {
            this.f20681s0 |= 1;
        }
        notifyPropertyChanged(25);
        super.n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void k() {
        long j4;
        String str;
        List<String> list;
        String str2;
        int i2;
        int i4;
        boolean z3;
        boolean z4;
        CollectionBeanSubBusiness collectionBeanSubBusiness;
        String str3;
        List<String> list2;
        String str4;
        CollectionBeanSubBusiness collectionBeanSubBusiness2;
        long j5;
        long j6;
        long j7;
        long j8;
        synchronized (this) {
            j4 = this.f20681s0;
            this.f20681s0 = 0L;
        }
        VideoModle videoModle = this.f20320p0;
        MustplayItemBean mustplayItemBean = this.f20319o0;
        com.join.android.app.component.video.c cVar = this.f20318n0;
        long j9 = j4 & 10;
        if (j9 != 0) {
            if (mustplayItemBean != null) {
                list2 = mustplayItemBean.getTags();
                str4 = mustplayItemBean.getGameName();
                collectionBeanSubBusiness2 = mustplayItemBean.getGameinfo();
                str = mustplayItemBean.getInfo();
            } else {
                str = null;
                list2 = null;
                str4 = null;
                collectionBeanSubBusiness2 = null;
            }
            int size = list2 != null ? list2.size() : 0;
            z4 = size > 1;
            z3 = size > 0;
            if (j9 != 0) {
                if (z4) {
                    j7 = j4 | 128;
                    j8 = 512;
                } else {
                    j7 = j4 | 64;
                    j8 = 256;
                }
                j4 = j7 | j8;
            }
            if ((j4 & 10) != 0) {
                if (z3) {
                    j5 = j4 | 32;
                    j6 = 2048;
                } else {
                    j5 = j4 | 16;
                    j6 = 1024;
                }
                j4 = j5 | j6;
            }
            i4 = z4 ? 0 : 8;
            i2 = z3 ? 0 : 8;
            list = list2;
            str2 = str4;
            collectionBeanSubBusiness = collectionBeanSubBusiness2;
        } else {
            str = null;
            list = null;
            str2 = null;
            i2 = 0;
            i4 = 0;
            z3 = false;
            z4 = false;
            collectionBeanSubBusiness = null;
        }
        long j10 = j4 & 12;
        String str5 = ((128 & j4) == 0 || list == null) ? null : (String) ViewDataBinding.M(list, 1);
        String str6 = ((2048 & j4) == 0 || list == null) ? null : (String) ViewDataBinding.M(list, 0);
        long j11 = 10 & j4;
        if (j11 != 0) {
            if (!z4) {
                str5 = "";
            }
            if (!z3) {
                str6 = "";
            }
            str3 = str6;
        } else {
            str5 = null;
            str3 = null;
        }
        if (j11 != 0) {
            TextViewBindingAdapter.setText(this.E, str3);
            this.E.setVisibility(i2);
            TextViewBindingAdapter.setText(this.F, str5);
            this.F.setVisibility(i4);
            ViewBindingDownloadViewKt.downloadVIewBinding(this.G, collectionBeanSubBusiness, 0);
            TextViewBindingAdapter.setText(this.H, str2);
            TextViewBindingAdapter.setText(this.I, str);
        }
        if (j10 != 0) {
            this.f20680r0.i1(cVar);
        }
        if ((j4 & 9) != 0) {
            this.f20680r0.h1(videoModle);
        }
        ViewDataBinding.n(this.f20680r0);
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.g40
    public void k1(@Nullable com.join.android.app.component.video.c cVar) {
        this.f20318n0 = cVar;
        synchronized (this) {
            this.f20681s0 |= 4;
        }
        notifyPropertyChanged(26);
        super.n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void setLifecycleOwner(@Nullable LifecycleOwner lifecycleOwner) {
        super.setLifecycleOwner(lifecycleOwner);
        this.f20680r0.setLifecycleOwner(lifecycleOwner);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i2, @Nullable Object obj) {
        if (25 == i2) {
            j1((VideoModle) obj);
        } else if (9 == i2) {
            i1((MustplayItemBean) obj);
        } else if (26 != i2) {
            return false;
        } else {
            k1((com.join.android.app.component.video.c) obj);
        }
        return true;
    }

    private h40(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TextView) objArr[2], (TextView) objArr[3], (DownloadViewStroke) objArr[6], (TextView) objArr[4], (TextView) objArr[5], (LinearLayout) objArr[8], (CornersLinearLayout) objArr[1]);
        this.f20681s0 = -1L;
        this.E.setTag(null);
        this.F.setTag(null);
        this.G.setTag(null);
        this.H.setTag(null);
        LinearLayout linearLayout = (LinearLayout) objArr[0];
        this.f20679q0 = linearLayout;
        linearLayout.setTag(null);
        hd0 hd0Var = (hd0) objArr[7];
        this.f20680r0 = hd0Var;
        z0(hd0Var);
        this.I.setTag(null);
        this.K.setTag(null);
        A0(view);
        invalidateAll();
    }
}
