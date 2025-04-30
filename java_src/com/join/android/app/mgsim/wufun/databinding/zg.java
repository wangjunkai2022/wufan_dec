package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.SlidingTabLayout6;
import com.join.mgps.customview.ViewPagerCompat;
/* compiled from: FragmentMarketNewBinding.java */
/* loaded from: classes3.dex */
public final class zg implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f27227a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f27228b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f27229c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final SlidingTabLayout6 f27230d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final RelativeLayout f27231e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ViewPagerCompat f27232f;

    private zg(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView, @NonNull SlidingTabLayout6 slidingTabLayout6, @NonNull RelativeLayout relativeLayout, @NonNull ViewPagerCompat viewPagerCompat) {
        this.f27227a = linearLayout;
        this.f27228b = linearLayout2;
        this.f27229c = imageView;
        this.f27230d = slidingTabLayout6;
        this.f27231e = relativeLayout;
        this.f27232f = viewPagerCompat;
    }

    @NonNull
    public static zg a(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        int i2 = R.id.searchImage;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.searchImage);
        if (imageView != null) {
            i2 = R.id.tabs;
            SlidingTabLayout6 slidingTabLayout6 = (SlidingTabLayout6) ViewBindings.findChildViewById(view, R.id.tabs);
            if (slidingTabLayout6 != null) {
                i2 = R.id.title;
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.title);
                if (relativeLayout != null) {
                    i2 = R.id.view_pager;
                    ViewPagerCompat viewPagerCompat = (ViewPagerCompat) ViewBindings.findChildViewById(view, R.id.view_pager);
                    if (viewPagerCompat != null) {
                        return new zg(linearLayout, linearLayout, imageView, slidingTabLayout6, relativeLayout, viewPagerCompat);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static zg c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static zg d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.fragment_market_new, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f27227a;
    }
}
