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
import com.join.mgps.customview.CarouselViewPager2;
/* compiled from: SpecialZoneViewpagerLayoutBinding.java */
/* loaded from: classes3.dex */
public final class zb0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f27199a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final CarouselViewPager2 f27200b;

    private zb0(@NonNull LinearLayout linearLayout, @NonNull CarouselViewPager2 carouselViewPager2) {
        this.f27199a = linearLayout;
        this.f27200b = carouselViewPager2;
    }

    @NonNull
    public static zb0 a(@NonNull View view) {
        CarouselViewPager2 carouselViewPager2 = (CarouselViewPager2) ViewBindings.findChildViewById(view, R.id.viewpager);
        if (carouselViewPager2 != null) {
            return new zb0((LinearLayout) view, carouselViewPager2);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.viewpager)));
    }

    @NonNull
    public static zb0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static zb0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.special_zone_viewpager_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f27199a;
    }
}
