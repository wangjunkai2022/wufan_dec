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
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.kotlin.bindingadapter.SimpleDrawableViewKt;
import com.join.kotlin.bindingadapter.ViewBindingDownloadViewKt;
import com.join.mgps.business.CollectionBeanSubBusiness;
import com.join.mgps.customview.DownloadViewStroke;
/* compiled from: DatabindingHgamelistItemBindingImpl.java */
/* loaded from: classes3.dex */
public class c9 extends b9 {
    @Nullable
    private static final ViewDataBinding.IncludedLayouts K = null;
    @Nullable

    /* renamed from: n0  reason: collision with root package name */
    private static final SparseIntArray f18817n0 = null;
    @NonNull
    private final DownloadViewStroke I;
    private long J;

    public c9(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.T(dataBindingComponent, view, 4, K, f18817n0));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean W(int i2, Object obj, int i4) {
        return false;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.b9
    public void g1(@Nullable CollectionBeanSubBusiness collectionBeanSubBusiness) {
        this.H = collectionBeanSubBusiness;
        synchronized (this) {
            this.J |= 1;
        }
        notifyPropertyChanged(9);
        super.n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.J != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.J = 2L;
        }
        n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void k() {
        long j4;
        String str;
        String str2;
        synchronized (this) {
            j4 = this.J;
            this.J = 0L;
        }
        CollectionBeanSubBusiness collectionBeanSubBusiness = this.H;
        long j5 = j4 & 3;
        String str3 = null;
        if (j5 == 0 || collectionBeanSubBusiness == null) {
            str = null;
            str2 = null;
        } else {
            String ico_remote = collectionBeanSubBusiness.getIco_remote();
            String game_name = collectionBeanSubBusiness.getGame_name();
            str2 = collectionBeanSubBusiness.getGif_ico_remote();
            str = ico_remote;
            str3 = game_name;
        }
        if (j5 != 0) {
            TextViewBindingAdapter.setText(this.E, str3);
            SimpleDrawableViewKt.loadUrl(this.F, str, str2, 0);
            ViewBindingDownloadViewKt.downloadVIewBinding(this.I, collectionBeanSubBusiness, 0);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i2, @Nullable Object obj) {
        if (9 == i2) {
            g1((CollectionBeanSubBusiness) obj);
            return true;
        }
        return false;
    }

    private c9(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TextView) objArr[2], (SimpleDraweeView) objArr[1], (LinearLayout) objArr[0]);
        this.J = -1L;
        this.E.setTag(null);
        this.F.setTag(null);
        DownloadViewStroke downloadViewStroke = (DownloadViewStroke) objArr[3];
        this.I = downloadViewStroke;
        downloadViewStroke.setTag(null);
        this.G.setTag(null);
        A0(view);
        invalidateAll();
    }
}
