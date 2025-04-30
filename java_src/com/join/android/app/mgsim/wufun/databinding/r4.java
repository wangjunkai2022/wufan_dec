package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;
import com.join.mgps.ptr.PtrClassicFrameLayout;
/* compiled from: CategoryCollectionRankBinding.java */
/* loaded from: classes3.dex */
public final class r4 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f24200a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final PtrClassicFrameLayout f24201b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final XListView2 f24202c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final qc0 f24203d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final View f24204e;

    private r4(@NonNull LinearLayout linearLayout, @NonNull PtrClassicFrameLayout ptrClassicFrameLayout, @NonNull XListView2 xListView2, @NonNull qc0 qc0Var, @NonNull View view) {
        this.f24200a = linearLayout;
        this.f24201b = ptrClassicFrameLayout;
        this.f24202c = xListView2;
        this.f24203d = qc0Var;
        this.f24204e = view;
    }

    @NonNull
    public static r4 a(@NonNull View view) {
        int i2 = R.id.mPtrFrame;
        PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(view, R.id.mPtrFrame);
        if (ptrClassicFrameLayout != null) {
            i2 = R.id.rankListView;
            XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(view, R.id.rankListView);
            if (xListView2 != null) {
                i2 = R.id.title_bar_layout;
                View findChildViewById = ViewBindings.findChildViewById(view, R.id.title_bar_layout);
                if (findChildViewById != null) {
                    qc0 a4 = qc0.a(findChildViewById);
                    i2 = R.id.viewBg;
                    View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.viewBg);
                    if (findChildViewById2 != null) {
                        return new r4((LinearLayout) view, ptrClassicFrameLayout, xListView2, a4, findChildViewById2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static r4 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static r4 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.category_collection_rank, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f24200a;
    }
}
