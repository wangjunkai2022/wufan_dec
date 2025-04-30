package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ViewFlipper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CirclePageIndicator;
import com.join.mgps.customview.LoopViewPager;
/* compiled from: MgPapaTitleIncludeBinding.java */
/* loaded from: classes3.dex */
public final class d20 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f19163a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final CirclePageIndicator f19164b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final FrameLayout f19165c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f19166d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f19167e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f19168f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final LoopViewPager f19169g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ConstraintLayout f19170h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final ViewFlipper f19171i;

    private d20(@NonNull LinearLayout linearLayout, @NonNull CirclePageIndicator circlePageIndicator, @NonNull FrameLayout frameLayout, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull LoopViewPager loopViewPager, @NonNull ConstraintLayout constraintLayout, @NonNull ViewFlipper viewFlipper) {
        this.f19163a = linearLayout;
        this.f19164b = circlePageIndicator;
        this.f19165c = frameLayout;
        this.f19166d = linearLayout2;
        this.f19167e = linearLayout3;
        this.f19168f = linearLayout4;
        this.f19169g = loopViewPager;
        this.f19170h = constraintLayout;
        this.f19171i = viewFlipper;
    }

    @NonNull
    public static d20 a(@NonNull View view) {
        int i2 = R.id.indecater;
        CirclePageIndicator circlePageIndicator = (CirclePageIndicator) ViewBindings.findChildViewById(view, R.id.indecater);
        if (circlePageIndicator != null) {
            i2 = R.id.onlyOne;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.onlyOne);
            if (frameLayout != null) {
                i2 = R.id.point_group;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.point_group);
                if (linearLayout != null) {
                    i2 = R.id.table1;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.table1);
                    if (linearLayout2 != null) {
                        i2 = R.id.table2;
                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.table2);
                        if (linearLayout3 != null) {
                            i2 = R.id.top_ad_viewpager;
                            LoopViewPager loopViewPager = (LoopViewPager) ViewBindings.findChildViewById(view, R.id.top_ad_viewpager);
                            if (loopViewPager != null) {
                                i2 = R.id.top_ad_viewpager_outer;
                                ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.top_ad_viewpager_outer);
                                if (constraintLayout != null) {
                                    i2 = R.id.topLineView;
                                    ViewFlipper viewFlipper = (ViewFlipper) ViewBindings.findChildViewById(view, R.id.topLineView);
                                    if (viewFlipper != null) {
                                        return new d20((LinearLayout) view, circlePageIndicator, frameLayout, linearLayout, linearLayout2, linearLayout3, loopViewPager, constraintLayout, viewFlipper);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static d20 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static d20 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_papa_title_include, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f19163a;
    }
}
