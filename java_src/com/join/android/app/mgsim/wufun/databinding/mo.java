package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.component.photoviewer.HackyViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CirclePageIndicator;
/* compiled from: ImageViewpagerBinding.java */
/* loaded from: classes3.dex */
public final class mo implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final FrameLayout f22579a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f22580b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final CirclePageIndicator f22581c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final HackyViewPager f22582d;

    private mo(@NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull CirclePageIndicator circlePageIndicator, @NonNull HackyViewPager hackyViewPager) {
        this.f22579a = frameLayout;
        this.f22580b = textView;
        this.f22581c = circlePageIndicator;
        this.f22582d = hackyViewPager;
    }

    @NonNull
    public static mo a(@NonNull View view) {
        int i2 = R.id.bottomLayout;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.bottomLayout);
        if (textView != null) {
            i2 = R.id.indicator;
            CirclePageIndicator circlePageIndicator = (CirclePageIndicator) ViewBindings.findChildViewById(view, R.id.indicator);
            if (circlePageIndicator != null) {
                i2 = R.id.pager;
                HackyViewPager hackyViewPager = (HackyViewPager) ViewBindings.findChildViewById(view, R.id.pager);
                if (hackyViewPager != null) {
                    return new mo((FrameLayout) view, textView, circlePageIndicator, hackyViewPager);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static mo c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static mo d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.image_viewpager, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public FrameLayout getRoot() {
        return this.f22579a;
    }
}
