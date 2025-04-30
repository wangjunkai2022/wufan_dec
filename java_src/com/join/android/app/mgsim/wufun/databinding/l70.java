package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.HorizontalRecyclerView;
/* compiled from: PapamainItemRecommendStyle2Binding.java */
/* loaded from: classes3.dex */
public final class l70 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final FrameLayout f22038a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final HorizontalRecyclerView f22039b;

    private l70(@NonNull FrameLayout frameLayout, @NonNull HorizontalRecyclerView horizontalRecyclerView) {
        this.f22038a = frameLayout;
        this.f22039b = horizontalRecyclerView;
    }

    @NonNull
    public static l70 a(@NonNull View view) {
        HorizontalRecyclerView horizontalRecyclerView = (HorizontalRecyclerView) ViewBindings.findChildViewById(view, R.id.recyclerView);
        if (horizontalRecyclerView != null) {
            return new l70((FrameLayout) view, horizontalRecyclerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.recyclerView)));
    }

    @NonNull
    public static l70 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static l70 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.papamain_item_recommend_style2, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public FrameLayout getRoot() {
        return this.f22038a;
    }
}
