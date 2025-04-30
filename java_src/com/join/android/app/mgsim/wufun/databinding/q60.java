package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.join.android.app.mgsim.wufun.R;
import java.util.Objects;
/* compiled from: PaddingBinding.java */
/* loaded from: classes3.dex */
public final class q60 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final View f23848a;

    private q60(@NonNull View view) {
        this.f23848a = view;
    }

    @NonNull
    public static q60 a(@NonNull View view) {
        Objects.requireNonNull(view, "rootView");
        return new q60(view);
    }

    @NonNull
    public static q60 b(@NonNull LayoutInflater layoutInflater) {
        return c(layoutInflater, null, false);
    }

    @NonNull
    public static q60 c(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.padding, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public View getRoot() {
        return this.f23848a;
    }
}
