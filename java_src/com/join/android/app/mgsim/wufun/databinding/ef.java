package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.ptr.PtrClassicFrameLayout;
/* compiled from: FindgameAllfragemntLayoutBinding.java */
/* loaded from: classes3.dex */
public final class ef implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f19755a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final re f19756b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final PtrClassicFrameLayout f19757c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final yv f19758d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final XRecyclerView f19759e;

    private ef(@NonNull ConstraintLayout constraintLayout, @NonNull re reVar, @NonNull PtrClassicFrameLayout ptrClassicFrameLayout, @NonNull yv yvVar, @NonNull XRecyclerView xRecyclerView) {
        this.f19755a = constraintLayout;
        this.f19756b = reVar;
        this.f19757c = ptrClassicFrameLayout;
        this.f19758d = yvVar;
        this.f19759e = xRecyclerView;
    }

    @NonNull
    public static ef a(@NonNull View view) {
        int i2 = R.id.failedLayoutMain;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.failedLayoutMain);
        if (findChildViewById != null) {
            re a4 = re.a(findChildViewById);
            i2 = R.id.ll_main;
            PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(view, R.id.ll_main);
            if (ptrClassicFrameLayout != null) {
                i2 = R.id.loadingLayoutMain;
                View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.loadingLayoutMain);
                if (findChildViewById2 != null) {
                    yv a5 = yv.a(findChildViewById2);
                    i2 = R.id.recycleView;
                    XRecyclerView xRecyclerView = (XRecyclerView) ViewBindings.findChildViewById(view, R.id.recycleView);
                    if (xRecyclerView != null) {
                        return new ef((ConstraintLayout) view, a4, ptrClassicFrameLayout, a5, xRecyclerView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static ef c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ef d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.findgame_allfragemnt_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f19755a;
    }
}
