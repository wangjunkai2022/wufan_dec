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
import com.join.mgps.customview.SlidingTabLayout1;
import com.join.mgps.customview.ViewPagerCompat;
/* compiled from: FragmentRankNewBinding.java */
/* loaded from: classes3.dex */
public final class yh implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f26934a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f26935b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SlidingTabLayout1 f26936c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ViewPagerCompat f26937d;

    private yh(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull SlidingTabLayout1 slidingTabLayout1, @NonNull ViewPagerCompat viewPagerCompat) {
        this.f26934a = linearLayout;
        this.f26935b = linearLayout2;
        this.f26936c = slidingTabLayout1;
        this.f26937d = viewPagerCompat;
    }

    @NonNull
    public static yh a(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        int i2 = R.id.tabs;
        SlidingTabLayout1 slidingTabLayout1 = (SlidingTabLayout1) ViewBindings.findChildViewById(view, R.id.tabs);
        if (slidingTabLayout1 != null) {
            i2 = R.id.view_pager;
            ViewPagerCompat viewPagerCompat = (ViewPagerCompat) ViewBindings.findChildViewById(view, R.id.view_pager);
            if (viewPagerCompat != null) {
                return new yh(linearLayout, linearLayout, slidingTabLayout1, viewPagerCompat);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static yh c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static yh d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.fragment_rank_new, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f26934a;
    }
}
