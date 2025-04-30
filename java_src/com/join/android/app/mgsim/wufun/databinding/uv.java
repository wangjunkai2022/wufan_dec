package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: LoadingAlertBinding.java */
/* loaded from: classes3.dex */
public final class uv implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f25605a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ProgressBar f25606b;

    private uv(@NonNull RelativeLayout relativeLayout, @NonNull ProgressBar progressBar) {
        this.f25605a = relativeLayout;
        this.f25606b = progressBar;
    }

    @NonNull
    public static uv a(@NonNull View view) {
        ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.progressBar1);
        if (progressBar != null) {
            return new uv((RelativeLayout) view, progressBar);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.progressBar1)));
    }

    @NonNull
    public static uv c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static uv d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.loading_alert, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f25605a;
    }
}
