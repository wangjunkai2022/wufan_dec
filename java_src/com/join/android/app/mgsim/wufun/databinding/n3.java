package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.LoadMoreRecyclerView;
/* compiled from: AtestfragmentLayoutBinding.java */
/* loaded from: classes3.dex */
public final class n3 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final FrameLayout f22717a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LoadMoreRecyclerView f22718b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SwipeRefreshLayout f22719c;

    private n3(@NonNull FrameLayout frameLayout, @NonNull LoadMoreRecyclerView loadMoreRecyclerView, @NonNull SwipeRefreshLayout swipeRefreshLayout) {
        this.f22717a = frameLayout;
        this.f22718b = loadMoreRecyclerView;
        this.f22719c = swipeRefreshLayout;
    }

    @NonNull
    public static n3 a(@NonNull View view) {
        int i2 = R.id.recycler_view;
        LoadMoreRecyclerView loadMoreRecyclerView = (LoadMoreRecyclerView) ViewBindings.findChildViewById(view, R.id.recycler_view);
        if (loadMoreRecyclerView != null) {
            i2 = R.id.refresh_layout;
            SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) ViewBindings.findChildViewById(view, R.id.refresh_layout);
            if (swipeRefreshLayout != null) {
                return new n3((FrameLayout) view, loadMoreRecyclerView, swipeRefreshLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static n3 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static n3 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.atestfragment_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public FrameLayout getRoot() {
        return this.f22717a;
    }
}
