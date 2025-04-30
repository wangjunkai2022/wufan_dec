package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.component.xrecyclerview.XQuickRecyclerView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: FragmentSearchGameListBinding.java */
/* loaded from: classes3.dex */
public final class zh implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f27233a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final XQuickRecyclerView f27234b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final xz f27235c;

    private zh(@NonNull ConstraintLayout constraintLayout, @NonNull XQuickRecyclerView xQuickRecyclerView, @NonNull xz xzVar) {
        this.f27233a = constraintLayout;
        this.f27234b = xQuickRecyclerView;
        this.f27235c = xzVar;
    }

    @NonNull
    public static zh a(@NonNull View view) {
        int i2 = R.id.rv_list_data;
        XQuickRecyclerView xQuickRecyclerView = (XQuickRecyclerView) ViewBindings.findChildViewById(view, R.id.rv_list_data);
        if (xQuickRecyclerView != null) {
            i2 = R.id.v_no_data;
            View findChildViewById = ViewBindings.findChildViewById(view, R.id.v_no_data);
            if (findChildViewById != null) {
                return new zh((ConstraintLayout) view, xQuickRecyclerView, xz.a(findChildViewById));
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static zh c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static zh d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.fragment_search_game_list, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f27233a;
    }
}
