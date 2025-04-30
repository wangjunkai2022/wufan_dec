package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
import me.relex.circleindicator.CircleIndicator;
/* compiled from: AppdownFinishActivityBinding.java */
/* loaded from: classes3.dex */
public final class e3 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f19569a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final CircleIndicator f19570b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final RelativeLayout f19571c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ViewPager f19572d;

    private e3(@NonNull RelativeLayout relativeLayout, @NonNull CircleIndicator circleIndicator, @NonNull RelativeLayout relativeLayout2, @NonNull ViewPager viewPager) {
        this.f19569a = relativeLayout;
        this.f19570b = circleIndicator;
        this.f19571c = relativeLayout2;
        this.f19572d = viewPager;
    }

    @NonNull
    public static e3 a(@NonNull View view) {
        int i2 = R.id.indicator;
        CircleIndicator circleIndicator = (CircleIndicator) ViewBindings.findChildViewById(view, R.id.indicator);
        if (circleIndicator != null) {
            RelativeLayout relativeLayout = (RelativeLayout) view;
            ViewPager viewPager = (ViewPager) ViewBindings.findChildViewById(view, R.id.viewPager);
            if (viewPager != null) {
                return new e3(relativeLayout, circleIndicator, relativeLayout, viewPager);
            }
            i2 = R.id.viewPager;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static e3 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static e3 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.appdown_finish_activity, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f19569a;
    }
}
