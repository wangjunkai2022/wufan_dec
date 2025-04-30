package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: PapeverdayNewActivityLayoutBinding.java */
/* loaded from: classes3.dex */
public final class z70 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f27154a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final FrameLayout f27155b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final qc0 f27156c;

    private z70(@NonNull RelativeLayout relativeLayout, @NonNull FrameLayout frameLayout, @NonNull qc0 qc0Var) {
        this.f27154a = relativeLayout;
        this.f27155b = frameLayout;
        this.f27156c = qc0Var;
    }

    @NonNull
    public static z70 a(@NonNull View view) {
        int i2 = R.id.fragment;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.fragment);
        if (frameLayout != null) {
            i2 = R.id.title;
            View findChildViewById = ViewBindings.findChildViewById(view, R.id.title);
            if (findChildViewById != null) {
                return new z70((RelativeLayout) view, frameLayout, qc0.a(findChildViewById));
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static z70 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static z70 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.papeverday_new_activity_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f27154a;
    }
}
