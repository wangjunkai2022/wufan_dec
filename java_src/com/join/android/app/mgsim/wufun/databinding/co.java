package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: HomePopupAdEverdayloginBinding.java */
/* loaded from: classes3.dex */
public final class co implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f19020a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final WebView f19021b;

    private co(@NonNull RelativeLayout relativeLayout, @NonNull WebView webView) {
        this.f19020a = relativeLayout;
        this.f19021b = webView;
    }

    @NonNull
    public static co a(@NonNull View view) {
        WebView webView = (WebView) ViewBindings.findChildViewById(view, R.id.webView);
        if (webView != null) {
            return new co((RelativeLayout) view, webView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.webView)));
    }

    @NonNull
    public static co c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static co d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.home_popup_ad_everdaylogin, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f19020a;
    }
}
