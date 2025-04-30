package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.MutableLiveData;
import androidx.viewpager.widget.ViewPager;
import com.facebook.drawee.view.SimpleDraweeView;
import com.google.android.material.tabs.TabLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.generated.callback.a;
import com.join.kotlin.domain.common.LoadBindClickProxy;
import com.join.kotlin.domain.common.LoadBindindData;
import com.join.kotlin.ui.cloudarchive.VASingleGameViewModle;
/* compiled from: ActivityVasingleGameIndexBindingImpl.java */
/* loaded from: classes3.dex */
public class l2 extends k2 implements a.InterfaceC0141a {
    @Nullable
    private static final ViewDataBinding.IncludedLayouts K0;
    @Nullable
    private static final SparseIntArray L0;
    @NonNull
    private final RelativeLayout D0;
    @NonNull
    private final LinearLayout E0;
    @Nullable
    private final w3 F0;
    @NonNull
    private final LinearLayout G0;
    @Nullable
    private final xt H0;
    @Nullable
    private final View.OnClickListener I0;
    private long J0;

    static {
        ViewDataBinding.IncludedLayouts includedLayouts = new ViewDataBinding.IncludedLayouts(26);
        K0 = includedLayouts;
        includedLayouts.setIncludes(4, new String[]{"bindding_load_layout_include"}, new int[]{8}, new int[]{R.layout.bindding_load_layout_include});
        SparseIntArray sparseIntArray = new SparseIntArray();
        L0 = sparseIntArray;
        sparseIntArray.put(R.id.ll_title, 9);
        sparseIntArray.put(R.id.ll_mod_start, 10);
        sparseIntArray.put(R.id.cl_mod, 11);
        sparseIntArray.put(R.id.iv_mod_play, 12);
        sparseIntArray.put(R.id.tv_mod_start, 13);
        sparseIntArray.put(R.id.tv_mod_type, 14);
        sparseIntArray.put(R.id.tv_mod_status, 15);
        sparseIntArray.put(R.id.tv_new_version, 16);
        sparseIntArray.put(R.id.sdv_mod_dot, 17);
        sparseIntArray.put(R.id.tv_mod_install_status, 18);
        sparseIntArray.put(R.id.ll_stand_start, 19);
        sparseIntArray.put(R.id.tv_stand_type, 20);
        sparseIntArray.put(R.id.iv_stand_font, 21);
        sparseIntArray.put(R.id.tv_stand_status, 22);
        sparseIntArray.put(R.id.tv_stand_new_version, 23);
        sparseIntArray.put(R.id.tabLayout, 24);
        sparseIntArray.put(R.id.viewPager, 25);
    }

    public l2(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.T(dataBindingComponent, view, 26, K0, L0));
    }

    private boolean j1(MutableLiveData<String> mutableLiveData, int i2) {
        if (i2 == 0) {
            synchronized (this) {
                this.J0 |= 1;
            }
            return true;
        }
        return false;
    }

    private boolean k1(MutableLiveData<String> mutableLiveData, int i2) {
        if (i2 == 0) {
            synchronized (this) {
                this.J0 |= 4;
            }
            return true;
        }
        return false;
    }

    private boolean l1(MutableLiveData<LoadBindindData> mutableLiveData, int i2) {
        if (i2 == 0) {
            synchronized (this) {
                this.J0 |= 2;
            }
            return true;
        }
        return false;
    }

    private boolean m1(MutableLiveData<Integer> mutableLiveData, int i2) {
        if (i2 == 0) {
            synchronized (this) {
                this.J0 |= 8;
            }
            return true;
        }
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean W(int i2, Object obj, int i4) {
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        return false;
                    }
                    return m1((MutableLiveData) obj, i4);
                }
                return k1((MutableLiveData) obj, i4);
            }
            return l1((MutableLiveData) obj, i4);
        }
        return j1((MutableLiveData) obj, i4);
    }

    @Override // com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0141a
    public final void a(int i2, View view) {
        VASingleGameViewModle vASingleGameViewModle = this.C0;
        if (vASingleGameViewModle != null) {
            vASingleGameViewModle.onClickView(view);
        }
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.k2
    public void h1(@Nullable LoadBindClickProxy loadBindClickProxy) {
        this.B0 = loadBindClickProxy;
        synchronized (this) {
            this.J0 |= 16;
        }
        notifyPropertyChanged(19);
        super.n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            if (this.J0 != 0) {
                return true;
            }
            return this.F0.hasPendingBindings();
        }
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.k2
    public void i1(@Nullable VASingleGameViewModle vASingleGameViewModle) {
        this.C0 = vASingleGameViewModle;
        synchronized (this) {
            this.J0 |= 32;
        }
        notifyPropertyChanged(27);
        super.n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.J0 = 64L;
        }
        this.F0.invalidateAll();
        n0();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x00f5  */
    @Override // androidx.databinding.ViewDataBinding
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void k() {
        /*
            Method dump skipped, instructions count: 259
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.android.app.mgsim.wufun.databinding.l2.k():void");
    }

    @Override // androidx.databinding.ViewDataBinding
    public void setLifecycleOwner(@Nullable LifecycleOwner lifecycleOwner) {
        super.setLifecycleOwner(lifecycleOwner);
        this.F0.setLifecycleOwner(lifecycleOwner);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i2, @Nullable Object obj) {
        if (19 == i2) {
            h1((LoadBindClickProxy) obj);
        } else if (27 != i2) {
            return false;
        } else {
            i1((VASingleGameViewModle) obj);
        }
        return true;
    }

    private l2(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 4, (ConstraintLayout) objArr[11], (ImageView) objArr[2], (ImageView) objArr[12], (ImageView) objArr[21], (LinearLayout) objArr[10], (LinearLayout) objArr[19], (LinearLayout) objArr[9], (LinearLayout) objArr[6], (SimpleDraweeView) objArr[1], (SimpleDraweeView) objArr[17], (TabLayout) objArr[24], (TextView) objArr[3], (TextView) objArr[18], (TextView) objArr[13], (TextView) objArr[15], (TextView) objArr[14], (TextView) objArr[16], (TextView) objArr[23], (TextView) objArr[22], (TextView) objArr[20], (ViewPager) objArr[25]);
        this.J0 = -1L;
        this.F.setTag(null);
        RelativeLayout relativeLayout = (RelativeLayout) objArr[0];
        this.D0 = relativeLayout;
        relativeLayout.setTag(null);
        LinearLayout linearLayout = (LinearLayout) objArr[4];
        this.E0 = linearLayout;
        linearLayout.setTag(null);
        w3 w3Var = (w3) objArr[8];
        this.F0 = w3Var;
        z0(w3Var);
        LinearLayout linearLayout2 = (LinearLayout) objArr[5];
        this.G0 = linearLayout2;
        linearLayout2.setTag(null);
        this.H0 = objArr[7] != null ? xt.a((View) objArr[7]) : null;
        this.f21634n0.setTag(null);
        this.f21635o0.setTag(null);
        this.f21638r0.setTag(null);
        A0(view);
        this.I0 = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 1);
        invalidateAll();
    }
}
