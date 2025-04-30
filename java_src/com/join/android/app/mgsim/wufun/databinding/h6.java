package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ClassifyAndRankActivityLayoutBinding.java */
/* loaded from: classes3.dex */
public final class h6 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f20685a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final RelativeLayout f20686b;

    private h6(@NonNull LinearLayout linearLayout, @NonNull RelativeLayout relativeLayout) {
        this.f20685a = linearLayout;
        this.f20686b = relativeLayout;
    }

    @NonNull
    public static h6 a(@NonNull View view) {
        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.fragment);
        if (relativeLayout != null) {
            return new h6((LinearLayout) view, relativeLayout);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.fragment)));
    }

    @NonNull
    public static h6 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static h6 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.classify_and_rank_activity_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f20685a;
    }
}
