package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import it.sephiroth.android.library.widget.HListView;
/* compiled from: GamedetailItemViewpageBinding.java */
/* loaded from: classes3.dex */
public final class jl implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f21499a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f21500b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final HListView f21501c;

    private jl(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull HListView hListView) {
        this.f21499a = linearLayout;
        this.f21500b = linearLayout2;
        this.f21501c = hListView;
    }

    @NonNull
    public static jl a(@NonNull View view) {
        int i2 = R.id.backLayout;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.backLayout);
        if (linearLayout != null) {
            i2 = R.id.screenListView;
            HListView hListView = (HListView) ViewBindings.findChildViewById(view, R.id.screenListView);
            if (hListView != null) {
                return new jl((LinearLayout) view, linearLayout, hListView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static jl c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static jl d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.gamedetail_item_viewpage, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f21499a;
    }
}
