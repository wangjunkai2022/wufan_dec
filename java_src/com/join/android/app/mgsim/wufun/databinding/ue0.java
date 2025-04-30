package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.login.FitImageView;
/* compiled from: WufunloginSplashRecitemBinding.java */
/* loaded from: classes3.dex */
public final class ue0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f25519a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final FitImageView f25520b;

    private ue0(@NonNull ConstraintLayout constraintLayout, @NonNull FitImageView fitImageView) {
        this.f25519a = constraintLayout;
        this.f25520b = fitImageView;
    }

    @NonNull
    public static ue0 a(@NonNull View view) {
        FitImageView fitImageView = (FitImageView) ViewBindings.findChildViewById(view, R.id.item_bg);
        if (fitImageView != null) {
            return new ue0((ConstraintLayout) view, fitImageView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.item_bg)));
    }

    @NonNull
    public static ue0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ue0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.wufunlogin_splash_recitem, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f25519a;
    }
}
