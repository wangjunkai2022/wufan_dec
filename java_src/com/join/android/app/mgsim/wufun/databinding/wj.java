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
import com.join.mgps.customview.ExpandLayout;
/* compiled from: GamedetailItemDescribV1Binding.java */
/* loaded from: classes3.dex */
public final class wj implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f26200a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ExpandLayout f26201b;

    private wj(@NonNull LinearLayout linearLayout, @NonNull ExpandLayout expandLayout) {
        this.f26200a = linearLayout;
        this.f26201b = expandLayout;
    }

    @NonNull
    public static wj a(@NonNull View view) {
        ExpandLayout expandLayout = (ExpandLayout) ViewBindings.findChildViewById(view, R.id.el_view);
        if (expandLayout != null) {
            return new wj((LinearLayout) view, expandLayout);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.el_view)));
    }

    @NonNull
    public static wj c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static wj d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.gamedetail_item_describ_v1, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f26200a;
    }
}
