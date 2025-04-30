package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.bindingadapter.ViewBindingVideoFramlayoutKt;
import com.join.kotlin.ui.modleregin.modle.VideoModle;
import com.join.mgps.Util.IntentDateBean;
/* compiled from: VideoDbsLayoutBindingImpl.java */
/* loaded from: classes3.dex */
public class id0 extends hd0 {
    @Nullable

    /* renamed from: n0  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f21139n0 = null;
    @Nullable

    /* renamed from: o0  reason: collision with root package name */
    private static final SparseIntArray f21140o0;
    @NonNull
    private final RelativeLayout J;
    private long K;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f21140o0 = sparseIntArray;
        sparseIntArray.put(R.id.loading, 3);
    }

    public id0(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.T(dataBindingComponent, view, 4, f21139n0, f21140o0));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean W(int i2, Object obj, int i4) {
        return false;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.hd0
    public void h1(@Nullable VideoModle videoModle) {
        this.I = videoModle;
        synchronized (this) {
            this.K |= 1;
        }
        notifyPropertyChanged(9);
        super.n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.K != 0;
        }
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.hd0
    public void i1(@Nullable com.join.android.app.component.video.c cVar) {
        this.H = cVar;
        synchronized (this) {
            this.K |= 2;
        }
        notifyPropertyChanged(26);
        super.n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.K = 4L;
        }
        n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void k() {
        long j4;
        String str;
        synchronized (this) {
            j4 = this.K;
            this.K = 0L;
        }
        int i2 = 0;
        VideoModle videoModle = this.I;
        com.join.android.app.component.video.c cVar = this.H;
        long j5 = j4 & 7;
        IntentDateBean intentDateBean = null;
        if (j5 == 0 || videoModle == null) {
            str = null;
        } else {
            i2 = videoModle.getPosition();
            str = videoModle.getVideoCover();
            intentDateBean = videoModle.getIntentData();
        }
        if (j5 != 0) {
            ViewBindingVideoFramlayoutKt.setvideoTag(this.E, i2, cVar, intentDateBean, str);
            ViewBindingVideoFramlayoutKt.loadVideoUrl(this.G, videoModle, cVar, intentDateBean);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i2, @Nullable Object obj) {
        if (9 == i2) {
            h1((VideoModle) obj);
        } else if (26 != i2) {
            return false;
        } else {
            i1((com.join.android.app.component.video.c) obj);
        }
        return true;
    }

    private id0(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (SimpleDraweeView) objArr[2], (SimpleDraweeView) objArr[3], (FrameLayout) objArr[1]);
        this.K = -1L;
        this.E.setTag(null);
        RelativeLayout relativeLayout = (RelativeLayout) objArr[0];
        this.J = relativeLayout;
        relativeLayout.setTag(null);
        this.G.setTag(null);
        A0(view);
        invalidateAll();
    }
}
