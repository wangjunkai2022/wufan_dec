package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CirclePageIndicator;
import com.join.mgps.customview.RecyclerviewViewpager;
/* compiled from: LayoutSimulatorViewpagerBinding.java */
/* loaded from: classes3.dex */
public final class su implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f24981a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final CirclePageIndicator f24982b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final RecyclerviewViewpager f24983c;

    private su(@NonNull ConstraintLayout constraintLayout, @NonNull CirclePageIndicator circlePageIndicator, @NonNull RecyclerviewViewpager recyclerviewViewpager) {
        this.f24981a = constraintLayout;
        this.f24982b = circlePageIndicator;
        this.f24983c = recyclerviewViewpager;
    }

    @NonNull
    public static su a(@NonNull View view) {
        int i2 = R.id.indicator;
        CirclePageIndicator circlePageIndicator = (CirclePageIndicator) ViewBindings.findChildViewById(view, R.id.indicator);
        if (circlePageIndicator != null) {
            i2 = R.id.viewpager;
            RecyclerviewViewpager recyclerviewViewpager = (RecyclerviewViewpager) ViewBindings.findChildViewById(view, R.id.viewpager);
            if (recyclerviewViewpager != null) {
                return new su((ConstraintLayout) view, circlePageIndicator, recyclerviewViewpager);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static su c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static su d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.layout_simulator_viewpager, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f24981a;
    }
}
