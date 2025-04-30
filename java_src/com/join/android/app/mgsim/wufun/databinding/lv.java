package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.TabPageIndicator;
/* compiled from: LiveCharmForPayLayoutBinding.java */
/* loaded from: classes3.dex */
public final class lv implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f22215a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final View f22216b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TabPageIndicator f22217c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f22218d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ViewPager f22219e;

    private lv(@NonNull LinearLayout linearLayout, @NonNull View view, @NonNull TabPageIndicator tabPageIndicator, @NonNull TextView textView, @NonNull ViewPager viewPager) {
        this.f22215a = linearLayout;
        this.f22216b = view;
        this.f22217c = tabPageIndicator;
        this.f22218d = textView;
        this.f22219e = viewPager;
    }

    @NonNull
    public static lv a(@NonNull View view) {
        int i2 = R.id.line;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.line);
        if (findChildViewById != null) {
            i2 = R.id.pageIndicator;
            TabPageIndicator tabPageIndicator = (TabPageIndicator) ViewBindings.findChildViewById(view, R.id.pageIndicator);
            if (tabPageIndicator != null) {
                i2 = R.id.payNow;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.payNow);
                if (textView != null) {
                    i2 = R.id.viewPager;
                    ViewPager viewPager = (ViewPager) ViewBindings.findChildViewById(view, R.id.viewPager);
                    if (viewPager != null) {
                        return new lv((LinearLayout) view, findChildViewById, tabPageIndicator, textView, viewPager);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static lv c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static lv d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.live_charm_for_pay_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f22215a;
    }
}
