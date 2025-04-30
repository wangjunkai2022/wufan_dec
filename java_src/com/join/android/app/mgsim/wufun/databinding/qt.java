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
import com.join.mgps.customview.NestedScrollWebView;
/* compiled from: LayoutIntroductionVideoBinding.java */
/* loaded from: classes3.dex */
public final class qt implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f24070a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final NestedScrollWebView f24071b;

    private qt(@NonNull LinearLayout linearLayout, @NonNull NestedScrollWebView nestedScrollWebView) {
        this.f24070a = linearLayout;
        this.f24071b = nestedScrollWebView;
    }

    @NonNull
    public static qt a(@NonNull View view) {
        NestedScrollWebView nestedScrollWebView = (NestedScrollWebView) ViewBindings.findChildViewById(view, R.id.ns_web_view);
        if (nestedScrollWebView != null) {
            return new qt((LinearLayout) view, nestedScrollWebView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.ns_web_view)));
    }

    @NonNull
    public static qt c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static qt d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.layout_introduction_video, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f24070a;
    }
}
