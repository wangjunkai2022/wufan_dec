package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.widget.NestedScrollView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.flyco.tablayout.SlidingTabLayout;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ViewPagerSlide;
/* compiled from: DiscoveryFragmentLayoutBinding.java */
/* loaded from: classes3.dex */
public final class od implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f23232a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final AppBarLayout f23233b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final NestedScrollView f23234c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final CollapsingToolbarLayout f23235d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final CoordinatorLayout f23236e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f23237f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final SlidingTabLayout f23238g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final Toolbar f23239h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f23240i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final ImageView f23241j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final ViewPagerSlide f23242k;

    private od(@NonNull RelativeLayout relativeLayout, @NonNull AppBarLayout appBarLayout, @NonNull NestedScrollView nestedScrollView, @NonNull CollapsingToolbarLayout collapsingToolbarLayout, @NonNull CoordinatorLayout coordinatorLayout, @NonNull TextView textView, @NonNull SlidingTabLayout slidingTabLayout, @NonNull Toolbar toolbar, @NonNull TextView textView2, @NonNull ImageView imageView, @NonNull ViewPagerSlide viewPagerSlide) {
        this.f23232a = relativeLayout;
        this.f23233b = appBarLayout;
        this.f23234c = nestedScrollView;
        this.f23235d = collapsingToolbarLayout;
        this.f23236e = coordinatorLayout;
        this.f23237f = textView;
        this.f23238g = slidingTabLayout;
        this.f23239h = toolbar;
        this.f23240i = textView2;
        this.f23241j = imageView;
        this.f23242k = viewPagerSlide;
    }

    @NonNull
    public static od a(@NonNull View view) {
        int i2 = R.id.appbar;
        AppBarLayout appBarLayout = (AppBarLayout) ViewBindings.findChildViewById(view, R.id.appbar);
        if (appBarLayout != null) {
            i2 = R.id.bottomNull;
            NestedScrollView nestedScrollView = (NestedScrollView) ViewBindings.findChildViewById(view, R.id.bottomNull);
            if (nestedScrollView != null) {
                i2 = R.id.colltoobar;
                CollapsingToolbarLayout collapsingToolbarLayout = (CollapsingToolbarLayout) ViewBindings.findChildViewById(view, R.id.colltoobar);
                if (collapsingToolbarLayout != null) {
                    i2 = R.id.mPtrFrame;
                    CoordinatorLayout coordinatorLayout = (CoordinatorLayout) ViewBindings.findChildViewById(view, R.id.mPtrFrame);
                    if (coordinatorLayout != null) {
                        i2 = R.id.nulltext;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.nulltext);
                        if (textView != null) {
                            i2 = R.id.tableLayout;
                            SlidingTabLayout slidingTabLayout = (SlidingTabLayout) ViewBindings.findChildViewById(view, R.id.tableLayout);
                            if (slidingTabLayout != null) {
                                i2 = R.id.toolbar;
                                Toolbar toolbar = (Toolbar) ViewBindings.findChildViewById(view, R.id.toolbar);
                                if (toolbar != null) {
                                    i2 = R.id.topBack;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.topBack);
                                    if (textView2 != null) {
                                        i2 = R.id.topImag;
                                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.topImag);
                                        if (imageView != null) {
                                            i2 = R.id.viewpager;
                                            ViewPagerSlide viewPagerSlide = (ViewPagerSlide) ViewBindings.findChildViewById(view, R.id.viewpager);
                                            if (viewPagerSlide != null) {
                                                return new od((RelativeLayout) view, appBarLayout, nestedScrollView, collapsingToolbarLayout, coordinatorLayout, textView, slidingTabLayout, toolbar, textView2, imageView, viewPagerSlide);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static od c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static od d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.discovery_fragment_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f23232a;
    }
}
