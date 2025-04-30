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
/* compiled from: ActivityMygameManagerBinding.java */
/* loaded from: classes3.dex */
public final class g1 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final FrameLayout f20276a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final FrameLayout f20277b;

    private g1(@NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2) {
        this.f20276a = frameLayout;
        this.f20277b = frameLayout2;
    }

    @NonNull
    public static g1 a(@NonNull View view) {
        Objects.requireNonNull(view, "rootView");
        FrameLayout frameLayout = (FrameLayout) view;
        return new g1(frameLayout, frameLayout);
    }

    @NonNull
    public static g1 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static g1 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.activity_mygame_manager, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public FrameLayout getRoot() {
        return this.f20276a;
    }
}
