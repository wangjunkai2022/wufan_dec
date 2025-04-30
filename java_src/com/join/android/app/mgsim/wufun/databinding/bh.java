package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.NoScrollViewPager;
/* compiled from: FragmentModGameCloudViewpagerBinding.java */
/* loaded from: classes3.dex */
public final class bh implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f18532a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final RecyclerView f18533b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final NoScrollViewPager f18534c;

    private bh(@NonNull ConstraintLayout constraintLayout, @NonNull RecyclerView recyclerView, @NonNull NoScrollViewPager noScrollViewPager) {
        this.f18532a = constraintLayout;
        this.f18533b = recyclerView;
        this.f18534c = noScrollViewPager;
    }

    @NonNull
    public static bh a(@NonNull View view) {
        int i2 = R.id.subTabList;
        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.subTabList);
        if (recyclerView != null) {
            i2 = R.id.viewpager;
            NoScrollViewPager noScrollViewPager = (NoScrollViewPager) ViewBindings.findChildViewById(view, R.id.viewpager);
            if (noScrollViewPager != null) {
                return new bh((ConstraintLayout) view, recyclerView, noScrollViewPager);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static bh c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static bh d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.fragment_mod_game_cloud_viewpager, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f18532a;
    }
}
