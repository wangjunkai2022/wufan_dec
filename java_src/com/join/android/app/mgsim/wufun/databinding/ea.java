package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.MViewpagerV4;
import com.join.mgps.customview.SlidingTabLayoutGameDetail;
/* compiled from: DetialOneTouchSkillLayoutBinding.java */
/* loaded from: classes3.dex */
public final class ea implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f19645a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SlidingTabLayoutGameDetail f19646b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final MViewpagerV4 f19647c;

    private ea(@NonNull LinearLayout linearLayout, @NonNull SlidingTabLayoutGameDetail slidingTabLayoutGameDetail, @NonNull MViewpagerV4 mViewpagerV4) {
        this.f19645a = linearLayout;
        this.f19646b = slidingTabLayoutGameDetail;
        this.f19647c = mViewpagerV4;
    }

    @NonNull
    public static ea a(@NonNull View view) {
        int i2 = R.id.tabLayout;
        SlidingTabLayoutGameDetail slidingTabLayoutGameDetail = (SlidingTabLayoutGameDetail) ViewBindings.findChildViewById(view, R.id.tabLayout);
        if (slidingTabLayoutGameDetail != null) {
            i2 = R.id.viewPager;
            MViewpagerV4 mViewpagerV4 = (MViewpagerV4) ViewBindings.findChildViewById(view, R.id.viewPager);
            if (mViewpagerV4 != null) {
                return new ea((LinearLayout) view, slidingTabLayoutGameDetail, mViewpagerV4);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static ea c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ea d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.detial_one_touch_skill_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f19645a;
    }
}
