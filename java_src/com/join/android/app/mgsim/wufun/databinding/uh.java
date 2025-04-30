package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: FragmentRaceroomBinding.java */
/* loaded from: classes3.dex */
public final class uh implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final FrameLayout f25529a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final WebView f25530b;

    private uh(@NonNull FrameLayout frameLayout, @NonNull WebView webView) {
        this.f25529a = frameLayout;
        this.f25530b = webView;
    }

    @NonNull
    public static uh a(@NonNull View view) {
        WebView webView = (WebView) ViewBindings.findChildViewById(view, R.id.mWebView);
        if (webView != null) {
            return new uh((FrameLayout) view, webView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.mWebView)));
    }

    @NonNull
    public static uh c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static uh d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.fragment_raceroom, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public FrameLayout getRoot() {
        return this.f25529a;
    }
}
