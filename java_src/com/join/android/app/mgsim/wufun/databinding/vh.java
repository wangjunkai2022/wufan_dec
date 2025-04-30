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
import com.join.mgps.customview.SlidingTabLayout6;
import com.join.mgps.customview.ViewPagerCompat;
/* compiled from: FragmentRankBinding.java */
/* loaded from: classes3.dex */
public final class vh implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f25845a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f25846b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SlidingTabLayout6 f25847c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ViewPagerCompat f25848d;

    private vh(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull SlidingTabLayout6 slidingTabLayout6, @NonNull ViewPagerCompat viewPagerCompat) {
        this.f25845a = linearLayout;
        this.f25846b = linearLayout2;
        this.f25847c = slidingTabLayout6;
        this.f25848d = viewPagerCompat;
    }

    @NonNull
    public static vh a(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        int i2 = R.id.tabs;
        SlidingTabLayout6 slidingTabLayout6 = (SlidingTabLayout6) ViewBindings.findChildViewById(view, R.id.tabs);
        if (slidingTabLayout6 != null) {
            i2 = R.id.viewPager;
            ViewPagerCompat viewPagerCompat = (ViewPagerCompat) ViewBindings.findChildViewById(view, R.id.viewPager);
            if (viewPagerCompat != null) {
                return new vh(linearLayout, linearLayout, slidingTabLayout6, viewPagerCompat);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static vh c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static vh d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.fragment_rank, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f25845a;
    }
}
