package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: VideoLoadingProgressBinding.java */
/* loaded from: classes3.dex */
public final class od0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f23243a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ProgressBar f23244b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f23245c;

    private od0(@NonNull LinearLayout linearLayout, @NonNull ProgressBar progressBar, @NonNull LinearLayout linearLayout2) {
        this.f23243a = linearLayout;
        this.f23244b = progressBar;
        this.f23245c = linearLayout2;
    }

    @NonNull
    public static od0 a(@NonNull View view) {
        ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, 16908301);
        if (progressBar != null) {
            LinearLayout linearLayout = (LinearLayout) view;
            return new od0(linearLayout, progressBar, linearLayout);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(16908301)));
    }

    @NonNull
    public static od0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static od0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.video_loading_progress, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f23243a;
    }
}
