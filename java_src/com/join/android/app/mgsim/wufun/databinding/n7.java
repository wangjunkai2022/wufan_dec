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
/* compiled from: CollectionSixHeaderBinding.java */
/* loaded from: classes3.dex */
public final class n7 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f22779a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final RelativeLayout f22780b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ViewPager f22781c;

    private n7(@NonNull RelativeLayout relativeLayout, @NonNull RelativeLayout relativeLayout2, @NonNull ViewPager viewPager) {
        this.f22779a = relativeLayout;
        this.f22780b = relativeLayout2;
        this.f22781c = viewPager;
    }

    @NonNull
    public static n7 a(@NonNull View view) {
        RelativeLayout relativeLayout = (RelativeLayout) view;
        ViewPager viewPager = (ViewPager) ViewBindings.findChildViewById(view, R.id.view_pager);
        if (viewPager != null) {
            return new n7(relativeLayout, relativeLayout, viewPager);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.view_pager)));
    }

    @NonNull
    public static n7 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static n7 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.collection_six_header, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f22779a;
    }
}
