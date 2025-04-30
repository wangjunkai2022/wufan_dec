package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.swiperefresh.SwipeRefresh;
/* compiled from: DiscoveryTabFragmentLayoutBinding.java */
/* loaded from: classes3.dex */
public final class pd implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f23596a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final XRecyclerView f23597b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SwipeRefresh f23598c;

    private pd(@NonNull LinearLayout linearLayout, @NonNull XRecyclerView xRecyclerView, @NonNull SwipeRefresh swipeRefresh) {
        this.f23596a = linearLayout;
        this.f23597b = xRecyclerView;
        this.f23598c = swipeRefresh;
    }

    @NonNull
    public static pd a(@NonNull View view) {
        int i2 = R.id.recyclerView;
        XRecyclerView xRecyclerView = (XRecyclerView) ViewBindings.findChildViewById(view, R.id.recyclerView);
        if (xRecyclerView != null) {
            i2 = R.id.refreshx;
            SwipeRefresh swipeRefresh = (SwipeRefresh) ViewBindings.findChildViewById(view, R.id.refreshx);
            if (swipeRefresh != null) {
                return new pd((LinearLayout) view, xRecyclerView, swipeRefresh);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static pd c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static pd d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.discovery_tab_fragment_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f23596a;
    }
}
