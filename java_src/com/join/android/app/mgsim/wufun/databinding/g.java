package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.TabPageIndicator;
import com.join.mgps.customview.XListView2;
/* compiled from: ActivityArenaGamelistBinding.java */
/* loaded from: classes3.dex */
public final class g implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f20256a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final RelativeLayout f20257b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final View f20258c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final XListView2 f20259d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TabPageIndicator f20260e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final pc0 f20261f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ViewPager f20262g;

    private g(@NonNull LinearLayout linearLayout, @NonNull RelativeLayout relativeLayout, @NonNull View view, @NonNull XListView2 xListView2, @NonNull TabPageIndicator tabPageIndicator, @NonNull pc0 pc0Var, @NonNull ViewPager viewPager) {
        this.f20256a = linearLayout;
        this.f20257b = relativeLayout;
        this.f20258c = view;
        this.f20259d = xListView2;
        this.f20260e = tabPageIndicator;
        this.f20261f = pc0Var;
        this.f20262g = viewPager;
    }

    @NonNull
    public static g a(@NonNull View view) {
        int i2 = R.id.layout_others_list;
        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.layout_others_list);
        if (relativeLayout != null) {
            i2 = R.id.line;
            View findChildViewById = ViewBindings.findChildViewById(view, R.id.line);
            if (findChildViewById != null) {
                i2 = R.id.listview;
                XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(view, R.id.listview);
                if (xListView2 != null) {
                    i2 = R.id.pageIndicator;
                    TabPageIndicator tabPageIndicator = (TabPageIndicator) ViewBindings.findChildViewById(view, R.id.pageIndicator);
                    if (tabPageIndicator != null) {
                        i2 = R.id.title_bar_layout;
                        View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.title_bar_layout);
                        if (findChildViewById2 != null) {
                            pc0 a4 = pc0.a(findChildViewById2);
                            i2 = R.id.viewPager;
                            ViewPager viewPager = (ViewPager) ViewBindings.findChildViewById(view, R.id.viewPager);
                            if (viewPager != null) {
                                return new g((LinearLayout) view, relativeLayout, findChildViewById, xListView2, tabPageIndicator, a4, viewPager);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static g c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static g d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.activity_arena_gamelist, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f20256a;
    }
}
