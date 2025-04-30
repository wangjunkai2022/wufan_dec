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
/* compiled from: JpushPopwinLayoutBinding.java */
/* loaded from: classes3.dex */
public final class at implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f18285a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f18286b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final WebView f18287c;

    private at(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull WebView webView) {
        this.f18285a = linearLayout;
        this.f18286b = linearLayout2;
        this.f18287c = webView;
    }

    @NonNull
    public static at a(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        WebView webView = (WebView) ViewBindings.findChildViewById(view, R.id.wvPopwin);
        if (webView != null) {
            return new at(linearLayout, linearLayout, webView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.wvPopwin)));
    }

    @NonNull
    public static at c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static at d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.jpush_popwin_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f18285a;
    }
}
