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
/* compiled from: MarketFragmentBinding.java */
/* loaded from: classes3.dex */
public final class ow implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f23369a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f23370b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SlidingTabLayout1 f23371c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ViewPagerCompat f23372d;

    private ow(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull SlidingTabLayout1 slidingTabLayout1, @NonNull ViewPagerCompat viewPagerCompat) {
        this.f23369a = linearLayout;
        this.f23370b = linearLayout2;
        this.f23371c = slidingTabLayout1;
        this.f23372d = viewPagerCompat;
    }

    @NonNull
    public static ow a(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        int i2 = R.id.tabs;
        SlidingTabLayout1 slidingTabLayout1 = (SlidingTabLayout1) ViewBindings.findChildViewById(view, R.id.tabs);
        if (slidingTabLayout1 != null) {
            i2 = R.id.view_pager;
            ViewPagerCompat viewPagerCompat = (ViewPagerCompat) ViewBindings.findChildViewById(view, R.id.view_pager);
            if (viewPagerCompat != null) {
                return new ow(linearLayout, linearLayout, slidingTabLayout1, viewPagerCompat);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static ow c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ow d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.market_fragment, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f23369a;
    }
}
