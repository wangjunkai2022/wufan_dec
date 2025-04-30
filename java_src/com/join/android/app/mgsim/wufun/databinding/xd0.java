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
/* compiled from: ViewHeaderPlaceholderBinding.java */
/* loaded from: classes3.dex */
public final class xd0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final FrameLayout f26555a;

    private xd0(@NonNull FrameLayout frameLayout) {
        this.f26555a = frameLayout;
    }

    @NonNull
    public static xd0 a(@NonNull View view) {
        Objects.requireNonNull(view, "rootView");
        return new xd0((FrameLayout) view);
    }

    @NonNull
    public static xd0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static xd0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.view_header_placeholder, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public FrameLayout getRoot() {
        return this.f26555a;
    }
}
