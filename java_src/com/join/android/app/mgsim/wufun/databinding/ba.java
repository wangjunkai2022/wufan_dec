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
/* compiled from: DetialMoreImformationLayoutBinding.java */
/* loaded from: classes3.dex */
public final class ba implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f18456a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final PtrClassicFrameLayout f18457b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final XListView2 f18458c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final qc0 f18459d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final View f18460e;

    private ba(@NonNull LinearLayout linearLayout, @NonNull PtrClassicFrameLayout ptrClassicFrameLayout, @NonNull XListView2 xListView2, @NonNull qc0 qc0Var, @NonNull View view) {
        this.f18456a = linearLayout;
        this.f18457b = ptrClassicFrameLayout;
        this.f18458c = xListView2;
        this.f18459d = qc0Var;
        this.f18460e = view;
    }

    @NonNull
    public static ba a(@NonNull View view) {
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
                        return new ba((LinearLayout) view, ptrClassicFrameLayout, xListView2, a4, findChildViewById2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static ba c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ba d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.detial_more_imformation_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f18456a;
    }
}
