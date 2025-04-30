package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: GameinformationWeblayoutBinding.java */
/* loaded from: classes3.dex */
public final class om implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f23314a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final WebView f23315b;

    private om(@NonNull LinearLayout linearLayout, @NonNull WebView webView) {
        this.f23314a = linearLayout;
        this.f23315b = webView;
    }

    @NonNull
    public static om a(@NonNull View view) {
        WebView webView = (WebView) ViewBindings.findChildViewById(view, R.id.webView);
        if (webView != null) {
            return new om((LinearLayout) view, webView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.webView)));
    }

    @NonNull
    public static om c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static om d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.gameinformation_weblayout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f23314a;
    }
}
