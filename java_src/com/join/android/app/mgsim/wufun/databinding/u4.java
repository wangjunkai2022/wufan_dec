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
/* compiled from: CategroyDetialItemFragmentBinding.java */
/* loaded from: classes3.dex */
public final class u4 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f25398a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final re f25399b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final yv f25400c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final w50 f25401d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final XRecyclerView f25402e;

    private u4(@NonNull ConstraintLayout constraintLayout, @NonNull re reVar, @NonNull yv yvVar, @NonNull w50 w50Var, @NonNull XRecyclerView xRecyclerView) {
        this.f25398a = constraintLayout;
        this.f25399b = reVar;
        this.f25400c = yvVar;
        this.f25401d = w50Var;
        this.f25402e = xRecyclerView;
    }

    @NonNull
    public static u4 a(@NonNull View view) {
        int i2 = R.id.failedLayoutMain;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.failedLayoutMain);
        if (findChildViewById != null) {
            re a4 = re.a(findChildViewById);
            i2 = R.id.loadingLayoutMain;
            View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.loadingLayoutMain);
            if (findChildViewById2 != null) {
                yv a5 = yv.a(findChildViewById2);
                i2 = R.id.noData;
                View findChildViewById3 = ViewBindings.findChildViewById(view, R.id.noData);
                if (findChildViewById3 != null) {
                    w50 a6 = w50.a(findChildViewById3);
                    i2 = R.id.recycleView;
                    XRecyclerView xRecyclerView = (XRecyclerView) ViewBindings.findChildViewById(view, R.id.recycleView);
                    if (xRecyclerView != null) {
                        return new u4((ConstraintLayout) view, a4, a5, a6, xRecyclerView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static u4 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static u4 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.categroy_detial_item_fragment, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f25398a;
    }
}
