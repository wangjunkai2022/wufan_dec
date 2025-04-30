package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager.widget.ViewPager;
import com.flyco.tablayout.SlidingTabLayout;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ActivityMessageMainBinding.java */
/* loaded from: classes3.dex */
public final class z0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f27078a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f27079b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f27080c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final SlidingTabLayout f27081d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ViewPager f27082e;

    private z0(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull SlidingTabLayout slidingTabLayout, @NonNull ViewPager viewPager) {
        this.f27078a = linearLayout;
        this.f27079b = imageView;
        this.f27080c = imageView2;
        this.f27081d = slidingTabLayout;
        this.f27082e = viewPager;
    }

    @NonNull
    public static z0 a(@NonNull View view) {
        int i2 = R.id.back;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.back);
        if (imageView != null) {
            i2 = R.id.setting;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.setting);
            if (imageView2 != null) {
                i2 = R.id.tableLayout;
                SlidingTabLayout slidingTabLayout = (SlidingTabLayout) ViewBindings.findChildViewById(view, R.id.tableLayout);
                if (slidingTabLayout != null) {
                    i2 = R.id.viewPager;
                    ViewPager viewPager = (ViewPager) ViewBindings.findChildViewById(view, R.id.viewPager);
                    if (viewPager != null) {
                        return new z0((LinearLayout) view, imageView, imageView2, slidingTabLayout, viewPager);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static z0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static z0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.activity_message_main, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f27078a;
    }
}
