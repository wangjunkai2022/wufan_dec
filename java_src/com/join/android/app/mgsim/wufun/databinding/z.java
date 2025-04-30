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
/* compiled from: ActivityForumIndexBinding.java */
/* loaded from: classes3.dex */
public final class z implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final FrameLayout f27076a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final FrameLayout f27077b;

    private z(@NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2) {
        this.f27076a = frameLayout;
        this.f27077b = frameLayout2;
    }

    @NonNull
    public static z a(@NonNull View view) {
        Objects.requireNonNull(view, "rootView");
        FrameLayout frameLayout = (FrameLayout) view;
        return new z(frameLayout, frameLayout);
    }

    @NonNull
    public static z c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static z d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.activity_forum_index, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public FrameLayout getRoot() {
        return this.f27076a;
    }
}
