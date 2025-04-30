package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: MgTipsActivityBinding.java */
/* loaded from: classes3.dex */
public final class g20 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f20290a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final qc0 f20291b;

    private g20(@NonNull LinearLayout linearLayout, @NonNull qc0 qc0Var) {
        this.f20290a = linearLayout;
        this.f20291b = qc0Var;
    }

    @NonNull
    public static g20 a(@NonNull View view) {
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.title_bar_layout);
        if (findChildViewById != null) {
            return new g20((LinearLayout) view, qc0.a(findChildViewById));
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.title_bar_layout)));
    }

    @NonNull
    public static g20 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static g20 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_tips_activity, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f20290a;
    }
}
