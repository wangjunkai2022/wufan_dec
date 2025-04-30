package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.MViewpagerV4;
import com.join.mgps.customview.SlidingTabClassifyLayout;
/* compiled from: MewClassifyLayoutBinding.java */
/* loaded from: classes3.dex */
public final class qw implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f24079a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SlidingTabClassifyLayout f24080b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final MViewpagerV4 f24081c;

    private qw(@NonNull RelativeLayout relativeLayout, @NonNull SlidingTabClassifyLayout slidingTabClassifyLayout, @NonNull MViewpagerV4 mViewpagerV4) {
        this.f24079a = relativeLayout;
        this.f24080b = slidingTabClassifyLayout;
        this.f24081c = mViewpagerV4;
    }

    @NonNull
    public static qw a(@NonNull View view) {
        int i2 = R.id.slidingTabLayout;
        SlidingTabClassifyLayout slidingTabClassifyLayout = (SlidingTabClassifyLayout) ViewBindings.findChildViewById(view, R.id.slidingTabLayout);
        if (slidingTabClassifyLayout != null) {
            i2 = R.id.viewpagerV4;
            MViewpagerV4 mViewpagerV4 = (MViewpagerV4) ViewBindings.findChildViewById(view, R.id.viewpagerV4);
            if (mViewpagerV4 != null) {
                return new qw((RelativeLayout) view, slidingTabClassifyLayout, mViewpagerV4);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static qw c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static qw d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mew_classify_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f24079a;
    }
}
