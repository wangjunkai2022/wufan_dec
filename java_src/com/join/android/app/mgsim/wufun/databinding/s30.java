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
/* compiled from: ModarchiveListItem2BindingImpl.java */
/* loaded from: classes3.dex */
public class s30 extends r30 implements a.InterfaceC0141a {
    @Nullable
    private static final ViewDataBinding.IncludedLayouts D0 = null;
    @Nullable
    private static final SparseIntArray E0;
    @Nullable
    private final View.OnClickListener A0;
    @Nullable
    private final View.OnClickListener B0;
    private long C0;
    @NonNull

    /* renamed from: u0  reason: collision with root package name */
    private final LinearLayout f24692u0;
    @NonNull

    /* renamed from: v0  reason: collision with root package name */
    private final SimpleDraweeView f24693v0;
    @NonNull

    /* renamed from: w0  reason: collision with root package name */
    private final View f24694w0;
    @Nullable

    /* renamed from: x0  reason: collision with root package name */
    private final View.OnClickListener f24695x0;
    @Nullable

    /* renamed from: y0  reason: collision with root package name */
    private final View.OnClickListener f24696y0;
    @Nullable

    /* renamed from: z0  reason: collision with root package name */
    private final View.OnClickListener f24697z0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        E0 = sparseIntArray;
        sparseIntArray.put(R.id.messageLayout, 12);
        sparseIntArray.put(R.id.more, 13);
    }

    public s30(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.T(dataBindingComponent, view, 14, D0, E0));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean W(int i2, Object obj, int i4) {
        return false;
    }

    @Override // com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0141a
    public final void a(int i2, View view) {
        if (i2 == 1) {
            ArchiveData archiveData = this.f24197r0;
            OnClickArchiveListener onClickArchiveListener = this.f24198s0;
            if (onClickArchiveListener != null) {
                if (archiveData != null) {
                    onClickArchiveListener.onClickImage(archiveData.getCoverLocation());
                }
            }
        } else if (i2 == 2) {
            ArchiveData archiveData2 = this.f24197r0;
            OnClickArchiveListener onClickArchiveListener2 = this.f24198s0;
            if (onClickArchiveListener2 != null) {
                onClickArchiveListener2.onPraise(archiveData2);
            }
        } else if (i2 == 3) {
            ArchiveData archiveData3 = this.f24197r0;
            OnClickArchiveListener onClickArchiveListener3 = this.f24198s0;
            if (onClickArchiveListener3 != null) {
                onClickArchiveListener3.onClickDislike(archiveData3);
            }
        } else if (i2 == 4) {
            ArchiveData archiveData4 = this.f24197r0;
            OnClickArchiveListener onClickArchiveListener4 = this.f24198s0;
            if (onClickArchiveListener4 != null) {
                onClickArchiveListener4.onClickRun(archiveData4);
            }
        } else if (i2 != 5) {
        } else {
            ArchiveData archiveData5 = this.f24197r0;
            OnClickArchiveListener onClickArchiveListener5 = this.f24198s0;
            if (onClickArchiveListener5 != null) {
                onClickArchiveListener5.onClickMore(view, archiveData5);
            }
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.C0 != 0;
        }
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.r30
    public void i1(@Nullable OnClickArchiveListener onClickArchiveListener) {
        this.f24198s0 = onClickArchiveListener;
        synchronized (this) {
            this.C0 |= 2;
        }
        notifyPropertyChanged(8);
        super.n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.C0 = 8L;
        }
        n0();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.r30
    public void j1(@Nullable Boolean bool) {
        this.f24199t0 = bool;
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void k() {
        long j4;
        long j5;
        String str;
        String str2;
        Drawable drawable;
        int i2;
        int i4;
        String str3;
        Drawable drawable2;
        Drawable drawable3;
        String str4;
        String str5;
        Drawable drawable4;
        String str6;
        int i5;
        String str7;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        String str8;
        int i11;
        int i12;
        String str9;
        String str10;
        int i13;
        String str11;
        String str12;
        String str13;
        Context context;
        int i14;
        Context context2;
        int i15;
        synchronized (this) {
            j4 = this.C0;
            this.C0 = 0L;
        }
        ArchiveData archiveData = this.f24197r0;
        long j6 = j4 & 9;
        if (j6 != 0) {
            if (archiveData != null) {
                i10 = archiveData.getStatus();
                str8 = archiveData.getId();
                i11 = archiveData.getLikeCount();
                i12 = archiveData.getIsFirstRun();
                str9 = archiveData.getCoverLocation();
                str10 = archiveData.getAvatar();
                int isLike = archiveData.getIsLike();
                i13 = archiveData.getNegativeCount();
                str11 = archiveData.getNickname();
                str12 = archiveData.getArchiveDesc();
                int isUnLike = archiveData.getIsUnLike();
                str13 = archiveData.getShowText();
                int showType = archiveData.getShowType();
                i6 = archiveData.getUserId();
                i8 = isLike;
                i9 = isUnLike;
                i7 = showType;
            } else {
                i6 = 0;
                i7 = 0;
                i8 = 0;
                i9 = 0;
                i10 = 0;
                str8 = null;
                i11 = 0;
                i12 = 0;
                str9 = null;
                str10 = null;
                i13 = 0;
                str11 = null;
                str12 = null;
                str13 = null;
            }
            boolean z3 = i10 == 8;
            str5 = String.valueOf(i11);
            boolean z4 = i12 == 1;
            boolean z5 = str9 == null;
            boolean z6 = i8 == 1;
            String valueOf = String.valueOf(i13);
            boolean z7 = i9 == 1;
            boolean z8 = i7 == 1;
            String valueOf2 = String.valueOf(i6);
            if (j6 != 0) {
                j4 |= z3 ? 2048L : 1024L;
            }
            if ((j4 & 9) != 0) {
                j4 |= z4 ? 32L : 16L;
            }
            if ((j4 & 9) != 0) {
                j4 |= z5 ? 512L : 256L;
            }
            if ((j4 & 9) != 0) {
                j4 |= z6 ? 32768L : 16384L;
            }
            if ((j4 & 9) != 0) {
                j4 |= z7 ? 131072L : 65536L;
            }
            if ((j4 & 9) != 0) {
                j4 |= z8 ? 8192L : 4096L;
            }
            if (z3) {
                context = this.f24194o0.getContext();
                i14 = R.drawable.mod_start_normal_back;
            } else {
                context = this.f24194o0.getContext();
                i14 = R.drawable.mod_download_normal_back;
            }
            drawable = AppCompatResources.getDrawable(context, i14);
            i2 = z4 ? 0 : 8;
            int i16 = z5 ? 8 : 0;
            drawable2 = AppCompatResources.getDrawable(this.K.getContext(), z6 ? R.drawable.cloud_parised_icon : R.drawable.cloud_parise_icon);
            drawable3 = AppCompatResources.getDrawable(this.F.getContext(), z7 ? R.drawable.dislike_pressed : R.drawable.dislike_normal);
            i4 = z8 ? 8 : 0;
            boolean equals = str8 != null ? str8.equals(valueOf2) : false;
            if ((j4 & 9) != 0) {
                j4 |= equals ? 128L : 64L;
            }
            if (equals) {
                context2 = this.f24692u0.getContext();
                i15 = R.drawable.mod_archive_local_back;
            } else {
                context2 = this.f24692u0.getContext();
                i15 = R.drawable.mod_archive_item_back;
            }
            drawable4 = AppCompatResources.getDrawable(context2, i15);
            i5 = i16;
            str = str9;
            str2 = str10;
            str4 = valueOf;
            str7 = str11;
            str3 = str12;
            str6 = str13;
            j5 = 9;
        } else {
            j5 = 9;
            str = null;
            str2 = null;
            drawable = null;
            i2 = 0;
            i4 = 0;
            str3 = null;
            drawable2 = null;
            drawable3 = null;
            str4 = null;
            str5 = null;
            drawable4 = null;
            str6 = null;
            i5 = 0;
            str7 = null;
        }
        int i17 = ((j4 & j5) > 0L ? 1 : ((j4 & j5) == 0L ? 0 : -1));
        long j7 = j4;
        if (i17 != 0) {
            TextViewBindingAdapter.setText(this.E, str3);
            ImageViewBindingAdapter.setImageDrawable(this.F, drawable3);
            TextViewBindingAdapter.setText(this.G, str4);
            ViewBindingAdapter.setBackground(this.f24692u0, drawable4);
            this.f24693v0.setVisibility(i5);
            SimpleDrawableViewKt.loadUrl(this.f24693v0, str, null, 0);
            this.f24694w0.setVisibility(i2);
            this.J.setVisibility(i4);
            ImageViewBindingAdapter.setImageDrawable(this.K, drawable2);
            TextViewBindingAdapter.setText(this.f24193n0, str5);
            ViewBindingAdapter.setBackground(this.f24194o0, drawable);
            TextViewBindingAdapter.setText(this.f24194o0, str6);
            SimpleDrawableViewKt.loadUrl(this.f24195p0, str2, null, 0);
            TextViewBindingAdapter.setText(this.f24196q0, str7);
        }
        if ((j7 & 8) != 0) {
            this.F.setOnClickListener(this.B0);
            this.f24693v0.setOnClickListener(this.f24695x0);
            this.J.setOnClickListener(this.A0);
            this.K.setOnClickListener(this.f24697z0);
            this.f24194o0.setOnClickListener(this.f24696y0);
        }
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.r30
    public void k1(@Nullable ArchiveData archiveData) {
        this.f24197r0 = archiveData;
        synchronized (this) {
            this.C0 |= 1;
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

    private s30(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TextView) objArr[2], (ImageView) objArr[7], (TextView) objArr[8], (RelativeLayout) objArr[12], (TextView) objArr[13], (ImageView) objArr[11], (ImageView) objArr[5], (TextView) objArr[6], (TextView) objArr[9], (SimpleDraweeView) objArr[3], (TextView) objArr[4]);
        this.C0 = -1L;
        this.E.setTag(null);
        this.F.setTag(null);
        this.G.setTag(null);
        LinearLayout linearLayout = (LinearLayout) objArr[0];
        this.f24692u0 = linearLayout;
        linearLayout.setTag(null);
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) objArr[1];
        this.f24693v0 = simpleDraweeView;
        simpleDraweeView.setTag(null);
        View view2 = (View) objArr[10];
        this.f24694w0 = view2;
        view2.setTag(null);
        this.J.setTag(null);
        this.K.setTag(null);
        this.f24193n0.setTag(null);
        this.f24194o0.setTag(null);
        this.f24195p0.setTag(null);
        this.f24196q0.setTag(null);
        A0(view);
        this.f24695x0 = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 1);
        this.f24696y0 = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 4);
        this.f24697z0 = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 2);
        this.A0 = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 5);
        this.B0 = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 3);
        invalidateAll();
    }
}
