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
import com.join.mgps.customview.MGViewpagerV4;
import com.join.mgps.customview.SlidingTabDetailLayout;
/* compiled from: MgDetailLayoutBinding.java */
/* loaded from: classes3.dex */
public final class uw implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f25607a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SlidingTabDetailLayout f25608b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final MGViewpagerV4 f25609c;

    private uw(@NonNull LinearLayout linearLayout, @NonNull SlidingTabDetailLayout slidingTabDetailLayout, @NonNull MGViewpagerV4 mGViewpagerV4) {
        this.f25607a = linearLayout;
        this.f25608b = slidingTabDetailLayout;
        this.f25609c = mGViewpagerV4;
    }

    @NonNull
    public static uw a(@NonNull View view) {
        int i2 = R.id.slidingTabLayout;
        SlidingTabDetailLayout slidingTabDetailLayout = (SlidingTabDetailLayout) ViewBindings.findChildViewById(view, R.id.slidingTabLayout);
        if (slidingTabDetailLayout != null) {
            i2 = R.id.viewpagerV4;
            MGViewpagerV4 mGViewpagerV4 = (MGViewpagerV4) ViewBindings.findChildViewById(view, R.id.viewpagerV4);
            if (mGViewpagerV4 != null) {
                return new uw((LinearLayout) view, slidingTabDetailLayout, mGViewpagerV4);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static uw c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static uw d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_detail_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f25607a;
    }
}
