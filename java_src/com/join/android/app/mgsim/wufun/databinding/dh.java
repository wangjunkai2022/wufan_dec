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
/* compiled from: FragmentModIntroductionListBinding.java */
/* loaded from: classes3.dex */
public final class dh implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f19368a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final RecyclerView f19369b;

    private dh(@NonNull LinearLayout linearLayout, @NonNull RecyclerView recyclerView) {
        this.f19368a = linearLayout;
        this.f19369b = recyclerView;
    }

    @NonNull
    public static dh a(@NonNull View view) {
        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_list_data);
        if (recyclerView != null) {
            return new dh((LinearLayout) view, recyclerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.rv_list_data)));
    }

    @NonNull
    public static dh c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static dh d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.fragment_mod_introduction_list, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f19368a;
    }
}
