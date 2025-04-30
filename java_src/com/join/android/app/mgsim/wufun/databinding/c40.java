package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ModuleBarLayoutBinding.java */
/* loaded from: classes3.dex */
public final class c40 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f18779a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f18780b;

    private c40(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView) {
        this.f18779a = relativeLayout;
        this.f18780b = imageView;
    }

    @NonNull
    public static c40 a(@NonNull View view) {
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.img_iconback);
        if (imageView != null) {
            return new c40((RelativeLayout) view, imageView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.img_iconback)));
    }

    @NonNull
    public static c40 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static c40 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.module_bar_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f18779a;
    }
}
