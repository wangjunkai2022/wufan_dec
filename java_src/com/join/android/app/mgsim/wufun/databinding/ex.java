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
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.SlidingTabLayout1;
/* compiled from: MgForumAllActivityBinding.java */
/* loaded from: classes3.dex */
public final class ex implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f19913a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final j00 f19914b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final View f19915c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ForumLoadingView f19916d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ViewPager f19917e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final SlidingTabLayout1 f19918f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final View f19919g;

    private ex(@NonNull RelativeLayout relativeLayout, @NonNull j00 j00Var, @NonNull View view, @NonNull ForumLoadingView forumLoadingView, @NonNull ViewPager viewPager, @NonNull SlidingTabLayout1 slidingTabLayout1, @NonNull View view2) {
        this.f19913a = relativeLayout;
        this.f19914b = j00Var;
        this.f19915c = view;
        this.f19916d = forumLoadingView;
        this.f19917e = viewPager;
        this.f19918f = slidingTabLayout1;
        this.f19919g = view2;
    }

    @NonNull
    public static ex a(@NonNull View view) {
        int i2 = R.id.actionBar;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.actionBar);
        if (findChildViewById != null) {
            j00 a4 = j00.a(findChildViewById);
            i2 = R.id.lineTop;
            View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.lineTop);
            if (findChildViewById2 != null) {
                i2 = R.id.loadingView;
                ForumLoadingView forumLoadingView = (ForumLoadingView) ViewBindings.findChildViewById(view, R.id.loadingView);
                if (forumLoadingView != null) {
                    i2 = R.id.mPager;
                    ViewPager viewPager = (ViewPager) ViewBindings.findChildViewById(view, R.id.mPager);
                    if (viewPager != null) {
                        i2 = R.id.mTab;
                        SlidingTabLayout1 slidingTabLayout1 = (SlidingTabLayout1) ViewBindings.findChildViewById(view, R.id.mTab);
                        if (slidingTabLayout1 != null) {
                            i2 = R.id.viewBg;
                            View findChildViewById3 = ViewBindings.findChildViewById(view, R.id.viewBg);
                            if (findChildViewById3 != null) {
                                return new ex((RelativeLayout) view, a4, findChildViewById2, forumLoadingView, viewPager, slidingTabLayout1, findChildViewById3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static ex c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ex d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_all_activity, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f19913a;
    }
}
