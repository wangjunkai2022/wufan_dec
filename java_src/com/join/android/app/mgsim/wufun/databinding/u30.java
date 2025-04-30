package com.join.android.app.mgsim.wufun.databinding;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.v4.media.session.PlaybackStateCompat;
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
/* compiled from: ModarchiveListItemBindingImpl.java */
/* loaded from: classes3.dex */
public class u30 extends t30 implements a.InterfaceC0141a {
    @Nullable
    private static final ViewDataBinding.IncludedLayouts F0 = null;
    @Nullable
    private static final SparseIntArray G0;
    @Nullable
    private final View.OnClickListener A0;
    @Nullable
    private final View.OnClickListener B0;
    @Nullable
    private final View.OnClickListener C0;
    @Nullable
    private final View.OnClickListener D0;
    private long E0;
    @NonNull

    /* renamed from: w0  reason: collision with root package name */
    private final LinearLayout f25394w0;
    @NonNull

    /* renamed from: x0  reason: collision with root package name */
    private final SimpleDraweeView f25395x0;
    @NonNull

    /* renamed from: y0  reason: collision with root package name */
    private final View f25396y0;
    @Nullable

    /* renamed from: z0  reason: collision with root package name */
    private final View.OnClickListener f25397z0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        G0 = sparseIntArray;
        sparseIntArray.put(R.id.messageLayout, 13);
        sparseIntArray.put(R.id.more, 14);
    }

    public u30(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.T(dataBindingComponent, view, 15, F0, G0));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean W(int i2, Object obj, int i4) {
        return false;
    }

    @Override // com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0141a
    public final void a(int i2, View view) {
        if (i2 == 1) {
            ArchiveData archiveData = this.f25082s0;
            OnClickArchiveListener onClickArchiveListener = this.f25083t0;
            if (onClickArchiveListener != null) {
                if (archiveData != null) {
                    onClickArchiveListener.onClickImage(archiveData.getCoverLocation());
                }
            }
        } else if (i2 == 2) {
            ArchiveData archiveData2 = this.f25082s0;
            OnClickArchiveListener onClickArchiveListener2 = this.f25083t0;
            if (onClickArchiveListener2 != null) {
                onClickArchiveListener2.onPraise(archiveData2);
            }
        } else if (i2 == 3) {
            ArchiveData archiveData3 = this.f25082s0;
            OnClickArchiveListener onClickArchiveListener3 = this.f25083t0;
            if (onClickArchiveListener3 != null) {
                onClickArchiveListener3.onClickDislike(archiveData3);
            }
        } else if (i2 == 4) {
            ArchiveData archiveData4 = this.f25082s0;
            OnClickArchiveListener onClickArchiveListener4 = this.f25083t0;
            if (onClickArchiveListener4 != null) {
                onClickArchiveListener4.onClickRun(archiveData4);
            }
        } else if (i2 != 5) {
        } else {
            ArchiveData archiveData5 = this.f25082s0;
            OnClickArchiveListener onClickArchiveListener5 = this.f25083t0;
            if (onClickArchiveListener5 != null) {
                onClickArchiveListener5.onClickMore(view, archiveData5);
            }
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.E0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.E0 = 16L;
        }
        n0();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.t30
    public void j1(@Nullable OnClickArchiveListener onClickArchiveListener) {
        this.f25083t0 = onClickArchiveListener;
        synchronized (this) {
            this.E0 |= 4;
        }
        notifyPropertyChanged(8);
        super.n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void k() {
        long j4;
        long j5;
        long j6;
        String str;
        String str2;
        int i2;
        Drawable drawable;
        String str3;
        int i4;
        Drawable drawable2;
        String str4;
        Drawable drawable3;
        Drawable drawable4;
        boolean z3;
        int i5;
        String str5;
        String str6;
        String str7;
        int i6;
        Drawable drawable5;
        int i7;
        Drawable drawable6;
        String str8;
        String str9;
        String str10;
        String str11;
        String str12;
        String str13;
        int i8;
        int i9;
        int i10;
        int i11;
        String str14;
        int i12;
        int i13;
        int i14;
        int i15;
        Context context;
        int i16;
        Context context2;
        int i17;
        Context context3;
        int i18;
        synchronized (this) {
            j4 = this.E0;
            this.E0 = 0L;
        }
        ArchiveData archiveData = this.f25082s0;
        Boolean bool = this.f25084u0;
        if ((j4 & 26) != 0) {
            long j7 = j4 & 18;
            if (j7 != 0) {
                if (archiveData != null) {
                    int status = archiveData.getStatus();
                    String id = archiveData.getId();
                    int likeCount = archiveData.getLikeCount();
                    int isFirstRun = archiveData.getIsFirstRun();
                    str9 = archiveData.getCoverLocation();
                    str10 = archiveData.getAvatar();
                    int isLike = archiveData.getIsLike();
                    int negativeCount = archiveData.getNegativeCount();
                    str11 = archiveData.getNickname();
                    str12 = archiveData.getArchiveDesc();
                    int isUnLike = archiveData.getIsUnLike();
                    str13 = archiveData.getShowText();
                    i10 = status;
                    str14 = id;
                    i11 = likeCount;
                    i12 = isFirstRun;
                    i13 = isLike;
                    i14 = negativeCount;
                    i8 = isUnLike;
                    i9 = archiveData.getShowType();
                    i15 = archiveData.getUserId();
                } else {
                    i8 = 0;
                    i9 = 0;
                    i10 = 0;
                    i11 = 0;
                    str14 = null;
                    i12 = 0;
                    i13 = 0;
                    i14 = 0;
                    str9 = null;
                    str10 = null;
                    str11 = null;
                    str12 = null;
                    i15 = 0;
                    str13 = null;
                }
                boolean z4 = i10 == 8;
                str3 = String.valueOf(i11);
                boolean z5 = i12 == 1;
                boolean z6 = str9 == null;
                boolean z7 = i13 == 1;
                str8 = String.valueOf(i14);
                boolean z8 = i8 == 1;
                boolean z9 = i9 == 1;
                String valueOf = String.valueOf(i15);
                if (j7 != 0) {
                    j4 |= z4 ? 16384L : 8192L;
                }
                if ((j4 & 18) != 0) {
                    j4 |= z5 ? 256L : 128L;
                }
                if ((j4 & 18) != 0) {
                    j4 |= z6 ? 4096L : 2048L;
                }
                if ((j4 & 18) != 0) {
                    j4 |= z7 ? PlaybackStateCompat.ACTION_SET_REPEAT_MODE : 131072L;
                }
                if ((j4 & 18) != 0) {
                    j4 |= z8 ? 4194304L : PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE;
                }
                if ((j4 & 18) != 0) {
                    j4 |= z9 ? 65536L : 32768L;
                }
                if (z4) {
                    context = this.f25078o0.getContext();
                    i16 = R.drawable.mod_start_normal_back;
                } else {
                    context = this.f25078o0.getContext();
                    i16 = R.drawable.mod_download_normal_back;
                }
                drawable = AppCompatResources.getDrawable(context, i16);
                i4 = z5 ? 0 : 8;
                i7 = z6 ? 8 : 0;
                drawable4 = AppCompatResources.getDrawable(this.K.getContext(), z7 ? R.drawable.cloud_parised_icon : R.drawable.cloud_parise_icon);
                if (z8) {
                    context2 = this.F.getContext();
                    i17 = R.drawable.dislike_pressed;
                } else {
                    context2 = this.F.getContext();
                    i17 = R.drawable.dislike_normal;
                }
                drawable5 = AppCompatResources.getDrawable(context2, i17);
                i2 = z9 ? 8 : 0;
                boolean equals = str14 != null ? str14.equals(valueOf) : false;
                if ((j4 & 18) != 0) {
                    j4 |= equals ? 1024L : 512L;
                }
                if (equals) {
                    context3 = this.f25394w0.getContext();
                    i18 = R.drawable.mod_archive_local_back;
                } else {
                    context3 = this.f25394w0.getContext();
                    i18 = R.drawable.mod_archive_item_back;
                }
                drawable6 = AppCompatResources.getDrawable(context3, i18);
            } else {
                drawable5 = null;
                i2 = 0;
                drawable = null;
                str3 = null;
                i4 = 0;
                i7 = 0;
                drawable6 = null;
                drawable4 = null;
                str8 = null;
                str9 = null;
                str10 = null;
                str11 = null;
                str12 = null;
                str13 = null;
            }
            boolean z10 = (archiveData != null ? archiveData.getIsChoice() : 0) == 1;
            j5 = 0;
            if ((j4 & 26) == 0) {
                j6 = 64;
            } else if (z10) {
                j6 = 64;
                j4 |= 64;
            } else {
                j6 = 64;
                j4 |= 32;
            }
            z3 = z10;
            i5 = i7;
            drawable3 = drawable6;
            str4 = str9;
            str5 = str10;
            str6 = str11;
            str = str12;
            str7 = str13;
            drawable2 = drawable5;
            str2 = str8;
        } else {
            j5 = 0;
            j6 = 64;
            str = null;
            str2 = null;
            i2 = 0;
            drawable = null;
            str3 = null;
            i4 = 0;
            drawable2 = null;
            str4 = null;
            drawable3 = null;
            drawable4 = null;
            z3 = false;
            i5 = 0;
            str5 = null;
            str6 = null;
            str7 = null;
        }
        boolean z11 = (j6 & j4) != j5 ? !ViewDataBinding.w0(bool) : false;
        long j8 = j4 & 26;
        if (j8 != j5) {
            if (!z3) {
                z11 = false;
            }
            if (j8 != j5) {
                j4 |= z11 ? PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED : PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE_ENABLED;
            }
            i6 = z11 ? 0 : 8;
        } else {
            i6 = 0;
        }
        if ((18 & j4) != 0) {
            TextViewBindingAdapter.setText(this.E, str);
            ImageViewBindingAdapter.setImageDrawable(this.F, drawable2);
            TextViewBindingAdapter.setText(this.G, str2);
            ViewBindingAdapter.setBackground(this.f25394w0, drawable3);
            this.f25395x0.setVisibility(i5);
            SimpleDrawableViewKt.loadUrl(this.f25395x0, str4, null, 0);
            this.f25396y0.setVisibility(i4);
            this.J.setVisibility(i2);
            ImageViewBindingAdapter.setImageDrawable(this.K, drawable4);
            TextViewBindingAdapter.setText(this.f25077n0, str3);
            ViewBindingAdapter.setBackground(this.f25078o0, drawable);
            TextViewBindingAdapter.setText(this.f25078o0, str7);
            SimpleDrawableViewKt.loadUrl(this.f25080q0, str5, null, 0);
            TextViewBindingAdapter.setText(this.f25081r0, str6);
        }
        if ((16 & j4) != 0) {
            this.F.setOnClickListener(this.f25397z0);
            this.f25395x0.setOnClickListener(this.A0);
            this.J.setOnClickListener(this.B0);
            this.K.setOnClickListener(this.D0);
            this.f25078o0.setOnClickListener(this.C0);
        }
        if ((j4 & 26) != 0) {
            this.f25079p0.setVisibility(i6);
        }
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.t30
    public void k1(@Nullable Boolean bool) {
        this.f25084u0 = bool;
        synchronized (this) {
            this.E0 |= 8;
        }
        notifyPropertyChanged(13);
        super.n0();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.t30
    public void l1(@Nullable Boolean bool) {
        this.f25085v0 = bool;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.t30
    public void m1(@Nullable ArchiveData archiveData) {
        this.f25082s0 = archiveData;
        synchronized (this) {
            this.E0 |= 2;
        }
        notifyPropertyChanged(17);
        super.n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i2, @Nullable Object obj) {
        if (14 == i2) {
            l1((Boolean) obj);
        } else if (17 == i2) {
            m1((ArchiveData) obj);
        } else if (8 == i2) {
            j1((OnClickArchiveListener) obj);
        } else if (13 != i2) {
            return false;
        } else {
            k1((Boolean) obj);
        }
        return true;
    }

    private u30(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TextView) objArr[3], (ImageView) objArr[8], (TextView) objArr[9], (RelativeLayout) objArr[13], (TextView) objArr[14], (ImageView) objArr[12], (ImageView) objArr[6], (TextView) objArr[7], (TextView) objArr[10], (TextView) objArr[2], (SimpleDraweeView) objArr[4], (TextView) objArr[5]);
        this.E0 = -1L;
        this.E.setTag(null);
        this.F.setTag(null);
        this.G.setTag(null);
        LinearLayout linearLayout = (LinearLayout) objArr[0];
        this.f25394w0 = linearLayout;
        linearLayout.setTag(null);
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) objArr[1];
        this.f25395x0 = simpleDraweeView;
        simpleDraweeView.setTag(null);
        View view2 = (View) objArr[11];
        this.f25396y0 = view2;
        view2.setTag(null);
        this.J.setTag(null);
        this.K.setTag(null);
        this.f25077n0.setTag(null);
        this.f25078o0.setTag(null);
        this.f25079p0.setTag(null);
        this.f25080q0.setTag(null);
        this.f25081r0.setTag(null);
        A0(view);
        this.f25397z0 = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 3);
        this.A0 = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 1);
        this.B0 = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 5);
        this.C0 = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 4);
        this.D0 = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 2);
        invalidateAll();
    }
}
