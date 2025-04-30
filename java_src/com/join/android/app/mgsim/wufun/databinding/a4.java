package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.MViewpagerV4;
import com.join.mgps.customview.SlidingTabLayoutGameDetailImage;
/* compiled from: BtGamedetailItemImgNaviBinding.java */
/* loaded from: classes3.dex */
public final class a4 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f18008a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final View f18009b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SlidingTabLayoutGameDetailImage f18010c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final MViewpagerV4 f18011d;

    private a4(@NonNull ConstraintLayout constraintLayout, @NonNull View view, @NonNull SlidingTabLayoutGameDetailImage slidingTabLayoutGameDetailImage, @NonNull MViewpagerV4 mViewpagerV4) {
        this.f18008a = constraintLayout;
        this.f18009b = view;
        this.f18010c = slidingTabLayoutGameDetailImage;
        this.f18011d = mViewpagerV4;
    }

    @NonNull
    public static a4 a(@NonNull View view) {
        int i2 = R.id.bottomLine;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.bottomLine);
        if (findChildViewById != null) {
            i2 = R.id.tabLayout1;
            SlidingTabLayoutGameDetailImage slidingTabLayoutGameDetailImage = (SlidingTabLayoutGameDetailImage) ViewBindings.findChildViewById(view, R.id.tabLayout1);
            if (slidingTabLayoutGameDetailImage != null) {
                i2 = R.id.viewPager1;
                MViewpagerV4 mViewpagerV4 = (MViewpagerV4) ViewBindings.findChildViewById(view, R.id.viewPager1);
                if (mViewpagerV4 != null) {
                    return new a4((ConstraintLayout) view, findChildViewById, slidingTabLayoutGameDetailImage, mViewpagerV4);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static a4 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static a4 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.bt_gamedetail_item_img_navi, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f18008a;
    }
}
