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
/* compiled from: SampleCommonListFooterLoadingBinding.java */
/* loaded from: classes3.dex */
public final class y90 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f26861a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ProgressBar f26862b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f26863c;

    private y90(@NonNull LinearLayout linearLayout, @NonNull ProgressBar progressBar, @NonNull LinearLayout linearLayout2) {
        this.f26861a = linearLayout;
        this.f26862b = progressBar;
        this.f26863c = linearLayout2;
    }

    @NonNull
    public static y90 a(@NonNull View view) {
        ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.loading_progress);
        if (progressBar != null) {
            LinearLayout linearLayout = (LinearLayout) view;
            return new y90(linearLayout, progressBar, linearLayout);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.loading_progress)));
    }

    @NonNull
    public static y90 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static y90 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.sample_common_list_footer_loading, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f26861a;
    }
}
