package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: DetialSearchLayoutBinding.java */
/* loaded from: classes3.dex */
public final class fa implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f20071a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final RelativeLayout f20072b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f20073c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f20074d;

    private fa(@NonNull RelativeLayout relativeLayout, @NonNull RelativeLayout relativeLayout2, @NonNull ImageView imageView, @NonNull ImageView imageView2) {
        this.f20071a = relativeLayout;
        this.f20072b = relativeLayout2;
        this.f20073c = imageView;
        this.f20074d = imageView2;
    }

    @NonNull
    public static fa a(@NonNull View view) {
        RelativeLayout relativeLayout = (RelativeLayout) view;
        int i2 = R.id.search_detial_back;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.search_detial_back);
        if (imageView != null) {
            i2 = R.id.search_detial_image;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.search_detial_image);
            if (imageView2 != null) {
                return new fa(relativeLayout, relativeLayout, imageView, imageView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static fa c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static fa d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.detial_search_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f20071a;
    }
}
