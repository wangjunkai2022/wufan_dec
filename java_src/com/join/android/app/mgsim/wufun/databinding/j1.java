package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ActivityPapaBannerListBinding.java */
/* loaded from: classes3.dex */
public final class j1 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f21347a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final FrameLayout f21348b;

    private j1(@NonNull LinearLayout linearLayout, @NonNull FrameLayout frameLayout) {
        this.f21347a = linearLayout;
        this.f21348b = frameLayout;
    }

    @NonNull
    public static j1 a(@NonNull View view) {
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.container);
        if (frameLayout != null) {
            return new j1((LinearLayout) view, frameLayout);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.container)));
    }

    @NonNull
    public static j1 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static j1 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.activity_papa_banner_list, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f21347a;
    }
}
