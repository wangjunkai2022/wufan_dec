package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CarouselViewPager2;
/* compiled from: LayoutLiveHotHeaderViewBinding.java */
/* loaded from: classes3.dex */
public final class vt implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f25919a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final CarouselViewPager2 f25920b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final FrameLayout f25921c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f25922d;

    private vt(@NonNull RelativeLayout relativeLayout, @NonNull CarouselViewPager2 carouselViewPager2, @NonNull FrameLayout frameLayout, @NonNull LinearLayout linearLayout) {
        this.f25919a = relativeLayout;
        this.f25920b = carouselViewPager2;
        this.f25921c = frameLayout;
        this.f25922d = linearLayout;
    }

    @NonNull
    public static vt a(@NonNull View view) {
        int i2 = R.id.loopViewPager;
        CarouselViewPager2 carouselViewPager2 = (CarouselViewPager2) ViewBindings.findChildViewById(view, R.id.loopViewPager);
        if (carouselViewPager2 != null) {
            i2 = R.id.onlyOne;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.onlyOne);
            if (frameLayout != null) {
                i2 = R.id.point_group;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.point_group);
                if (linearLayout != null) {
                    return new vt((RelativeLayout) view, carouselViewPager2, frameLayout, linearLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static vt c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static vt d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.layout_live_hot_header_view, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f25919a;
    }
}
