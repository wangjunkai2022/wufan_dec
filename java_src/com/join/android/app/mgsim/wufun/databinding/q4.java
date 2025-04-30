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
/* compiled from: CategoryCollectionBreakBinding.java */
/* loaded from: classes3.dex */
public final class q4 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f23825a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final XListView2 f23826b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final PtrClassicFrameLayout f23827c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final qc0 f23828d;

    private q4(@NonNull LinearLayout linearLayout, @NonNull XListView2 xListView2, @NonNull PtrClassicFrameLayout ptrClassicFrameLayout, @NonNull qc0 qc0Var) {
        this.f23825a = linearLayout;
        this.f23826b = xListView2;
        this.f23827c = ptrClassicFrameLayout;
        this.f23828d = qc0Var;
    }

    @NonNull
    public static q4 a(@NonNull View view) {
        int i2 = R.id.breakListView;
        XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(view, R.id.breakListView);
        if (xListView2 != null) {
            i2 = R.id.mPtrFrame;
            PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(view, R.id.mPtrFrame);
            if (ptrClassicFrameLayout != null) {
                i2 = R.id.title_bar_layout;
                View findChildViewById = ViewBindings.findChildViewById(view, R.id.title_bar_layout);
                if (findChildViewById != null) {
                    return new q4((LinearLayout) view, xListView2, ptrClassicFrameLayout, qc0.a(findChildViewById));
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static q4 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static q4 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.category_collection_break, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f23825a;
    }
}
