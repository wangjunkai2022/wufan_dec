package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.SlidingTabLayout6;
/* compiled from: EverdayNewActivityBinding.java */
/* loaded from: classes3.dex */
public final class le implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f22129a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SlidingTabLayout6 f22130b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final sc0 f22131c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ViewPager f22132d;

    private le(@NonNull LinearLayout linearLayout, @NonNull SlidingTabLayout6 slidingTabLayout6, @NonNull sc0 sc0Var, @NonNull ViewPager viewPager) {
        this.f22129a = linearLayout;
        this.f22130b = slidingTabLayout6;
        this.f22131c = sc0Var;
        this.f22132d = viewPager;
    }

    @NonNull
    public static le a(@NonNull View view) {
        int i2 = R.id.tabLayout;
        SlidingTabLayout6 slidingTabLayout6 = (SlidingTabLayout6) ViewBindings.findChildViewById(view, R.id.tabLayout);
        if (slidingTabLayout6 != null) {
            i2 = R.id.titleLayout;
            View findChildViewById = ViewBindings.findChildViewById(view, R.id.titleLayout);
            if (findChildViewById != null) {
                sc0 a4 = sc0.a(findChildViewById);
                ViewPager viewPager = (ViewPager) ViewBindings.findChildViewById(view, R.id.viewPager);
                if (viewPager != null) {
                    return new le((LinearLayout) view, slidingTabLayout6, a4, viewPager);
                }
                i2 = R.id.viewPager;
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static le c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static le d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.everday_new_activity, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f22129a;
    }
}
