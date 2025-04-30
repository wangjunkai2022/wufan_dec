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
/* compiled from: CollectionBreakBinding.java */
/* loaded from: classes3.dex */
public final class h7 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f20696a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final XListView2 f20697b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final PtrClassicFrameLayout f20698c;

    private h7(@NonNull LinearLayout linearLayout, @NonNull XListView2 xListView2, @NonNull PtrClassicFrameLayout ptrClassicFrameLayout) {
        this.f20696a = linearLayout;
        this.f20697b = xListView2;
        this.f20698c = ptrClassicFrameLayout;
    }

    @NonNull
    public static h7 a(@NonNull View view) {
        int i2 = R.id.breakListView;
        XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(view, R.id.breakListView);
        if (xListView2 != null) {
            i2 = R.id.mPtrFrame;
            PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(view, R.id.mPtrFrame);
            if (ptrClassicFrameLayout != null) {
                return new h7((LinearLayout) view, xListView2, ptrClassicFrameLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static h7 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static h7 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.collection_break, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f20696a;
    }
}
