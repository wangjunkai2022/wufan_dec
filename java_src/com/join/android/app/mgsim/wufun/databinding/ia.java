package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: DetialViewpagerLayoutBinding.java */
/* loaded from: classes3.dex */
public final class ia implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f21105a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f21106b;

    private ia(@NonNull LinearLayout linearLayout, @NonNull SimpleDraweeView simpleDraweeView) {
        this.f21105a = linearLayout;
        this.f21106b = simpleDraweeView;
    }

    @NonNull
    public static ia a(@NonNull View view) {
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.adImage);
        if (simpleDraweeView != null) {
            return new ia((LinearLayout) view, simpleDraweeView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.adImage)));
    }

    @NonNull
    public static ia c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ia d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.detial_viewpager_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f21105a;
    }
}
