package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.TabPageIndicator;
/* compiled from: ActivityGameLocalBinding.java */
/* loaded from: classes3.dex */
public final class g0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f20263a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f20264b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final View f20265c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ViewPager f20266d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TabPageIndicator f20267e;

    private g0(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull View view, @NonNull ViewPager viewPager, @NonNull TabPageIndicator tabPageIndicator) {
        this.f20263a = linearLayout;
        this.f20264b = linearLayout2;
        this.f20265c = view;
        this.f20266d = viewPager;
        this.f20267e = tabPageIndicator;
    }

    @NonNull
    public static g0 a(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        int i2 = R.id.lineTop;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.lineTop);
        if (findChildViewById != null) {
            i2 = R.id.mViewpagerV4;
            ViewPager viewPager = (ViewPager) ViewBindings.findChildViewById(view, R.id.mViewpagerV4);
            if (viewPager != null) {
                i2 = R.id.pageIndicator;
                TabPageIndicator tabPageIndicator = (TabPageIndicator) ViewBindings.findChildViewById(view, R.id.pageIndicator);
                if (tabPageIndicator != null) {
                    return new g0(linearLayout, linearLayout, findChildViewById, viewPager, tabPageIndicator);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static g0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static g0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.activity_game_local, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f20263a;
    }
}
