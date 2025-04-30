package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.join.android.app.mgsim.wufun.R;
import java.util.Objects;
/* compiled from: ProgressHorizontalBinding.java */
/* loaded from: classes3.dex */
public final class f90 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ProgressBar f20069a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ProgressBar f20070b;

    private f90(@NonNull ProgressBar progressBar, @NonNull ProgressBar progressBar2) {
        this.f20069a = progressBar;
        this.f20070b = progressBar2;
    }

    @NonNull
    public static f90 a(@NonNull View view) {
        Objects.requireNonNull(view, "rootView");
        ProgressBar progressBar = (ProgressBar) view;
        return new f90(progressBar, progressBar);
    }

    @NonNull
    public static f90 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static f90 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.progress_horizontal, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ProgressBar getRoot() {
        return this.f20069a;
    }
}
