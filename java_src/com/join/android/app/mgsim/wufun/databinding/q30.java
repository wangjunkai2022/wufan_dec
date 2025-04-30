package com.join.android.app.mgsim.wufun.databinding;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.ImageViewBindingAdapter;
import androidx.databinding.adapters.TextViewBindingAdapter;
import androidx.databinding.adapters.ViewBindingAdapter;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.generated.callback.a;
import com.join.kotlin.bindingadapter.SimpleDrawableViewKt;
import com.join.kotlin.ui.cloudarchive.adapter.OnClickArchiveListener;
import com.join.kotlin.ui.cloudarchive.data.ArchiveData;
/* compiled from: ModarchiveGameDetailListItemBindingImpl.java */
/* loaded from: classes3.dex */
public class q30 extends p30 implements a.InterfaceC0141a {
    @Nullable
    private static final ViewDataBinding.IncludedLayouts E0 = null;
    @Nullable
    private static final SparseIntArray F0;
    @Nullable
    private final View.OnClickListener A0;
    @Nullable
    private final View.OnClickListener B0;
    @Nullable
    private final View.OnClickListener C0;
    private long D0;
    @NonNull

    /* renamed from: v0  reason: collision with root package name */
    private final LinearLayout f23820v0;
    @NonNull

    /* renamed from: w0  reason: collision with root package name */
    private final SimpleDraweeView f23821w0;
    @NonNull

    /* renamed from: x0  reason: collision with root package name */
    private final View f23822x0;
    @Nullable

    /* renamed from: y0  reason: collision with root package name */
    private final View.OnClickListener f23823y0;
    @Nullable

    /* renamed from: z0  reason: collision with root package name */
    private final View.OnClickListener f23824z0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        F0 = sparseIntArray;
        sparseIntArray.put(R.id.messageLayout, 13);
        sparseIntArray.put(R.id.more, 14);
    }

    public q30(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.T(dataBindingComponent, view, 15, E0, F0));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean W(int i2, Object obj, int i4) {
        return false;
    }

    @Override // com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0141a
    public final void a(int i2, View view) {
        if (i2 == 1) {
            ArchiveData archiveData = this.f23463s0;
            OnClickArchiveListener onClickArchiveListener = this.f23464t0;
            if (onClickArchiveListener != null) {
                if (archiveData != null) {
                    onClickArchiveListener.onClickImage(archiveData.getCoverLocation());
                }
            }
        } else if (i2 == 2) {
            ArchiveData archiveData2 = this.f23463s0;
            OnClickArchiveListener onClickArchiveListener2 = this.f23464t0;
            if (onClickArchiveListener2 != null) {
                onClickArchiveListener2.onPraise(archiveData2);
            }
        } else if (i2 == 3) {
            ArchiveData archiveData3 = this.f23463s0;
            OnClickArchiveListener onClickArchiveListener3 = this.f23464t0;
            if (onClickArchiveListener3 != null) {
                onClickArchiveListener3.onClickDislike(archiveData3);
            }
        } else if (i2 == 4) {
            ArchiveData archiveData4 = this.f23463s0;
            OnClickArchiveListener onClickArchiveListener4 = this.f23464t0;
            if (onClickArchiveListener4 != null) {
                onClickArchiveListener4.onClickRun(archiveData4);
            }
        } else if (i2 != 5) {
        } else {
            ArchiveData archiveData5 = this.f23463s0;
            OnClickArchiveListener onClickArchiveListener5 = this.f23464t0;
            if (onClickArchiveListener5 != null) {
                onClickArchiveListener5.onClickMore(view, archiveData5);
            }
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.D0 != 0;
        }
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.p30
    public void i1(@Nullable OnClickArchiveListener onClickArchiveListener) {
        this.f23464t0 = onClickArchiveListener;
        synchronized (this) {
            this.D0 |= 2;
        }
        notifyPropertyChanged(8);
        super.n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.D0 = 8L;
        }
        n0();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.p30
    public void j1(@Nullable Boolean bool) {
        this.f23465u0 = bool;
        synchronized (this) {
            this.D0 |= 4;
        }
        notifyPropertyChanged(13);
        super.n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void k() {
        long j4;
        long j5;
        String str;
        int i2;
        Drawable drawable;
        Drawable drawable2;
        String str2;
        Drawable drawable3;
        int i4;
        String str3;
        String str4;
        boolean z3;
        String str5;
        String str6;
        String str7;
        int i5;
        int i6;
        String str8;
        String str9;
        String str10;
        String str11;
        String str12;
        String str13;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        Context context;
        int i13;
        synchronized (this) {
            j4 = this.D0;
            this.D0 = 0L;
        }
        ArchiveData archiveData = this.f23463s0;
        Boolean bool = this.f23465u0;
        if ((j4 & 13) != 0) {
            long j6 = j4 & 9;
            if (j6 != 0) {
                if (archiveData != null) {
                    int status = archiveData.getStatus();
                    i11 = archiveData.getLikeCount();
                    int isFirstRun = archiveData.getIsFirstRun();
                    str9 = archiveData.getCoverLocation();
                    str10 = archiveData.getAvatar();
                    int isLike = archiveData.getIsLike();
                    int negativeCount = archiveData.getNegativeCount();
                    str11 = archiveData.getNickname();
                    str12 = archiveData.getArchiveDesc();
                    int isUnLike = archiveData.getIsUnLike();
                    str13 = archiveData.getShowText();
                    i9 = status;
                    i7 = isFirstRun;
                    i8 = isLike;
                    i12 = negativeCount;
                    i10 = isUnLike;
                } else {
                    i7 = 0;
                    i8 = 0;
                    i9 = 0;
                    i10 = 0;
                    i11 = 0;
                    i12 = 0;
                    str9 = null;
                    str10 = null;
                    str11 = null;
                    str12 = null;
                    str13 = null;
                }
                boolean z4 = i9 == 8;
                str4 = String.valueOf(i11);
                boolean z5 = i7 == 1;
                boolean z6 = str9 == null;
                boolean z7 = i8 == 1;
                str8 = String.valueOf(i12);
                boolean z8 = i10 == 1;
                if (j6 != 0) {
                    j4 |= z4 ? 2048L : 1024L;
                }
                if ((j4 & 9) != 0) {
                    j4 |= z5 ? 128L : 64L;
                }
                if ((j4 & 9) != 0) {
                    j4 |= z6 ? 512L : 256L;
                }
                if ((j4 & 9) != 0) {
                    j4 |= z7 ? 8192L : 4096L;
                }
                if ((j4 & 9) != 0) {
                    j4 |= z8 ? 131072L : 65536L;
                }
                drawable2 = AppCompatResources.getDrawable(this.f23459o0.getContext(), z4 ? R.drawable.mod_start_normal_back : R.drawable.mod_download_normal_back);
                i2 = z5 ? 0 : 8;
                i6 = z6 ? 8 : 0;
                if (z7) {
                    context = this.K.getContext();
                    i13 = R.drawable.cloud_parised_icon;
                } else {
                    context = this.K.getContext();
                    i13 = R.drawable.cloud_parise_icon;
                }
                drawable = AppCompatResources.getDrawable(context, i13);
                drawable3 = AppCompatResources.getDrawable(this.F.getContext(), z8 ? R.drawable.dislike_pressed : R.drawable.dislike_normal);
            } else {
                i2 = 0;
                drawable = null;
                drawable2 = null;
                i6 = 0;
                drawable3 = null;
                str4 = null;
                str8 = null;
                str9 = null;
                str10 = null;
                str11 = null;
                str12 = null;
                str13 = null;
            }
            boolean z9 = (archiveData != null ? archiveData.getIsChoice() : 0) == 1;
            if ((j4 & 13) == 0) {
                j5 = 32;
            } else if (z9) {
                j5 = 32;
                j4 |= 32;
            } else {
                j5 = 32;
                j4 |= 16;
            }
            z3 = z9;
            i4 = i6;
            str = str8;
            str2 = str9;
            str5 = str10;
            str6 = str11;
            str3 = str12;
            str7 = str13;
        } else {
            j5 = 32;
            str = null;
            i2 = 0;
            drawable = null;
            drawable2 = null;
            str2 = null;
            drawable3 = null;
            i4 = 0;
            str3 = null;
            str4 = null;
            z3 = false;
            str5 = null;
            str6 = null;
            str7 = null;
        }
        boolean z10 = (j4 & j5) != 0 ? !ViewDataBinding.w0(bool) : false;
        long j7 = j4 & 13;
        if (j7 != 0) {
            if (!z3) {
                z10 = false;
            }
            if (j7 != 0) {
                j4 |= z10 ? 32768L : 16384L;
            }
            i5 = z10 ? 0 : 8;
        } else {
            i5 = 0;
        }
        if ((j4 & 9) != 0) {
            TextViewBindingAdapter.setText(this.E, str3);
            ImageViewBindingAdapter.setImageDrawable(this.F, drawable3);
            TextViewBindingAdapter.setText(this.G, str);
            this.f23821w0.setVisibility(i4);
            SimpleDrawableViewKt.loadUrl(this.f23821w0, str2, null, 0);
            this.f23822x0.setVisibility(i2);
            ImageViewBindingAdapter.setImageDrawable(this.K, drawable);
            TextViewBindingAdapter.setText(this.f23458n0, str4);
            ViewBindingAdapter.setBackground(this.f23459o0, drawable2);
            TextViewBindingAdapter.setText(this.f23459o0, str7);
            SimpleDrawableViewKt.loadUrl(this.f23461q0, str5, null, 0);
            TextViewBindingAdapter.setText(this.f23462r0, str6);
        }
        if ((8 & j4) != 0) {
            this.F.setOnClickListener(this.f23824z0);
            this.f23821w0.setOnClickListener(this.C0);
            this.J.setOnClickListener(this.B0);
            this.K.setOnClickListener(this.f23823y0);
            this.f23459o0.setOnClickListener(this.A0);
        }
        if ((j4 & 13) != 0) {
            this.f23460p0.setVisibility(i5);
        }
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.p30
    public void k1(@Nullable ArchiveData archiveData) {
        this.f23463s0 = archiveData;
        synchronized (this) {
            this.D0 |= 1;
        }
        notifyPropertyChanged(17);
        super.n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i2, @Nullable Object obj) {
        if (17 == i2) {
            k1((ArchiveData) obj);
        } else if (8 == i2) {
            i1((OnClickArchiveListener) obj);
        } else if (13 != i2) {
            return false;
        } else {
            j1((Boolean) obj);
        }
        return true;
    }

    private q30(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TextView) objArr[3], (ImageView) objArr[8], (TextView) objArr[9], (RelativeLayout) objArr[13], (TextView) objArr[14], (ImageView) objArr[12], (ImageView) objArr[6], (TextView) objArr[7], (TextView) objArr[10], (TextView) objArr[2], (SimpleDraweeView) objArr[4], (TextView) objArr[5]);
        this.D0 = -1L;
        this.E.setTag(null);
        this.F.setTag(null);
        this.G.setTag(null);
        LinearLayout linearLayout = (LinearLayout) objArr[0];
        this.f23820v0 = linearLayout;
        linearLayout.setTag(null);
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) objArr[1];
        this.f23821w0 = simpleDraweeView;
        simpleDraweeView.setTag(null);
        View view2 = (View) objArr[11];
        this.f23822x0 = view2;
        view2.setTag(null);
        this.J.setTag(null);
        this.K.setTag(null);
        this.f23458n0.setTag(null);
        this.f23459o0.setTag(null);
        this.f23460p0.setTag(null);
        this.f23461q0.setTag(null);
        this.f23462r0.setTag(null);
        A0(view);
        this.f23823y0 = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 2);
        this.f23824z0 = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 3);
        this.A0 = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 4);
        this.B0 = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 5);
        this.C0 = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 1);
        invalidateAll();
    }
}
