package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.bindingadapter.ViewBindingDownloadViewKt;
import com.join.kotlin.bindingadapter.ViewBindingFresscoImageKt;
import com.join.kotlin.bindingadapter.ViewBindingTextviewKt;
import com.join.kotlin.domain.common.AppListItemShowBean;
import com.join.kotlin.ui.userrecom.UserRecomTagView;
import com.join.mgps.business.CollectionBeanSubBusiness;
import com.join.mgps.customview.DownloadViewStroke;
import com.join.mgps.dto.TipBean;
import java.util.ArrayList;
/* compiled from: UserRecomendListitemBindingImpl.java */
/* loaded from: classes3.dex */
public class gd0 extends fd0 {
    @Nullable

    /* renamed from: w0  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f20413w0 = null;
    @Nullable

    /* renamed from: x0  reason: collision with root package name */
    private static final SparseIntArray f20414x0;
    @NonNull

    /* renamed from: s0  reason: collision with root package name */
    private final ConstraintLayout f20415s0;
    @NonNull

    /* renamed from: t0  reason: collision with root package name */
    private final TextView f20416t0;
    @NonNull

    /* renamed from: u0  reason: collision with root package name */
    private final UserRecomTagView f20417u0;

    /* renamed from: v0  reason: collision with root package name */
    private long f20418v0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f20414x0 = sparseIntArray;
        sparseIntArray.put(R.id.gameName, 12);
    }

    public gd0(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.T(dataBindingComponent, view, 13, f20413w0, f20414x0));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean W(int i2, Object obj, int i4) {
        return false;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.fd0
    public void h1(@Nullable CollectionBeanSubBusiness collectionBeanSubBusiness) {
        this.f20103q0 = collectionBeanSubBusiness;
        synchronized (this) {
            this.f20418v0 |= 1;
        }
        notifyPropertyChanged(3);
        super.n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f20418v0 != 0;
        }
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.fd0
    public void i1(@Nullable AppListItemShowBean appListItemShowBean) {
        this.f20104r0 = appListItemShowBean;
        synchronized (this) {
            this.f20418v0 |= 2;
        }
        notifyPropertyChanged(18);
        super.n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f20418v0 = 4L;
        }
        n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void k() {
        long j4;
        String str;
        ArrayList<TipBean> arrayList;
        String str2;
        String str3;
        CollectionBeanSubBusiness collectionBeanSubBusiness;
        String str4;
        ArrayList<TipBean> arrayList2;
        String str5;
        String str6;
        int i2;
        int i4;
        String str7;
        int i5;
        int i6;
        int i7;
        String str8;
        int i8;
        int i9;
        int i10;
        String str9;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        String str10;
        int i11;
        boolean z8;
        synchronized (this) {
            j4 = this.f20418v0;
            this.f20418v0 = 0L;
        }
        CollectionBeanSubBusiness collectionBeanSubBusiness2 = this.f20103q0;
        AppListItemShowBean appListItemShowBean = this.f20104r0;
        if ((j4 & 5) == 0 || collectionBeanSubBusiness2 == null) {
            str = null;
            arrayList = null;
            str2 = null;
            str3 = null;
        } else {
            str = collectionBeanSubBusiness2.getGame_name();
            arrayList = collectionBeanSubBusiness2.getTag_info();
            str2 = collectionBeanSubBusiness2.getIco_remote();
            str3 = collectionBeanSubBusiness2.getInfo();
        }
        long j5 = j4 & 6;
        if (j5 != 0) {
            if (appListItemShowBean != null) {
                boolean giftShow = appListItemShowBean.getGiftShow();
                String lodingInfo = appListItemShowBean.getLodingInfo();
                z4 = appListItemShowBean.getProgressZipShow();
                z5 = appListItemShowBean.getDescribeShow();
                z6 = appListItemShowBean.getDownMessageShow();
                z7 = appListItemShowBean.getTagshow();
                str10 = appListItemShowBean.getAppSizeText();
                i11 = appListItemShowBean.getDownloadProgress();
                z8 = appListItemShowBean.getProgresShow();
                i4 = appListItemShowBean.getZipProgress();
                z3 = giftShow;
                str9 = lodingInfo;
            } else {
                i4 = 0;
                str9 = null;
                z3 = false;
                z4 = false;
                z5 = false;
                z6 = false;
                z7 = false;
                str10 = null;
                i11 = 0;
                z8 = false;
            }
            if (j5 != 0) {
                j4 |= z3 ? 64L : 32L;
            }
            if ((j4 & 6) != 0) {
                j4 |= z4 ? 16L : 8L;
            }
            if ((j4 & 6) != 0) {
                j4 |= z5 ? 1024L : 512L;
            }
            if ((j4 & 6) != 0) {
                j4 |= z6 ? 16384L : 8192L;
            }
            if ((j4 & 6) != 0) {
                j4 |= z7 ? 256L : 128L;
            }
            if ((j4 & 6) != 0) {
                j4 |= z8 ? 4096L : 2048L;
            }
            int i12 = z3 ? 0 : 8;
            int i13 = z4 ? 0 : 8;
            int i14 = z5 ? 0 : 8;
            int i15 = z6 ? 0 : 8;
            int i16 = z7 ? 0 : 8;
            collectionBeanSubBusiness = collectionBeanSubBusiness2;
            i5 = z8 ? 0 : 8;
            str7 = str9;
            i2 = i16;
            str8 = str10;
            str5 = str2;
            i10 = i13;
            i8 = i15;
            arrayList2 = arrayList;
            str6 = str3;
            i7 = i12;
            i9 = i14;
            str4 = str;
            i6 = i11;
        } else {
            collectionBeanSubBusiness = collectionBeanSubBusiness2;
            str4 = str;
            arrayList2 = arrayList;
            str5 = str2;
            str6 = str3;
            i2 = 0;
            i4 = 0;
            str7 = null;
            i5 = 0;
            i6 = 0;
            i7 = 0;
            str8 = null;
            i8 = 0;
            i9 = 0;
            i10 = 0;
        }
        if ((6 & j4) != 0) {
            TextViewBindingAdapter.setText(this.E, str8);
            this.H.setVisibility(i9);
            this.J.setVisibility(i7);
            this.K.setVisibility(i8);
            TextViewBindingAdapter.setText(this.f20100n0, str7);
            this.f20417u0.setVisibility(i2);
            this.f20101o0.setProgress(i6);
            this.f20101o0.setVisibility(i5);
            this.f20102p0.setProgress(i4);
            this.f20102p0.setVisibility(i10);
        }
        if ((j4 & 5) != 0) {
            ViewBindingDownloadViewKt.downloadVIewBinding(this.F, collectionBeanSubBusiness, 0);
            ViewBindingFresscoImageKt.simpleDraweeViewBinding(this.G, str5);
            ViewBindingTextviewKt.textViewBinding(this.H, str6);
            TextViewBindingAdapter.setText(this.f20416t0, str4);
            this.f20417u0.setDatas(arrayList2);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i2, @Nullable Object obj) {
        if (3 == i2) {
            h1((CollectionBeanSubBusiness) obj);
        } else if (18 != i2) {
            return false;
        } else {
            i1((AppListItemShowBean) obj);
        }
        return true;
    }

    private gd0(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TextView) objArr[7], (DownloadViewStroke) objArr[11], (SimpleDraweeView) objArr[1], (TextView) objArr[5], (LinearLayout) objArr[12], (ImageView) objArr[2], (LinearLayout) objArr[6], (TextView) objArr[8], (ProgressBar) objArr[10], (ProgressBar) objArr[9]);
        this.f20418v0 = -1L;
        this.E.setTag(null);
        this.F.setTag(null);
        this.G.setTag(null);
        this.H.setTag(null);
        this.J.setTag(null);
        this.K.setTag(null);
        this.f20100n0.setTag(null);
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f20415s0 = constraintLayout;
        constraintLayout.setTag(null);
        TextView textView = (TextView) objArr[3];
        this.f20416t0 = textView;
        textView.setTag(null);
        UserRecomTagView userRecomTagView = (UserRecomTagView) objArr[4];
        this.f20417u0 = userRecomTagView;
        userRecomTagView.setTag(null);
        this.f20101o0.setTag(null);
        this.f20102p0.setTag(null);
        A0(view);
        invalidateAll();
    }
}
