package com.join.android.app.mgsim.wufun.databinding;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import androidx.databinding.adapters.ViewBindingAdapter;
import androidx.lifecycle.LifecycleOwner;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.bindingadapter.SimpleDrawableViewKt;
import com.join.kotlin.bindingadapter.ViewBindingDownloadViewKt;
import com.join.kotlin.domain.widget.CornersLinearLayout;
import com.join.kotlin.ui.modleregin.modle.MustplayItemBean;
import com.join.kotlin.ui.modleregin.modle.VideoModle;
import com.join.mgps.business.CollectionBeanSubBusiness;
import com.join.mgps.customview.DownloadViewStroke;
/* compiled from: BtVideoItemLayoutBindingImpl.java */
/* loaded from: classes3.dex */
public class n4 extends m4 {
    @Nullable

    /* renamed from: u0  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f22724u0;
    @Nullable

    /* renamed from: v0  reason: collision with root package name */
    private static final SparseIntArray f22725v0;
    @NonNull

    /* renamed from: q0  reason: collision with root package name */
    private final LinearLayout f22726q0;
    @Nullable

    /* renamed from: r0  reason: collision with root package name */
    private final hd0 f22727r0;
    @NonNull

    /* renamed from: s0  reason: collision with root package name */
    private final TextView f22728s0;

    /* renamed from: t0  reason: collision with root package name */
    private long f22729t0;

    static {
        ViewDataBinding.IncludedLayouts includedLayouts = new ViewDataBinding.IncludedLayouts(9);
        f22724u0 = includedLayouts;
        includedLayouts.setIncludes(1, new String[]{"video_dbs_layout"}, new int[]{7}, new int[]{R.layout.video_dbs_layout});
        SparseIntArray sparseIntArray = new SparseIntArray();
        f22725v0 = sparseIntArray;
        sparseIntArray.put(R.id.tag, 8);
    }

    public n4(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.T(dataBindingComponent, view, 9, f22724u0, f22725v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean W(int i2, Object obj, int i4) {
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            if (this.f22729t0 != 0) {
                return true;
            }
            return this.f22727r0.hasPendingBindings();
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f22729t0 = 16L;
        }
        this.f22727r0.invalidateAll();
        n0();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.m4
    public void j1(@Nullable MustplayItemBean mustplayItemBean) {
        this.f22334o0 = mustplayItemBean;
        synchronized (this) {
            this.f22729t0 |= 4;
        }
        notifyPropertyChanged(9);
        super.n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void k() {
        long j4;
        Drawable drawable;
        String str;
        String str2;
        String str3;
        CollectionBeanSubBusiness collectionBeanSubBusiness;
        int i2;
        String str4;
        String str5;
        String str6;
        String str7;
        CollectionBeanSubBusiness collectionBeanSubBusiness2;
        String str8;
        Context context;
        int i4;
        synchronized (this) {
            j4 = this.f22729t0;
            this.f22729t0 = 0L;
        }
        VideoModle videoModle = this.f22335p0;
        Boolean bool = this.K;
        MustplayItemBean mustplayItemBean = this.f22334o0;
        com.join.android.app.component.video.c cVar = this.f22333n0;
        long j5 = j4 & 18;
        if (j5 != 0) {
            boolean w02 = ViewDataBinding.w0(bool);
            if (j5 != 0) {
                j4 |= w02 ? 64L : 32L;
            }
            if (w02) {
                context = this.f22726q0.getContext();
                i4 = R.drawable.white;
            } else {
                context = this.f22726q0.getContext();
                i4 = R.drawable.alph;
            }
            drawable = AppCompatResources.getDrawable(context, i4);
        } else {
            drawable = null;
        }
        long j6 = j4 & 20;
        if (j6 != 0) {
            if (mustplayItemBean != null) {
                String tip = mustplayItemBean.getTip();
                String gameName = mustplayItemBean.getGameName();
                collectionBeanSubBusiness2 = mustplayItemBean.getGameinfo();
                str6 = mustplayItemBean.getInfo();
                str7 = tip;
                str3 = gameName;
            } else {
                str6 = null;
                str7 = null;
                str3 = null;
                collectionBeanSubBusiness2 = null;
            }
            boolean z3 = str7 == "";
            if (j6 != 0) {
                j4 |= z3 ? 256L : 128L;
            }
            if (collectionBeanSubBusiness2 != null) {
                String gif_ico_remote = collectionBeanSubBusiness2.getGif_ico_remote();
                str4 = collectionBeanSubBusiness2.getIco_remote();
                str8 = gif_ico_remote;
            } else {
                str4 = null;
                str8 = null;
            }
            str5 = str7;
            i2 = z3 ? 8 : 0;
            collectionBeanSubBusiness = collectionBeanSubBusiness2;
            str2 = str6;
            str = str8;
        } else {
            str = null;
            str2 = null;
            str3 = null;
            collectionBeanSubBusiness = null;
            i2 = 0;
            str4 = null;
            str5 = null;
        }
        long j7 = j4 & 24;
        if ((20 & j4) != 0) {
            ViewBindingDownloadViewKt.downloadVIewBinding(this.E, collectionBeanSubBusiness, 0);
            TextViewBindingAdapter.setText(this.F, str3);
            SimpleDrawableViewKt.loadUrl(this.G, str4, str, 0);
            TextViewBindingAdapter.setText(this.f22728s0, str2);
            this.f22728s0.setVisibility(i2);
            TextViewBindingAdapter.setText(this.H, str5);
        }
        if ((18 & j4) != 0) {
            ViewBindingAdapter.setBackground(this.f22726q0, drawable);
        }
        if (j7 != 0) {
            this.f22727r0.i1(cVar);
        }
        if ((j4 & 17) != 0) {
            this.f22727r0.h1(videoModle);
        }
        ViewDataBinding.n(this.f22727r0);
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.m4
    public void k1(@Nullable Boolean bool) {
        this.K = bool;
        synchronized (this) {
            this.f22729t0 |= 2;
        }
        notifyPropertyChanged(16);
        super.n0();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.m4
    public void l1(@Nullable VideoModle videoModle) {
        this.f22335p0 = videoModle;
        synchronized (this) {
            this.f22729t0 |= 1;
        }
        notifyPropertyChanged(25);
        super.n0();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.m4
    public void m1(@Nullable com.join.android.app.component.video.c cVar) {
        this.f22333n0 = cVar;
        synchronized (this) {
            this.f22729t0 |= 8;
        }
        notifyPropertyChanged(26);
        super.n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void setLifecycleOwner(@Nullable LifecycleOwner lifecycleOwner) {
        super.setLifecycleOwner(lifecycleOwner);
        this.f22727r0.setLifecycleOwner(lifecycleOwner);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i2, @Nullable Object obj) {
        if (25 == i2) {
            l1((VideoModle) obj);
        } else if (16 == i2) {
            k1((Boolean) obj);
        } else if (9 == i2) {
            j1((MustplayItemBean) obj);
        } else if (26 != i2) {
            return false;
        } else {
            m1((com.join.android.app.component.video.c) obj);
        }
        return true;
    }

    private n4(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (DownloadViewStroke) objArr[6], (TextView) objArr[4], (SimpleDraweeView) objArr[3], (TextView) objArr[5], (LinearLayout) objArr[8], (CornersLinearLayout) objArr[1]);
        this.f22729t0 = -1L;
        this.E.setTag(null);
        this.F.setTag(null);
        this.G.setTag(null);
        LinearLayout linearLayout = (LinearLayout) objArr[0];
        this.f22726q0 = linearLayout;
        linearLayout.setTag(null);
        hd0 hd0Var = (hd0) objArr[7];
        this.f22727r0 = hd0Var;
        z0(hd0Var);
        TextView textView = (TextView) objArr[2];
        this.f22728s0 = textView;
        textView.setTag(null);
        this.H.setTag(null);
        this.J.setTag(null);
        A0(view);
        invalidateAll();
    }
}
