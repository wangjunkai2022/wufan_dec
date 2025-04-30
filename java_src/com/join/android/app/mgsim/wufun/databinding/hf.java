package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.SlidingTabLayout6;
/* compiled from: FindgameFragmentLayoutBinding.java */
/* loaded from: classes3.dex */
public final class hf implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f20771a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f20772b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final View f20773c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final SlidingTabLayout6 f20774d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ViewPager f20775e;

    private hf(@NonNull ConstraintLayout constraintLayout, @NonNull ImageView imageView, @NonNull View view, @NonNull SlidingTabLayout6 slidingTabLayout6, @NonNull ViewPager viewPager) {
        this.f20771a = constraintLayout;
        this.f20772b = imageView;
        this.f20773c = view;
        this.f20774d = slidingTabLayout6;
        this.f20775e = viewPager;
    }

    @NonNull
    public static hf a(@NonNull View view) {
        int i2 = R.id.search;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.search);
        if (imageView != null) {
            i2 = R.id.statubar;
            View findChildViewById = ViewBindings.findChildViewById(view, R.id.statubar);
            if (findChildViewById != null) {
                i2 = R.id.tabLayout;
                SlidingTabLayout6 slidingTabLayout6 = (SlidingTabLayout6) ViewBindings.findChildViewById(view, R.id.tabLayout);
                if (slidingTabLayout6 != null) {
                    i2 = R.id.viewPager;
                    ViewPager viewPager = (ViewPager) ViewBindings.findChildViewById(view, R.id.viewPager);
                    if (viewPager != null) {
                        return new hf((ConstraintLayout) view, imageView, findChildViewById, slidingTabLayout6, viewPager);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static hf c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static hf d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.findgame_fragment_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f20771a;
    }
}
