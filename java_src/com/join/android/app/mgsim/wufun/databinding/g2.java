package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.swiperefresh.SwipeRefresh;
/* compiled from: ActivityTestScroolAcitivityBinding.java */
/* loaded from: classes3.dex */
public final class g2 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final CoordinatorLayout f20282a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final AppBarLayout f20283b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final CollapsingToolbarLayout f20284c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final FloatingActionButton f20285d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final CoordinatorLayout f20286e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final XRecyclerView f20287f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final SwipeRefresh f20288g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ImageView f20289h;

    private g2(@NonNull CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout, @NonNull CollapsingToolbarLayout collapsingToolbarLayout, @NonNull FloatingActionButton floatingActionButton, @NonNull CoordinatorLayout coordinatorLayout2, @NonNull XRecyclerView xRecyclerView, @NonNull SwipeRefresh swipeRefresh, @NonNull ImageView imageView) {
        this.f20282a = coordinatorLayout;
        this.f20283b = appBarLayout;
        this.f20284c = collapsingToolbarLayout;
        this.f20285d = floatingActionButton;
        this.f20286e = coordinatorLayout2;
        this.f20287f = xRecyclerView;
        this.f20288g = swipeRefresh;
        this.f20289h = imageView;
    }

    @NonNull
    public static g2 a(@NonNull View view) {
        int i2 = R.id.appbar;
        AppBarLayout appBarLayout = (AppBarLayout) ViewBindings.findChildViewById(view, R.id.appbar);
        if (appBarLayout != null) {
            i2 = R.id.colltoobar;
            CollapsingToolbarLayout collapsingToolbarLayout = (CollapsingToolbarLayout) ViewBindings.findChildViewById(view, R.id.colltoobar);
            if (collapsingToolbarLayout != null) {
                i2 = R.id.fab;
                FloatingActionButton floatingActionButton = (FloatingActionButton) ViewBindings.findChildViewById(view, R.id.fab);
                if (floatingActionButton != null) {
                    CoordinatorLayout coordinatorLayout = (CoordinatorLayout) view;
                    i2 = R.id.recyclerView;
                    XRecyclerView xRecyclerView = (XRecyclerView) ViewBindings.findChildViewById(view, R.id.recyclerView);
                    if (xRecyclerView != null) {
                        i2 = R.id.refreshx;
                        SwipeRefresh swipeRefresh = (SwipeRefresh) ViewBindings.findChildViewById(view, R.id.refreshx);
                        if (swipeRefresh != null) {
                            i2 = R.id.topImag;
                            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.topImag);
                            if (imageView != null) {
                                return new g2(coordinatorLayout, appBarLayout, collapsingToolbarLayout, floatingActionButton, coordinatorLayout, xRecyclerView, swipeRefresh, imageView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static g2 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static g2 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.activity_test_scrool_acitivity, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public CoordinatorLayout getRoot() {
        return this.f20282a;
    }
}
