package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.ptr.PtrClassicFrameLayout;
/* compiled from: FragmentRankItemV2Binding.java */
/* loaded from: classes3.dex */
public final class xh implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f26586a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final RecyclerView f26587b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final PtrClassicFrameLayout f26588c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final RelativeLayout f26589d;

    private xh(@NonNull RelativeLayout relativeLayout, @NonNull RecyclerView recyclerView, @NonNull PtrClassicFrameLayout ptrClassicFrameLayout, @NonNull RelativeLayout relativeLayout2) {
        this.f26586a = relativeLayout;
        this.f26587b = recyclerView;
        this.f26588c = ptrClassicFrameLayout;
        this.f26589d = relativeLayout2;
    }

    @NonNull
    public static xh a(@NonNull View view) {
        int i2 = R.id.classifyListView;
        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.classifyListView);
        if (recyclerView != null) {
            i2 = R.id.mPtrFrame;
            PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(view, R.id.mPtrFrame);
            if (ptrClassicFrameLayout != null) {
                RelativeLayout relativeLayout = (RelativeLayout) view;
                return new xh(relativeLayout, recyclerView, ptrClassicFrameLayout, relativeLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static xh c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static xh d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.fragment_rank_item_v2, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f26586a;
    }
}
