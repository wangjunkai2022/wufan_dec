package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.HorizontalRecyclerView;
/* compiled from: LayoutSimulatorTagGameBinding.java */
/* loaded from: classes3.dex */
public final class pu implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f23738a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final HorizontalRecyclerView f23739b;

    private pu(@NonNull ConstraintLayout constraintLayout, @NonNull HorizontalRecyclerView horizontalRecyclerView) {
        this.f23738a = constraintLayout;
        this.f23739b = horizontalRecyclerView;
    }

    @NonNull
    public static pu a(@NonNull View view) {
        HorizontalRecyclerView horizontalRecyclerView = (HorizontalRecyclerView) ViewBindings.findChildViewById(view, R.id.recyclerview);
        if (horizontalRecyclerView != null) {
            return new pu((ConstraintLayout) view, horizontalRecyclerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.recyclerview)));
    }

    @NonNull
    public static pu c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static pu d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.layout_simulator_tag_game, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f23738a;
    }
}
