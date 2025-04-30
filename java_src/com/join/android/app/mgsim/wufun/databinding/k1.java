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
import com.join.mgps.customview.InterceptEventViewPager;
import com.join.mgps.customview.TabPageIndicator;
/* compiled from: ActivityPapaStandaloneBinding.java */
/* loaded from: classes3.dex */
public final class k1 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f21616a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final View f21617b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TabPageIndicator f21618c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final sc0 f21619d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final InterceptEventViewPager f21620e;

    private k1(@NonNull LinearLayout linearLayout, @NonNull View view, @NonNull TabPageIndicator tabPageIndicator, @NonNull sc0 sc0Var, @NonNull InterceptEventViewPager interceptEventViewPager) {
        this.f21616a = linearLayout;
        this.f21617b = view;
        this.f21618c = tabPageIndicator;
        this.f21619d = sc0Var;
        this.f21620e = interceptEventViewPager;
    }

    @NonNull
    public static k1 a(@NonNull View view) {
        int i2 = R.id.line;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.line);
        if (findChildViewById != null) {
            i2 = R.id.pageIndicator;
            TabPageIndicator tabPageIndicator = (TabPageIndicator) ViewBindings.findChildViewById(view, R.id.pageIndicator);
            if (tabPageIndicator != null) {
                i2 = R.id.title_bar_layout;
                View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.title_bar_layout);
                if (findChildViewById2 != null) {
                    sc0 a4 = sc0.a(findChildViewById2);
                    i2 = R.id.viewPager;
                    InterceptEventViewPager interceptEventViewPager = (InterceptEventViewPager) ViewBindings.findChildViewById(view, R.id.viewPager);
                    if (interceptEventViewPager != null) {
                        return new k1((LinearLayout) view, findChildViewById, tabPageIndicator, a4, interceptEventViewPager);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static k1 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static k1 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.activity_papa_standalone, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f21616a;
    }
}
