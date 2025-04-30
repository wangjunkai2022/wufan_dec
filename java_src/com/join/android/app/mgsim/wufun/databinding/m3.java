package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.LJWebView;
/* compiled from: ArenaWebBinding.java */
/* loaded from: classes3.dex */
public final class m3 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final FrameLayout f22324a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LJWebView f22325b;

    private m3(@NonNull FrameLayout frameLayout, @NonNull LJWebView lJWebView) {
        this.f22324a = frameLayout;
        this.f22325b = lJWebView;
    }

    @NonNull
    public static m3 a(@NonNull View view) {
        LJWebView lJWebView = (LJWebView) ViewBindings.findChildViewById(view, R.id.web);
        if (lJWebView != null) {
            return new m3((FrameLayout) view, lJWebView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.web)));
    }

    @NonNull
    public static m3 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static m3 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.arena_web, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public FrameLayout getRoot() {
        return this.f22324a;
    }
}
