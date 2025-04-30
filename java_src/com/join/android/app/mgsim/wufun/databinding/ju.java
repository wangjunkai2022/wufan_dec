package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: LayoutSimulatorChangeGameBinding.java */
/* loaded from: classes3.dex */
public final class ju implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f21550a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final RecyclerView f21551b;

    private ju(@NonNull ConstraintLayout constraintLayout, @NonNull RecyclerView recyclerView) {
        this.f21550a = constraintLayout;
        this.f21551b = recyclerView;
    }

    @NonNull
    public static ju a(@NonNull View view) {
        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.recyclerview);
        if (recyclerView != null) {
            return new ju((ConstraintLayout) view, recyclerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.recyclerview)));
    }

    @NonNull
    public static ju c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ju d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.layout_simulator_change_game, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f21550a;
    }
}
