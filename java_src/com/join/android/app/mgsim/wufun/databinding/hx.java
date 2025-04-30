package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CirclePageIndicator;
import com.join.mgps.customview.LoopViewPager;
/* compiled from: MgForumBannerLayoutBinding.java */
/* loaded from: classes3.dex */
public final class hx implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f20916a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final CirclePageIndicator f20917b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f20918c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LoopViewPager f20919d;

    private hx(@NonNull RelativeLayout relativeLayout, @NonNull CirclePageIndicator circlePageIndicator, @NonNull LinearLayout linearLayout, @NonNull LoopViewPager loopViewPager) {
        this.f20916a = relativeLayout;
        this.f20917b = circlePageIndicator;
        this.f20918c = linearLayout;
        this.f20919d = loopViewPager;
    }

    @NonNull
    public static hx a(@NonNull View view) {
        int i2 = R.id.indecater;
        CirclePageIndicator circlePageIndicator = (CirclePageIndicator) ViewBindings.findChildViewById(view, R.id.indecater);
        if (circlePageIndicator != null) {
            i2 = R.id.point_group;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.point_group);
            if (linearLayout != null) {
                i2 = R.id.top_ad_viewpager;
                LoopViewPager loopViewPager = (LoopViewPager) ViewBindings.findChildViewById(view, R.id.top_ad_viewpager);
                if (loopViewPager != null) {
                    return new hx((RelativeLayout) view, circlePageIndicator, linearLayout, loopViewPager);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static hx c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static hx d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_banner_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f20916a;
    }
}
