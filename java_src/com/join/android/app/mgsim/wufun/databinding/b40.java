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
/* compiled from: ModgameModtabFragmentLayoutBinding.java */
/* loaded from: classes3.dex */
public final class b40 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f18382a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final RecyclerView f18383b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final RecyclerView f18384c;

    private b40(@NonNull LinearLayout linearLayout, @NonNull RecyclerView recyclerView, @NonNull RecyclerView recyclerView2) {
        this.f18382a = linearLayout;
        this.f18383b = recyclerView;
        this.f18384c = recyclerView2;
    }

    @NonNull
    public static b40 a(@NonNull View view) {
        int i2 = R.id.rv_cheat_list;
        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_cheat_list);
        if (recyclerView != null) {
            i2 = R.id.rv_cheat_type;
            RecyclerView recyclerView2 = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_cheat_type);
            if (recyclerView2 != null) {
                return new b40((LinearLayout) view, recyclerView, recyclerView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static b40 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static b40 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.modgame_modtab_fragment_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f18382a;
    }
}
