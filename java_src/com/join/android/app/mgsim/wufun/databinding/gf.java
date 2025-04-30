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
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.ptr.PtrClassicFrameLayout;
/* compiled from: FindgameClassfyFragmentLayoutBinding.java */
/* loaded from: classes3.dex */
public final class gf implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f20439a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final XRecyclerView f20440b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final re f20441c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final PtrClassicFrameLayout f20442d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final yv f20443e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final RecyclerView f20444f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final XRecyclerView f20445g;

    private gf(@NonNull LinearLayout linearLayout, @NonNull XRecyclerView xRecyclerView, @NonNull re reVar, @NonNull PtrClassicFrameLayout ptrClassicFrameLayout, @NonNull yv yvVar, @NonNull RecyclerView recyclerView, @NonNull XRecyclerView xRecyclerView2) {
        this.f20439a = linearLayout;
        this.f20440b = xRecyclerView;
        this.f20441c = reVar;
        this.f20442d = ptrClassicFrameLayout;
        this.f20443e = yvVar;
        this.f20444f = recyclerView;
        this.f20445g = xRecyclerView2;
    }

    @NonNull
    public static gf a(@NonNull View view) {
        int i2 = R.id.dataList;
        XRecyclerView xRecyclerView = (XRecyclerView) ViewBindings.findChildViewById(view, R.id.dataList);
        if (xRecyclerView != null) {
            i2 = R.id.failedLayoutMain;
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
                        i2 = R.id.tabLayout;
                        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.tabLayout);
                        if (recyclerView != null) {
                            i2 = R.id.typeList;
                            XRecyclerView xRecyclerView2 = (XRecyclerView) ViewBindings.findChildViewById(view, R.id.typeList);
                            if (xRecyclerView2 != null) {
                                return new gf((LinearLayout) view, xRecyclerView, a4, ptrClassicFrameLayout, a5, recyclerView, xRecyclerView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static gf c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static gf d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.findgame_classfy_fragment_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f20439a;
    }
}
