package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ShopfragmetItemBinding.java */
/* loaded from: classes3.dex */
public final class mb0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f22458a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final RecyclerView f22459b;

    private mb0(@NonNull LinearLayout linearLayout, @NonNull RecyclerView recyclerView) {
        this.f22458a = linearLayout;
        this.f22459b = recyclerView;
    }

    @NonNull
    public static mb0 a(@NonNull View view) {
        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rcy);
        if (recyclerView != null) {
            return new mb0((LinearLayout) view, recyclerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.rcy)));
    }

    @NonNull
    public static mb0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static mb0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.shopfragmet_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f22458a;
    }
}
