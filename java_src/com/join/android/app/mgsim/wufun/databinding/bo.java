package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.component.photoviewer.MultiTouchViewPager;
import com.join.android.app.mgsim.wufun.R;
import me.relex.circleindicator.CircleIndicator;
/* compiled from: HomePopupAdActivityBinding.java */
/* loaded from: classes3.dex */
public final class bo implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f18606a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final View f18607b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final CircleIndicator f18608c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final SimpleDraweeView f18609d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f18610e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final MultiTouchViewPager f18611f;

    private bo(@NonNull LinearLayout linearLayout, @NonNull View view, @NonNull CircleIndicator circleIndicator, @NonNull SimpleDraweeView simpleDraweeView, @NonNull LinearLayout linearLayout2, @NonNull MultiTouchViewPager multiTouchViewPager) {
        this.f18606a = linearLayout;
        this.f18607b = view;
        this.f18608c = circleIndicator;
        this.f18609d = simpleDraweeView;
        this.f18610e = linearLayout2;
        this.f18611f = multiTouchViewPager;
    }

    @NonNull
    public static bo a(@NonNull View view) {
        int i2 = R.id.holder;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.holder);
        if (findChildViewById != null) {
            i2 = R.id.indicator;
            CircleIndicator circleIndicator = (CircleIndicator) ViewBindings.findChildViewById(view, R.id.indicator);
            if (circleIndicator != null) {
                i2 = R.id.more;
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.more);
                if (simpleDraweeView != null) {
                    LinearLayout linearLayout = (LinearLayout) view;
                    i2 = R.id.viewPager;
                    MultiTouchViewPager multiTouchViewPager = (MultiTouchViewPager) ViewBindings.findChildViewById(view, R.id.viewPager);
                    if (multiTouchViewPager != null) {
                        return new bo(linearLayout, findChildViewById, circleIndicator, simpleDraweeView, linearLayout, multiTouchViewPager);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static bo c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static bo d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.home_popup_ad_activity, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f18606a;
    }
}
