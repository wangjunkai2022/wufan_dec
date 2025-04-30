package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: LayoutSimulatorNewGameBinding.java */
/* loaded from: classes3.dex */
public final class ou implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f23357a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f23358b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final RecyclerView f23359c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f23360d;

    private ou(@NonNull ConstraintLayout constraintLayout, @NonNull LinearLayout linearLayout, @NonNull RecyclerView recyclerView, @NonNull TextView textView) {
        this.f23357a = constraintLayout;
        this.f23358b = linearLayout;
        this.f23359c = recyclerView;
        this.f23360d = textView;
    }

    @NonNull
    public static ou a(@NonNull View view) {
        int i2 = R.id.llMore;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.llMore);
        if (linearLayout != null) {
            i2 = R.id.rvNewGame;
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rvNewGame);
            if (recyclerView != null) {
                i2 = R.id.tvTitle;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tvTitle);
                if (textView != null) {
                    return new ou((ConstraintLayout) view, linearLayout, recyclerView, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static ou c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ou d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.layout_simulator_new_game, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f23357a;
    }
}
