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
/* compiled from: ItemSimulatorSpacingViewBinding.java */
/* loaded from: classes3.dex */
public final class fs implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final FrameLayout f20217a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final FrameLayout f20218b;

    private fs(@NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2) {
        this.f20217a = frameLayout;
        this.f20218b = frameLayout2;
    }

    @NonNull
    public static fs a(@NonNull View view) {
        Objects.requireNonNull(view, "rootView");
        FrameLayout frameLayout = (FrameLayout) view;
        return new fs(frameLayout, frameLayout);
    }

    @NonNull
    public static fs c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static fs d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_simulator_spacing_view, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public FrameLayout getRoot() {
        return this.f20217a;
    }
}
