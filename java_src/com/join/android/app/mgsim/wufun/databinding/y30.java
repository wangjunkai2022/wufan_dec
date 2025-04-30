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
/* compiled from: ModarchiveListLocalItemBindingImpl.java */
/* loaded from: classes3.dex */
public class y30 extends x30 implements a.InterfaceC0141a {
    @Nullable
    private static final ViewDataBinding.IncludedLayouts I0 = null;
    @Nullable
    private static final SparseIntArray J0;
    @NonNull
    private final LinearLayout A0;
    @Nullable
    private final View.OnClickListener B0;
    @Nullable
    private final View.OnClickListener C0;
    @Nullable
    private final View.OnClickListener D0;
    @Nullable
    private final View.OnClickListener E0;
    @Nullable
    private final View.OnClickListener F0;
    @Nullable
    private final View.OnClickListener G0;
    private long H0;
    @NonNull

    /* renamed from: v0  reason: collision with root package name */
    private final LinearLayout f26774v0;
    @NonNull

    /* renamed from: w0  reason: collision with root package name */
    private final LinearLayout f26775w0;
    @NonNull

    /* renamed from: x0  reason: collision with root package name */
    private final RelativeLayout f26776x0;
    @NonNull

    /* renamed from: y0  reason: collision with root package name */
    private final View f26777y0;
    @NonNull

    /* renamed from: z0  reason: collision with root package name */
    private final SimpleDraweeView f26778z0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        J0 = sparseIntArray;
        sparseIntArray.put(R.id.messageLayout, 16);
        sparseIntArray.put(R.id.more, 17);
        sparseIntArray.put(R.id.downImg, 18);
    }

    public y30(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.T(dataBindingComponent, view, 19, I0, J0));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean W(int i2, Object obj, int i4) {
        return false;
    }

    @Override // com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0141a
    public final void a(int i2, View view) {
        switch (i2) {
            case 1:
                ArchiveData archiveData = this.f26415t0;
                OnClickArchiveListener onClickArchiveListener = this.f26416u0;
                if (onClickArchiveListener != null) {
                    if (archiveData != null) {
                        onClickArchiveListener.onClickImage(archiveData.getCoverLocation());
                        return;
                    }
                    return;
                }
                return;
            case 2:
                ArchiveData archiveData2 = this.f26415t0;
                OnClickArchiveListener onClickArchiveListener2 = this.f26416u0;
                if (onClickArchiveListener2 != null) {
                    onClickArchiveListener2.onPraise(archiveData2);
                    return;
                }
                return;
            case 3:
                ArchiveData archiveData3 = this.f26415t0;
                OnClickArchiveListener onClickArchiveListener3 = this.f26416u0;
                if (onClickArchiveListener3 != null) {
                    onClickArchiveListener3.onClickDislike(archiveData3);
                    return;
                }
                return;
            case 4:
                OnClickArchiveListener onClickArchiveListener4 = this.f26416u0;
                if (onClickArchiveListener4 != null) {
                    onClickArchiveListener4.uploadCloud();
                    return;
                }
                return;
            case 5:
                ArchiveData archiveData4 = this.f26415t0;
                OnClickArchiveListener onClickArchiveListener5 = this.f26416u0;
                if (onClickArchiveListener5 != null) {
                    onClickArchiveListener5.onClickRun(archiveData4);
                    return;
                }
                return;
            case 6:
                ArchiveData archiveData5 = this.f26415t0;
                OnClickArchiveListener onClickArchiveListener6 = this.f26416u0;
                if (onClickArchiveListener6 != null) {
                    onClickArchiveListener6.onClickMore(view, archiveData5);
                    return;
                }
                return;
            default:
                return;
        }
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.x30
    public void h1(@Nullable OnClickArchiveListener onClickArchiveListener) {
        this.f26416u0 = onClickArchiveListener;
        synchronized (this) {
            this.H0 |= 2;
        }
        notifyPropertyChanged(8);
        super.n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.H0 != 0;
        }
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.x30
    public void i1(@Nullable ArchiveData archiveData) {
        this.f26415t0 = archiveData;
        synchronized (this) {
            this.H0 |= 1;
        }
        notifyPropertyChanged(17);
        super.n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.H0 = 4L;
        }
        n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void k() {
        long j4;
        Drawable drawable;
        boolean z3;
        boolean z4;
        Drawable drawable2;
        String str;
        int i2;
        int i4;
        String str2;
        Drawable drawable3;
        String str3;
        String str4;
        int i5;
        int i6;
        int i7;
        String str5;
        Drawable drawable4;
        String str6;
        long j5;
        long j6;
        int i8;
        String str7;
        long j7;
        int i9;
        int i10;
        int i11;
        String str8;
        int i12;
        int i13;
        String str9;
        int i14;
        int i15;
        int i16;
        String str10;
        String str11;
        int i17;
        Context context;
        int i18;
        Context context2;
        int i19;
        long j8;
        Context context3;
        int i20;
        long j9;
        long j10;
        synchronized (this) {
            j4 = this.H0;
            this.H0 = 0L;
        }
        ArchiveData archiveData = this.f26415t0;
        long j11 = j4 & 5;
        if (j11 != 0) {
            if (archiveData != null) {
                i15 = archiveData.getStatus();
                String id = archiveData.getId();
                i16 = archiveData.getLikeCount();
                int isFirstRun = archiveData.getIsFirstRun();
                str10 = archiveData.getCoverLocation();
                int isLike = archiveData.getIsLike();
                int negativeCount = archiveData.getNegativeCount();
                str11 = archiveData.getArchiveDesc();
                int isUnLike = archiveData.getIsUnLike();
                String showText = archiveData.getShowText();
                i17 = archiveData.getDownloadCount();
                int showType = archiveData.getShowType();
                long addTime = archiveData.getAddTime();
                i9 = archiveData.getUserId();
                str9 = id;
                i14 = isFirstRun;
                i12 = isLike;
                i13 = negativeCount;
                i11 = isUnLike;
                str8 = showText;
                i10 = showType;
                j5 = addTime;
            } else {
                j5 = 0;
                i9 = 0;
                i10 = 0;
                i11 = 0;
                str8 = null;
                i12 = 0;
                i13 = 0;
                str9 = null;
                i14 = 0;
                i15 = 0;
                i16 = 0;
                str10 = null;
                str11 = null;
                i17 = 0;
            }
            boolean z5 = i15 == 8;
            String valueOf = String.valueOf(i16);
            boolean z6 = i14 == 1;
            boolean z7 = str10 == null;
            boolean z8 = i12 == 1;
            String valueOf2 = String.valueOf(i13);
            boolean z9 = i11 == 1;
            String valueOf3 = String.valueOf(i17);
            z3 = i10 == 1;
            z4 = j5 != 0;
            String valueOf4 = String.valueOf(i9);
            if (j11 != 0) {
                j4 |= z5 ? 4096L : 2048L;
            }
            if ((j4 & 5) != 0) {
                j4 |= z6 ? 256L : 128L;
            }
            if ((j4 & 5) != 0) {
                j4 |= z7 ? 1024L : 512L;
            }
            if ((j4 & 5) != 0) {
                j4 |= z8 ? 65536L : 32768L;
            }
            if ((j4 & 5) != 0) {
                j4 |= z9 ? 4194304L : PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE;
            }
            if ((j4 & 5) != 0) {
                j4 |= z3 ? PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED : PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE_ENABLED;
            }
            if ((j4 & 5) != 0) {
                j4 |= z4 ? PlaybackStateCompat.ACTION_SET_REPEAT_MODE : 131072L;
            }
            boolean equals = str9 != null ? str9.equals(String.valueOf(0)) : false;
            if ((j4 & 5) != 0) {
                j4 |= equals ? 16777216L : 8388608L;
            }
            Drawable drawable5 = AppCompatResources.getDrawable(this.f26412q0.getContext(), z5 ? R.drawable.mod_start_normal_back : R.drawable.mod_download_normal_back);
            i5 = z6 ? 0 : 8;
            i6 = z7 ? 8 : 0;
            if (z8) {
                context = this.f26410o0.getContext();
                i18 = R.drawable.cloud_parised_icon;
            } else {
                context = this.f26410o0.getContext();
                i18 = R.drawable.cloud_parise_icon;
            }
            Drawable drawable6 = AppCompatResources.getDrawable(context, i18);
            if (z9) {
                context2 = this.F.getContext();
                i19 = R.drawable.dislike_pressed;
            } else {
                context2 = this.F.getContext();
                i19 = R.drawable.dislike_normal;
            }
            drawable2 = AppCompatResources.getDrawable(context2, i19);
            int i21 = equals ? 8 : 0;
            boolean equals2 = str9 != null ? str9.equals(valueOf4) : false;
            if ((524293 & j4) != 0) {
                j4 |= equals2 ? 16L : 8L;
            }
            if ((j4 & 5) != 0) {
                if (equals2) {
                    j9 = j4 | 64;
                    j10 = 16384;
                } else {
                    j9 = j4 | 32;
                    j10 = 8192;
                }
                j4 = j9 | j10;
            }
            int i22 = equals2 ? 8 : 0;
            int i23 = equals2 ? 0 : 8;
            if (equals2) {
                context3 = this.f26775w0.getContext();
                j8 = j4;
                i20 = R.drawable.mod_archive_local_back;
            } else {
                j8 = j4;
                context3 = this.f26775w0.getContext();
                i20 = R.drawable.mod_archive_item_back;
            }
            drawable = AppCompatResources.getDrawable(context3, i20);
            drawable4 = drawable5;
            str6 = valueOf;
            j4 = j8;
            j6 = PlaybackStateCompat.ACTION_SET_REPEAT_MODE;
            i4 = i21;
            i2 = i22;
            i7 = i23;
            str4 = valueOf3;
            str3 = valueOf2;
            drawable3 = drawable6;
            str2 = str11;
            String str12 = str10;
            str5 = str8;
            str = str12;
        } else {
            drawable = null;
            z3 = false;
            z4 = false;
            drawable2 = null;
            str = null;
            i2 = 0;
            i4 = 0;
            str2 = null;
            drawable3 = null;
            str3 = null;
            str4 = null;
            i5 = 0;
            i6 = 0;
            i7 = 0;
            str5 = null;
            drawable4 = null;
            str6 = null;
            j5 = 0;
            j6 = PlaybackStateCompat.ACTION_SET_REPEAT_MODE;
        }
        String o3 = (j4 & j6) != 0 ? com.join.mgps.Util.x.o(j5 * 1000) : null;
        long j12 = j4 & 5;
        if (j12 != 0) {
            i8 = z3 ? 8 : i2;
        } else {
            i8 = 0;
        }
        if (j12 != 0) {
            if (!z4) {
                o3 = "";
            }
            str7 = o3;
        } else {
            str7 = null;
        }
        if (j12 != 0) {
            j7 = j4;
            TextViewBindingAdapter.setText(this.E, str2);
            ImageViewBindingAdapter.setImageDrawable(this.F, drawable2);
            TextViewBindingAdapter.setText(this.G, str3);
            TextViewBindingAdapter.setText(this.I, str4);
            ViewBindingAdapter.setBackground(this.f26775w0, drawable);
            this.f26776x0.setVisibility(i2);
            this.f26777y0.setVisibility(i5);
            this.f26778z0.setVisibility(i6);
            SimpleDrawableViewKt.loadUrl(this.f26778z0, str, null, 0);
            this.A0.setVisibility(i4);
            this.f26409n0.setVisibility(i8);
            ImageViewBindingAdapter.setImageDrawable(this.f26410o0, drawable3);
            TextViewBindingAdapter.setText(this.f26411p0, str6);
            ViewBindingAdapter.setBackground(this.f26412q0, drawable4);
            TextViewBindingAdapter.setText(this.f26412q0, str5);
            this.f26413r0.setVisibility(i7);
            TextViewBindingAdapter.setText(this.f26414s0, str7);
        } else {
            j7 = j4;
        }
        if ((j7 & 4) != 0) {
            this.F.setOnClickListener(this.B0);
            this.f26778z0.setOnClickListener(this.G0);
            this.f26409n0.setOnClickListener(this.F0);
            this.f26410o0.setOnClickListener(this.C0);
            this.f26412q0.setOnClickListener(this.E0);
            this.f26413r0.setOnClickListener(this.D0);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i2, @Nullable Object obj) {
        if (17 == i2) {
            i1((ArchiveData) obj);
        } else if (8 != i2) {
            return false;
        } else {
            h1((OnClickArchiveListener) obj);
        }
        return true;
    }

    private y30(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TextView) objArr[3], (ImageView) objArr[9], (TextView) objArr[10], (ImageView) objArr[18], (TextView) objArr[6], (RelativeLayout) objArr[16], (TextView) objArr[17], (ImageView) objArr[15], (ImageView) objArr[7], (TextView) objArr[8], (TextView) objArr[13], (TextView) objArr[11], (TextView) objArr[4]);
        this.H0 = -1L;
        this.E.setTag(null);
        this.F.setTag(null);
        this.G.setTag(null);
        this.I.setTag(null);
        LinearLayout linearLayout = (LinearLayout) objArr[0];
        this.f26774v0 = linearLayout;
        linearLayout.setTag(null);
        LinearLayout linearLayout2 = (LinearLayout) objArr[1];
        this.f26775w0 = linearLayout2;
        linearLayout2.setTag(null);
        RelativeLayout relativeLayout = (RelativeLayout) objArr[12];
        this.f26776x0 = relativeLayout;
        relativeLayout.setTag(null);
        View view2 = (View) objArr[14];
        this.f26777y0 = view2;
        view2.setTag(null);
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) objArr[2];
        this.f26778z0 = simpleDraweeView;
        simpleDraweeView.setTag(null);
        LinearLayout linearLayout3 = (LinearLayout) objArr[5];
        this.A0 = linearLayout3;
        linearLayout3.setTag(null);
        this.f26409n0.setTag(null);
        this.f26410o0.setTag(null);
        this.f26411p0.setTag(null);
        this.f26412q0.setTag(null);
        this.f26413r0.setTag(null);
        this.f26414s0.setTag(null);
        A0(view);
        this.B0 = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 3);
        this.C0 = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 2);
        this.D0 = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 4);
        this.E0 = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 5);
        this.F0 = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 6);
        this.G0 = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 1);
        invalidateAll();
    }
}
