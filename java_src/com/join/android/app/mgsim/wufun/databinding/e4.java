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
import com.join.kotlin.bindingadapter.SimpleDrawableViewKt;
import com.join.kotlin.bindingadapter.ViewBindingDownloadViewKt;
import com.join.kotlin.bindingadapter.ViewBindingTextviewKt;
import com.join.kotlin.domain.common.AppListItemShowBean;
import com.join.kotlin.ui.modleregin.modle.BtGameListItem;
import com.join.mgps.business.CollectionBeanSubBusiness;
import com.join.mgps.customview.DownloadViewStroke;
/* compiled from: BtListitemBindingImpl.java */
/* loaded from: classes3.dex */
public class e4 extends d4 {
    @Nullable

    /* renamed from: w0  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f19581w0 = null;
    @Nullable

    /* renamed from: x0  reason: collision with root package name */
    private static final SparseIntArray f19582x0;
    @NonNull

    /* renamed from: s0  reason: collision with root package name */
    private final ConstraintLayout f19583s0;
    @NonNull

    /* renamed from: t0  reason: collision with root package name */
    private final TextView f19584t0;
    @NonNull

    /* renamed from: u0  reason: collision with root package name */
    private final TextView f19585u0;

    /* renamed from: v0  reason: collision with root package name */
    private long f19586v0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f19582x0 = sparseIntArray;
        sparseIntArray.put(R.id.gameName, 12);
    }

    public e4(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.T(dataBindingComponent, view, 13, f19581w0, f19582x0));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean W(int i2, Object obj, int i4) {
        return false;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.d4
    public void h1(@Nullable BtGameListItem btGameListItem) {
        this.f19197q0 = btGameListItem;
        synchronized (this) {
            this.f19586v0 |= 1;
        }
        notifyPropertyChanged(3);
        super.n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f19586v0 != 0;
        }
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.d4
    public void i1(@Nullable AppListItemShowBean appListItemShowBean) {
        this.f19198r0 = appListItemShowBean;
        synchronized (this) {
            this.f19586v0 |= 2;
        }
        notifyPropertyChanged(18);
        super.n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f19586v0 = 4L;
        }
        n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void k() {
        long j4;
        String str;
        int i2;
        int i4;
        int i5;
        String str2;
        int i6;
        int i7;
        int i8;
        int i9;
        String str3;
        CollectionBeanSubBusiness collectionBeanSubBusiness;
        int i10;
        int i11;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        String str9;
        String str10;
        String str11;
        String str12;
        String str13;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        String str14;
        int i12;
        boolean z8;
        synchronized (this) {
            j4 = this.f19586v0;
            this.f19586v0 = 0L;
        }
        BtGameListItem btGameListItem = this.f19197q0;
        AppListItemShowBean appListItemShowBean = this.f19198r0;
        if ((j4 & 7) != 0) {
            if ((j4 & 5) == 0 || btGameListItem == null) {
                str8 = null;
                str9 = null;
                str10 = null;
                str11 = null;
                str12 = null;
            } else {
                str8 = btGameListItem.getIcon();
                str9 = btGameListItem.getTags();
                str10 = btGameListItem.getInfo();
                str11 = btGameListItem.getGameName();
                str12 = btGameListItem.getIconGif();
            }
            CollectionBeanSubBusiness gameInfo = btGameListItem != null ? btGameListItem.getGameInfo() : null;
            int downloadStatus = appListItemShowBean != null ? appListItemShowBean.getDownloadStatus() : 0;
            long j5 = j4 & 6;
            if (j5 != 0) {
                if (appListItemShowBean != null) {
                    boolean giftShow = appListItemShowBean.getGiftShow();
                    String lodingInfo = appListItemShowBean.getLodingInfo();
                    z4 = appListItemShowBean.getProgressZipShow();
                    z5 = appListItemShowBean.getDescribeShow();
                    z6 = appListItemShowBean.getDownMessageShow();
                    z7 = appListItemShowBean.getTagshow();
                    str14 = appListItemShowBean.getAppSizeText();
                    i12 = appListItemShowBean.getDownloadProgress();
                    z8 = appListItemShowBean.getProgresShow();
                    i2 = appListItemShowBean.getZipProgress();
                    z3 = giftShow;
                    str13 = lodingInfo;
                } else {
                    i2 = 0;
                    str13 = null;
                    z3 = false;
                    z4 = false;
                    z5 = false;
                    z6 = false;
                    z7 = false;
                    str14 = null;
                    i12 = 0;
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
                int i13 = z3 ? 0 : 8;
                int i14 = z4 ? 0 : 8;
                int i15 = z5 ? 0 : 8;
                int i16 = z6 ? 0 : 8;
                int i17 = z7 ? 0 : 8;
                str7 = str9;
                str5 = str10;
                str6 = str11;
                str4 = str12;
                i8 = z8 ? 0 : 8;
                i4 = i13;
                i9 = i15;
                i6 = i16;
                i7 = i17;
                i5 = i12;
                collectionBeanSubBusiness = gameInfo;
                str3 = str8;
                str2 = str13;
                i11 = i14;
                str = str14;
                i10 = downloadStatus;
            } else {
                collectionBeanSubBusiness = gameInfo;
                str3 = str8;
                str7 = str9;
                str5 = str10;
                str6 = str11;
                str4 = str12;
                i10 = downloadStatus;
                str = null;
                i2 = 0;
                i4 = 0;
                i5 = 0;
                str2 = null;
                i6 = 0;
                i7 = 0;
                i8 = 0;
                i9 = 0;
                i11 = 0;
            }
        } else {
            str = null;
            i2 = 0;
            i4 = 0;
            i5 = 0;
            str2 = null;
            i6 = 0;
            i7 = 0;
            i8 = 0;
            i9 = 0;
            str3 = null;
            collectionBeanSubBusiness = null;
            i10 = 0;
            i11 = 0;
            str4 = null;
            str5 = null;
            str6 = null;
            str7 = null;
        }
        if ((6 & j4) != 0) {
            TextViewBindingAdapter.setText(this.E, str);
            this.H.setVisibility(i9);
            this.J.setVisibility(i4);
            this.K.setVisibility(i6);
            TextViewBindingAdapter.setText(this.f19194n0, str2);
            this.f19585u0.setVisibility(i7);
            this.f19195o0.setProgress(i5);
            this.f19195o0.setVisibility(i8);
            this.f19196p0.setProgress(i2);
            this.f19196p0.setVisibility(i11);
        }
        if ((7 & j4) != 0) {
            ViewBindingDownloadViewKt.downloadVIewBinding(this.F, collectionBeanSubBusiness, i10);
        }
        if ((j4 & 5) != 0) {
            SimpleDrawableViewKt.loadUrl(this.G, str3, str4, 0);
            ViewBindingTextviewKt.textViewBinding(this.H, str5);
            TextViewBindingAdapter.setText(this.f19584t0, str6);
            TextViewBindingAdapter.setText(this.f19585u0, str7);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i2, @Nullable Object obj) {
        if (3 == i2) {
            h1((BtGameListItem) obj);
        } else if (18 != i2) {
            return false;
        } else {
            i1((AppListItemShowBean) obj);
        }
        return true;
    }

    private e4(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TextView) objArr[7], (DownloadViewStroke) objArr[11], (SimpleDraweeView) objArr[1], (TextView) objArr[5], (LinearLayout) objArr[12], (ImageView) objArr[2], (LinearLayout) objArr[6], (TextView) objArr[8], (ProgressBar) objArr[10], (ProgressBar) objArr[9]);
        this.f19586v0 = -1L;
        this.E.setTag(null);
        this.F.setTag(null);
        this.G.setTag(null);
        this.H.setTag(null);
        this.J.setTag(null);
        this.K.setTag(null);
        this.f19194n0.setTag(null);
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f19583s0 = constraintLayout;
        constraintLayout.setTag(null);
        TextView textView = (TextView) objArr[3];
        this.f19584t0 = textView;
        textView.setTag(null);
        TextView textView2 = (TextView) objArr[4];
        this.f19585u0 = textView2;
        textView2.setTag(null);
        this.f19195o0.setTag(null);
        this.f19196p0.setTag(null);
        A0(view);
        invalidateAll();
    }
}
