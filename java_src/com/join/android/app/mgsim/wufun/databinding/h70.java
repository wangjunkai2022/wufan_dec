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
import com.join.mgps.customview.HorizontalRecyclerView;
/* compiled from: PapamainInterstingMidleLayout1Binding.java */
/* loaded from: classes3.dex */
public final class h70 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f20699a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final HorizontalRecyclerView f20700b;

    private h70(@NonNull RelativeLayout relativeLayout, @NonNull HorizontalRecyclerView horizontalRecyclerView) {
        this.f20699a = relativeLayout;
        this.f20700b = horizontalRecyclerView;
    }

    @NonNull
    public static h70 a(@NonNull View view) {
        HorizontalRecyclerView horizontalRecyclerView = (HorizontalRecyclerView) ViewBindings.findChildViewById(view, R.id.hrecyclerview);
        if (horizontalRecyclerView != null) {
            return new h70((RelativeLayout) view, horizontalRecyclerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.hrecyclerview)));
    }

    @NonNull
    public static h70 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static h70 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.papamain_intersting_midle_layout1, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f20699a;
    }
}
