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
/* compiled from: LayoutSimulatorClassicGameBinding.java */
/* loaded from: classes3.dex */
public final class lu implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f22211a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f22212b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final RecyclerView f22213c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f22214d;

    private lu(@NonNull ConstraintLayout constraintLayout, @NonNull LinearLayout linearLayout, @NonNull RecyclerView recyclerView, @NonNull TextView textView) {
        this.f22211a = constraintLayout;
        this.f22212b = linearLayout;
        this.f22213c = recyclerView;
        this.f22214d = textView;
    }

    @NonNull
    public static lu a(@NonNull View view) {
        int i2 = R.id.llMore;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.llMore);
        if (linearLayout != null) {
            i2 = R.id.rvClassicGame;
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rvClassicGame);
            if (recyclerView != null) {
                i2 = R.id.tvTitle;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tvTitle);
                if (textView != null) {
                    return new lu((ConstraintLayout) view, linearLayout, recyclerView, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static lu c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static lu d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.layout_simulator_classic_game, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f22211a;
    }
}
