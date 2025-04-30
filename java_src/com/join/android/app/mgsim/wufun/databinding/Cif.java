package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.SlidingTabLayout6;
/* compiled from: FindgameGamelistrankfragmentLayoutBinding.java */
/* renamed from: com.join.android.app.mgsim.wufun.databinding.if  reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cif implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f21152a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SlidingTabLayout6 f21153b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ViewPager f21154c;

    private Cif(@NonNull ConstraintLayout constraintLayout, @NonNull SlidingTabLayout6 slidingTabLayout6, @NonNull ViewPager viewPager) {
        this.f21152a = constraintLayout;
        this.f21153b = slidingTabLayout6;
        this.f21154c = viewPager;
    }

    @NonNull
    public static Cif a(@NonNull View view) {
        int i2 = R.id.tabLayout;
        SlidingTabLayout6 slidingTabLayout6 = (SlidingTabLayout6) ViewBindings.findChildViewById(view, R.id.tabLayout);
        if (slidingTabLayout6 != null) {
            i2 = R.id.viewPager;
            ViewPager viewPager = (ViewPager) ViewBindings.findChildViewById(view, R.id.viewPager);
            if (viewPager != null) {
                return new Cif((ConstraintLayout) view, slidingTabLayout6, viewPager);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static Cif c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static Cif d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.findgame_gamelistrankfragment_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f21152a;
    }
}
