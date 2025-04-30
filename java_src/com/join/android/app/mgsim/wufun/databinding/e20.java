package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ViewFlipper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: MgPapaTitleIncludeV2Binding.java */
/* loaded from: classes3.dex */
public final class e20 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f19567a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ViewFlipper f19568b;

    private e20(@NonNull LinearLayout linearLayout, @NonNull ViewFlipper viewFlipper) {
        this.f19567a = linearLayout;
        this.f19568b = viewFlipper;
    }

    @NonNull
    public static e20 a(@NonNull View view) {
        ViewFlipper viewFlipper = (ViewFlipper) ViewBindings.findChildViewById(view, R.id.topLineView);
        if (viewFlipper != null) {
            return new e20((LinearLayout) view, viewFlipper);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.topLineView)));
    }

    @NonNull
    public static e20 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static e20 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_papa_title_include_v2, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f19567a;
    }
}
