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
/* compiled from: FragmentGameDetailModCloudViewpagerBinding.java */
/* loaded from: classes3.dex */
public final class sg implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f24860a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final RecyclerView f24861b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final NoScrollViewPager f24862c;

    private sg(@NonNull ConstraintLayout constraintLayout, @NonNull RecyclerView recyclerView, @NonNull NoScrollViewPager noScrollViewPager) {
        this.f24860a = constraintLayout;
        this.f24861b = recyclerView;
        this.f24862c = noScrollViewPager;
    }

    @NonNull
    public static sg a(@NonNull View view) {
        int i2 = R.id.subTabList;
        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.subTabList);
        if (recyclerView != null) {
            i2 = R.id.viewpager;
            NoScrollViewPager noScrollViewPager = (NoScrollViewPager) ViewBindings.findChildViewById(view, R.id.viewpager);
            if (noScrollViewPager != null) {
                return new sg((ConstraintLayout) view, recyclerView, noScrollViewPager);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static sg c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static sg d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.fragment_game_detail_mod_cloud_viewpager, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f24860a;
    }
}
