package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.join.android.app.mgsim.wufun.R;
import java.util.Objects;
/* compiled from: CommunityLineitemBinding.java */
/* loaded from: classes3.dex */
public final class k8 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f21732a;

    private k8(@NonNull LinearLayout linearLayout) {
        this.f21732a = linearLayout;
    }

    @NonNull
    public static k8 a(@NonNull View view) {
        Objects.requireNonNull(view, "rootView");
        return new k8((LinearLayout) view);
    }

    @NonNull
    public static k8 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static k8 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.community_lineitem, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f21732a;
    }
}
