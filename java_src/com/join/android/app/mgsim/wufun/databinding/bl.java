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
/* compiled from: GamedetailItemTipslayoutV1Binding.java */
/* loaded from: classes3.dex */
public final class bl implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f18553a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f18554b;

    private bl(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2) {
        this.f18553a = linearLayout;
        this.f18554b = linearLayout2;
    }

    @NonNull
    public static bl a(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.tipslayout);
        if (linearLayout != null) {
            return new bl((LinearLayout) view, linearLayout);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.tipslayout)));
    }

    @NonNull
    public static bl c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static bl d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.gamedetail_item_tipslayout_v1, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f18553a;
    }
}
