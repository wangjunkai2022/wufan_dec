package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.FlowLayout;
import java.util.Objects;
/* compiled from: MgForumFlowLayoutContainerBinding.java */
/* loaded from: classes3.dex */
public final class jx implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final FlowLayout f21561a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final FlowLayout f21562b;

    private jx(@NonNull FlowLayout flowLayout, @NonNull FlowLayout flowLayout2) {
        this.f21561a = flowLayout;
        this.f21562b = flowLayout2;
    }

    @NonNull
    public static jx a(@NonNull View view) {
        Objects.requireNonNull(view, "rootView");
        FlowLayout flowLayout = (FlowLayout) view;
        return new jx(flowLayout, flowLayout);
    }

    @NonNull
    public static jx c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static jx d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_flow_layout_container, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public FlowLayout getRoot() {
        return this.f21561a;
    }
}
