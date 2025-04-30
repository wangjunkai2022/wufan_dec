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
/* compiled from: NettyClientActivityBinding.java */
/* loaded from: classes3.dex */
public final class j50 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f21382a;

    private j50(@NonNull LinearLayout linearLayout) {
        this.f21382a = linearLayout;
    }

    @NonNull
    public static j50 a(@NonNull View view) {
        Objects.requireNonNull(view, "rootView");
        return new j50((LinearLayout) view);
    }

    @NonNull
    public static j50 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static j50 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.netty_client_activity, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f21382a;
    }
}
