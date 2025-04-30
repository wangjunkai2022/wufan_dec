package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import in.srain.cube.views.GridViewWithHeaderAndFooter;
/* compiled from: MgMainFightTopLayoutBinding.java */
/* loaded from: classes3.dex */
public final class z10 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f27098a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final GridViewWithHeaderAndFooter f27099b;

    private z10(@NonNull RelativeLayout relativeLayout, @NonNull GridViewWithHeaderAndFooter gridViewWithHeaderAndFooter) {
        this.f27098a = relativeLayout;
        this.f27099b = gridViewWithHeaderAndFooter;
    }

    @NonNull
    public static z10 a(@NonNull View view) {
        GridViewWithHeaderAndFooter gridViewWithHeaderAndFooter = (GridViewWithHeaderAndFooter) ViewBindings.findChildViewById(view, R.id.gridViewWithHeaderAndFooter);
        if (gridViewWithHeaderAndFooter != null) {
            return new z10((RelativeLayout) view, gridViewWithHeaderAndFooter);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.gridViewWithHeaderAndFooter)));
    }

    @NonNull
    public static z10 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static z10 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_main_fight_top_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f27098a;
    }
}
