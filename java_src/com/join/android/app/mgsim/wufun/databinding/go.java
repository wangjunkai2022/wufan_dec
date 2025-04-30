package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.RecyclerviewViewpager;
import com.join.mgps.customview.SlidingTabLayout6;
/* compiled from: HomeRankLayoutV2Binding.java */
/* loaded from: classes3.dex */
public final class go implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f20534a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f20535b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ConstraintLayout f20536c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final SlidingTabLayout6 f20537d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final RecyclerviewViewpager f20538e;

    private go(@NonNull ConstraintLayout constraintLayout, @NonNull LinearLayout linearLayout, @NonNull ConstraintLayout constraintLayout2, @NonNull SlidingTabLayout6 slidingTabLayout6, @NonNull RecyclerviewViewpager recyclerviewViewpager) {
        this.f20534a = constraintLayout;
        this.f20535b = linearLayout;
        this.f20536c = constraintLayout2;
        this.f20537d = slidingTabLayout6;
        this.f20538e = recyclerviewViewpager;
    }

    @NonNull
    public static go a(@NonNull View view) {
        int i2 = R.id.moreLayout;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.moreLayout);
        if (linearLayout != null) {
            ConstraintLayout constraintLayout = (ConstraintLayout) view;
            i2 = R.id.tabLayout;
            SlidingTabLayout6 slidingTabLayout6 = (SlidingTabLayout6) ViewBindings.findChildViewById(view, R.id.tabLayout);
            if (slidingTabLayout6 != null) {
                i2 = R.id.viewPager;
                RecyclerviewViewpager recyclerviewViewpager = (RecyclerviewViewpager) ViewBindings.findChildViewById(view, R.id.viewPager);
                if (recyclerviewViewpager != null) {
                    return new go(constraintLayout, linearLayout, constraintLayout, slidingTabLayout6, recyclerviewViewpager);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static go c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static go d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.home_rank_layout_v2, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f20534a;
    }
}
