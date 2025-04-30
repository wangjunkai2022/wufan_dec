package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CarouselViewPager2;
import com.join.mgps.customview.CirclePageIndicator;
/* compiled from: GamedetialAdGroupLayoutBinding.java */
/* loaded from: classes3.dex */
public final class ql implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f24019a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final CirclePageIndicator f24020b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final FrameLayout f24021c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f24022d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final CarouselViewPager2 f24023e;

    private ql(@NonNull RelativeLayout relativeLayout, @NonNull CirclePageIndicator circlePageIndicator, @NonNull FrameLayout frameLayout, @NonNull LinearLayout linearLayout, @NonNull CarouselViewPager2 carouselViewPager2) {
        this.f24019a = relativeLayout;
        this.f24020b = circlePageIndicator;
        this.f24021c = frameLayout;
        this.f24022d = linearLayout;
        this.f24023e = carouselViewPager2;
    }

    @NonNull
    public static ql a(@NonNull View view) {
        int i2 = R.id.indecater;
        CirclePageIndicator circlePageIndicator = (CirclePageIndicator) ViewBindings.findChildViewById(view, R.id.indecater);
        if (circlePageIndicator != null) {
            i2 = R.id.onlyOne;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.onlyOne);
            if (frameLayout != null) {
                i2 = R.id.point_group;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.point_group);
                if (linearLayout != null) {
                    i2 = R.id.top_ad_viewpager;
                    CarouselViewPager2 carouselViewPager2 = (CarouselViewPager2) ViewBindings.findChildViewById(view, R.id.top_ad_viewpager);
                    if (carouselViewPager2 != null) {
                        return new ql((RelativeLayout) view, circlePageIndicator, frameLayout, linearLayout, carouselViewPager2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static ql c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ql d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.gamedetial_ad_group_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f24019a;
    }
}
