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
import com.join.mgps.customview.MViewpagerV4;
import com.join.mgps.customview.SlidingTabMyPaPaLayout;
/* compiled from: PlatClassifyFragmentLayoutBinding.java */
/* loaded from: classes3.dex */
public final class f80 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f20064a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f20065b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final MViewpagerV4 f20066c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final SlidingTabMyPaPaLayout f20067d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final View f20068e;

    private f80(@NonNull RelativeLayout relativeLayout, @NonNull LinearLayout linearLayout, @NonNull MViewpagerV4 mViewpagerV4, @NonNull SlidingTabMyPaPaLayout slidingTabMyPaPaLayout, @NonNull View view) {
        this.f20064a = relativeLayout;
        this.f20065b = linearLayout;
        this.f20066c = mViewpagerV4;
        this.f20067d = slidingTabMyPaPaLayout;
        this.f20068e = view;
    }

    @NonNull
    public static f80 a(@NonNull View view) {
        int i2 = R.id.linearLayout;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.linearLayout);
        if (linearLayout != null) {
            i2 = R.id.mBottomVIewPager;
            MViewpagerV4 mViewpagerV4 = (MViewpagerV4) ViewBindings.findChildViewById(view, R.id.mBottomVIewPager);
            if (mViewpagerV4 != null) {
                i2 = R.id.slidingTabLayout;
                SlidingTabMyPaPaLayout slidingTabMyPaPaLayout = (SlidingTabMyPaPaLayout) ViewBindings.findChildViewById(view, R.id.slidingTabLayout);
                if (slidingTabMyPaPaLayout != null) {
                    i2 = R.id.viewBg;
                    View findChildViewById = ViewBindings.findChildViewById(view, R.id.viewBg);
                    if (findChildViewById != null) {
                        return new f80((RelativeLayout) view, linearLayout, mViewpagerV4, slidingTabMyPaPaLayout, findChildViewById);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static f80 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static f80 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.plat_classify_fragment_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f20064a;
    }
}
