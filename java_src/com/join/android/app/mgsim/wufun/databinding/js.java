package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.join.android.app.mgsim.wufun.R;
import java.util.Objects;
/* compiled from: ItemSimulatorWhiteSpacingViewBinding.java */
/* loaded from: classes3.dex */
public final class js implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final FrameLayout f21542a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final FrameLayout f21543b;

    private js(@NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2) {
        this.f21542a = frameLayout;
        this.f21543b = frameLayout2;
    }

    @NonNull
    public static js a(@NonNull View view) {
        Objects.requireNonNull(view, "rootView");
        FrameLayout frameLayout = (FrameLayout) view;
        return new js(frameLayout, frameLayout);
    }

    @NonNull
    public static js c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static js d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_simulator_white_spacing_view, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public FrameLayout getRoot() {
        return this.f21542a;
    }
}
