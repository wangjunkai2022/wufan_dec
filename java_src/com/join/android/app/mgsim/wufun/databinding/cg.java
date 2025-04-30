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
import com.join.mgps.customview.SlidingTabLayout2;
/* compiled from: FragmentClassifyRankBinding.java */
/* loaded from: classes3.dex */
public final class cg implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f18904a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final View f18905b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SlidingTabLayout2 f18906c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ViewPager f18907d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f18908e;

    private cg(@NonNull LinearLayout linearLayout, @NonNull View view, @NonNull SlidingTabLayout2 slidingTabLayout2, @NonNull ViewPager viewPager, @NonNull LinearLayout linearLayout2) {
        this.f18904a = linearLayout;
        this.f18905b = view;
        this.f18906c = slidingTabLayout2;
        this.f18907d = viewPager;
        this.f18908e = linearLayout2;
    }

    @NonNull
    public static cg a(@NonNull View view) {
        int i2 = R.id.lineTop;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.lineTop);
        if (findChildViewById != null) {
            i2 = R.id.mSlidingTabLayout;
            SlidingTabLayout2 slidingTabLayout2 = (SlidingTabLayout2) ViewBindings.findChildViewById(view, R.id.mSlidingTabLayout);
            if (slidingTabLayout2 != null) {
                i2 = R.id.mViewpagerV4;
                ViewPager viewPager = (ViewPager) ViewBindings.findChildViewById(view, R.id.mViewpagerV4);
                if (viewPager != null) {
                    i2 = R.id.searchImage;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.searchImage);
                    if (linearLayout != null) {
                        return new cg((LinearLayout) view, findChildViewById, slidingTabLayout2, viewPager, linearLayout);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static cg c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static cg d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.fragment_classify_rank, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f18904a;
    }
}
