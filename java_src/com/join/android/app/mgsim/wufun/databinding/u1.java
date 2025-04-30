package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.ptr.PtrClassicFrameLayout;
/* compiled from: ActivityPurchasedListBinding.java */
/* loaded from: classes3.dex */
public final class u1 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f25363a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ForumLoadingView f25364b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final PtrClassicFrameLayout f25365c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final XRecyclerView f25366d;

    private u1(@NonNull LinearLayout linearLayout, @NonNull ForumLoadingView forumLoadingView, @NonNull PtrClassicFrameLayout ptrClassicFrameLayout, @NonNull XRecyclerView xRecyclerView) {
        this.f25363a = linearLayout;
        this.f25364b = forumLoadingView;
        this.f25365c = ptrClassicFrameLayout;
        this.f25366d = xRecyclerView;
    }

    @NonNull
    public static u1 a(@NonNull View view) {
        int i2 = R.id.loadingView;
        ForumLoadingView forumLoadingView = (ForumLoadingView) ViewBindings.findChildViewById(view, R.id.loadingView);
        if (forumLoadingView != null) {
            i2 = R.id.mPtrFrame;
            PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(view, R.id.mPtrFrame);
            if (ptrClassicFrameLayout != null) {
                i2 = R.id.recyclerView;
                XRecyclerView xRecyclerView = (XRecyclerView) ViewBindings.findChildViewById(view, R.id.recyclerView);
                if (xRecyclerView != null) {
                    return new u1((LinearLayout) view, forumLoadingView, ptrClassicFrameLayout, xRecyclerView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static u1 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static u1 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.activity_purchased_list, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f25363a;
    }
}
