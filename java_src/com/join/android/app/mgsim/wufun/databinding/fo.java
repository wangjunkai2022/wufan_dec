package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.SlidingTabLayout6;
/* compiled from: HomeRankLayoutBinding.java */
/* loaded from: classes3.dex */
public final class fo implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f20205a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f20206b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SlidingTabLayout6 f20207c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ViewPager f20208d;

    private fo(@NonNull ConstraintLayout constraintLayout, @NonNull TextView textView, @NonNull SlidingTabLayout6 slidingTabLayout6, @NonNull ViewPager viewPager) {
        this.f20205a = constraintLayout;
        this.f20206b = textView;
        this.f20207c = slidingTabLayout6;
        this.f20208d = viewPager;
    }

    @NonNull
    public static fo a(@NonNull View view) {
        int i2 = R.id.moreLayout;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.moreLayout);
        if (textView != null) {
            i2 = R.id.tabLayout;
            SlidingTabLayout6 slidingTabLayout6 = (SlidingTabLayout6) ViewBindings.findChildViewById(view, R.id.tabLayout);
            if (slidingTabLayout6 != null) {
                i2 = R.id.viewPager;
                ViewPager viewPager = (ViewPager) ViewBindings.findChildViewById(view, R.id.viewPager);
                if (viewPager != null) {
                    return new fo((ConstraintLayout) view, textView, slidingTabLayout6, viewPager);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static fo c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static fo d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.home_rank_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f20205a;
    }
}
